#+sbcl (declaim (sb-ext:muffle-conditions style-warning))
;;; -*- Mode: Lisp; coding: utf-8; -*-

(in-package "CLRHACK")

;;; ===========================================================================
;;; CLRHACK Reader Implementation
;;; ===========================================================================

(defvar *clr-readtable-case* :upcase)
(defvar *clr-read-base* 10)
(defvar *clr-read-suppress* nil)

(defvar *close-paren-marker* (gensym "CLOSE-PAREN-MARKER"))

(defun get-syntax-type (char)
  "Returns the syntax type of a character according to the standard Common Lisp readtable."
  (cond ((member char '(#\Space #\Tab #\Newline #\Return #\Page #\Linefeed)) :whitespace)
        ((member char '(#\( #\) #\' #\; #\" #\` #\,)) :terminating-macro)
        ((char= char #\#) :non-terminating-macro)
        ((char= char #\\) :single-escape)
        ((char= char #\|) :multiple-escape)
        (t :constituent)))

(defun clr-read (&optional (stream *standard-input*) (eof-error-p t) eof-value recursive-p)
  "Main entry point for the CLRHACK reader. Implements the CL reader algorithm."
  (loop
    (let ((char (read-char stream nil nil)))
      (unless char
        (if eof-error-p
            (error "End of stream encountered on ~S" stream)
            (return eof-value)))
      (let ((type (get-syntax-type char)))
        (case type
          (:whitespace nil) ; Skip whitespace
          ((:terminating-macro :non-terminating-macro)
           (let* ((fn (clr-get-macro-character char))
                  (vals (multiple-value-list (funcall fn stream char))))
             (when vals
               (let ((obj (car vals)))
                 (if (and (eq obj *close-paren-marker*) (not recursive-p))
                     (error "Unmatched closing parenthesis found.")
                     (return obj))))))
          ((:single-escape :multiple-escape :constituent)
           (return (clr-read-token stream char type)))
          (t (error "Illegal character in input: ~S" char)))))))

(defun clr-get-macro-character (char)
  (case char
    (#\( #'clr-read-list)
    (#\) (lambda (s c) (declare (ignore s c)) (values *close-paren-marker* t)))
    (#\' #'clr-read-quote)
    (#\" #'clr-read-string)
    (#\; #'clr-read-comment)
    (#\# #'clr-read-dispatch)
    (#\` #'clr-read-backquote)
    (#\, #'clr-read-comma)
    (t (error "No macro function defined for ~S" char))))

;;; --- Token Reading and Parsing ---

(defun clr-read-token (stream initial-char initial-type)
  (let ((token (make-array 0 :element-type 'character :fill-pointer 0 :adjustable t))
        (escapes (make-array 0 :element-type 'boolean :fill-pointer 0 :adjustable t))
        (multiple-escape nil)
        (any-escape nil))
    (labels ((add-char (c escaped)
               (vector-push-extend c token)
               (vector-push-extend escaped escapes)
               (when escaped (setf any-escape t))))
      (cond
        ((eq initial-type :single-escape)
         (let ((next (read-char stream t)))
           (add-char next t)))
        ((eq initial-type :multiple-escape)
         (setf multiple-escape t))
        (t
         (add-char initial-char nil)))
      
      (loop
        (let ((char (peek-char nil stream nil nil)))
          (unless char (return))
          (let ((type (get-syntax-type char)))
            (if multiple-escape
                (progn
                  (read-char stream)
                  (cond
                    ((eq type :multiple-escape)
                     (setf multiple-escape nil))
                    ((eq type :single-escape)
                     (add-char (read-char stream t) t))
                    (t
                     (add-char char t))))
                (cond
                  ((or (eq type :whitespace) (eq type :terminating-macro))
                   (return))
                  (t
                   (read-char stream)
                   (cond
                     ((eq type :single-escape)
                      (add-char (read-char stream t) t))
                     ((eq type :multiple-escape)
                      (setf multiple-escape t))
                     (t
                      (add-char char nil))))))))))
    (if multiple-escape (error "Unmatched multiple escape |"))
    (clr-parse-token token any-escape escapes)))

(defun clr-parse-token (token any-escape escapes)
  ;; Check for Javadot syntax first
  (let ((dot-pos (position #\. token))
    (dot-count (count #\. token))
    (starts-with-dot (and (> (length token) 0)
                (char= (char token 0) #\.)))
    (has-uppercase (some #'upper-case-p token)))
    (when (and dot-pos
               (not (and any-escape (aref escapes dot-pos)))
         ;; Treat opcode-like dotted tokens as regular symbols (e.g., cgt.un,
         ;; ldarg.0, ldc.i4.0, tail.). Reserve Javadot parsing for explicit
         ;; instance-call syntax (.Foo) and CLR-style static designators that
         ;; include uppercase segments (System.Console.WriteLine).
         (or starts-with-dot
           (and (> dot-count 1)
            has-uppercase))
               (not (string= token "."))) ; The standard consing dot is not a Javadot
      ;; It's a Javadot. Case-sensitive, so we use the original token.
      (return-from clr-parse-token (clr-parse-javadot token))))

  (if any-escape
      (clr-parse-symbol token escapes)
      (let ((folded (clr-fold-case token)))
        (or (clr-parse-number folded)
            (clr-parse-symbol folded nil)))))

(defun clr-parse-javadot (token)
  (let ((len (length token))
        (starts-with-dot (char= (char token 0) #\.)))
    (cond
      ((char= (char token (1- len)) #\$)
       ;; Property
       (if starts-with-dot
           `(dotnet-instance-property ,(subseq token 0 (1- len)))
           `(dotnet-property ,(subseq token 0 (1- len)))))
      ((char= (char token (1- len)) #\%)
       ;; Field
       (if starts-with-dot
           `(dotnet-instance-field ,(subseq token 0 (1- len)))
           `(dotnet-field ,(subseq token 0 (1- len)))))
      (t
       ;; Method call
       (if starts-with-dot
           `(dotnet-instance-call ,token)
           `(dotnet-static-call ,token))))))

(defun clr-fold-case (token)
  (case *clr-readtable-case*
    (:upcase (string-upcase token))
    (:downcase (string-downcase token))
    (:preserve token)
    (:invert 
     (let ((has-upper (some #'upper-case-p token))
           (has-lower (some #'lower-case-p token)))
       (cond ((and has-upper (not has-lower)) (string-downcase token))
             ((and (not has-upper) has-lower) (string-upcase token))
             (t token))))
    (t token)))

(defun clr-parse-symbol (token escapes)
  (let ((colon-pos (position #\: token)))
    (if (and colon-pos (not (and escapes (aref escapes colon-pos))))
        (let ((pkg-name (subseq token 0 colon-pos))
              (sym-name (subseq token (1+ colon-pos))))
          (if (string= pkg-name "")
              (intern sym-name "KEYWORD")
              (let ((pkg (find-package (string-upcase pkg-name))))
                (unless pkg (error "Package ~A not found" pkg-name))
                (intern sym-name pkg))))
        (intern token *package*))))

(defun clr-parse-number (token)
  ;; Simple integer and ratio parser
  (let ((slash-pos (position #\/ token)))
    (if slash-pos
        (let ((num-val (multiple-value-bind (val pos) (parse-integer token :radix *clr-read-base* :end slash-pos :junk-allowed t)
                         (if (and val (= pos slash-pos)) val nil)))
              (den-val (multiple-value-bind (val pos) (parse-integer token :radix *clr-read-base* :start (1+ slash-pos) :junk-allowed t)
                         (if (and val (= pos (length token))) val nil))))
          (if (and num-val den-val)
              (/ num-val den-val)
              nil))
        (multiple-value-bind (val pos) (parse-integer token :radix *clr-read-base* :junk-allowed t)
          (if (and val (= pos (length token)))
              val
              nil)))))

;;; --- Macro Functions ---

(defun clr-read-list (stream char)
  (declare (ignore char))
  (let ((elements '()))
    (loop
      (let ((obj (clr-read stream t nil t)))
        (if (eq obj *close-paren-marker*)
            (return (nreverse elements))
            (if (and (symbolp obj) (string= (symbol-name obj) "."))
                (let ((tail (clr-read stream t nil t))
                      (next (clr-read stream t nil t)))
                  (unless (eq next *close-paren-marker*)
                    (error "Dot in list must be followed by exactly one object and then a closing parenthesis"))
                  (let ((result tail))
                    (dolist (e elements)
                      (setf result (cons e result)))
                    (return result)))
                (push obj elements)))))))

(defun clr-read-quote (stream char)
  (declare (ignore char))
  (list 'quote (clr-read stream t nil t)))

(defun clr-read-string (stream char)
  (declare (ignore char))
  (let ((sb (make-array 0 :element-type 'character :fill-pointer 0 :adjustable t)))
    (loop
      (let ((c (read-char stream t)))
        (cond ((char= c #\") (return (copy-seq sb)))
              ((char= c #\\) (vector-push-extend (read-char stream t) sb))
              (t (vector-push-extend c sb)))))))

(defun clr-read-comment (stream char)
  (declare (ignore char))
  (loop
    (let ((c (read-char stream nil nil)))
      (if (or (null c) (char= c #\Newline))
          (return (values)))))
  (values))

(defun clr-read-block-comment (stream)
  (let ((depth 1))
    (loop
      (let ((c (read-char stream t)))
        (cond ((char= c #\|)
               (let ((next (peek-char nil stream t)))
                 (when (char= next #\#)
                   (read-char stream)
                   (decf depth)
                   (when (zerop depth) (return)))))
              ((char= c #\#)
               (let ((next (peek-char nil stream t)))
                 (when (char= next #\|)
                   (read-char stream)
                   (incf depth)))))))))

(defun clr-read-backquote (stream char)
  (declare (ignore char))
  (list 'backquote (clr-read stream t nil t)))

(defun clr-read-comma (stream char)
  (declare (ignore char))
  (let ((next (peek-char nil stream t)))
    (if (char= next #\@)
        (progn (read-char stream)
               (list 'comma-at (clr-read stream t nil t)))
        (list 'comma (clr-read stream t nil t)))))

(defun clr-read-dispatch (stream char)
  (declare (ignore char))
  (let ((param 0)
        (has-param nil))
    (loop
      (let ((next (peek-char nil stream t)))
        (if (digit-char-p next)
            (progn
              (setf param (+ (* param 10) (digit-char-p (read-char stream))))
              (setf has-param t))
            (return))))
    (let ((sub-char (char-upcase (read-char stream t))))
      (case sub-char
        (#\\ (read-char stream t)) ; Simplified #\
        (#\( (clr-read-vector stream))
        (#\' (list 'function (clr-read stream t nil t)))
        (#\| (clr-read-block-comment stream) (values))
        (#\+ (if (clr-feature-present-p (clr-read stream t nil t))
                 (clr-read stream t nil t)
                 (progn (clr-suppress-read stream) (values))))
        (#\- (if (not (clr-feature-present-p (clr-read stream t nil t)))
                 (clr-read stream t nil t)
                 (progn (clr-suppress-read stream) (values))))
        (t (error "Dispatch macro #~C not implemented" sub-char))))))

(defun clr-read-vector (stream)
  (let ((elements (clr-read-list stream #\()))
    (coerce elements 'vector)))

(defun clr-feature-present-p (feature)
  (if (symbolp feature)
      (member feature *features*)
      (case (car feature)
        (and (every #'clr-feature-present-p (cdr feature)))
        (or (some #'clr-feature-present-p (cdr feature)))
        (not (not (clr-feature-present-p (cadr feature)))))))

(defun clr-suppress-read (stream)
  (let ((*clr-read-suppress* t))
    (clr-read stream t nil t)))(declaim (ftype (function (t) t) clr-get-macro-character clr-parse-javadot clr-parse-number clr-fold-case clr-feature-present-p clr-read-vector clr-suppress-read))
(declaim (ftype (function (t t) t) clr-read-backquote clr-read-comma clr-read-comment clr-read-dispatch clr-read-list clr-read-quote clr-read-string clr-parse-symbol))
(declaim (ftype (function (t t t) t) clr-read-token clr-parse-token))




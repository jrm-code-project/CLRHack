(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

(ql:quickload "alexandria")
(ql:quickload "series")
(ql:quickload "fold")
(ql:quickload "named-let")
(ql:quickload "function")
(ql:quickload "fiveam")

(require :asdf)
(pushnew (truename ".") asdf:*central-registry* :test #'equal)
(asdf:load-system :clrhack :force t)

(defparameter *bootstrap-compiler-sources*
  '("package.lisp"
    "clr-read.lisp"
    "data.lisp"
    "ast.lisp"
    "ast-walker.lisp"
    "generate-step1.lisp"
    "generate-step2.lisp"))

(defun sanitize-bootstrap-assembly-fragment (name)
  (map 'string (lambda (c)
                 (if (or (alphanumericp c) (char= c #\_))
                     c
                     #\_))
       name))

(defun bootstrap-assembly-name (source-file)
  (format nil "SelfHost_~A"
          (sanitize-bootstrap-assembly-fragment (pathname-name source-file))))

(defun bootstrap-manifest-name (assembly-name)
  (format nil "~A.clrhm" assembly-name))

(defun validate-bootstrap-sources (source-files)
  (let ((missing nil))
    (dolist (source source-files)
      (unless (probe-file source)
        (push source missing)))
    (nreverse missing)))

(defun run-bootstrap-dry-run (source-files)
  (format t "~%--- Self-host bootstrap dry-run ---~%")
  (format t "Compiler source inventory (~D files):~%" (length source-files))
  (dolist (source source-files)
    (format t "  - ~A -> ~A~%"
            source
            (bootstrap-assembly-name source))))

(defun run-bootstrap-execute (source-files)
  (format t "~%--- Self-host bootstrap execute mode ---~%")
  (let ((manifest-paths nil)
        (last-manifest nil)
        (failures nil))
    (dolist (source source-files)
      (let* ((assembly-name (bootstrap-assembly-name source))
             (manifest-name (bootstrap-manifest-name assembly-name)))
        (format t "Compiling compiler module ~A -> ~A~%" source assembly-name)
        (handler-case
            (progn
              (clrhack:compile-module source
                                      :output-file assembly-name
                                      :dependency-manifests manifest-paths)
              (setf manifest-paths (append manifest-paths (list manifest-name))
                    last-manifest manifest-name))
          (error (condition)
            (push (list :source source :condition (princ-to-string condition)) failures)
            (format t "  !! FAILED: ~A~%" condition)))))
    (when failures
      (format t "~%Bootstrap execute mode encountered ~D module failures:~%" (length failures))
      (dolist (failure (nreverse failures))
        (format t "  - ~A: ~A~%" (getf failure :source) (getf failure :condition)))
      (error "Self-host bootstrap execute mode failed before link stage."))
    (unless last-manifest
      (error "Bootstrap source inventory is empty; cannot link Gen1 artifact."))
    (format t "Linking SelfHostCompilerGen1 from ~D module manifests...~%" (length manifest-paths))
    (clrhack:link-program manifest-paths
                          :output-file "SelfHostCompilerGen1"
                          :root-manifest last-manifest)
    (format t "Self-host Gen1 artifact linked: bin/Release/net8.0/SelfHostCompilerGen1.dll~%")))

(let* ((argv #+sbcl sb-ext:*posix-argv* #-sbcl nil)
       (execute-p (member "--execute" argv :test #'string=))
       (missing (validate-bootstrap-sources *bootstrap-compiler-sources*)))
  (when missing
    (error "Missing bootstrap compiler sources: ~{~A~^, ~}" missing))
  (run-bootstrap-dry-run *bootstrap-compiler-sources*)
  (if execute-p
      (run-bootstrap-execute *bootstrap-compiler-sources*)
      (format t "Dry-run complete. Re-run with --execute to attempt full Gen1 build.~%")))

(sb-ext:exit)

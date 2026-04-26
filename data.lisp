;;; -*- Mode: Lisp; coding: utf-8; -*-

(in-package "CLRHACK")

;;; --- The Base Class ---

(defclass cil-instruction ()
  ((label        :initarg :label        :initform nil :accessor get-label)
   (opcode       :initarg :opcode       :accessor get-opcode)
   (stack-effect :initarg :stack-effect :initform 0   :accessor get-stack-effect)
   (source-form  :initarg :source-form  :initform nil :accessor get-source-form))
  (:documentation "The root of all digital sin. Added stack-effect for calculating .maxstack, and source-form so we can trace CIL back to your Lisp code."))

(defgeneric emit-instruction (instruction stream)
  (:documentation "Emit the textual CIL for this instruction to the given stream."))

(defun emit (instruction-stream stream)
  (fold-left (lambda (stream instruction)
               (emit-instruction instruction stream)
               stream)
             stream
             instruction-stream))

(defmethod emit-instruction :around ((inst cil-instruction) stream)
  "Intercepts every emit call. If there's a label, print it flush-left. Then indent the actual opcode."
  (let ((label (get-label inst)))
    (when label
      (format stream "~A:~%" label)))
  ;; Indent the actual instruction for readability
  (format stream "    ")
  ;; Let the specific subclass print its payload
  (call-next-method)
  ;; Cap it with a newline
  (format stream "~%"))

;;; --- Major Subclasses ---

(defclass cil-simple-instruction (cil-instruction)
  ()
  (:documentation "Zero-operand instructions like 'add', 'sub', 'ret', or 'dup'. Pure stack magic."))

(defmethod emit-instruction ((inst cil-simple-instruction) stream)
  "Zero-operand instructions. Just spit out the opcode."
  (format stream "~A" (get-opcode inst)))

(defmethod print-object ((inst cil-simple-instruction) stream)
  "Zero-operand instructions. Nice and clean."
  (print-unreadable-object (inst stream :type t :identity nil)
    (format stream "~@[~A: ~]~A" 
            (get-label inst) 
            (get-opcode inst))))

(defmacro define-simple-instruction-makers (&rest opcodes)
  `(progn
     ,@(loop for op in opcodes
             for func-name = (intern (symbol-name op) (find-package "IL"))
             collect `(progn
                        (export ',func-name "IL")
                        (defun ,func-name (&key label)
                          (make-instance 'cil-simple-instruction
                                         :opcode ,(string-downcase (string op))
                                         :label label))))))

(define-simple-instruction-makers 
  add sub mul div rem 
  and or xor shl shr 
  neg not 
  nop pop dup ret 
  ceq cgt clt)

(define-simple-instruction-makers 
  ;; Arguments
  ldarg.0 ldarg.1 ldarg.2 ldarg.3
  ;; Locals
  ldloc.0 ldloc.1 ldloc.2 ldloc.3
  stloc.0 stloc.1 stloc.2 stloc.3
  ;; Constants
  ldc.i4.0 ldc.i4.1 ldc.i4.2 ldc.i4.3 ldc.i4.4 
  ldc.i4.5 ldc.i4.6 ldc.i4.7 ldc.i4.8 ldc.i4.m1)

(defclass cil-operand-instruction (cil-instruction)
  ((operand :initarg :operand :accessor get-operand))
  (:documentation "Instructions that actually carry a payload."))

(defmethod emit-instruction ((inst cil-operand-instruction) stream)
  "Fallback for anything that just needs a space between opcode and operand."
  (format stream "~A ~A" (get-opcode inst) (get-operand inst)))

(defmethod print-object ((inst cil-operand-instruction) stream)
  "Generic fallback for operand instructions."
  (print-unreadable-object (inst stream :type t :identity nil)
    (format stream "~@[~A: ~]~A ~A" 
            (get-label inst) 
            (get-opcode inst) 
            (get-operand inst))))

(defmacro define-operand-instruction-makers (class-name &rest opcodes)
  `(progn
     ,@(loop for op in opcodes
             for func-name = (intern (symbol-name op) (find-package "IL"))
             collect `(progn
                        (export ',func-name "IL")
                        (defun ,func-name (operand &rest kwargs &key label &allow-other-keys)
                          (declare (ignore label))
                          (apply #'make-instance ',class-name
                                 :opcode ,(string-downcase (string op))
                                 :operand operand
                                 kwargs))))))

;;; --- Specialized Payloads ---

(defclass cil-numeric-instruction (cil-operand-instruction)
  ((num-type :initarg :num-type :initform :int32 :accessor get-num-type))
  (:documentation "For loading constants. Added num-type (:int32, :float64) so we know if we're emitting ldc.i4 or ldc.r8 without guessing."))

(defmethod emit-instruction ((inst cil-numeric-instruction) stream)
  "Numeric loads. The opcode already tells us the type (e.g., ldc.i4), so just print it."
  (format stream "~A ~A" (get-opcode inst) (get-operand inst)))

(defmethod print-object ((inst cil-numeric-instruction) stream)
  "Numeric loads. Shows the operand and the specific numeric type. Uses ~(~A~) for the keyword."
  (print-unreadable-object (inst stream :type t :identity nil)
    (format stream "~@[~A: ~]~A ~A [~(~A~)]" 
            (get-label inst) 
            (get-opcode inst) 
            (get-operand inst) 
            (get-num-type inst))))

(define-operand-instruction-makers cil-numeric-instruction
  ldc.i4 ldc.i4.s ldc.i8 ldc.r4 ldc.r8)

(defclass cil-variable-instruction (cil-operand-instruction)
  ((index :initarg :index :initform nil :accessor get-index)
   (var-kind :initarg :var-kind :initform nil :accessor get-var-kind))
  (:documentation "For 'ldloc', 'stloc', 'ldarg'. We can use names or indices because we're Wizards."))

(defmethod emit-instruction ((inst cil-variable-instruction) stream)
  "Smart variable emission. If we have a low index (0-3), we can optimize to the short form."
  (let ((op (get-opcode inst))
        (idx (get-index inst))
        (opnd (get-operand inst)))
    ;; CIL trick: ldloc.0, ldarg.1, etc.
    (if (and idx (integerp idx) (<= 0 idx 3)
             (member op '("ldarg" "ldloc" "stloc" "starg") :test #'string-equal))
        (format stream "~A.~A" op idx)
        ;; Otherwise, use the standard spaced form (e.g., ldloc 4 or ldloc x)
        (format stream "~A ~A" op (or idx opnd)))))

(defmethod print-object ((inst cil-variable-instruction) stream)
  "Variables. Shows the index (or operand) and the variable kind. Uses ~(~A~) for the keyword."
  (print-unreadable-object (inst stream :type t :identity nil)
    (format stream "~@[~A: ~]~A ~A [~(~A~)]" 
            (get-label inst) 
            (get-opcode inst) 
            (or (get-index inst) (get-operand inst)) 
            (get-var-kind inst))))

(define-operand-instruction-makers cil-variable-instruction
  ldloc stloc ldarg starg ldloca ldarga)

(defclass cil-branch-instruction (cil-operand-instruction)
  ((short-p :initarg :short-p :initform nil :accessor get-short-p))
  (:documentation "The 'br', 'beq', 'blt' instructions. The operand here is the target label name."))

(defmethod emit-instruction ((inst cil-branch-instruction) stream)
  "Branches. If short-p is true, slap a '.s' on the opcode to save bytes."
  (let ((op (get-opcode inst)))
    (if (get-short-p inst)
        (format stream "~A.s ~A" op (get-operand inst))
        (format stream "~A ~A" op (get-operand inst)))))

(defmethod print-object ((inst cil-branch-instruction) stream)
  "Branches. Indicates if the branch has been optimized to the short form."
  (print-unreadable-object (inst stream :type t :identity nil)
    (format stream "~@[~A: ~]~A~A ~A" 
            (get-label inst) 
            (get-opcode inst) 
            (if (get-short-p inst) ".s" "") 
            (get-operand inst))))

(define-operand-instruction-makers cil-branch-instruction
  br brtrue brfalse beq bge bgt ble blt bne.un)

(defclass cil-call-instruction (cil-operand-instruction)
  ((target-class :initarg :target-class :accessor get-target-class)
   (return-type  :initarg :return-type  :accessor get-return-type)
   (arg-types    :initarg :arg-types    :initform nil :accessor get-arg-types)
   (tail-p       :initarg :tail-p       :initform nil :accessor get-tail-p))
  (:documentation "The operand is the method name. Split the old 'signature' slot into explicit types so we can construct the baroque CIL signature dynamically."))

(defmethod emit-instruction ((inst cil-call-instruction) stream)
  "The Heavy Lifter. Emits the 'tail.' prefix inline if flagged, followed by the baroque CIL signature."
  (when (get-tail-p inst)
    (format stream "tail. "))
  (format stream "~A ~A ~A::~A(~{~A~^, ~})"
          (get-opcode inst)
          (get-return-type inst)
          (get-target-class inst)
          (get-operand inst)         
          (get-arg-types inst)))     

(defmethod print-object ((inst cil-call-instruction) stream)
  "Shows the full method signature, prominently featuring the tail prefix if active."
  (print-unreadable-object (inst stream :type t :identity nil)
    (format stream "~@[~A: ~]~@[tail. ~]~A ~A ~A::~A(~{~A~^, ~})" 
            (get-label inst)
            (when (get-tail-p inst) t)
            (get-opcode inst) 
            (get-return-type inst)
            (get-target-class inst)
            (get-operand inst)
            (get-arg-types inst))))

(defun il::call (&key method class return args label stack-effect source-form tail-p)
  "Constructs a CIL 'call' instruction object. Now with optional tail recursion."
  (make-instance 'cil-call-instruction
                 :opcode "call"
                 :operand method           
                 :target-class class
                 :return-type return
                 :arg-types args
                 :label label
                 :stack-effect (or stack-effect 0) 
                 :source-form source-form
                 :tail-p tail-p))

(defun il::callvirt (&key method class return args label stack-effect source-form tail-p)
  "Constructs a CIL 'callvirt' instruction object. Now with optional tail recursion."
  (make-instance 'cil-call-instruction
                 :opcode "callvirt"
                 :operand method
                 :target-class class
                 :return-type return
                 :arg-types args
                 :label label
                 :stack-effect (or stack-effect 0)
                 :source-form source-form
                 :tail-p tail-p))

(defclass cil-string-instruction (cil-operand-instruction)
  ()
  (:documentation "For 'ldstr'. Because eventually we'll want to tell the user to fuck off in high-res."))

(defmethod emit-instruction ((inst cil-string-instruction) stream)
  "Strings need to be wrapped in quotes and escaped. Lisp's ~S format directive handles this perfectly."
  (format stream "~A ~S" (get-opcode inst) (get-operand inst)))

(defmethod print-object ((inst cil-string-instruction) stream)
  "Strings. Uses ~S to print it with quotes."
  (print-unreadable-object (inst stream :type t :identity nil)
    (format stream "~@[~A: ~]~A ~S" 
            (get-label inst) 
            (get-opcode inst) 
            (get-operand inst))))

(define-operand-instruction-makers cil-string-instruction
  ldstr)

;;; --- The Method Container ---

(defclass cil-method ()
  ((name         :initarg :name         :accessor method-name)
   (return-type  :initarg :return-type  :initform "void" :accessor get-return-type)
   (arg-types    :initarg :arg-types    :initform nil :accessor get-arg-types)
   (visibility   :initarg :visibility   :initform :public :accessor get-visibility)
   (static-p     :initarg :static-p     :initform nil     :accessor get-static-p)
   (hidebysig-p  :initarg :hidebysig-p  :initform t       :accessor get-hidebysig-p)
   (virtual-p    :initarg :virtual-p    :initform nil     :accessor get-virtual-p)
   ;; --- The Missing Piece ---
   (entrypoint-p :initarg :entrypoint-p :initform nil :accessor get-entrypoint-p)
   (maxstack     :initarg :maxstack     :initform 8 :accessor get-maxstack)
   (locals       :initarg :locals       :initform nil :accessor get-locals)
   (instructions :initarg :instructions 
                 :initform (make-array 0 :fill-pointer 0 :adjustable t)
                 :accessor get-instructions))
  (:documentation "A CIL method definition. Added entrypoint-p so the CLR knows where to start."))

;;; --- Helper to push instructions into the vector ---

(defmethod add-instruction ((method cil-method) (inst cil-instruction))
  "Appends a newly generated instruction to the end of the method's instruction vector."
  (vector-push-extend inst (get-instructions method))
  inst)

(defmethod emit-method ((method cil-method) stream)
  (format stream ".method ~(~A~)~:[~; static~]~:[~; virtual~]~:[~; hidebysig~] ~A ~A(~{~A~^, ~}) cil managed~%"
          (get-visibility method)
          (get-static-p method)
          (get-virtual-p method)
          (get-hidebysig-p method)
          (get-return-type method)
          (method-name method)
          (get-arg-types method))
  (format stream "{~%")
  ;; Add the entry point if flagged
  (when (get-entrypoint-p method)
    (format stream "    .entrypoint~%"))
  (format stream "    .maxstack ~D~%" (get-maxstack method))
  (when (get-locals method)
    (format stream "    .locals init (~{~A~^, ~})~%" (get-locals method)))
  (let ((insts (get-instructions method)))
    (loop for i from 0 below (length insts)
          for inst = (aref insts i)
          do (emit-instruction inst stream)))
  (format stream "}~%~%"))

(defun il::method (&key name (return-type "void") arg-types 
                        (visibility :public) static-p (hidebysig-p t) virtual-p 
                        entrypoint-p (maxstack 8) locals instructions)
  (let ((meth (make-instance 'cil-method
                             :name name
                             :return-type return-type
                             :arg-types arg-types
                             :visibility visibility
                             :static-p static-p
                             :hidebysig-p hidebysig-p
                             :virtual-p virtual-p
                             :entrypoint-p entrypoint-p
                             :maxstack maxstack
                             :locals locals)))
    (dolist (inst instructions)
      (add-instruction meth inst))
    meth))

;;; --- Printer for the REPL ---

(defmethod print-object ((method cil-method) stream)
  (print-unreadable-object (method stream :type t :identity nil)
    (format stream "~(~A~)~:[~; static~]~:[~; virtual~]~:[~; hidebysig~] ~A ~A(~{~A~^, ~}) [~D insts]"
            (get-visibility method)
            (get-static-p method)    
            (get-virtual-p method)   
            (get-hidebysig-p method) 
            (get-return-type method)
            (method-name method)
            (get-arg-types method)
            (length (get-instructions method)))))

(defclass cil-field ()
  ((name       :initarg :name       :accessor get-name)
   (field-type :initarg :field-type :accessor get-field-type)
   (visibility :initarg :visibility :initform :public :accessor get-visibility)
   (static-p   :initarg :static-p   :initform nil     :accessor get-static-p))
  (:documentation "A CIL field definition. Visibility is a keyword."))

(defmethod emit-field ((field cil-field) stream)
  "Emits a field definition. Corrected format logic."
  (format stream "    .field ~(~A~)~:[~; static~] ~A ~A~%"
          (get-visibility field)
          (get-static-p field)
          (get-field-type field)
          (get-name field)))

(defmethod print-object ((field cil-field) stream)
  (print-unreadable-object (field stream :type t :identity nil)
    (format stream "~(~A~)~:[~; static~] ~A ~A"
            (get-visibility field)
            (get-static-p field)
            (get-field-type field)
            (get-name field))))

(defun il::field (&key name type (visibility :public) static-p)
  "Constructs a CIL field object.
   Tucked in the IL namespace so your DSL reads cleanly."
  (make-instance 'cil-field
                 :name name
                 :field-type type
                 :visibility visibility
                 :static-p static-p))

(defclass cil-class ()
  ((name              :initarg :name              :accessor get-name)
   (parent            :initarg :parent            :initform "[mscorlib]System.Object" :accessor get-parent)
   
   ;; --- The Discrete Flags (Now using Keywords) ---
   (visibility        :initarg :visibility        :initform :public :accessor get-visibility)
   (abstract-p        :initarg :abstract-p        :initform nil     :accessor get-abstract-p)
   (sealed-p          :initarg :sealed-p          :initform nil     :accessor get-sealed-p)
   (auto-p            :initarg :auto-p            :initform t       :accessor get-auto-p)
   (ansi-p            :initarg :ansi-p            :initform t       :accessor get-ansi-p)
   (beforefieldinit-p :initarg :beforefieldinit-p :initform t       :accessor get-beforefieldinit-p)
   
   ;; --- The Contents ---
   (fields            :initarg :fields            
                      :initform (make-array 0 :fill-pointer 0 :adjustable t) 
                      :accessor get-fields)
   (methods           :initarg :methods           
                      :initform (make-array 0 :fill-pointer 0 :adjustable t) 
                      :accessor get-methods))
  (:documentation "A CIL class definition. Visibility is a keyword. Flags are strictly separated."))

(defmethod add-method ((class cil-class) (method cil-method))
  "Mounts a compiled method into the class."
  (vector-push-extend method (get-methods class))
  method)

(defmethod add-field ((class cil-class) field)
  "Mounts a field into the class."
  (vector-push-extend field (get-fields class))
  field)

(defmethod emit-class ((class cil-class) stream)
  "Dumps the full CIL class. Corrected format logic."
  (format stream ".class ~(~A~)~:[~; abstract~]~:[~; sealed~]~:[~; auto~]~:[~; ansi~]~:[~; beforefieldinit~] ~A~%"
          (get-visibility class)
          (get-abstract-p class)
          (get-sealed-p class)
          (get-auto-p class)
          (get-ansi-p class)
          (get-beforefieldinit-p class)
          (get-name class))
  (when (get-parent class)
    (format stream "       extends ~A~%" (get-parent class)))
  (format stream "{~%")
  (let ((fields (get-fields class)))
    (when (> (length fields) 0)
      (loop for i from 0 below (length fields)
            for field = (aref fields i)
            do (emit-field field stream))
      (format stream "~%"))) 
  (let ((methods (get-methods class)))
    (loop for i from 0 below (length methods)
          for method = (aref methods i)
          do (emit-method method stream)))
  (format stream "} // end of class ~A~%~%" (get-name class)))

(defmethod print-object ((class cil-class) stream)
  (print-unreadable-object (class stream :type t :identity nil)
    (format stream "~(~A~)~:[~; abstract~]~:[~; sealed~]~:[~; auto~]~:[~; ansi~]~:[~; beforefieldinit~] ~A extends ~A [~D methods, ~D fields]"
            (get-visibility class)
            (get-abstract-p class)
            (get-sealed-p class)
            (get-auto-p class)
            (get-ansi-p class)
            (get-beforefieldinit-p class)
            (get-name class)
            (get-parent class)
            (length (get-methods class))
            (length (get-fields class)))))

(defun il::class (&key name (parent "[mscorlib]System.Object") 
                       (visibility :public) abstract-p sealed-p 
                       (auto-p t) (ansi-p t) (beforefieldinit-p t)
                       fields methods)
  "Constructs a CIL class and automatically mounts its fields and methods.
   Tucked in the IL namespace to avoid clashing with cl:class."
  (let ((cls (make-instance 'cil-class
                            :name name
                            :parent parent
                            :visibility visibility
                            :abstract-p abstract-p
                            :sealed-p sealed-p
                            :auto-p auto-p
                            :ansi-p ansi-p
                            :beforefieldinit-p beforefieldinit-p)))
    ;; Mount the fields
    (dolist (f fields)
      (add-field cls f))
    
    ;; Mount the methods
    (dolist (m methods)
      (add-method cls m))
      
    ;; Return the fully armed and operational class
    cls))

(defclass cil-assembly ()
  ((name        :initarg :name        :accessor get-name)
   (module-name :initarg :module-name :initform nil :accessor get-module-name)
   (externs     :initarg :externs     :initform '("mscorlib") :accessor get-externs)
   
   ;; --- The Contents ---
   (classes     :initarg :classes     
                :initform (make-array 0 :fill-pointer 0 :adjustable t) 
                :accessor get-classes))
  (:documentation "The master wrapper. Holds external references, assembly metadata, and all the compiled classes."))

(defmethod add-class ((assembly cil-assembly) (class cil-class))
  "Mounts a compiled class into the assembly."
  (vector-push-extend class (get-classes assembly))
  class)

(defmethod emit-assembly ((assembly cil-assembly) stream)
  "Dumps the entire compiled universe into a stream ready for ilasm."
  
  ;; 1. External dependencies
  (loop for ext in (get-externs assembly) do
        (format stream ".assembly extern ~A {}~%" ext))
  (format stream "~%")
  
  ;; 2. Assembly declaration
  (format stream ".assembly ~A {}~%" (get-name assembly))
  
  ;; 3. Module declaration (defaults to name.exe if not explicitly set)
  (let ((mod-name (or (get-module-name assembly)
                      (format nil "~A.exe" (get-name assembly)))))
    (format stream ".module ~A~%~%" mod-name))
    
  ;; 4. Emit all classes
  (let ((classes (get-classes assembly)))
    (loop for i from 0 below (length classes)
          for class = (aref classes i)
          do (emit-class class stream))))

(defmethod print-object ((assembly cil-assembly) stream)
  "Prints the high-level assembly summary."
  (print-unreadable-object (assembly stream :type t :identity nil)
    (format stream "Assembly ~A [~D externs, ~D classes]"
            (get-name assembly)
            (length (get-externs assembly))
            (length (get-classes assembly)))))

(defun il::assembly (&key name module-name (externs '("mscorlib")) classes)
  "Constructs a CIL assembly object and automatically mounts its classes.
   The final layer of the CIL generation DSL."
  (let ((asm (make-instance 'cil-assembly
                            :name name
                            :module-name module-name
                            :externs externs)))
    ;; Mount the classes
    (dolist (c classes)
      (add-class asm c))
      
    ;; Return the fully armed assembly
    asm))

(defun il::ilasm (assembly)
  "Dumps the assembly directly to a Windows Temp directory via WSL mount and invokes ilasm.exe."
  (let* ((mod-name (or (get-module-name assembly)
                       (format nil "~A.exe" (get-name assembly))))
         (name-len (length mod-name))
         (is-dll (and (>= name-len 4)
                      (string-equal mod-name ".dll" :start1 (- name-len 4))))
         (target-flag (if is-dll "/dll" "/exe"))
         
         ;; The Windows Executable
         (ilasm-path "/mnt/c/Users/bitdi/.dotnet/tools/ilasm.exe")
         
         ;; The Shared Temp Directory
         (wsl-temp-dir #P"/mnt/c/Windows/Temp/")
         ;; Mint a unique filename
         (unique-name (format nil "v-compiler-~A.il" (random 1000000)))
         (linux-temp-file (merge-pathnames unique-name wsl-temp-dir))
         
         ;; The path string ilasm.exe will actually see (Windows format)
         (win-temp-file (format nil "C:/Windows/Temp/~A" unique-name))
         (output-flag (format nil "/output:~A" mod-name)))
    
    (unwind-protect
        (progn
          ;; 1. Write the CIL directly to the Windows Temp directory via the mount
          (with-open-file (stream linux-temp-file :direction :output :if-exists :supersede)
            (emit-assembly assembly stream))
          
          ;; 2. Invoke the Windows executable using the C:\ formatted path
          (format t "~%;; [V-Compiler] Invoking ~A ~A ~A...~%" ilasm-path target-flag output-flag)
          (uiop:run-program (list ilasm-path win-temp-file target-flag output-flag)
                            :output *standard-output*
                            :error-output *error-output*))
      
      ;; 3. Clean up the crime scene via the WSL path
      (when (probe-file linux-temp-file)
        (delete-file linux-temp-file)))))

(export '(il::ilasm il::class il::method il::field il::assembly il::call il::callvirt) "IL")

(in-package "CLRHACK")

(defun make-instance (class &rest initargs)
  (dotnet-call-static "Lisp.MopRuntime" "MakeInstanceFromLisp" class initargs))

(defun slot-value (instance slot-name)
  (dotnet-call-static "Lisp.MopRuntime" "SlotValueFromLisp" instance slot-name))

(defclass test-base () ())
(defclass test-derived (test-base) ())

(defgeneric test-gf (obj)
  (:method-combination standard))

(defvar *call-log* nil)

(defmethod test-gf :before ((obj test-base))
  (push :before-base *call-log*))

(defmethod test-gf :before ((obj test-derived))
  (push :before-derived *call-log*))

(defmethod test-gf :after ((obj test-base))
  (push :after-base *call-log*))

(defmethod test-gf :after ((obj test-derived))
  (push :after-derived *call-log*))

(defmethod test-gf ((obj test-base))
  (push :primary-base *call-log*)
  :base-result)

(defmethod test-gf ((obj test-derived))
  (push :primary-derived *call-log*)
  (let ((next-res (if (next-method-p) (call-next-method) :no-next)))
    (push (list :primary-derived-next next-res) *call-log*))
  :derived-result)

(defmethod test-gf :around ((obj test-base))
  (push :around-base-start *call-log*)
  (let ((res (call-next-method)))
    (push (list :around-base-end res) *call-log*)
    res))

(defmethod test-gf :around ((obj test-derived))
  (push :around-derived-start *call-log*)
  (let ((res (call-next-method)))
    (push (list :around-derived-end res) *call-log*)
    res))

(defun run-combination-test ()
  (setq *call-log* nil)
  (let ((obj (make-instance 'test-derived)))
    (let ((result (test-gf obj)))
      (print "Result:")
      (print result)
      (print "Call log:")
      (print *call-log*)
      
      (if (eq result :derived-result)
          (print "SUCCESS: Result matches")
          (print "FAILURE: Result mismatch")))))

(run-combination-test)

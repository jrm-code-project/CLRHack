(in-package "CLRHACK")

(defun make-instance (class &rest initargs)
  (dotnet-call-static "Lisp.MopRuntime" "MakeInstanceFromLisp" class initargs))

(defun slot-value (instance slot-name)
  (dotnet-call-static "Lisp.MopRuntime" "SlotValueFromLisp" instance slot-name))

(defun set-slot-value (instance slot-name value)
  (dotnet-call-static "Lisp.MopRuntime" "SetSlotValueFromLisp" instance slot-name value))

(defclass bench-base () (s1 s2 s3))
(defclass bench-derived (bench-base) (s4 s5 s6))

(defgeneric bench-gf (obj))
(defmethod bench-gf ((obj bench-base)) :base)
(defmethod bench-gf ((obj bench-derived)) :derived)

(defun run-benchmarks ()
  (let ((base (make-instance 'bench-base))
        (derived (make-instance 'bench-derived))
        (iterations 1000000))
    
    (print "Benchmarking dispatch (cache hits)...")
    (time
     (let ((i 0))
       (tagbody
        loop
          (if (< iterations i) (go done))
          (bench-gf base)
          (bench-gf derived)
          (setq i (+ i 1))
          (go loop)
        done)))

    (print "Benchmarking slot-value...")
    (set-slot-value base 's1 1)
    (time
     (let ((i 0))
       (tagbody
        loop
          (if (< iterations i) (go done))
          (slot-value base 's1)
          (setq i (+ i 1))
          (go loop)
        done)))

    (print "Benchmarking set-slot-value...")
    (time
     (let ((i 0))
       (tagbody
        loop
          (if (< iterations i) (go done))
          (set-slot-value base 's1 i)
          (setq i (+ i 1))
          (go loop)
        done)))))

(run-benchmarks)

(in-package "CLRHACK")

(let ((count 5)
      (tracker "Start"))
  (let ((loop-fn (lambda (self n)
                   (if n ; Assume simple truthy check against n > 0 for demo purposes. Let's just mock with string vs nil
                       (let ((next-val "continue")) ; dummy check instead of numeric ops
                          (%write-line "Counting down...")
                          (%write-line tracker)
                          (setq tracker "Mutated in flight!")
                          (if count
                              (progn
                                (setq count nil) ; simple toggle to terminate
                                (self self "recurse"))
                              (%write-line "Done!")))
                       (%write-line "Error")))))
    (loop-fn loop-fn "start")))
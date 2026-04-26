;; Comprehensive test file for the Lisp reader

;; 1. Simple integer and case-folding test
(defun test-case (a-parameter)
  "A simple function.")

;; 2. Conditional reading
#+HAS-FEATURE (defun feature-present () :yes)
#-HAS-FEATURE (defun feature-absent () :no)

;; 3. Data types
"This is a string with an escaped \" quote."
|An escaped symbol with spaces and CaSe|
#(1 2 "vector" 3)
#2A((1 2) (3 4))
123.45
9876543210 ; A long integer
123456789012345678901234567890 ; A bignum


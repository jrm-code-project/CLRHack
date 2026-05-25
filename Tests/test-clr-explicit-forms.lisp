(clr-defclass person ()
  ((name :accessor person-name)
   (age :accessor person-age)))

(clr-defmethod person-inline-method ((self person))
    "INLINE-METHOD-OK")

(setq p (clr-new "PERSON" nil))
(clr-call-virt p "PERSON" "set_person_name" ("void" "object") "Ada")
(clr-call-virt p "PERSON" "set_person_age" ("void" "object") 42)

(setq n (clr-call-virt p "PERSON" "get_person_name" "object"))
(setq a (clr-call-virt p "PERSON" "get_person_age" "object"))

(if (%EQ n "Ada")
    (if (%EQ a 42)
        "CLR-EXPLICIT-FORMS-OK"
        "CLR-EXPLICIT-FORMS-BAD-AGE")
    "CLR-EXPLICIT-FORMS-BAD-NAME")

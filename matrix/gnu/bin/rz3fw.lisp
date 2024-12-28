;; Name Project: "GNU Emacs Appendix C Porting Common Lisp"
;; Name Program: "GNU Emacs Shark C Porting"
;; Name Extension: "Lisp"
;; Name Data 512
;; Name Unit 512

;; here is an example of a common lisp
(defun *map-quation-list* (func list)
  (loop for x in list
	for flag = t then (not flag)
	collect (if (flag x (funcall func x)))))

;; with the vactor wind binding to wtwo functions
(defun *add-quation-list* (list x)
  (*map-quation-list* (lambda (a) (+ a x)) list))

;; static of reference sum list to stables works
;; checkup list pier in arguemnts about base of quation
;; add exponential of sum about the list of issue base
;; arguments to make the mecahnism of list about the
;; quation add about list.

(defun *sum-list* (list)
  (if list
      (+ (car list) (sum-list (cdr list)))
    0))

;; where a more interactive minded programmer migth write
(let ((total 0)) (dolist (x my-list) (incf total x)) total)
(loop for x in my-list sum x)

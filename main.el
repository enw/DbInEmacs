;; database in elisp
;; based loosely on http://www.gigamonkeys.com/book/practical-a-simple-database.html

;; the database
(defvar *db* nil)

;; adding a person to the database
;;(make-person "enw" "elliot" "winard" "jgc")
(defun make-person (id firstname lastname spouseid)
  (list :id id :firstname firstname :lastname lastname :spouseid spouseid))

;; add a person to the database
;;(add-record (make-person "enw" "elliot" "winard" "jgc"))
(defun add-record (person) (push person *db*))

;; what is in db
;; (dump-db)
(defun dump-db ()
  (dolist (cd *db*)
    (print cd)))

;; save
;; (save-db "~/ppl.edb")
(defun save-db (filename)
  (append-to-file (prin1-to-string *db*) nil filename))

;; playing with elisp plist
;; symbol properties / hash
(put 'fly 'verb 'transitive)
(put 'fly 'noun '(a buzzing bug))
(get 'fly 'verb)
(get 'fly 'noun)
(symbol-plist 'fly)
(function-get 'fly 'verb)

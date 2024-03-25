;; scheme (chez scheme)
; Chez Scheme Version 9.5.8 (Apr 25 2022)
; https://cisco.github.io/ChezScheme/release_notes/v9.5/release_notes.html

; Homepage
; https://cisco.github.io/ChezScheme/
; https://www.scheme.com/
; https://www.scheme.com/resources.html

; Repo
; https://github.com/cisco/ChezScheme

; Chez Scheme Version 9 User's Guide
; http://cisco.github.io/ChezScheme/csug9.5/csug.html

; Revised6 Report on the Algorithmic Language Scheme (R6RS)
; http://www.r6rs.org/

; REPL
; http://cisco.github.io/ChezScheme/csug9.5/use.html

; The Scheme Programming Language, Fourth Edition - R. Kent Dybvig
; https://www.scheme.com/tspl4/


;; alias
(define call/cc call-with-current-continuation)

;; continuations
(let (
  (my-val (call/cc
            (lambda (k)
              (display "yes\n")
              (k 5)
              (display "no\n") ) ) ) )
  (display my-val) )
;; my is now 5

;; continuations with call/cc
(define my
  (call/cc
    (lambda (k)
      (display "yes\n")
      (k 5)
      (display "no\n") ) ) )
;; my is now 5



;; Language: R5RS Standard Scheme
(let ((empno (ssn-of employee-name)))
  (while (is-manager empno)
    (let ((employees (length (underlings-of empno))))
      (printf "~a has ~a employees under him:~%" employee-name employees)
      (for-each
        (lambda (empno)
          ;; Within this lambda expression the variable empno refers to the ssn
          ;; of an underling. The variable empno in the outer expression,
          ;; referring to the manager's ssn, is shadowed.
          (printf "Name: ~a, role: ~a~%"
                  (name-of empno)
                  (role-of empno)))
        (underlings-of empno)))))



; Interconvertible DS and CPS definitions of the map procedure.
; As can be noticed, the CPS transformation commits the order of evaluation of
; subexpressions in an application, which is not in the true spirit of Scheme.

; ds
; [A -> B] * List(A) -> List(B)
(define c2d
  (lambda (f l)
    (letrec ([loop (lambda (l)
              (if (null? l)
                '()
                (cons (f (car l)) (loop (cdr l)))))])
      (loop l)))
)

; cps
; [A * [B -> Ans] -> Ans] * List(B) * [List(B) -> Ans] -> Ans
(define d2c
  (lambda (k)
    (k (lambda (f l k)
          (letrec ([loop (lambda (l k)
            (if (null? l)
              (k '())
              (f (car l) (lambda (v)
                           (loop (cdr l) (lambda (vs)
                                            (k (Cons v vs) )))))))])
      (loop 1 k)))))
)


; Interconvertible DS and CPS definitions of the identity procedure in Scheme:
; (lambda (x) x)
; (lambda (k) (k (lambda (x k) (k x))))


; https://en.wikipedia.org/wiki/Continuation-passing_style
; https://wiki.haskell.org/Continuation

; Direct style factorial: NOT tail-recursive
(define (factorial n)
  (if (= n 0)
    1
    (* n (factorial (- n 1)))))

; Direct style factorial: TAIL-RECURSIVE
(define (factorial n)
  (f-aux n 1))
(define (f-aux n acc)
  (if (= n 0)
    acc
    (f-aux (- n 1) (* n acc))))

; https://en.wikipedia.org/wiki/Call-with-current-continuation

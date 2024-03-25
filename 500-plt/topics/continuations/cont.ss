;; call-with-current continuation (aka call/cc) is one of the most powerful
;; features of the Scheme programming language.
;; (call-with-current-continuation function) takes a 1 argument lambda
;; and calls it with a "continuation" as an argument.  If the lambda returns
;; normally, call/cc returns that value.  But the continuation is a special
;; one argument function.  If ANYTHING calls that continuation, controll
;; jumps back to the caller of call/cc, and call/cc returns THAT value.

;; Call/cc can be used to jump out of a deeply nested controll flow (EG, grab
;; a continuation at the start of a deep search, once the item is found,
;; use the continuation to jump out of the search quickly.  It can also be
;; used the other way, to jump back INTO a calculation.  All gotos, exception
;; mechanisms, etc, can be derived from call/cc

;; This is one of the reasons I think scheme qualifies as "way kewl",
;; first class continuations.  This is one of many examples of what
;; call/cc can do.  In this case, a simple multitasking system is 
;; implemented.  There are 3 functions, (exit) (fork fn arg) and (yield)

;; (exit) will exit the current thread, and if there is no thread
;; waiting on the ready-list, it will exit the scheme system, calling
;; the origional version of exit.

;; (fork fn arg) will start a new thread which executes (fn arg)
;; and then (exit)s.

;; (yield) just gives control to the next thread waiting to be run.
;; This IS a cooperative system, so a thread only gives up control
;; when it calls yield.

;; well, a (not so) simple call/cc example:  Cooperative multithreading

;; Written off the top of my head.  No guarentees of correctness

;; Using call-cc between these threads is asking for trouble, and
;; will most likely break this system horribly!

;; The list of threads waiting to run.  This is a list of one
;; argument non-returning functions (continuations, mostly)
;; A continuation is a non-returning function, just like (exit),
;; in that it never gives up controll to whoever called it.

(define readyList '())


;; A non-returning function.  If there is any other thread
;; waiting to be run, it causes the next thread to run if there
;; is any left to run, otherwise it calls the origional exit
;; which exits the whole environment.
(define exit
  ;; The origional exit which we override.
  (let ((exit exit))
    ;; The overriding function.
    (lambda ()
      (if (not (null? readyList))
	  ;; There is another thread waiting to be run.
	  ;; So we run it.
          (let ((cont (car readyList)))
            (set! readyList (cdr readyList))
	    ;; Since the readyList is only non-returning
	    ;; functions, this will not return.
            (cont '()))
	  ;; Nothing left to run.
	  ;; The origional (exit) is a non returning function,
	  ;; so this is a non-returhning function.
          (exit)))))

;; Takes a one argument function with a given
;; argument and forks it off.  The forked function's new
;; thread will exit if/when the function ever exits.
(define (fork fn arg)
  (set! readyList
        (append readyList
		;; This function added to the 
		;; readyList is non-returning,
		;; since exit is non returning.
		(cons
		 (lambda (x)
		   (fn arg)
		   (exit)) '()))))

;; Gives up controll for the next thread waiting to be run.
;; Although it will eventually return, it gives up controll
;; and will only regain it when the continuation is called.
(define (yield)
  (call-with-current-continuation
   ;; Capture the continuation representing THIS call to yield
   (lambda (thisCont)
     ;; Stick it on the ready list
     (set! readyList
           (append readyList
                   (cons thisCont '())))
     ;; Get the next thread, and start it running.
     (let ((cont (car readyList)))
       (set! readyList (cdr readyList))
       ;; Run it.
       (cont '())))))


;; Test case, at the prompt
;; > (load "multitask.scm")
;; > (fork (lambda (x) (display x) (newline)) 'foo)
;; > (fork (lambda (x) (display x) (newline)) 'bar)
;; > (yield)
;; > (yield)
;; > (fork (lambda (x) (display x) (newline)) 'baz)
;; > (exit)

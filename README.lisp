
 (define (fringe tree) 
   (define nil '()) 
   (if (null? tree)  
       nil 
       (let ((first (car tree))) 
         (if (not (pair? first)) 
             (cons first (fringe (cdr tree))) 
             ;; bad line follows: 
             (cons (fringe first) (fringe (cdr tree))))))) 

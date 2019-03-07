 ;; First try.  If the current element is a leaf, cons it to the fringe 
 ;; of the rest.  If the current element is a tree, cons the fringe if 
 ;; it to the fringe of the rest.  .... Won't work because the bad line 
 ;; indicated won't build a flat list, it will always end in nested 
 ;; cons. 
 (define (fringe tree) 
   (define nil '()) 
   (if (null? tree)  
       nil 
       (let ((first (car tree))) 
         (if (not (pair? first)) 
             (cons first (fringe (cdr tree))) 
             ;; bad line follows: 
             (cons (fringe first) (fringe (cdr tree))))))) 
  

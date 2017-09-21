##### Exercise 3
`(deffacts data.
	(count 0)(winning-boards 2 5 8 13 24 35)
    (chosen-numbers 3 5 ...)`
    
` (defrule R1
 	(winning-board $?list)    
    ?f1 <- (chosen-numbers $?x ?y $?z)
    (test(number ?y $?list)))
    ?f2 <- (count ?num)
    =>
    (retract ?f1 ) (assert (count (+ ?num 1))
    (assert(chosen-numbers $?x $?z))`


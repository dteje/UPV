# Block 1 - Knowledge representation and search
## Unit 1. Rule-based systems
+ 2 types of knowledges
 + Declarative: list ingredients
 + Procedural: How to use them

#### 2. Rule based systems
+ System composed of:
	+ rule base: if-then (usually). formed by an antecedent (declarative knowledge) and a consequent (procedural [operations], not declarative). Operations:
	  + Remove by negation by failure: what is not in the working memory, is false
	+ working memory: representation of the elements of the situation
	+ inference engine: the "reasoning" mechaninsm of the system

#### 6. Facts in Clips
+ $?x is a variable of multiple elements (even 0)
+ Once a variable is set to a value it bounds to it (not even Empty)

###### Exercise: Multi-field variables
Pattern: `lista ?x $?y a ?x ?z`
+ fact-0: Yes, matching the a with the 2nd one.
+ f-1: No
+ f-2: Yes, only sol: `a=?x. bba=$?y, a=a, c=?z` 

Pattern: `lista $?x a $?y`
+ f-0: 2 possibilites, depending on which `a` we pick

Pattern: `lista $?x a ?z`
+ f-0: No
+ f-1: Yes, only 1 sol
 	
	


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

## Unit 2. Inference and control in RBS
#### 1. Inference engine
CLIPS inference engine is based on a RETE algorithm
+ **Matching:** Rule matching generates an Agenda/Conflict Set with all the instances found.
+ If the Agenda is not empty
	+ **Selection:** A rule instance is selected from the Conflict Set following a criterion
	+ **Execution:** The RHS of the instance is executed. It updates the Working Memory if necessary.

#### 2. Conflict resolution strategies
##### Depth 
LIFO - More priority to most recent facts and rules
##### Breadth
FIFO - More priority to older facts and rules
##### Random
##### Specificity
More priority to those with more details or constraints
#### 3. Examples
##### Example 2



# Glosario
+ Antecedent: premise or condition that must hold for the rule to be applicated
+ Consequent: Conclusion or action executed over the current state 
+ LHS: Left-Hand side of the rule. Antecedent
+ RBS: Rule-based systems. Systems composed of rule base, working memory and inference engine
+ RHS: Right-Hand side of the rule. Consequent


 	
	


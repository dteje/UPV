# Unit 1. Relational Databases
### 1.2 Relational Data Model
+ **Entities** = tables
+ **Instances** = rows
+ **Attributes** = columns (must have same domain)

+ Applications can, with queries:
	+ Insert
	+ Delete
	+ Update


##### Queries with relational algebra
###### Exercise

5 - `(((Teaching[cod_pro, cod_asg] x Subject) WHERE GT=2) [cod_pro] x Lecturer))[nombre]`

##### Queries using SQL

FROM: can be +1 table: *FROM student, teaching*
###### Exercise
1. `SELECT nombre FROM subjet`
2. `SELECT nombre FROM subject WHERE GP=4`
3. `SELECT nombre FROM lecturer, teaching WHERE categoria='Titular' AND cod_asg='11545' AND teaching.cod_pro = lecturer.cod_pro`

  


 



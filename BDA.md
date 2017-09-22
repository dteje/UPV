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

+ FROM: can be +1 table: *FROM student, teaching*
+ Avoiding naming problems: *table.attribute*

###### Exercise
1. `SELECT nombre FROM Subjet`
2. `SELECT nombre FROM Subject WHERE GP=4`
3. `SELECT nombre FROM Lecturer, Teaching WHERE Categoria='Titular' AND cod_asg='11545' AND Teaching.cod_pro = Lecturer.cod_pro`
4. `SELECT Lecturer.nombre FROM Lecturer, Teaching, Subject WHERE cateogria='Titular' AND Semester='1A' AND Subject.cod_asg = Teaching.cod_asg AND Teaching.cod_pro = Lecturer.cod_pro `
5. `SELECT Lecturer.nombre FROM Lecturer, Teaching, Subject WHERE Subject.GT = '2' AND Subject.cod_asg = Teaching.cod_asg AND Teaching.cod_pro = Lecturer.cod_pro`
6. `SELECT nombre FROM Lecturer WHERE Categoria='Titular' AND telefono IS NULL`


##### Tuple schema
+ Formed by tuples
+ {(Name, domain), (Name, domain), ...}
+ Order of tuples is not important, but respecting domains is 

##### Relation schema
+ The tables is a matrix representation of a Relation
+ Degree = num. of attributes
+ Card

### 1.3 Interpretation of a RD
###### Questions diap. 21
1. No
2. Yes, that's why we have the Crosses table. 
3. No we can't have same tuple *river-province*
4. 
5. Max: 1, Min: 0






 



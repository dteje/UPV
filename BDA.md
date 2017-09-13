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
  


 



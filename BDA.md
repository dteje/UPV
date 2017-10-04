# Unit 1. Relational Databases
### Relational Data Model
+ **Entities** = tables
+ **Instances** = rows
+ **Attributes** = columns (must have same domain)

+ Applications can, with queries:
  + Insert
  + Delete
  + Update


#### 1. Simple queries
###### Exercise 
```SQL
5. (((Teaching[cod_pro, cod_asg] x Subject) WHERE GT=2) [cod_pro] x Lecturer))[nombre]```

##### Queries using SQL

+ FROM: can be +1 table: *FROM student, teaching*
+ Avoiding naming problems: *table.attribute*

###### Exercise
​```SQL 
1. SELECT nombre FROM Subjet;
2. SELECT nombre FROM Subject WHERE GP=4;
3. SELECT nombre FROM Lecturer, Teaching WHERE Categoria='Titular' AND cod_asg='11545' AND Teaching.cod_pro = Lecturer.cod_pro;
4. SELECT Lecturer.nombre FROM Lecturer, Teaching, Subject WHERE cateogria='Titular' AND Semester='1A' AND Subject.cod_asg = Teaching.cod_asg AND Teaching.cod_pro = Lecturer.cod_pro ;
5. SELECT Lecturer.nombre FROM Lecturer, Teaching, Subject WHERE Subject.GT = '2' AND Subject.cod_asg = Teaching.cod_asg AND Teaching.cod_pro = Lecturer.cod_pro;
6. SELECT nombre FROM Lecturer WHERE Categoria='Titular' AND telefono IS NULL; ```


##### Tuple schema
+ Formed by tuples
+ {(Name, domain), (Name, domain), ...}
+ Order of tuples is not important, but respecting domains is 

##### Relation schema
+ The tables is a matrix representation of a Relation
+ Degree = num. of attributes
+ Card

### 1.3 Interpretation of a RD
###### Questions River
1. No
2. Yes, that's why we have the Crosses table. 
3. No we can't have same tuple *river-province*
4. Yes
5. Max: 1, Min: 0

###### Questions Library
2. No
3. No, BOOK has only an attribute Author, but there is no AUTHOR table
4. No, as Topic is a Foreign Key (max. 1)
6. Yes

###### Questions Cycle racing
1. No
4. No
5. Yes, as no Unicless constrainct to Dorsal 

# Unit 2. SQL
### 2.1 DML: Queries and Data Manipulation
#### 1. Simple queries 
###### Example s. 25 
​```SQL
SELECT etapa.netapa, puero.nompuerto FROM etapa, puerto WHERE etapa.dorsal = puerto.dorsal;```

###### Example s. 27
​```sql
SELECT C.nombre, E.netapa 
FROM Etapa E, Ciclista C 
WHERE E.km>150 AND E.dorsal = C.dorsal;```

###### Example s. 28
​```sql
SELECT C2.nombre
FROM  Ciclista C1, Ciclista C2
WHERE C1.nombre = 'Miguel Induráin'
AND C1.nomeq = C2.nomeq
AND C2.edad < C1.edad
```

#### 2. Subqueries
```SQL 
SELECT * FROM C1 WHERE (subquery)
```
#### 3. Comparison
###### Example s. 36
``` SQL
SELECT P1.nompuerto 
FROM Puerto P1 
WHERE P1.altura > (SELECT AVG(P.altura) FROM Puerto P WHERE P.Categoria='2')
```
###### Example s. 41
``` SQL
SELECT E.salida, E.llegada
FROM Etapa E
WHERE E.netapa IN 
	(SELECT P2.netapa FROM Puerto P2 WHERE P2.pendiente = 
		(SELECT MAX(Pendiente) FROM Puerto P));

/*Se puede cambiar IN por = SOLO si estamos seguros de que solo hay una conicidencia*/
```
*Other solution*

```SQL
SELECT DISTINCT E.salida, E.llegada
FROM Etapa E, Puerto P
WHERE E.netapa = P.netapa
AND pendiente = 
	(SELECT MAX(pendiente) FROM Puerto);
```

###### Example s. 43

```sql
SELECT E.director
FROM EQUIPO E, CICLISTA C
WHERE C.nombre In (SELECT C1.nombre FROM CICLISTA C1 WHERE C1.nombre LIKE `A%`);
```

###### Example s. 44

```sql
SELECT ET.netapa
FROM ETAPA ET
WHERE ET.dorsal IN 	(SELECT C.dorsal
                   	FROM CICLISTA C
                    WHERE C.nomeq IN	(SELECT EQ.nomeq
                            			FROM EQUIPO EQ
                            			WHERE E.director LIKE 'A%');
                    )
```

 ###### Example s. 48

```sql
SELECT nombre
FROM CICLISTA 
WHERE dorsal NOT IN 	(SELECT dorsal 
                         FROM etapa);
```

#### 4. Universal quantification 

###### Example s. 54

```sql
SELECT C.nombre
FROM Ciclista C
WHERE NOT EXISTS	(SELECT *
                    FROM Maillot M
                    WHERE NOT EXISTS	(SELECT * 
                                         FROM Llevar L 
                                         WHERE L.codigo = M.codigo 
                                         AND L.dorsal = C.dorsal))
```

###### Example s. 55

```sql
SELECT C.nombre
FROM Ciclista C, Etapa E
WHERE C.dorsal = E.dorsal
AND NOT EXISTS	(SELECT * FROM Puerto P WHERE NOT EXISTS)
```









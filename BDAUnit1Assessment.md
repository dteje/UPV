##### Question 1
Given the extension of the db, which will the behavior of the DBMS be in front of the execution of the following insertion statement?
```sql
INSERT INTO Edition (rcode, year, city, distance) VALUES ('CA', '2003', 'Auckland', 13)
```

**a.** The tuple will not be inserted because an error will happen since an attribute is missing 

*Winner is not PK, so it can be NULL value*

**b. Insert the tuple Edition('CA, '2003', 'Auckland', 13, ?)**

**c.** The tuple will not be inserted because the integrity constraint "FK:{rcode, year, winner} -> Participates" is violated

*1 of the attributes (ẃinner) is NULL. "Weak referential integrity" means that if one of the attributes has the null value, the constraint is not going to be checked*

**d.** If the evaluation mode for the referential integrity is inmediate, the tuple will not be inserted ,but it will be inserted if the referential integrity has been deferred

*Inmediate: After each operation, all constraints are checked. Deferred mode: No constrainct checked until the end of the transaction*

##### Question 2

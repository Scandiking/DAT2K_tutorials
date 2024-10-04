/*
Note: you will need to have the 'dvdrental' database downloaded and imported in order to make sure all queries listed
here will work for you. If you don't have it, the console will throw an error upon certain queries. Certain queries
can be done without the 'dvdrental' database, but will not tell you much unless you have other databases on your
computer.
*/

/*
Retrieves all columns and their associated information for tables that are part of the public schema in a PostgreSQL 
database. The query is performed on the information_schema.columns table, which is a system catalog view containing 
information about columns in all tables in the database.
*/
SELECT * FROM information_schema.columns
WHERE information_schema.columns.table_schema='public'
ORDER BY table_name;

/*
To obtain information about primary key and foreign keys, use the following SQL statement (make sure you stand on 
'dvdrental') This query will give you detailed information about all column constraints including primary keys, 
foreign keys, unique constraints, etc. This is useful for understanding the relationship between tables, data integrity 
requirements, and other metadata about the database structure.
*/
SELECT * FROM information_schema.constraint_column_usage
WHERE information_schema.constraint_column_usage.table_schema='public';


/*
To obtain information about the referential integrity constraints for foreign keys, try the following SQL statement. 
This query will give you detailed information about all referential constraints (typically foreign keys) in tables that 
are part of the public schema. This information is useful for understanding the relationships and integrity constraints 
between tables.
*/
SELECT * FROM information_schema.referential_constraints
WHERE information_schema.referential_constraints.constraint_schema='public';

-- To obtain information about all user-defined data types (also known as "domains"), try this SQL statement:
SELECT * FROM information_schema.domains
WHERE information_schema.domains.domain_schema='public';

-- To obtain information about all constraints applied to user-defined data types (domains), try this SQL statement:
SELECT * FROM information_schema.domain_constraints
WHERE information_schema.domain_constraints.constraint_schema='public';

-- To obtain information about all check constraints, try this SQL statement:
SELECT * FROM information_schema.check_constraints
WHERE information_schema.check_constraints.constraint_schema='public';

-- To obtain information about the constraints for a given table, try this SQL statement:
SELECT * FROM information_schema.table_constraints
WHERE information_schema.table_constraints.table_name='actor';

-- To obtain information about the constraints for a given table, try this SQL statement:
SELECT * FROM information_schema.table_constraints
WHERE information_schema.table_constraints.table_name='customer';
-- To see where the data directory is, use this query:
SHOW data_directory;

-- To list the OID for each database in your cluster, use this 
-- query:
SELECT oid, datname FROM pg_database;

-- If you would like to find the OID of a specific database, 
-- for example, "dvdrental" database, use this query: 
SELECT oid, datname FROM pg_database WHERE datname='dvdrental';

-- To find the filenode path of a particular table, 
-- for example, table "customer" in "dvdrental" database, 
-- use this query:
SELECT pg_relation_filepath('customer');

-- To find only the filenode for table "customer",
-- use this query_
SELECT pg_relation_filenode('customer');

/*
Before going down to the level of rows in a table, it is worthy 
to try some queries that show more information about the 
database and its tables. To know the size of the database 
"dvdrental" try this query:
*/
SELECT pg_size_pretty(pg_database_size('dvdrental'));

/*
To get information on the size of each database in the database 
server, try this query:
*/
SELECT pg_database.datname, pg_size_pretty(pg_database_size(pg_database.datname)) AS SIZE 
FROM pg_database;

/* 
Moving to talbes, to get the total size of a table, 
for example "customer" table, try this query
*/ 
SELECT pg_size_pretty(pg_relation_size('customer'));

/*
To get the total size of "customer" table including indexes and 
other objects, try this query:
*/
SELECT pg_size_pretty(pg_total_relation_size('customer'));

/*
To get a list of the top 5 biggest tables, try this query:
*/
SELECT
	relname AS "relation", pg_size_pretty(pg_total_relation_size(C.oid)) AS "total_size" 
	FROM pg_class C
LEFT JOIN pg_namespace N ON(N.oid=C.relnamespace) 
WHERE nspname NOT IN ('pg_catalog', 'information_schema') AND C.relkind <> 'i' AND nspname !~'^pg_toast'
ORDER BY pg_total_relation_size(C.oid) DESC
LIMIT 5;

/*
To get inforamtion on the number of pages and rows contained in 
the table "rental" (the biggest table in "dvdrental" database, 
try the following query: 
*/
SELECT relname, oid, reltuples, relpages
FROM pg_class 
WHERE relname='rental';

-- To get information on the storage structure of "dvdrental" 
-- database, try this query:
SELECT relname, oid, relpages, reltuples FROM pg_class;

/*
Every table is stored in an array of pages of a fixed size 
(8 kB) where a particular row is stored in any page. 
A pointer called CTID is created by PostgreSQL consisting of a 
page number and the index of the row's identifier. To access the 
CTID of a row in a table "customer", use this query:
*/
SELECT CTID, * FROM customer;

/*
When a typle is attempted to be stoed and exceeds the page size of
8 KB, TOAST breaks the data of that large tuple into smaller pieces
(each piece of size 2 KB) and stores them into a TOAST table. The
TOAST table is named as pg_toast_[OID of the original table] and it
may or may not be used. For example, the OID of "staff" table is
16531 and the name of its TOAST table is "pg_toast_16531". Try the
following query:
*/
SELECT relname, relpages
	FROM pg_class,
	(SELECT reltoastrelid FROM pg_CLASS
	WHERE relname='staff') st
WHERE oid = st.reltoastrelid;



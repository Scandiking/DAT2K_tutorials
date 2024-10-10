# University of South-Eastern Norway
## Information Technology and Information Systems
### Database 2 (DAT2000)

This repository consists of `.sql` script files from the Database 2 course.

> This is an advanced course that requires that you have passed the course DAT1000 Database 1.

Literature: Connolly T. and Begg C. (2015) _Database Systems: A Practical Approach to Design, Implementation, and Management._ 6th. edition, Pearson Education. 

---

`Tutorial{#}` are tasks to be done given out by the lecturer. They are unfortunately not fit for sharing due to copyrighted material, but comments will explain what task the query is for. Comments are also as always added for my own learning's sake.

- [x] [Tutorial1.sql](https://github.com/Scandiking/DAT2K_tutorials/blob/main/Tutorial1.sql)

  - Creating a table
  - Creating a PostgreSQL database


 - [x] [Tutorial2.sql](https://github.com/Scandiking/DAT2K_tutorials/blob/main/Tutorial2.sql)

   - Importing the [`dvdrental` database](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/) and
   - apply queries in Section 2 provided in this [link](https://postgresqltutorial.com)


- [x] [Tutorial3.sql](https://github.com/Scandiking/DAT2K_tutorials/blob/main/Tutorial3.sql)
  
   - Getting information about tables
   - Primary Key and Foreign Key Information
   - Referential Integrity Constraints
   - Information about user-defined data types
   - Information about check constraints


- [x] [Tutorial4.sql](https://github.com/Scandiking/DAT2K_tutorials/blob/main/Tutorial4.sql)
  - Database physical storage in PostgreSQL
  - Tablespaces
  - Indexes in PostgreSQL
    
    
- [ ] (Tutorial 5 and 6 is replaced with _Cloud solutions and PostgreSQLV3.pdf_ and _Exam DAT2000 2022.pdf_)
  - >However, in this tutorial, we will try one of the two free cloud-based database offerings mentioned in 
this [blog](https://www.dbi-services.com/blog/a-free-postgresql-cloud-database/), which is ElephantSQL. We try free package named “TINY TURTLE” ☺ and then create a new 
account or sign up with Google account to save time
  - ~~ElephantSQL~~ is [shutting down](https://www.elephantsql.com/blog/end-of-life-announcement.html). Therefore I have used the other option listed instead, ~~[Heroku](https://www.heroku.com/).~~
  - ~~Heroku~~ is bought by Salesforce who is no longer providing any free tiers.
    - The point of the tutorial is anyway nothing but connecting the database to a server-based one and connecting to it trough PostgreSQL.
- [ ] [Exam DAT2000 2022.pdf](https://github.com/Scandiking/DAT2K_tutorials/blob/main/Exam%20DAT2000%202022.md) is in progress...

- [ ] [Tutorial7.sql]
  - Server installation, setup, and configuration
  - Client authentication
  - Database roles
  - Backup and recovery, and restoring database
  - Database maintenance
  - Monitoring database activity
  - Monitoring disk usage
  - Performance tuning
    
- [ ] [Tutorial8.sql]
  - > Now try more variations of database roles management in PostgreSQL by applying the exercise in this [link](http://www.postgresqltutorial.com/postgresql-roles/)
    
- [ ] [Tutorial9.sql]
  - Basics 
    - Creating function
  - Control structures
  - Exception handling 

- [ ] [Tutorial10.sql]
  - Extra features
    - Creating procedures 

- [ ] (Tutorial 11 and 12 is replaced with _Trigger Exercise_ 
 
- [ ] [Tutorial13.sql]()
  - Triggers in PostgreSQL

- [ ] [Tutorial14.sql]()
  - Managing triggers in PostgreSQL

---

### [Learning outcome:](https://www.usn.no/english/academics/study-and-courseplans/#/emne/DAT2000_1_2024_V%C3%85R)
- #### Knowledge
  - key tasks in database administration and -security, such as authorization and access control, backup and recovery, replication and synchronization
  - Applicatoin and behavior of stored procedures and triggers
  - Transaction management, simultaneity and record locking in a multi-user-database
  - Physical storage methods for relational data
  - Purpose of indexes and denormalization, and how this can be accomplished
  - How the database system optimizes queries and executes them
  - Other, non-relational data-storage methods, e.g. object-oriented databases and NoSQL-databases

- #### Skills
  - Execute basic administration and operation of a database system
  - Program stored procedures, triggers, and transaction management with a procedure language in a relational database management system (RDBMS)
  - Basic use of non-relational data storage and semi-structured data

- #### General competencies
  - Be able to acquire updated knowledge within the knowledge and skill areas named above
  - Understand how databaes are included in application development and operation
  - Have experpience with working in a group
  - Be able to reflect on their own professional practice and improve it trough mentoring and guidance

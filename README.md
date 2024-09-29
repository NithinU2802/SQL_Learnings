# SQL - Structured Query Language
    SQL is an Query Tool used for Relational Database Management System to 
make an proper way of arranging the data in order to retrive and update
easily for make an perfect format.

    Eg: Working in a restaurants handling orders of customers

    Moreover sql is used to make changes or create a table which can have
rows said to be records and columns said to be fields.
    Schema - It represents the table structure. Show how data is Organized.

Relational Database - The way of orgainizing tables each table contains 
information about the scenario that where data has been generated which
stored in easy accessable format.

# Keys & Unique Values
    1. Primary Key - It's an unique value of the table which makes easy to 
access information in the database that may have identical value on it.
    2. Alternate Key - In some part of situation we may not to depend on 
the same key. In this case combination of values would be also refer to
alternate key.
    3. Surrogate Key - Which represent that an auto generated value that 
ensure that table values are unique when we move down the row.
    4. Forign Key - This key is used to make access from one table to 
another which makes an relable feature for breaking down the table.
    5. Composite Key - Combining two or more column of the table to 
make a key which is unique.

    UUI - Universal Unique Identifier it is a key which used global network to
make an unique idenification number for an table.

# Types of Relationship in database
    1. One to Many
    2. Many to One
    3. one to one

# One to Many Relationship 

   Table 1:
   
    ----------------
    | id   | dish  |
    --------------- 
    | 1    | Meal  |
    | 2    | Pulav |
    | 3    | Poori |
    ----------------

   Table 2:
   
    ---------------------------
    |  Name   |  Ordered dish |
    ---------------------------
    |  Rocky  |      2        |
    | Sanjay  |      1        |
    |  Ram    |      2        |
    |  Ragu   |      3        |
    ---------------------------
    From the above tables we can refer that table on id is the kay
access multiple times with occurance work as forign key.

# Many to Many Relationship (Link Table)

   Table 1:
   
    -----------------
    | id   | chief  |
    -----------------
    | 1    | Raju   |
    | 2    | vijay  |
    | 3    | Ajith  |
    -----------------

   Table 2:
   
    ----------------
    | id   | dish  |
    --------------- 
    | 1    | Meal  |
    | 2    | Pulav |
    | 3    | Poori |
    ----------------

   Table 3:
   
    ---------------------------
    |  Name   |  Ordered dish |
    ---------------------------
    |  Rocky  |      2        |
    | Sanjay  |      1        |
    |  Ram    |      2        |
    |  Ragu   |      3        |
    ---------------------------

    From the above example tables we can see that the table 1 and table 3
associated through table 2. Here Link table is table 2 which name should be
combination of name of table 1 and table 2.

# One to One Relationship (Direct Mapping for Security)

   Table 1:
   
    ----------------
    | id   | dish  |
    --------------- 
    | 1    | Meal  |
    | 2    | Pulav |
    | 3    | Poori |
    ----------------

   Table 2:
   
    ---------------------------
    |  Name   |   dish        |
    ---------------------------
    |  Rocky  |      1        |
    | Sanjay  |      2        |
    |  Ram    |      3        |
    ---------------------------

    From the above tables we could see that on row in a table map to one row
of other table without replication of key.

# ACID and Transaction

    Transaction:
        1. Check balance of debited account
        2. Update balance after withdrawal
        3. Check balance of credited account
        4. Updated balance after credited

        Which express that transaction is operation which need to be done or
nothing has been done.

    Properties:
        A - Atomicity
        C - Consistency
        I - Isolation
        D - Dualibility

# SQL - Structured Query Language
    Allow us to make modification in database by queries. An query can be 
classified as clause, predicate and expressions.
    clause - keywords used to retrive column from table in query said to be.
    predicate - conditions used to filter and manipulate data within SQL queries.
    expressions - a combination of one or more values, operators and SQL
functions that results in to a value

# ER Diagrams - Entity Relationship Diagrams
    Which provides an outline of database that could me easy identification of
operation before process need to done by the developers.

# DataTypes used in SQL
  1. String - char, varchar
  2. Data - Data, DateTime, TimeStamp
  3. Numbers - Integer, Double Precision, Floating Point, Decimal
  4. NULL - To represent empty fields of database.

# Normalization - Edgar Codd in early 1970's

    Normalization is used to improve integraty and redundancy of data available
in the database. Which can be classified as 1NF, 2NF and 3NF. These are standard
criteria. Each normal form placed top on one another.

1. 1NF - First Normal Form
    which represent values in the each cell are atomic and table should have no
repeating groups.

2. 2NF - Second Normal Form
    which represent no value in a table should depend on only part of a key that 
can be part of a key that can be used to uniquely identify a row. 
Eg:
Consider a table which is
  Customer:
 ------------------------------------
     |  id  |  Name   |  time |  address|
     ------------------------------------
     |   1  | Ram     | 12:00 | Trichy  |
     |   2  | Sam     | 05:00 | Chennai |
     |   3  | Ram     | 02:00 | Trichy  |
     |   4  | Rahu    | 07:45 | Madurai |
     ------------------------------------
   
    From this table we can identify that id is a primary key and name+time could be act
as composite key but the thing is address is partially dependent on composite key by only
name. So we we split the table as below:

Customer:

     --------------------------
     |  id  |  Name   |  time |
     --------------------------
     |   1  | Ram     | 12:00 |
     |   2  | Sam     | 05:00 |
     |   3  | Ram     | 02:00 |
     |   4  | Rahu    | 07:45 | 
     --------------------------
     
 Location:
 
     -------------------
     |  Name | address |
     -------------------
     |Ram    | Trichy  |
     |Sam    | Chennai |
     |Ram    | Trichy  |
     |Rahu   | Madurai |
     -------------------

 3. 3NF - Third Normal Form
     which can be represent as values should not be stored if they can
be calculated from another non-key field.

Eg:

    ------------------------------------------
    |  id  |  item   |  cost |  Acutal price |
    ------------------------------------------
    |   1  | Burger  | 200   |    180        |
    |   2  | Poori   | 30    |    10         |
    |   3  | Dosai   | 50    |    40         |
    |   4  | Sambar  | 50    |    40         |
    ------------------------------------------
    In the above table we can see that actual price is dependent on cost which is non-key value
of the database with -10 rupees discount. To overcome this need to make seperate table for the
customer who order with the discount need to be stored.

# Denormalization
    Denormalization is the process of intentionally duplicating information in
a table, in violation of normalization rules. which done after normalization
not mean to skip. Based on business requirements need to be done.

# Aggregate Function
    which use more than one piece of data to generate some mathematic value to find some sort
of detail form the table. Aggregate functions are count, sum, average(Avg), Min and Max.

# Joining Table
    Consider the restaurant example as customer table consist of Names and dishId from 
the dishId we need to get dishName. For this case joins play good role on it.
    Eg: SELECT Name,DishId,Dishes.name FROM customers JOIN Dishes ON Customers.dishId=Dishes.DishId;

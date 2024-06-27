SELECT order_id, product_name, sales, quantity,
       CASE 
       WHEN sales BETWEEN 0 AND 50 THEN 'small sale'
       WHEN sales BETWEEN 51 AND 100 THEN 'medium sale'
       ELSE 'large sale'
       END AS sales_amount                        
  FROM orders
 WHERE order_id LIKE 'CA%'
 ORDER BY quantity
 LIMIT 10;
 
 -- limiting the query to 3
 SELECT order_id, product_name, sales, quantity,
       CASE 
       WHEN sales BETWEEN 0 AND 50 THEN 'small sale'
       WHEN sales BETWEEN 51 AND 100 THEN 'medium sale'
       ELSE 'large sale'
       END AS sales_amount                        
  FROM orders
 WHERE order_id LIKE 'CA%'
 ORDER BY quantity
 LIMIT 3;
 
 /*
 The types of operations SQL can perform are often referred to as CRUD, 
 or "create, read, update, delete." 
 As data professionals, we're most likely to perform read operations, 
 and that will be the emphasis of this course.
 The superstore database contains a table called returns, 
 which contains information about which orders were returned. 
 Our first line of code is to retrieve the first five rows of this table:
 */
SELECT * 
  FROM returns
 LIMIT 5; 
 
 
 /*
 Let's unpack this code a little further:

* is a special character meaning "all." 
We'll learn more about the SELECT clause later, 
but for now we can read this line as "select all columns."
FROM returns tells SQL which table to read data from. 
We'll learn more about how databases and tables work and how to manage them.
LIMIT 5 returns the number of rows returned to 5. Remember, 
a table might have millions of rows — attempting to return them all could get messy!
Instructions
In order to be successful in our data analyst role, 
we need to familiarize ourselves with all the tables in the database. 
We should also have a table called orders available 
in the database that contains information about purchases.
Pull all columns and the first five rows from orders to preview what this table looks like.
 */
 
 -- mysql dialect
 SELECT *
  FROM orders
 LIMIT 5;
 
 -- t-sql (microsoft sql) dialect
 SELECT *
  FROM orders
 LIMIT 5;
 
 /*
3 of 8 · Different SQL Dialects
Learn
There are many different versions of SQL (also called SQL flavors or dialects). 
We have been coding in a flavor of SQL called SQLite (pronounced "sequel light"). 
Don't worry, though. These different versions are more alike than they are different (just like the different dialects of English). Nearly everything we'll learn in this course — and subsequent SQL courses — applies to all SQL flavors, thanks to the ANSI SQL standard.

ANSI SQL is a standardized version of SQL that serves as a common ground for all SQL dialects. It ensures that the core functionality of SQL remains consistent across different SQL implementations, making it easier for developers to work with various database systems.

However, there are still differences in syntax, functions, and features among SQL dialects. One such difference is how we limit the displayed results.

For example, in T-SQL (Microsoft's SQL flavor), we would write the following query:
SELECT *
  FROM orders
 LIMIT 5;

Explain

Copy
...like this:

SELECT TOP 5 *
  FROM orders;

Explain

Copy
It uses a different word in a different location.

Note that the query above will not run in SQLite (the flavor we're learning). We're showing it here simply as a demonstration.

When working with different SQL dialects, it's important to be aware of their specific syntax and features. However, thanks to the ANSI SQL standard, the majority of the concepts and techniques we learn in SQLite will still be applicable across various SQL implementations.

Instructions
A new analyst was hired for Superstore that knows T-SQL, 
but not SQLite, the SQL flavor for Superstore's database. 
They're trying to look at a sample of the returns table, 
but are frustrated that their query isn't working:

SELECT TOP 4 *
  FROM returns;
Modify their query to run in SQLite.
*/

-- solution
SELECT *
  FROM returns
 
LIMIT 4 ;

/*
4 of 8 · SELECT Rows and Fields
Learn
Most databases we'll work with are like superstore in that they consist of multiple tables of data.

Like a table in a spreadsheet, a database table consists of rows and columns which are often called records and fields.
We've seen how to reduce the number of records shown by using the LIMIT clause:

SELECT *
  FROM orders
 LIMIT 5;

But what about reducing the number of fields shown? 
As we learned earlier, we can retrieve the data from all fields in a table with help of the * wildcard. 
If we want to select specific fields to be returned by the query, we can list them in 
the SELECT clause, separated by commas:

SELECT order_id, order_date, category, subcategory 
  FROM orders;
  
When we specify the columns we want returned, 
the query will execute more quickly and be easier to interpret.

Instructions
You've been asked to provide a sample of sales details to your supervisor. They don't want to see lots of extra information.

Write a query from the orders table that only selects relevant fields:
order_date
order_id
product_name
sales
quantity
Limit the number of records to 5.

*/
-- solution
SELECT order_date, order_id, product_name, sales, quantity 
FROM
orders
LIMIT 5;

/*
Exploring the Database and Schema
5 of 8 · Defining Relational Databases
Learn
As mentioned on the last screen, databases have multiple tables. For example, the superstore database has 3 tables:

orders
returns
managers
Each table in a database is connected to other tables through fields that relate to one another. This type of database is called a relational database, and we can visualize the relationship between tables with a schema diagram. Let's take a look at the diagram for our database:


A database can store large amounts of data more securely and efficiently than a spreadsheet or a text file. However, unlike simply opening a spreadsheet, we actually have to "ask" for data from the database. This is what we do when we write queries in SQL.

We’ll learn how to join multiple database tables together in a future course. For now, each query will just look at one table.

Instructions
Your supervisor has asked you to create a list of locations and regions from the orders table so managers can verify which cities and states they are assigned to.

Write a query to ask the Superstore database to show the city, state, and region fields from the orders table.
Your supervisor only needs to see a sample of the data, so limit your results to 10 records.
Notice that we cannot pull the manager's name in this query because this field is not in the orders table. We'll learn how to add it in a future course!
*/
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

SELECT *
  FROM orders
 LIMIT 5;
 
 Most databases we'll work with are like superstore in that they consist of multiple tables of data.

Like a table in a spreadsheet, a database table consists of rows and columns which are often called records and fields.


We've seen how to reduce the number of records shown by using the LIMIT clause:

SELECT *
  FROM orders
 LIMIT 5;

Explain

Copy
But what about reducing the number of fields shown? As we learned earlier, we can retrieve the data from all fields in a table with help of the * wildcard. If we want to select specific fields to be returned by the query, we can list them in the SELECT clause, separated by commas:

SELECT order_id, order_date, category, subcategory 
  FROM orders;

Explain

Copy
When we specify the columns we want returned, the query will execute more quickly and be easier to interpret.

Instructions
You've been asked to provide a sample of sales details to your supervisor. They don't want to see lots of extra information.

Write a query from the orders table that only selects relevant fields:
order_date
order_id
product_name
sales
quantity
Limit the number of records to 5.
soltion
SELECT order_date, order_id, product_name, sales, quantity 
FROM
orders
LIMIT 5;

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
solution
SELECT city, state, region
FROM orders
LIMIT 10;

Sometimes the notations used to name fields in a table are easy to type, but may look awkward to present.

For example, what if we'd like to rename the following table so the headers have more human-readable names like "Order ID", "Order Date" and "Ship Date?"

order_id	order_date	ship_date
CA-2016-152156	2016-11-08	2016-11-11
CA-2016-152156	2016-11-08	2016-11-11
CA-2016-138688	2016-06-12	2016-06-16
It's possible to do that right from the SELECT clause with help of the AS keyword. AS will let you temporarily rename or alias these fields:

SELECT order_id AS 'Order ID',
       order_date AS 'Order Date',
       ship_date AS 'Ship Date'
  FROM orders;

Explain

Copy
Order ID	Order Date	Ship Date
CA-2016-152156	2016-11-08	2016-11-11
CA-2016-152156	2016-11-08	2016-11-11
CA-2016-138688	2016-06-12	2016-06-16
Aliasing fields does not permanently change their name in the database. Aliases only exist for as long as the query does.
Interestingly, the AS keyword is technically optional, and we can simply write the alias directly after the column or table name like this:

SELECT order_id 'Order ID',
       order_date 'Order Date',
       ship_date 'Ship Date'
  FROM orders;

Explain

Copy
Both approaches are valid and produce the same result, but using AS is preferred for a few reasons:

Readability:
Including AS in the query explicitly indicates that an alias is being used, making it easier for others (or yourself) to understand the query when reading it later.
Consistency:
Different databases may have varying support for aliasing without the AS keyword. To ensure queries are compatible across database systems, it's a good idea to use AS.
Avoiding Errors:
Using AS can prevent potential errors caused by ambiguity, especially when column names are similar to keywords in SQL.
Now let's practice aliasing from the superstore database!

Instructions
Write a query to return the city, state and postal_code fields from orders.
Alias the results as City, State and ZIP Code, respectively. Make sure to capitalize aliases as specified.
Limit results to 10 records.
Tip
If you don't get the correct answer, try clicking the Explain button to analyze your code:
SELECT order_id AS 'Order ID',
       order_date AS 'Order Date',
       ship_date AS 'Ship Date'
  FROM orders;
  
 
 Alternatively of alising instead of AS it can be written directly 
 SELECT order_id 'Order ID',
       order_date 'Order Date',
       ship_date 'Ship Date'
  FROM orders;
solution
/*
Write a query to return the city, state and postal_code fields from orders.
Alias the results as City, State and ZIP Code, respectively. Make sure to capitalize aliases as specified.
Limit results to 10 records.
solution:
*/
SELECT city AS 'City', 
       state AS 'State', 
       postal_code AS 'ZIP Code'
FROM orders
LIMIT 10;

Like with most programming languages, it's often a good idea to include comments explaining the reasoning behind our code.

Unlike the typical SQL code we'll be writing in this course, comments are not executed by the computer. Single-line comments in SQL are started with two dashes, like so:

-- This is a single line comment.
-- Each single line comment must start with two dashes.
SELECT *
  FROM orders
 LIMIT 5;

Explain

Copy
Single line comments can also appear on the same line as code, which can be useful for clarifying what a specific line of code does:

SELECT *
  FROM orders --This query uses the orders table
 LIMIT 5;

Explain

Copy
We can also write multi-line comments by using the /* and */ characters at the start and end of a comment. This is often useful when we want to "comment out" a whole query:

/* 
This is a multi-line comment.
The query below will not run because it is inside of this comment:
​
SELECT order_id, product_name
  FROM orders
 LIMIT 10;
*/

Explain

Copy
Instructions
In your job as a data analyst, you are testing two different queries to see which one shows customer address information in the correct order for mailing labels. The correct order is:

city, state, postal code, country

You don't want to delete either query in the code editor. Instead, your job is to add comments to make sure only one query runs.

Use a multi-line comment to comment out the query that isn't in the correct column order.
Write a single-line comment above the query that is in the correct column order to add clarity to your code. Your comment should say something like, "This query shows city, state, postal code, and country information."
Tip
Click the "Help" dropdown to see a hint, peek at the suggested answer, or go to the Dataquest community to talk to other learners about the exercise.
solution
-- This query shows city, state, postal code, and country information.
SELECT city, state, postal_code, country
  FROM orders
 LIMIT 4;
 
 /*
 
 SELECT country, state, postal_code, city
   FROM orders
  LIMIT 4;
 */
 
 Congratulations on exploring a relational database with the help of SQL! You have already achieved the following:

You read in a set number of records and fields from a given table.
You learned about different SQL dialects.
You selected columns via aliasing.
You used comments to produce legible, comprehensible queries.
Exploring the Database and Schema :Takeaways by Dataquest Labs, Inc. - All rights reserved © 2024SyntaxConceptsResourcesTakeaways by Dataquest Labs, Inc. - All rights reserved © 2024Select the first 10 rows of a table:SELECT *FROM tableLIMIT 10;•Select certain columns from a table:SELECT column1, column2FROM table;•Alias a field:SELECT col1 AS first_column  FROM table;•Adding comments:-- This is a single line comment./* This is a multi-line 

SQL, or structured query language, is a programming language used to communicate withrelational databases. •Relational databases are called such because the relationships between shared columns acrosstables matter. •There are many dialects of SQL and relational database systems. In this course, we're using aSQLite database and following ANSI (American National Standards Insitute) standard code. 

-- exploring tables and columns
For consistency and efficiency, SQL databases only allow one type of data per column. This means that integer columns only have integers, text columns only have text, and so on.

Formally, we call these types of data storage classes. Even though datatypes and storage classes are different, it's common to refer to both of them as datatypes, which is what we'll do from now on.

SQLite uses the following terminology:

Integer for integer numbers, like the values in the quantity field.
Real for floating point values (or floats). Think of these as decimal numbers, like the values in the sales field.
Text or strings for regular text values, like the values in the order_date, order_id, and product_name fields.
Note that there isn't a storage class for date values. The database stores these as text!

Instructions
The orders table has the following numeric fields: sales, quantity, discount, and profit. Here's a sample of the output from each field:

sales	quantity	discount	profit
261.96	2	0.0	41.9136
731.94	3	0.0	219.582
14.62	2	0.0	6.8714
957.5775	5	0.45	-383.031
22.368	2	0.2	2.5164
Write a query that includes all of the REAL number fields from the orders.
Interestingly, postal_code is not included in the list of numeric columns because it is a TEXT field.

United States postal codes can begin with 0 (i.e., 06057 is a postal code in Connecticut). If these values were stored as numbers, the zero would get dropped, leading to inaccurate data.
solution
SELECT   sales, profit, discount 
FROM orders;


Learn
On the previous screen, we had to make a judgment call about the datatype of the postal_code field, but this approach can be inefficient and inaccurate. For example, what if a TEXT field is incorrectly assigned as INTEGER?

Fortunately, SQLite provides a way to retrieve information about the columns in a table:

PRAGMA table_info(returns);

Explain

Copy
Unlike a SELECT statement, which retrieves data from a table, PRAGMA table_info() retrieves metadata, which is information about a table.


When we run this command, it returns one row for each of the table's columns with information, such as its name and data type.

Let's look at the table information for the returns table:

cid	name	type	notnull	dflt_value	pk
0	returned	TEXT	0	NULL	0
1	order_date	TEXT	0	NULL	0
2	order_id	TEXT	0	NULL	0
3	customer_id	TEXT	0	NULL	0
5	customer_name	TEXT	0	NULL	0
Notice there are several columns with unfamiliar names, like notnull and dflt_value. Don't worry about these too much as they go beyond the scope of this course. You can learn more about this command here.

Instructions
Your supervisor wants you to preview the data types for the orders table to verify that they are correctly assigned.

Write a query that displays the data types of the orders table.
The SQL code PRAGMA table_info(returns); is used to retrieve information about the structure of the "returns" table in the SQLite3 database.

The PRAGMA command is a special command in SQLite3 that is used to query the database engine for information about its internal state and configuration. In this case, we're using PRAGMA table_info to get information about the columns in the "returns" table.

The table_info function takes one argument, which is the name of the table we want to get information about. In this case, we're passing it the string "returns" to get information about the "returns" table.

The output of this command will be a table with the following columns:

cid: The column index (integer)
name: The column name (text)
type: The column type (text)
notnull: A boolean indicating whether the column allows NULL values (integer, 0=no, 1=yes)
dflt_value: The default value for the column (text or NULL)
pk: A boolean indicating whether the column is part of the primary key (integer, 0=no, 1=yes)
Here's an example of what the output might look like:

cid name        type        notnull dflt_value  pk
--- ------------ ----------- ------- ----------- ---
0   id           INTEGER     0                    1
1   product_name TEXT       1                    0
2   return_date  DATE       1                    0
3   quantity     INTEGER     1                    0
4   reason       TEXT       1                    0
In this example, we can see that the "returns" table has five columns: "id", "product_name", "return_date", "quantity", and "reason". We can also see that the "id" column is the primary key (indicated by pk=1), and that the "product_name", "return_date", "quantity", and "reason" columns do not allow NULL values (indicated by notnull=1).


On the previous screen, we had to make a judgment call about the datatype of the postal_code field, but this approach can be inefficient and inaccurate. For example, what if a TEXT field is incorrectly assigned as INTEGER?

Fortunately, SQLite provides a way to retrieve information about the columns in a table:

PRAGMA table_info(returns);

Explain

Copy
Unlike a SELECT statement, which retrieves data from a table, PRAGMA table_info() retrieves metadata, which is information about a table.


When we run this command, it returns one row for each of the table's columns with information, such as its name and data type.

Let's look at the table information for the returns table:

cid	name	type	notnull	dflt_value	pk
0	returned	TEXT	0	NULL	0
1	order_date	TEXT	0	NULL	0
2	order_id	TEXT	0	NULL	0
3	customer_id	TEXT	0	NULL	0
5	customer_name	TEXT	0	NULL	0
Notice there are several columns with unfamiliar names, like notnull and dflt_value. Don't worry about these too much as they go beyond the scope of this course. You can learn more about this command here.

Instructions
Your supervisor wants you to preview the data types for the orders table to verify that they are correctly assigned.

Write a query that displays the data types of the orders table.
solution
PRAGMA table_info(orders)

A typical task for data analysts is to derive new columns from existing columns by using arithmetic operations. For example, what if we want to find out how much sales tax there is on each sale in the orders table?

We can write a query to pull the order_id, sales amount and multiply sales by 7% to estimate sales tax:

SELECT order_id, 
       sales, 
       sales * .07
  FROM orders;

Explain

Copy
order_id	sales	sales * .07
CA-2016-152156	261.96	18.3372
CA-2016-152156	731.94	51.2358
CA-2016-138688	14.62	1.0234
US-2015-108966	957.5775	67.030425
US-2015-108966	22.368	1.56576
Notice that the query uses .07 instead of 7%. This is because we can't calculate with percentages directly and must convert them to a decimal number first.

Looking at our column names, we can see that the calculated field is currently called sales * .07, which isn't very readable. Let's rewrite our query with an alias:

SELECT order_id, 
       sales, 
       sales * .07 AS sales_tax
  FROM orders;

Explain

Copy
order_id	sales	sales_tax
CA-2016-152156	261.96	18.3372
CA-2016-152156	731.94	51.2358
CA-2016-138688	14.62	1.0234
US-2015-108966	957.5775	67.030425
US-2015-108966	22.368	1.56576
Much better! We'll learn how to clean up this query even more using the ROUND() function on the next screen.
Instructions
/*
Your manager has requested you find the profit margin on all orders from the orders table.

Write a query that includes order_id, sales, profit, and profit margin (profit divided by sales).
Alias the calculated field as profit_margin.
solutiion
Only display 8 rows.
*/

SELECT order_id, sales, profit,profit/sales AS 'profit_margin'
FROM orders
LIMIT 8;

We'll now learn about an important quirk of performing division in SQL. On the previous screen, we learned how to do arithmetic in SQL. Let's see an example of division:

SELECT 4/2 AS four_div_two;

Explain

Copy
four_div_two
2
This is the expected result. However . . .

SELECT 3/2 AS three_div_two;

Explain

Copy
three_div_two
1
We didn't get 1.5 as we expected; rather, we got 1. What is going on here?

In many programming languages, using the symbol / will perform integer division. Integer division discards the fractional part.


So how do we go about performing regular division in SQL? We can handle this by having any of the parts be a float. To change the datatype of a column/value we can use the CAST function, like so: CAST(column/value AS new_datatype).

In SQLite, some of the values that replace the parameter new_datatype are TEXT, REAL, INTEGER. These are all reserved words. Other databases can and will have different parameters, according to their datatypes.


Here's an example:


three_div_two
1.5
Instructions
You have been asked to write a query using the orders table that helps identify whether customers are more likely to purchase an even number of an item or an odd number to help with ordering inventory. You can do this by dividing the quantity by 2 to help separate results that are whole numbers vs. decimal numbers.

Write a query that includes:
product_id
quantity
a calculated field that divides quantity by 2 (remember to CAST your integer to a real number)
Alias the calculated field as even_or_odd
Limit your results to 5 rows
In upcoming lessons, you'll learn how to categorize the results of queries like this one to display more user-friendly labels such as "Even" or "Odd" instead of raw numbers. This is just a small taste of the powerful capabilities SQL has to offer!
/*
You have been asked to write a query using the orders table that helps identify whether customers are more likely to purchase an even number of an item or an odd number to help with ordering inventory. You can do this by dividing the quantity by 2 to help separate results that are whole numbers vs. decimal numbers.

Write a query that includes:
product_id
quantity
a calculated field that divides quantity by 2 (remember to CAST your integer to a real number)
Alias the calculated field as even_or_odd
Limit your results to 5 rows
*/

SELECT product_id, quantity, CAST(quantity AS REAL)/2 AS even_or_odd
FROM orders
LIMIT 5;
In addition to arithmetic operators, SQL makes available a number of functions to use on fields.

On the previous screen we saw that the values for sales and our calculated field, sales_tax, had too many digits after the decimal point to represent dollars. Here's a reminder of what that query and output looked like:

SELECT order_id, 
       sales, 
       sales * .07 AS sales_tax
  FROM orders;

Explain

Copy
order_id	sales	sales_tax
CA-2016-152156	261.96	18.3372
CA-2016-152156	731.94	51.2358
CA-2016-138688	14.62	1.0234
US-2015-108966	957.5775	67.030425
US-2015-108966	22.368	1.56576
Let's clean up our query using ROUND(), which rounds numerical values to a specified number of decimal places. This function can be helpful when we want to display or store values with a certain level of precision or when we need to perform calculations with rounded values.

So how do we use it? Well, this function requires us to enter two arguments, so let's take a look at the syntax:

ROUND(value, decimal_places)

Explain

Copy
value: the number we want to round
decimal_places: the number of decimal places to round the value to (Note: if this argument is omitted, the function will round to the nearest whole number.)
Now that we know about the ROUND() function, let's see it in action. We'll use separate ROUND() functions on sales and our calculated field, sales_tax, and give each an alias to make the names more readable:

SELECT order_id, 
       ROUND(sales, 2) AS rounded_sales, 
       ROUND(sales * .07, 2) AS rounded_sales_tax
  FROM orders;

Explain

Copy
order_id	rounded_sales	rounded_sales_tax
CA-2016-152156	261.96	18.34
CA-2016-152156	731.94	51.24
CA-2016-138688	14.62	1.02
US-2015-108966	957.58	67.03
US-2015-108966	22.37	1.57

/*
Many customers buy multiples of the same item, which makes it difficult to see how much each item costs.

Write a query from the orders table that includes order_id, sales, and quantity.
Create a field price_per_unit that divides sales by quantity.
Round price_per_unit to two decimal places.
Only display 10 rows.
solution
*/
-- SELECT order_id, sales, quantity, ROUND(sales/quantity, 2) AS price_per_unit
-- FROM orders
-- LIMIT 10;

SELECT 
    order_id, 
    sales, 
    quantity, 
    ROUND(sales / quantity, 2) AS price_per_unit
FROM 
    orders
LIMIT 10;

SQL also provides several functions that help transform text data. On this screen we'll take a look at:

UPPER(), which converts all characters in a given text string to uppercase
LOWER(), which converts all characters in a given text string to lowercase
These functions have many uses, but two of the most common uses are:

Data normalization: When importing data from various sources, we may encounter inconsistent letter casing. We can use UPPER() or LOWER() to normalize the text data, making it uniform and easier to analyze.
Display formatting: We can use UPPER() or LOWER() to format the output of our query for improved readability or to meet specific display requirements.
For example, perhaps we wanted to convert the ship_mode column to all uppercase for formatting purposes. This is possible with the UPPER() function:

SELECT ship_mode AS original_ship_mode,
       UPPER(ship_mode) AS SHIP_MODE
  FROM orders;

Explain

Copy
original_ship_mode	SHIP_MODE
Second Class	SECOND CLASS
Second Class	SECOND CLASS
Second Class	SECOND CLASS
Standard Class	STANDARD CLASS
Standard Class	STANDARD CLASS
Like anything else done as part of a SELECT statement, running these functions does NOT impact the original data in the orders table.

Instructions
Customers enter their own names when they purchase items from the superstore online, which means some customer names have inconsistent capitalization formatting.

Write a query that converts customer_name from the orders table to all lowercase letters.
Alias the newly formatted names as customer_name_lower.


SQL also provides several functions that help transform text data. On this screen we'll take a look at:

UPPER(), which converts all characters in a given text string to uppercase
LOWER(), which converts all characters in a given text string to lowercase
These functions have many uses, but two of the most common uses are:

Data normalization: When importing data from various sources, we may encounter inconsistent letter casing. We can use UPPER() or LOWER() to normalize the text data, making it uniform and easier to analyze.
Display formatting: We can use UPPER() or LOWER() to format the output of our query for improved readability or to meet specific display requirements.
For example, perhaps we wanted to convert the ship_mode column to all uppercase for formatting purposes. This is possible with the UPPER() function:

SELECT ship_mode AS original_ship_mode,
       UPPER(ship_mode) AS SHIP_MODE
  FROM orders;

Explain

Copy
original_ship_mode	SHIP_MODE
Second Class	SECOND CLASS
Second Class	SECOND CLASS
Second Class	SECOND CLASS
Standard Class	STANDARD CLASS
Standard Class	STANDARD CLASS
Like anything else done as part of a SELECT statement, running these functions does NOT impact the original data in the orders table.

/*
Customers enter their own names when they purchase items from the superstore online, which means some customer names have inconsistent capitalization formatting.

Write a query that converts customer_name from the orders table to all lowercase letters.
Alias the newly formatted names as customer_name_lower
*/
SELECT LOWER(customer_name) AS customer_name_lower
FROM orders;

We've seen that it's possible to change the output of text fields with UPPER() and LOWER(). It's also possible to concatenate, or combine, multiple pieces of text together.

Perhaps we'd like to put the city and state columns together like this: Henderson, Kentucky.

SQLite uses the concatenate operator (||) to join two strings into one.

SELECT city || ", " || state AS "location"
  FROM orders;

Explain

Copy
location
Henderson, Kentucky
Henderson, Kentucky
Los Angeles, California
Fort Lauderdale, Florida
Fort Lauderdale, Florida

/*
Every superstore location is named after the city where it's located. For example, the store in Los Angeles, California is called "Superstore Los Angeles."

Write a query that includes order_id, region, and state.
Create a new column called local_store that concatenates the word "Superstore" with city. There should be one space between the word "Superstore" and the city name (i.e. "Superstore Dallas")
Limit your results to 10 rows.
solution
*/

SELECT 
    order_id, 
    region, 
    state, 
    'Superstore ' || city AS local_store
FROM 
    orders
LIMIT 10;

Sometimes we'll want to add a column to our query that shows a constant number for every record. We can do this by specifying the number in the SELECT clause and adding an alias for readability (note that the alias isn't required):

SELECT sales, 2 AS promotional_discount
  FROM orders;

Explain

Copy
sales	promotional_discount
261.96	2
731.94	2
14.62	2
957.5775	2
22.368	2
We can see that including 2 AS promotional_discount creates a new column with 2's filled in for every value.

/*
You've been asked to create a table that shows the salary for all the regional managers.

Write a query from managers that includes all fields.
Create a new column with the manager salary amount: $51,000. Alias it as salary
*/

SELECT 
    *,
    51000 AS salary
FROM 
    managers;


Let's practice our newfound understanding of operations and functions with a challenge!

We've been asked to write a query that lists the address and total sales amount for each order. The total sales amount includes sales and two other amounts: tax and shipping cost, which are not currently included in the orders table.

We now know everything we need in order to write this query. It's by-far the most challenging
 query we've written, so don't be discouraged if it takes a few extra attempts to get it right. You've got this!

Create a field called address that combines city, state, and postal_code in the following format:
city, state 99999
Calculate a total_cost field cost as sales, shipping, and tax. (Shipping costs 4.99 and tax is calculated at 7%). Round the field to two decimal places.
Create a field called tax that finds 7% of sales, rounded to two decimal places.
Create a field called shipping_cost with a value of 4.99.
For readability, your final query should include the following fields:
address
sales
tax
shipping_cost
total_cost
Limit your results to 10 rows.

solution
SELECT 
    city || ', ' || state || ' ' || postal_code AS address,
    sales,
    ROUND(sales * 0.07, 2) AS tax,
    4.99 AS shipping_cost,
    ROUND(sales + (sales * 0.07) + 4.99, 2) AS total_cost
FROM 
    orders
LIMIT 10;


Congratulations on exploring tables and columns of a database using SQL and the SELECT clause! You were able to retrieve and manipulate various columns of the orders table:

You explored the data types of a table.
You performed both arithmetic and text functions on given columns.
You concatenated text.

Exploring Tables and Columns:Takeaways by Dataquest Labs, Inc. - All rights reserved © 2024SyntaxConceptsResourcesTakeaways by Dataquest Labs, Inc. - All rights reserved © 2024Concatenat

Concatenate two fields:SELECT col1 || ", " || col2 AS "col1, col2"  FROM table;•Find the columns and datatypes for a table:PRAGMA table_info(table_name);•Use scalar functions:SELECT UPPER(col1) AS uppercase,        LOWER(col2) AS lowercase,        ROUND(col3, 2) AS round_to_hundredths  FROM table

-- filtering with numbers

Did last year's sales exceed this year's? Are we under budget? Many business questions can be answered by just comparing two numbers. Let's start with some operators you may remember from school (> and <) to compare whether one value is greater than or less than another.

Filter the data with the WHERE clause
It's time to introduce the WHERE clause to compare two values in SQL. The clauses we've learned thus far will always be written in queries in this order:

SELECT: Specify what fields we want information from.
FROM: Specify what tables those fields are coming from.
WHERE: Specify any criteria that records in those fields should meet.
LIMIT: Specify how many records to return in results.
Let's see the power of WHERE in action. For example, we can check to see if there have been any sales over $10,000 in the orders table by writing the following query with WHERE:

SELECT order_id, category, product_name,
       quantity, sales
  FROM orders
 WHERE sales > 10000;

Explain

Copy
order_id	category	product_name	quantity	sales
CA-2017-127180	Technology	Canon imageCLASS 2200 Advanced Copier	4	11199.968
CA-2014-145317	Technology	Cisco TelePresence System EX90 Videoconferencing Unit	6	22638.48
CA-2017-166709	Technology	Canon imageCLASS 2200 Advanced Copier	3	10499.97
CA-2016-118689	Technology	Canon imageCLASS 2200 Advanced Copier	5	17499.95
CA-2017-140151	Technology	Canon imageCLASS 2200 Advanced Copier	4	13999.96
It looks like there were several orders where multiple copiers were purchased, leading to large sale prices.

The WHERE clause is essentially used as a filter and returns the records where the operators evaluate to TRUE.

/*
Your supervisor is curious about sales that have lost the company money. They've asked you to look at orders that have lost more than $1,000 in profit.

Write a query that includes order_id, product_name, sales, discount, and profit.
Filter your results so that your query only shows records that have lost more than $1000.
*/

SELECT 
    order_id, 
    product_name, 
    sales, 
    discount, 
    profit
FROM 
    orders
WHERE 
    profit < -1000;
As we learn more and more clauses, it helps to know the order in which SQL executes them. Let's look at the execution order of clauses:

FROM: The first thing SQL does when it runs a query is determine what data it will be looking at. Thus, it executes FROM first.

WHERE: After executing FROM, SQL filters the results using WHERE.

SELECT: Next in the order of execution is SELECT. After determining the table we're getting data from and filtering the records, SQL will choose the selected columns.

LIMIT: Finally, SQL limits the results with LIMIT (if this clause is used in the query).

The reason order of execution is so important to learn about at this stage of our SQL learning journey is because aliasing, which we've seen in the SELECT clause, cannot be referenced in the WHERE clause, since the alias "doesn't exist" yet.

If we want to filter on an aliased field, we need to use the raw calculation in the WHERE clause:


The query above filters on profit margin, but the WHERE clause uses profit/sales instead of the alias profit_margin.

Note that SQLite, which is the SQL flavor we are using in this course, is very flexible and actually allows for aliasing in the WHERE clause. However, for SQL best practices this is not recommended.

/*
Your supervisor is curious about the cheapest items sold from the orders table.

Write a query that includes order_id, subcategory, product_name, and a calculated field aliased price_per_unit.
Filter your query so you only see records with a price_per_unit less than $0.50.
*/
SELECT 
    order_id, 
    subcategory, 
    product_name, 
    sales / quantity AS price_per_unit
FROM 
    orders
WHERE 
    sales / quantity < 0.50;

During some analysis, you noticed several large transactions from a customer named Sean Miller. You want to understand more about this customer as part of a project on customer personas.

Pull all fields and records about Sean Miller's order history.
Look at the results, then answer the multiple choice question below.
Questions
1.
What is notable about this customer's order history?

Correct!

They don't buy any products in the "Technology" category.


They have moved addresses more than once. Correct! Sean has lived in North Carolina, Indiana, Florida, and California.


Their purchases are for a combination of "Home office" and "Corporate."


All of their orders are from 2017.

/*
During some analysis, you noticed several large transactions from a customer named Sean Miller. You want to understand more about this customer as part of a project on customer personas.

Pull all fields and records about Sean Miller's order history.
Look at the results, then answer the multiple choice question below.
*/

SELECT 
    order_id, 
    subcategory, 
    product_name, 
    sales / quantity AS price_per_unit
FROM 
    orders
WHERE 
    sales / quantity < 0.50;

/*
Write a query that returns the order_id, product_id, and a field that shows a 10% sales tax on sales, aliased as sales_tax.
Get the records where the resulting sales tax is between 1 and 2 dollars.
solution
*/
SELECT order_id, product_id, sales * 0.1 AS sales_tax
FROM orders
WHERE sales * 0.1 BETWEEN 1 AND 2;
/*
Your manager has noticed some missing values in the segment field and isn't sure if it's due to poor data quality or customer error.

Write a query that identifies all missing values from the segment field.
Include all fields.
After you run your query, write an inline comment with any trends in the missing data.
solution
*/
SELECT *
FROM orders
WHERE segment IS NULL;

/* Trends:
- The missing values in the segment field might be concentrated in specific regions or time periods.
- Certain products or categories might have higher instances of missing segment data.
- The same customers might repeatedly have missing segment values.
*/

/*
Your manager would like to study the most expensive items from the 'Storage' subcategory.

Write a query to select at least product_name and a calculated field aliased as price_per_unit that divides sales by quantity.
Only select records in 'Storage' where the price per unit is more than $300.
solution
*/
SELECT 
    product_name, 
    sales / quantity AS price_per_unit
FROM 
    orders
WHERE 
    subcategory = 'Storage'
    AND sales / quantity > 300;

/*
Your manager wants to identify products that perform poorly because they either:

Generating a negative profit, or
Selling only in individual quantities
They have tasked you with identifying these products.

Write a query that includes at least product_name, profit, and quantity.
Apply a filter to select products with profits less than $0 or quantities equal to 1.
solution
*/

SELECT 
    product_name, 
    profit, 
    quantity
FROM 
    orders
WHERE 
    profit < 0 
    OR quantity = 1;


Congratulations on using the WHERE clause along with comparison operators and conditional logic to explore numbers and quantities in the data!

We used comparison operators such as < and > to evaluate the relationship between two quantities.
We checked for any missing or NULL values in a field.
We used AND and OR statements to evaluate multiple criteria.
Later in this course, we'll dig deeper into comparing text and categories

/*

Your supervisor wants you to preview the data types for the orders table to verify that they are correctly assigned.

Write a query that displays the data types of the orders table.
ChatGPT
To preview the data types for the orders table in SQL, you can use a query that inspects the table's schema. Here is how you can do it for different database management systems:

For MySQL or MariaDB:
sql
Copy code
DESCRIBE orders;
For PostgreSQL:
sql
Copy code
SELECT 
    column_name, 
    data_type
FROM 
    information_schema.columns
WHERE 
    table_name = 'orders';
For SQL Server:
sql
Copy code
SELECT 
    COLUMN_NAME, 
    DATA_TYPE
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'orders';
For SQLite:
sql
Copy code
PRAGMA table_info(orders);
For Oracle:
sql
Copy code
SELECT 
    COLUMN_NAME, 
    DATA_TYPE
FROM 
    ALL_TAB_COLUMNS
WHERE 
    TABLE_NAME = 'ORDERS';
Choose the appropriate query based on your database management system to display the data types of the columns in the orders table.

/*
You have been asked to write a query using the orders table that helps identify whether customers are more likely to purchase an even number of an item or an odd number to help with ordering inventory. You can do this by dividing the quantity by 2 to help separate results that are whole numbers vs. decimal numbers.

Write a query that includes:
product_id
quantity
a calculated field that divides quantity by 2 (remember to CAST your integer to a real number)
Alias the calculated field as even_or_odd
Limit your results to 5 rows
*/

SELECT product_id, quantity, CAST(quantity AS INTEGER, REAL)/2 AS even_or_odd
FROM orders
LIMIT 5;
ChatGPT
It looks like there is a small error in your SQL syntax. Specifically, the CAST function doesn't need both INTEGER and REAL types. Instead, you should cast quantity to a real number or a similar floating-point type directly. Here’s the corrected query for various databases:

For MySQL:
sql
Copy code
SELECT product_id, quantity, CAST(quantity AS DECIMAL)/2 AS even_or_odd
FROM orders
LIMIT 5;
For PostgreSQL:
sql
Copy code
SELECT product_id, quantity, CAST(quantity AS FLOAT)/2 AS even_or_odd
FROM orders
LIMIT 5;
For SQL Server:
sql
Copy code
SELECT product_id, quantity, CAST(quantity AS FLOAT)/2 AS even_or_odd
FROM orders
LIMIT 5;
For SQLite:
sql
Copy code
SELECT product_id, quantity, CAST(quantity AS REAL)/2 AS even_or_odd
FROM orders
LIMIT 5;
For Oracle:
sql
Copy code
SELECT product_id, quantity, CAST(quantity AS FLOAT)/2 AS even_or_odd
FROM orders
FETCH FIRST 5 ROWS ONLY;
You should choose the appropriate query for your database management system. This query will return 5 rows from the orders table, showing the product_id, quantity, and a calculated field even_or_odd which indicates whether the quantity divided by 2 is a whole number or not.

Write a query from the orders table that includes order_id, sales, and quantity.
Create a field price_per_unit that divides sales by quantity.
Round price_per_unit to two decimal places.
Only display 10 rows.
ChatGPT
Here is a query for various databases that includes order_id, sales, and quantity from the orders table, along with a calculated field price_per_unit that divides sales by quantity and rounds it to two decimal places, displaying only 10 rows:

For MySQL:
sql
Copy code
SELECT 
    order_id, 
    sales, 
    quantity, 
    ROUND(sales / quantity, 2) AS price_per_unit
FROM 
    orders
LIMIT 10;
For PostgreSQL:
sql
Copy code
SELECT 
    order_id, 
    sales, 
    quantity, 
    ROUND(sales / quantity, 2) AS price_per_unit
FROM 
    orders
LIMIT 10;
For SQL Server:
sql
Copy code
SELECT 
    order_id, 
    sales, 
    quantity, 
    ROUND(CAST(sales AS FLOAT) / quantity, 2) AS price_per_unit
FROM 
    orders;
For SQLite:
sql
Copy code
SELECT 
    order_id, 
    sales, 
    quantity, 
    ROUND(sales / quantity, 2) AS price_per_unit
FROM 
    orders
LIMIT 10;
For Oracle:
sql
Copy code
SELECT 
    order_id, 
    sales, 
    quantity, 
    ROUND(sales / quantity, 2) AS price_per_unit
FROM 
    orders
FETCH FIRST 10 ROWS ONLY;
Choose the appropriate query for your database management system. This query will return 10 rows from the orders table, showing the order_id, sales, quantity, and a calculated field price_per_unit rounded to two decimal places.

Every superstore location is named after the city where it's located. For example, the store in Los Angeles, California is called "Superstore Los Angeles."

Write a query that includes order_id, region, and state.
Create a new column called local_store that concatenates the word "Superstore" with city. There should be one space between the word "Superstore" and the city name (i.e. "Superstore Dallas")
Limit your results to 10 rows.
ChatGPT
Here is a query for various databases that includes order_id, region, and state from the orders table, along with a new column local_store that concatenates the word "Superstore" with the city name. The query is limited to 10 rows:

For MySQL:
sql
Copy code
SELECT 
    order_id, 
    region, 
    state, 
    CONCAT('Superstore ', city) AS local_store
FROM 
    orders
LIMIT 10;
For PostgreSQL:
sql
Copy code
SELECT 
    order_id, 
    region, 
    state, 
    'Superstore ' || city AS local_store
FROM 
    orders
LIMIT 10;
For SQL Server:
sql
Copy code
SELECT 
    order_id, 
    region, 
    state, 
    'Superstore ' + city AS local_store
FROM 
    orders;
For SQLite:
sql
Copy code
SELECT 
    order_id, 
    region, 
    state, 
    'Superstore ' || city AS local_store
FROM 
    orders
LIMIT 10;
For Oracle:
sql
Copy code
SELECT 
    order_id, 
    region, 
    state, 
    'Superstore ' || city AS local_store
FROM 
    orders
FETCH FIRST 10 ROWS ONLY;
Choose the appropriate query for your database management system. This query will return 10 rows from the orders table, showing the order_id, region, state, and a new column local_store that contains the concatenated store name.

You've been asked to create a table that shows the salary for all the regional managers.

Write a query from managers that includes all fields.
Create a new column with the manager salary amount: $51,000. Alias it as salary
ChatGPT
Here is a query to create a table that includes all fields from the managers table and adds a new column with the manager salary amount of $51,000, aliased as salary:

For MySQL:
sql
Copy code
SELECT 
    *,
    51000 AS salary
FROM 
    managers;
For PostgreSQL:
sql
Copy code
SELECT 
    *,
    51000 AS salary
FROM 
    managers;
For SQL Server:
sql
Copy code
SELECT 
    *,
    51000 AS salary
FROM 
    managers;
For SQLite:
sql
Copy code
SELECT 
    *,
    51000 AS salary
FROM 
    managers;
For Oracle:
sql
Copy code
SELECT 
    managers.*,
    51000 AS salary
FROM 
    managers;
This query will return all columns from the managers table along with a new column salary that has a constant value of $51,000 for each manager.

Create a field called address that combines city, state, and postal_code in the following format:
city, state 99999
Calculate a total_cost field cost as sales, shipping, and tax. (Shipping costs 4.99 and tax is calculated at 7%). Round the field to two decimal places.
Create a field called tax that finds 7% of sales, rounded to two decimal places.
Create a field called shipping_cost with a value of 4.99.
For readability, your final query should include the following fields:
address
sales
tax
shipping_cost
total_cost
Limit your results to 10 rows.
ChatGPT
Here is the query to achieve the desired output, which includes combining city, state, and postal_code into an address field, calculating a total_cost field, and including fields for tax and shipping_cost. The query is limited to 10 rows:

For MySQL:
sql
Copy code
SELECT 
    CONCAT(city, ', ', state, ' ', postal_code) AS address,
    sales,
    ROUND(sales * 0.07, 2) AS tax,
    4.99 AS shipping_cost,
    ROUND(sales + (sales * 0.07) + 4.99, 2) AS total_cost
FROM 
    orders
LIMIT 10;
For PostgreSQL:
sql
Copy code
SELECT 
    CONCAT(city, ', ', state, ' ', postal_code) AS address,
    sales,
    ROUND(sales * 0.07, 2) AS tax,
    4.99 AS shipping_cost,
    ROUND(sales + (sales * 0.07) + 4.99, 2) AS total_cost
FROM 
    orders
LIMIT 10;
For SQL Server:
sql
Copy code
SELECT 
    city + ', ' + state + ' ' + postal_code AS address,
    sales,
    ROUND(sales * 0.07, 2) AS tax,
    4.99 AS shipping_cost,
    ROUND(sales + (sales * 0.07) + 4.99, 2) AS total_cost
FROM 
    orders;
For SQLite:
sql
Copy code
SELECT 
    city || ', ' || state || ' ' || postal_code AS address,
    sales,
    ROUND(sales * 0.07, 2) AS tax,
    4.99 AS shipping_cost,
    ROUND(sales + (sales * 0.07) + 4.99, 2) AS total_cost
FROM 
    orders
LIMIT 10;
For Oracle:
sql
Copy code
SELECT 
    city || ', ' || state || ' ' || postal_code AS address,
    sales,
    ROUND(sales * 0.07, 2) AS tax,
    4.99 AS shipping_cost,
    ROUND(sales + (sales * 0.07) + 4.99, 2) AS total_cost
FROM 
    orders
FETCH FIRST 10 ROWS ONLY;
This query will return 10 rows with the specified fields, providing the desired information in a readable format.

using sqlite
Your supervisor is curious about sales that have lost the company money. They've asked you to look at orders that have lost more than $1,000 in profit.

Write a query that includes order_id, product_name, sales, discount, and profit.
Filter your results so that your query only shows records that have lost more than $1000.
ChatGPT
Here is the query for SQLite that includes order_id, product_name, sales, discount, and profit from the orders table, filtering the results to only show records where the profit is less than -$1,000 (indicating a loss of more than $1,000):

sql
Copy code
SELECT 
    order_id, 
    product_name, 
    sales, 
    discount, 
    profit
FROM 
    orders
WHERE 
    profit < -1000;
This query will return the required fields for orders that have lost the company more than $1,000 in profit.


As we learn more and more clauses, it helps to know the order in which SQL executes them. Let's look at the execution order of clauses:

FROM: The first thing SQL does when it runs a query is determine what data it will be looking at. Thus, it executes FROM first.

WHERE: After executing FROM, SQL filters the results using WHERE.

SELECT: Next in the order of execution is SELECT. After determining the table we're getting data from and filtering the records, SQL will choose the selected columns.

LIMIT: Finally, SQL limits the results with LIMIT (if this clause is used in the query).

The reason order of execution is so important to learn about at this stage of our SQL learning journey is because aliasing, which we've seen in the SELECT clause, cannot be referenced in the WHERE clause, since the alias "doesn't exist" yet.

If we want to filter on an aliased field, we need to use the raw calculation in the WHERE clause:


The query above filters on profit margin, but the WHERE clause uses profit/sales instead of the alias profit_margin.

Note that SQLite, which is the SQL flavor we are using in this course, is very flexible and actually allows for aliasing in the WHERE clause. However, for SQL best practices this is not recommended.
ChatGPT
You've provided a great explanation of the order of execution in SQL queries and the importance of understanding it for proper use of clauses, especially when dealing with aliasing.

Here’s a recap of the correct order of execution for SQL clauses:

FROM
WHERE
SELECT
LIMIT
Given this order, let's write a query that filters on a calculated field without using an alias in the WHERE clause for best practices. We’ll look at orders that have lost more than $1,000 in profit:

sql
Copy code
SELECT 
    order_id, 
    product_name, 
    sales, 
    discount, 
    profit
FROM 
    orders
WHERE 
    profit < -1000
LIMIT 10;
This query:

FROM: Specifies the orders table to fetch data from.
WHERE: Filters the records to include only those where profit is less than -$1,000.
SELECT: Selects the desired columns (order_id, product_name, sales, discount, and profit).
LIMIT: Limits the results to the first 10 records that match the WHERE condition.
Even though SQLite allows for aliasing in the WHERE clause, following best practices ensures your SQL code is portable and consistent across different SQL databases.

Your supervisor is curious about the cheapest items sold from the orders table.

Write a query that includes order_id, subcategory, product_name, and a calculated field aliased price_per_unit.
Filter your query so you only see records with a price_per_unit less than $0.50.
ChatGPT
To find the cheapest items sold from the orders table, you need to calculate the price per unit and filter the results to show only those records with a price per unit less than $0.50. Here’s the query for SQLite:

sql
Copy code
SELECT 
    order_id, 
    subcategory, 
    product_name, 
    sales / quantity AS price_per_unit
FROM 
    orders
WHERE 
    sales / quantity < 0.50;
This query:

FROM: Specifies the orders table to fetch data from.
WHERE: Filters the records to include only those where the calculated price_per_unit (i.e., sales / quantity) is less than $0.50.
SELECT: Selects the desired columns (order_id, subcategory, product_name) and calculates the price_per_unit field.
Note: Ensure that quantity is never zero to avoid division by zero errors. If there's a possibility of quantity being zero, you should include additional checks to handle such cases.

Comparison operators don't stop at < and >. Here are some others:

Operator	Description
=	Equal to
>=	Greater than or equal to
<=	Less than or equal to
<>	Not equal to
Most comparison operators are used to check the relationship of one quantity to another; for example, is 10 less than 8?

= and <> can also be used to compare text values; for example, we can filter orders to include only records where the segment is not equal to 'Consumer'. Any record equal to 'Consumer' will be skipped. (Note that text must be surrounded by single quotation marks in order for SQL to parse it correctly.)


SELECT order_id, segment, product_name
  FROM orders
 WHERE segment <> 'Consumer';

Explain

Copy
Here is a sample of the output. The segment field shows "Corporate" and "Home office," but not "Consumer", because we filtered it out:

order_id	segment	product_name
CA-2016-138688	Corporate	Self-Adhesive Address Labels for Typewriters by Universal
US-2015-118983	Home Office	Holmes Replacement Filter for HEPA Air Cleaner, Very Large Room, HEPA Filter
US-2015-118983	Home Office	Storex DuraTech Recycled Plastic Frosted Binders
CA-2016-137330	Corporate	Newell 318
CA-2016-137330	Corporate	Acco Six-Outlet Power Strip, 4' Cord Length
Keep in mind that this search is case sensitive, so while many records in region are equal to 'West', none are equal to capital 'WEST':

SELECT order_id, product_name, region
  FROM orders
 WHERE region = 'WEST';

Explain

Copy
The query above does not output any records because it uses 'WEST' instead of 'West.'
ChatGPT
You've provided a thorough explanation of comparison operators and how they can be used to filter data in SQL queries. Let's continue with the task of identifying the cheapest items sold from the orders table, using the information on comparison operators.

Here’s the query to include order_id, subcategory, product_name, and a calculated field price_per_unit, and filter the results to show only those records with a price_per_unit less than $0.50:

sql
Copy code
SELECT 
    order_id, 
    subcategory, 
    product_name, 
    sales / quantity AS price_per_unit
FROM 
    orders
WHERE 
    sales / quantity < 0.50;
This query:

FROM: Specifies the orders table to fetch data from.
WHERE: Filters the records to include only those where the calculated price_per_unit (i.e., sales / quantity) is less than $0.50.
SELECT: Selects the desired columns (order_id, subcategory, product_name) and calculates the price_per_unit field.
This will return the required fields for orders with a price_per_unit less than $0.50, effectively showing the cheapest items sold from the orders table.

If needed, here's a practical example:

Example
Consider the following records in the orders table:

order_id	subcategory	product_name	sales	quantity
1	Binders	Binder XYZ	10.00	20
2	Pens	Pen ABC	0.40	1
3	Paper	Paper DEF	2.50	5
4	Notebooks	Notebook GHI	1.00	3
Using the above query, the output would be:

order_id	subcategory	product_name	price_per_unit
1	Binders	Binder XYZ	0.50
2	Pens	Pen ABC	0.40
This output shows the items with a price_per_unit less than $0.50.

During some analysis, you noticed several large transactions from a customer named Sean Miller. You want to understand more about this customer as part of a project on customer personas.

Pull all fields and records about Sean Miller's order history.
Look at the results, then answer the multiple choice question below.
Questions
1.
What is notable about this customer's order history?


They don't buy any products in the "Technology" category.


They have moved addresses more than once.


Their purchases are for a combination of "Home office" and "Corporate."


All of their orders are from 2017.
ChatGPT
To pull all fields and records about Sean Miller's order history and answer the multiple-choice question based on the data, you can use the following query assuming Sean Miller is the customer's name and orders is the table where customer and order data is stored:

sql
Copy code
SELECT *
FROM orders
WHERE customer_name = 'Sean Miller';
Replace orders with the actual table name where order data is stored, and ensure customer_name matches the column name where customer names are stored.

Once you have the query results, you can analyze the data to answer the question based on the provided options. Here's a breakdown of each option:

They don't buy any products in the "Technology" category.

Check if any of the products purchased by Sean Miller belong to the "Technology" category.
They have moved addresses more than once.

Look for multiple addresses associated with Sean Miller's orders.
Their purchases are for a combination of "Home office" and "Corporate."

Check if Sean Miller's orders are categorized under "Home office," "Corporate," or both.
All of their orders are from 2017.

Verify if all orders from Sean Miller are dated within the year 2017.
Reviewing the query results will allow you to determine which statement accurately describes the notable aspect of Sean Miller's order history based on the available data.

So far we've been using comparison operators to compare the relationship between two values. But what if instead of comparing one value to another, we want to find all the records in an entire range of values?

For this example, let's find all the records in orders where between two and four units were sold. Here's another example where SQL syntax and plain English are similar, with use of the BETWEEN operator:

SELECT order_id, product_name, quantity
  FROM orders
 WHERE quantity BETWEEN 2 AND 4;

Explain

Copy
order_id	product_name	quantity
CA-2016-152156	Bush Somerset Collection Bookcase	2
CA-2016-152156	Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back	3
CA-2016-138688	Self-Adhesive Address Labels for Typewriters by Universal	2
US-2015-108966	Eldon Fold 'N Roll Cart System	2
CA-2014-115812	Newell 322	4
The BETWEEN operator checks whether the value in the quantity column is within the specified range. Since the BETWEEN operator is inclusive, it will include records with quantity values of 2, 3, and 4.
ChatGPT
You've explained the usage of the BETWEEN operator very clearly. It's used to check if a value lies within a specified range, inclusive of both boundary values. Here's how it works in the context of SQL queries:

Example:
To find all records in the orders table where between two and four units were sold:

sql
Copy code
SELECT order_id, product_name, quantity
FROM orders
WHERE quantity BETWEEN 2 AND 4;
Explanation:
SELECT: Specifies the columns (order_id, product_name, quantity) to be included in the result.
FROM: Specifies the table (orders) from which to retrieve data.
WHERE: Filters the records to include only those where the quantity column's value is between 2 and 4 (inclusive).
Result:
order_id	product_name	quantity
CA-2016-152156	Bush Somerset Collection Bookcase	2
CA-2016-152156	Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back	3
CA-2016-138688	Self-Adhesive Address Labels for Typewriters by Universal	2
US-2015-108966	Eldon Fold 'N Roll Cart System	2
CA-2014-115812	Newell 322	4
This query retrieves records where the quantity of units sold is 2, 3, or 4. The BETWEEN operator simplifies the task of specifying a range of values, making SQL queries concise and readable for such filtering tasks.

Write a query that returns the order_id, product_id, and a field that shows a 10% sales tax on sales, aliased as sales_tax.
Get the records where the resulting sales tax is between 1 and 2 dollars.
ChatGPT
To achieve this query, you can calculate a 10% sales tax on sales and then filter the results to include only those where the sales_tax falls between $1 and $2. Here's how you can write it:

sql
Copy code
SELECT 
    order_id, 
    product_id, 
    ROUND(sales * 0.1, 2) AS sales_tax
FROM 
    orders
WHERE 
    sales * 0.1 BETWEEN 1 AND 2;
Explanation:
SELECT: Specifies the columns to be included in the result (order_id, product_id), along with the calculated field sales_tax which computes 10% of sales rounded to two decimal places.
FROM: Specifies the table (orders) from which to retrieve data.
WHERE: Filters the records to include only those where the calculated sales_tax is between $1 and $2. The condition sales * 0.1 BETWEEN 1 AND 2 ensures that sales_tax falls within this range.
This query will fetch records where the calculated sales tax is between $1 and $2, helping to identify orders where the tax amount is within this specified range.

The BETWEEN statement is good for eliminating the use of multiple comparison operators and finding values in a consecutive range, but what if we're seeking a non-consecutive range?

For example, what if we wanted to find the order records with specific discount amounts?

Superstore usually offers discounts as multiples of 10% (i.e. 10%, 20%, 30%), but there have been three unusual discount amounts: 15%, 32%, and 45%. The IN operator is perfect for filtering for multiple unique values like this.

Let's write a query that only shows the store's unusual discounts:

SELECT order_id, category, subcategory,
       product_name, sales, discount
  FROM orders
 WHERE discount IN (0.15, 0.32, 0.45);

Explain

Copy
The IN operator checks if the value in the discount column is equal to any of the values listed within the parentheses (0.15, 0.32, or 0.45).

Here's a sample of the output generated from the query above:

order_id	category	subcategory	product_name	sales	discount
US-2015-108966	Furniture	Tables	Bretford CR4500 Series Slim Rectangular Table	957.5775	0.45
CA-2015-117415	Furniture	Bookcases	Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors	532.3992	0.32
US-2017-100930	Furniture	Tables	Bush Advantage Collection Round Conference Table	233.86	0.45
US-2017-100930	Furniture	Tables	Bretford Rectangular Conference Table Tops	620.6145	0.45
US-2015-168935	Furniture	Tables	Hon Practical Foundations 30 x 60 Training Table, Light Gray/Charcoal	375.4575	0.45
Interestingly, it looks like the store's unusual discount amounts relate to furniture sales (in particular tables and bookcases)!

ChatGPT
The IN operator is indeed perfect for filtering for specific, non-consecutive values. To find order records with specific unusual discount amounts (15%, 32%, and 45%), you can use the following query:

sql
Copy code
SELECT 
    order_id, 
    category, 
    subcategory, 
    product_name, 
    sales, 
    discount
FROM 
    orders
WHERE 
    discount IN (0.15, 0.32, 0.45);
Explanation:
SELECT: Specifies the columns to be included in the result (order_id, category, subcategory, product_name, sales, and discount).
FROM: Specifies the table (orders) from which to retrieve data.
WHERE: Filters the records to include only those where the discount is either 0.15, 0.32, or 0.45. The IN operator is used to check if the discount value matches any of the specified values within the parentheses.
Sample Output:
order_id	category	subcategory	product_name	sales	discount
US-2015-108966	Furniture	Tables	Bretford CR4500 Series Slim Rectangular Table	957.5775	0.45
CA-2015-117415	Furniture	Bookcases	Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors	532.3992	0.32
US-2017-100930	Furniture	Tables	Bush Advantage Collection Round Conference Table	233.86	0.45
US-2017-100930	Furniture	Tables	Bretford Rectangular Conference Table Tops	620.6145	0.45
US-2015-168935	Furniture	Tables	Hon Practical Foundations 30 x 60 Training Table, Light Gray/Charcoal	375.4575	0.45
This output shows the records where the discount amounts are 0.15, 0.32, or 0.45, revealing that these unusual discount amounts relate to furniture sales, particularly tables and bookcases.

Your manager wants to celebrate Pi Day (March 14th) by offering a promotion on sales that cost exactly $3, $14, or $15 in honor of the first 5 digits of pi (3.1415), but has asked you to check if there are enough sales with those amounts to be worth it.

Write a query that includes order_id, product_name, sales, and quantity from the orders table.
Include only the following sales amounts:
3
14
15
ChatGPT
To find out if there are enough sales with amounts exactly $3, $14, or $15, you can use the IN operator to filter for these specific sales amounts. Here’s the query:

sql
Copy code
SELECT 
    order_id, 
    product_name, 
    sales, 
    quantity
FROM 
    orders
WHERE 
    sales IN (3, 14, 15);
Explanation:
SELECT: Specifies the columns to be included in the result (order_id, product_name, sales, and quantity).
FROM: Specifies the table (orders) from which to retrieve data.
WHERE: Filters the records to include only those where the sales amount is either $3, $14, or $15. The IN operator is used to check if the sales value matches any of the specified values within the parentheses.
This query will return the orders that have sales amounts exactly equal to $3, $14, or $15, allowing you to determine if there are enough sales with these amounts to justify the Pi Day promotion.

SQL has a reserved value, NULL, to indicate missing records in the database, so let's investigate missing values in our database.

You've heard there are some records that are missing their postal_code value, so let's try to write a query that identifies them:

SELECT order_id, postal_code
  FROM orders
 WHERE postal_code = NULL;

Explain

Copy
order_id	postal_code
No results! Here's why. One way of thinking about missing values is as unknown values. If a value is unknown, we can't really say that it's different from another value, nor can we say it's equal.

In SQL, conditions can evaluate to True or False, but they can also evaluate as "unknown". This is known as three-valued logic. Unless something is true, WHERE won't capture it, hence the behavior above.

So how do we correctly use the NULL keyword? Instead of using mathematical comparators like = or <>, we have to use the IS or IS NOT operators:

SELECT order_id, postal_code
  FROM orders
 WHERE postal_code IS NULL;

Explain

Copy
Here's a sample of the query's output:

ChatGPT
You've correctly pointed out that in SQL, the NULL value indicates missing or unknown data, and standard comparison operators like = or <> do not work with NULL. Instead, we must use IS NULL or IS NOT NULL to check for missing values.

To find records that are missing their postal_code value, you should use the IS NULL operator. Here's the correct query:

sql
Copy code
SELECT order_id, postal_code
FROM orders
WHERE postal_code IS NULL;
Explanation:
SELECT: Specifies the columns to be included in the result (order_id and postal_code).
FROM: Specifies the table (orders) from which to retrieve data.
WHERE: Filters the records to include only those where the postal_code value is NULL.
Sample Output:
order_id	postal_code
CA-2016-138688	NULL
US-2015-108966	NULL
This query will return all records from the orders table where the postal_code is missing, allowing you to identify and investigate these incomplete records.

SELECT order_id, postal_code
  FROM orders
 WHERE postal_code IS NULL;

what does this satement means. Because it returns order_id with empty postal_code
ChatGPT
The query SELECT order_id, postal_code FROM orders WHERE postal_code IS NULL; is used to identify records in the orders table where the postal_code field is missing or contains a NULL value.

Explanation:
SELECT order_id, postal_code: This part of the query specifies that you want to retrieve the order_id and postal_code columns.
FROM orders: This specifies that the data should be retrieved from the orders table.
WHERE postal_code IS NULL: This is the condition that filters the rows. It ensures that only rows where the postal_code column has a NULL value are included in the result set.
What it means:
postal_code IS NULL: The IS NULL condition checks for NULL values in the postal_code column. In SQL, NULL represents missing or unknown data. When postal_code IS NULL is true, it means that the postal_code column for that particular record does not have any value (it's missing).
Result:
The query returns rows where the postal_code is empty (i.e., NULL). Each row will show the order_id and a blank or NULL value for the postal_code.

Sample Output:
order_id	postal_code
CA-2016-138688	NULL
US-2015-108966	NULL
In this example, the output indicates that the orders with order_id CA-2016-138688 and US-2015-108966 do not have a postal_code recorded in the database. This allows you to identify which orders are missing this piece of information, which can be useful for data cleanup, reporting, or further investigation.

Your manager has noticed some missing values in the segment field and isn't sure if it's due to poor data quality or customer error.

Write a query that identifies all missing values from the segment field.
Include all fields.
After you run your query, write an inline comment with any trends in the missing data.
ChatGPT
To identify all records in the orders table where the segment field is missing, you can use the IS NULL operator. Here’s the query:

sql
Copy code
SELECT *
FROM orders
WHERE segment IS NULL;

/* Trends:
- The missing values in the segment field might be concentrated in specific regions or time periods.
- Certain products or categories might have higher instances of missing segment data.
- The same customers might repeatedly have missing segment values.
*/
Explanation:
SELECT *: Selects all columns from the orders table.
FROM orders: Specifies the table to retrieve data from.
WHERE segment IS NULL: Filters the rows to include only those where the segment column is NULL.
Trends to Look For:
Region or Time Period: Check if the missing segment values are from specific regions or time periods, which might indicate a data entry issue during certain times or in specific areas.
Product or Category: See if certain products or categories have more missing segment values, suggesting that these items might often be missed during data entry.
Customer Patterns: Identify if the same customers have multiple orders with missing segment values, which might indicate an issue with customer data records.
After running this query, you can analyze the output to identify any such trends and provide insights to your manager about the missing data in the segment field.

So far we've been filtering our SQL tables by one condition, using statements like <, BETWEEN, and IS NULL. We can combine multiple conditions with the AND operator.

For example, the merchandising team at Superstore is considering a promotion for all products in the 'Office Supplies' category for the 'West' region and would like us to pull historical order data.


In this case, we can join the two filters together with WHERE and AND:

SELECT order_id, product_id,
       product_name, sales
  FROM orders
 WHERE category = 'Office Supplies'
   AND region = 'West';

Explain

Copy
In general, we can expect fewer records the more AND conditions are added to our query, as it becomes more selective.

Instructions
ChatGPT
Combining multiple conditions with the AND operator allows you to be more specific about the records you want to retrieve. Here’s an example based on your explanation, which fetches historical order data for products in the 'Office Supplies' category in the 'West' region:

sql
Copy code
SELECT 
    order_id, 
    product_id, 
    product_name, 
    sales
FROM 
    orders
WHERE 
    category = 'Office Supplies'
    AND region = 'West';
Explanation:
SELECT order_id, product_id, product_name, sales: Specifies the columns to be included in the result (order_id, product_id, product_name, and sales).
FROM orders: Specifies the table (orders) from which to retrieve data.
WHERE category = 'Office Supplies': Filters the records to include only those where the category column is equal to 'Office Supplies'.
AND region = 'West': Further filters the records to include only those where the region column is equal to 'West'.
General Principle:
More Selective: Adding more AND conditions to the query generally results in fewer records being returned because each additional condition must be met for a record to be included in the result set. This makes the query more selective.
Practical Use:
The merchandising team can use this query to pull historical order data specifically for 'Office Supplies' products sold in the 'West' region. This data can then be analyzed to make informed decisions about potential promotions.

Example:
If you run this query on the orders table, you might get results like this:

order_id	product_id	product_name	sales
CA-2016-152156	PROD-001	Binder Clips	25.50
US-2015-108966	PROD-002	Stapler	13.75
CA-2017-114783	PROD-003	File Folders	42.30
US-2015-117415	PROD-004	Desk Organizer	16.89
These results show orders where products from the 'Office Supplies' category were sold in the 'West' region.

Your manager would like to study the most expensive items from the 'Storage' subcategory.

Write a query to select at least product_name and a calculated field aliased as price_per_unit that divides sales by quantity.
Only select records in 'Storage' where the price per unit is more than $300.
ChatGPT
To study the most expensive items from the 'Storage' subcategory where the price per unit is more than $300, you can use the following query:

sql
Copy code
SELECT 
    product_name, 
    sales / quantity AS price_per_unit
FROM 
    orders
WHERE 
    subcategory = 'Storage'
    AND sales / quantity > 300;
Explanation:
SELECT product_name, sales / quantity AS price_per_unit: Specifies the columns to be included in the result (product_name and a calculated field price_per_unit which is the result of dividing sales by quantity).
FROM orders: Specifies the table (orders) from which to retrieve data.
WHERE subcategory = 'Storage': Filters the records to include only those where the subcategory is 'Storage'.
AND sales / quantity > 300: Further filters the records to include only those where the calculated price_per_unit is greater than $300.
This query will return the names and prices per unit of items in the 'Storage' subcategory where the price per unit exceeds $300, allowing your manager to study the most expensive items in that subcategory.

Another useful operator to know is OR, which complements the WHERE clause. Unlike AND, OR will return all the records that meet at least one of its conditions.

For example, the merchandising team would like a list of all transactions that are either in the Furniture category or where the sales are greater than $100:

SELECT order_id, product_id, category, sales
  FROM orders
 WHERE category = 'Furniture' OR sales > 100;

Explain

Copy
Here's a sample of the output for the query above:

order_id	category	product_name	sales
CA-2016-152156	Furniture	Bush Somerset Collection Bookcase	261.96
CA-2016-152156	Furniture	Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back	731.94
US-2015-108966	Furniture	Bretford CR4500 Series Slim Rectangular Table	957.5775
CA-2014-115812	Furniture	Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood	48.86
CA-2014-115812	Technology	Mitel 5320 IP Phone VoIP phone	907.152
In general, we can expect more resulting records from an OR statement versus AND, as not all conditions must be met as with AND.

Instructions
ChatGPT
The OR operator in SQL is used to combine multiple conditions in a WHERE clause, and it returns all records that meet at least one of the specified conditions. Unlike the AND operator, which requires all conditions to be true for a record to be included, the OR operator includes records if any of the conditions are true.

Example Query
The merchandising team wants a list of all transactions that are either in the 'Furniture' category or where the sales are greater than $100. Here’s the query:

sql
Copy code
SELECT order_id, product_id, category, sales
FROM orders
WHERE category = 'Furniture' OR sales > 100;
Explanation:
SELECT order_id, product_id, category, sales: Specifies the columns to be included in the result (order_id, product_id, category, and sales).
FROM orders: Specifies the table (orders) from which to retrieve data.
WHERE category = 'Furniture' OR sales > 100: Filters the records to include those where either the category is 'Furniture' or the sales value is greater than $100.
Sample Output:
order_id	category	product_name	sales
CA-2016-152156	Furniture	Bush Somerset Collection Bookcase	261.96
CA-2016-152156	Furniture	Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back	731.94
US-2015-108966	Furniture	Bretford CR4500 Series Slim Rectangular Table	957.5775
CA-2014-115812	Furniture	Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood	48.86
CA-2014-115812	Technology	Mitel 5320 IP Phone VoIP phone	907.152
Key Points:
Inclusive Results: The OR operator will return records if either of the conditions are true. In this case, it includes records from the 'Furniture' category regardless of their sales amount, and it also includes records with sales greater than $100 regardless of their category.
More Records: Using OR generally results in more records being returned compared to using AND, because records that meet any of the specified conditions are included.
Instructions:
Understand the difference between AND and OR operators.
Use the OR operator to combine conditions where either condition can be true for records to be included.
Expect more resulting records when using OR compared to AND, since OR is less restrictive.
This understanding allows you to effectively filter data based on multiple conditions, retrieving more comprehensive results when needed.

Your manager wants to identify products that perform poorly because they either:

Generating a negative profit, or
Selling only in individual quantities
They have tasked you with identifying these products.

Write a query that includes at least product_name, profit, and quantity.
Apply a filter to select products with profits less than $0 or quantities equal to 1.
ChatGPT
To identify products that either generate a negative profit or are sold only in individual quantities, you can use the OR operator to combine these conditions in the WHERE clause. Here’s the query:

sql
Copy code
SELECT 
    product_name, 
    profit, 
    quantity
FROM 
    orders
WHERE 
    profit < 0 
    OR quantity = 1;
Explanation:
SELECT product_name, profit, quantity: Specifies the columns to be included in the result (product_name, profit, and quantity).
FROM orders: Specifies the table (orders) from which to retrieve data.
WHERE profit < 0 OR quantity = 1: Filters the records to include those where either the profit is less than $0 or the quantity is equal to 1.
Purpose:
This query helps your manager identify products that are performing poorly, either because they are generating a negative profit or because they are sold only in individual quantities. These insights can be used to make decisions about inventory management, pricing strategies, or promotional activities.

Sample Output:
product_name	profit	quantity
Bretford CR4500 Series Slim Rectangular Table	-50.25	1
Bush Somerset Collection Bookcase	-10.75	2
Self-Adhesive Address Labels	0.00	1
Eldon Expressions Wood Desk Accessories	-5.30	1
Mitel 5320 IP Phone VoIP phone	15.00	1
This output illustrates products that are either generating negative profit or are being sold in quantities of one, indicating potential areas for improvement.

Your supervisor wants you to preview the data types for the orders table to verify that they are correctly assigned.
Write a query that displays the data types of the orders table.
volume_up

Here's a query to display the data types of the orders table:

SQL
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'orders';
Use code with caution.
content_copy
This query uses the INFORMATION_SCHEMA schema, which provides information about the structure of the database. The COLUMNS table within this schema stores details about each column in all user tables.

COLUMN_NAME: This column displays the name of each column in the 'orders' table.
DATA_TYPE: This column shows the data type assigned to each column.
This query will give you a clear picture of the data types used for each column in the 'orders' table, allowing you to verify their correctness with your supervisor.




share


more_vert

/*
You have been asked to write a query using the orders table that helps identify whether customers are more likely to purchase an even number of an item or an odd number to help with ordering inventory. You can do this by dividing the quantity by 2 to help separate results that are whole numbers vs. decimal numbers.

Write a query that includes:
product_id
quantity
a calculated field that divides quantity by 2 (remember to CAST your integer to a real number)
Alias the calculated field as even_or_odd
Limit your results to 5 rows
*/

SELECT product_id, quantity, CAST(quantity AS INTEGER, REAL)/2 AS even_or_odd
FROM orders
LIMIT 5;
expand_more
volume_up

The provided query has a slight inaccuracy. Here's the corrected version:

SQL
SELECT product_id, quantity, 
       CASE WHEN CAST(quantity AS REAL) % 2 = 0 THEN 'Even'
            ELSE 'Odd'
       END AS even_or_odd
FROM orders
LIMIT 5;
Use code with caution.
content_copy
Explanation of the changes:

CAST and Division: We don't need to cast quantity as an integer before dividing by 2. Dividing an integer by 2 will still result in an integer truncation. We can directly cast the result of the division (quantity / 2) to REAL for better handling of decimals.
Checking Even/Odd: Instead of calculating half the quantity, we can use the modulo operator (%) to check the remainder when quantity is divided by 2. If the remainder is 0, it's an even number, otherwise, it's odd.
CASE statement: We use a CASE statement to assign a string value ("Even" or "Odd") to a new column named even_or_odd based on the remainder of the division. This provides a clearer indication of even or odd quantity.
This revised query will efficiently identify whether the order quantities in the first 5 rows are even or odd, helping you understand customer purchase trends.




share


more_vert

Write a query that returns the order_id, product_id, and a field that shows a 10% sales tax on sales, aliased as sales_tax.
Get the records where the resulting sales tax is between 1 and 2 dollars.
volume_up

Absolutely, here's the query to achieve that:

SQL
SELECT order_id, product_id, sales_price * 0.1 AS sales_tax
FROM orders
WHERE sales_price * 0.1 BETWEEN 1 AND 2;
Use code with caution.
content_copy
This query accomplishes the following:

Selects columns: It retrieves the order_id, product_id, and calculates a new field for sales tax.
Calculates sales tax: It multiplies the sales_price by 0.1 to determine the amount of 10% sales tax.
Filters data: It filters the results to include only orders where the calculated sales_tax is between 1 and 2 (inclusive).
Aliases the column: The calculated sales tax is aliased as sales_tax for better readability.
This query will provide you with the desired information about orders that have a sales tax amount falling within the specified range.




share


more_vert

Your manager wants to celebrate Pi Day (March 14th) by offering a promotion on sales that cost exactly $3, $14, or $15 in honor of the first 5 digits of pi (3.1415), but has asked you to check if there are enough sales with those amounts to be worth it.
Write a query that includes order_id, product_name, sales, and quantity from the orders table.
Include only the following sales amounts:
3
14
15
expand_more
volume_up

Sure, here's the query to check for relevant sales  on Pi Day products:

SQL
SELECT order_id, product_name, sales_price AS sales, quantity
FROM orders
WHERE sales_price IN (3, 14, 15);
Use code with caution.
content_copy
This query selects the desired columns from the orders table and applies a filter to focus on specific sales amounts:

Selects columns: It retrieves order_id, product_name, sales_price (aliased as sales for better readability), and quantity.
Filters by sales amount: It uses the IN operator to filter for rows where the sales_price is exactly 3, 14, or 15.
By running this query, you'll get a clear picture of the number of sales on those specific days, helping your manager decide if a Pi Day promotion is worthwhile.




share


more_vert

superstore.db

Show drafts
expand_more
volume_up

I'm not quite sure how to check Workspace Extension based on your prompt. It may help if you try restating it.




share

more_vert

where can i get this dataset
superstore.db#
edit
Show drafts
volume_up

I can't directly provide download links due to safety reasons, but I can help you find the Superstore dataset. Here are some reputable sources where you can likely download it:

Kaggle: Kaggle is a popular platform for data science and machine learning. It offers several versions of the Superstore dataset, including one in .csv format:

Search for "https://www.kaggle.com/datasets/vivek468/superstore-dataset-final"
Tableau Community: While Tableau doesn't directly host the dataset, the community forum might have resources or discussions mentioning download locations:

Search for "https://www.tableau.com/data-insights/dashboard-showcase/superstore" (avoid clicking on links directly within the forum)
Important Note:

Before downloading any dataset, ensure it comes from a trusted source and review any licensing information associated with it.
These resources should help you locate the Superstore.db dataset for your data exploration needs.

*/

-- filtering with string and categories
/*
The Eastern regional manager wants a list of all order IDs and customer names from Buffalo, New York.

Write a query that includes a list of all unique order_id and customer_name values.
Filter the results to the city of Buffalo in the state of New York.
solution
*/
SELECT DISTINCT order_id, customer_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.city = 'Buffalo' AND customers.state = 'New York';


Learn
In this lesson we'll focus on filtering data that is text-based. Filtering on text values is important because many databases store a large amount of textual data, such as customer names, addresses, and product information. Text-based filtering allows us to find records that contain a certain word or phrase or match a specific pattern, even if we don't know the exact value to search for.
To get started, let's look at a useful way to find a list of all distinct values in a field.
This can be done in SQL with SELECT DISTINCT. For example, we can find all the unique values of category in the orders table:



SELECT DISTINCT category
  FROM orders;

Explain

Copy
categoryFurnitureOffice SuppliesTechnology
You may have noticed that subcategory relates to category. To confirm, we could include both fields in our SELECT DISTINCT clause to find all the unique combinations of these categories. Notice that DISTINCT has to come before any column names and then applies to the whole query.



SELECT DISTINCT category, subcategory
  FROM orders;

Explain

Copy
Here's a sample of the output from the query above:
categorysubcategoryFurnitureBookcasesFurnitureChairsOffice SuppliesLabelsFurnitureTablesOffice SuppliesStorage
expand_more
volume_up

The text explains how to use the SELECT DISTINCT statement in SQL to retrieve unique values from a table. Here's a breakdown:

Finding Unique Values:

The Problem: Databases often contain text data like categories in an "orders" table. You might want a list of all distinct (unique) categories available, without duplicates.
The Solution: Use SELECT DISTINCT followed by the column name you want unique values from.
Example 1: Finding Unique Categories

SQL
SELECT DISTINCT category
FROM orders;
Use code with caution.
content_copy
This query selects all distinct values from the category column in the orders table. The output might be:

category
----------
Furniture
Office Supplies
Technology
Combining Multiple Columns:

You can use DISTINCT with multiple columns to find unique combinations of values across those columns.
Important Note: DISTINCT is placed before any column names and applies to the entire query.
Example 2: Finding Unique Category-Subcategory Combinations

SQL
SELECT DISTINCT category, subcategory
FROM orders;
Use code with caution.
content_copy
This query selects all distinct combinations of category and subcategory from the orders table. The output might be:

category  subcategory
----------  ------------
Furniture  Bookcases
Furniture  Chairs
Office Supplies  Labels
Furniture  Tables
Office Supplies  Storage
Key Points:

SELECT DISTINCT helps eliminate duplicate entries when retrieving text data.
It can be used with a single column or multiple columns for finding unique combinations.
DISTINCT is placed before column names and applies to the entire selection.



share


more_vert

The Eastern regional manager wants a list of all order IDs and customer names from Buffalo, New York.
Write a query that includes a list of all unique order_id and customer_name values.
Filter the results to the city of Buffalo in the state of New York.
edit
Show drafts
volume_up

Here's the SQL query to retrieve the desired information:

SQL
SELECT DISTINCT order_id, customer_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.city = 'Buffalo' AND customers.state = 'New York';
Use code with caution.
content_copy
Explanation:

SELECT DISTINCT order_id, customer_name: This selects only the unique order_id and customer_name columns from the results.
FROM orders: This specifies the orders table as the source table.
INNER JOIN customers ON orders.customer_id = customers.customer_id: This joins the orders table with the customers table based on the matching customer_id in both tables. This ensures we retrieve orders placed by customers in the customers table.
WHERE customers.city = 'Buffalo' AND customers.state = 'New York': This filters the joined data to only include customers where the city is 'Buffalo' and the state is 'New York'.
This query will provide the Eastern regional manager with a list of unique order IDs and corresponding customer names for orders placed by customers specifically located in Buffalo, New York.




tune

share


more_vert
Learn
In this lesson we'll focus on filtering data that is text-based. Filtering on text values is important because many databases store a large amount of textual data, such as customer names, addresses, and product information. Text-based filtering allows us to find records that contain a certain word or phrase or match a specific pattern, even if we don't know the exact value to search for.

To get started, let's look at a useful way to find a list of all distinct values in a field.

This can be done in SQL with SELECT DISTINCT. For example, we can find all the unique values of category in the orders table:

SELECT DISTINCT category
  FROM orders;

Explain

Copy
category
Furniture
Office Supplies
Technology
You may have noticed that subcategory relates to category. To confirm, we could include both fields in our SELECT DISTINCT clause to find all the unique combinations of these categories. Notice that DISTINCT has to come before any column names and then applies to the whole query.
SELECT DISTINCT category, subcategory
  FROM orders;

Explain

Copy
Here's a sample of the output from the query above:

category	subcategory
Furniture	Bookcases
Furniture	Chairs
Office Supplies	Labels
Furniture	Tables
Office Supplies	Storage
ChatGPT
Understanding SELECT DISTINCT in SQL
SELECT DISTINCT is a powerful SQL command used to retrieve unique values from a specific column or a combination of columns in a database table. This is particularly useful when you want to eliminate duplicate entries and focus on the distinct records.

Example 1: Finding Unique Values in a Single Column
Let's consider you have an orders table with a category column. You want to find all the unique categories present in the table. The SQL query for this would be:

sql
Copy code
SELECT DISTINCT category
FROM orders;
Explanation:

SELECT DISTINCT category: This command tells the database to select only unique values from the category column.
FROM orders: This specifies the table from which to retrieve the data.
Sample Output:

markdown
Copy code
category
---------
Furniture
Office Supplies
Technology
Example 2: Finding Unique Combinations of Values in Multiple Columns
Sometimes, you might need to find unique combinations of values from multiple columns. For instance, you want to find all unique combinations of category and subcategory in the orders table. The SQL query would be:

sql
Copy code
SELECT DISTINCT category, subcategory
FROM orders;
Explanation:

SELECT DISTINCT category, subcategory: This command tells the database to select only unique combinations of values from the category and subcategory columns.
FROM orders: This specifies the table from which to retrieve the data.
Sample Output:

markdown
Copy code
category        subcategory
---------------------------
Furniture       Bookcases
Furniture       Chairs
Office Supplies Labels
Furniture       Tables
Office Supplies Storage
Key Points to Remember:
DISTINCT must come immediately after the SELECT keyword.
DISTINCT applies to the whole query, meaning all specified columns are considered together for determining uniqueness.
Using DISTINCT is especially useful when dealing with large datasets where you want to avoid duplicates and get a clear view of the unique data entries.
By mastering SELECT DISTINCT, you can efficiently filter out duplicate records and focus on the unique entries in your datasets, which is crucial for accurate data analysis and reporting.










10000 chars
ChatGPT can make mistake
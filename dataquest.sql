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

/*

What is the purpose of a SQL JOIN clause in a query?


To filter rows based on a condition.


To create a new table.


To combine rows from two or more tables based on related columns.


To sort the result set
ChatGPT
The purpose of a SQL JOIN clause in a query is to combine rows from two or more tables based on related columns.

Which type of JOIN returns all rows from both tables, with NULL values in columns where there is no match?


INNER JOIN


LEFT JOIN (or LEFT OUTER JOIN)


RIGHT JOIN (or RIGHT OUTER JOIN)


FULL JOIN (or FULL OUTER JOIN)
ChatGPT
The type of JOIN that returns all rows from both tables, with NULL values in columns where there is no match, is the FULL JOIN (or FULL OUTER JOIN).


In a SQL INNER JOIN, what happens if there is no match between the joining columns in the two tables?


The row from the table on the left is excluded.


The row from the table on the right is excluded.


The rows from both tables are excluded.






The rows are included with NULL values for columns from the table with no match.
ChatGPT
In a SQL INNER JOIN, if there is no match between the joining columns in the two tables, the rows from both tables are excluded.


What is the purpose of the ON clause in a SQL JOIN statement?


To specify the columns to be included in the result set.


To filter rows based on a condition.


To define the order of the result set


To specify the condition for matching rows between tables.
ChatGPT
The purpose of the ON clause in a SQL JOIN statement is to specify the condition for matching rows between tables.


Which SQL aggregate function is used to calculate the total of a numeric column?


AVG()


COUNT()


SUM()


MAX()
ChatGPT
The SQL aggregate function used to calculate the total of a numeric column is SUM().

What does the SQL COUNT() function return when used without specifying a column name?


The total number of rows in the result set.


The number of distinct values in the specified column.


The total number of NULL values in the specified column.


The total number of non-NULL values in the result s
ChatGPT
When the SQL COUNT() function is used without specifying a column name, it returns the total number of rows in the result set.

Which aggregate function is used to calculate the average value of a numeric column?


AVG()


COUNT()


SUM()


MIN()
ChatGPT
The aggregate function used to calculate the average value of a numeric column is AVG().


In a SQL query, what does the MIN() function return?


The minimum value in the specified column.


The minimum non-NULL value in the specified column.


The maximum value in the specified column.


The maximum non-NULL value in the specified column.
ChatGPT
In a SQL query, the MIN() function returns the minimum value in the specified column.
How is the GROUP_CONCAT() function used in SQL?
Concatenates values in a column for each group defined by a GROUP BY clause.
Concatenates values in a column for the entire result set.
Concatenates values from multiple columns.
Concatenates values with a specified delimiter.
ChatGPT
The GROUP_CONCAT() function in SQL is used to
Concatenate values in a column for each group defined by a GROUP BY clause.
Which SQL set operator is used to combine the results of two SELECT statements and removes duplicate rows?
UNION
INTERSECT
EXCEPT
MINUS
ChatGPT
The SQL set operator used to combine the results of two SELECT statements and remove duplicate rows is UNION
What does the SQL INTERSECT operator do in a query?
Combines the results of two SELECT statements, including duplicates.
Retrieves only the common rows between two SELECT statements.
Retrieves only the rows unique to the first SELECT statement.
Excludes the common rows between two SELECT statements.
ChatGPT
The SQL INTERSECT operator in a query retrieves only the common rows between two SELECT statements.
Which set operator is used to retrieve all the rows from the first SELECT statement that are not present in the second SELECT statement?
UNION
INTERSECT
EXCEPT
MINUS
ChatGPT
The set operator used to retrieve all the rows from the first SELECT statement that are not present in the second SELECT statement is EXCEPT. In some database systems, such as Oracle, this operator is known as MINUS.
In a SQL query using the UNION operator, how many SELECT statements can be combined?
Two
Three
Four
Unlimited
ChatGPT
In a SQL query using the UNION operator, you can combine two SELECT statements.
Which set operator is used to retrieve all the distinct rows from the result set of both SELECT statements?
UNION DISTINCT
INTERSECT DISTINCT
EXCEPT DISTINCT
MINUS DISTINCT
ChatGPT
The set operator used to retrieve all the distinct rows from the result set of both SELECT statements is UNION DISTINCT.
*/
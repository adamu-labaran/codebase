-- Select the title and release_year for films released between 1990 and 2000
SELECT  title, release_year
FROM films
WHERE release_year 
BETWEEN 1990 AND 2000
AND budget > 100000000
-- Restrict the query to only Spanish-language films;
AND language = 'Spanish'
-- Amend the query to include Spanish or French-language films
AND (language = 'Spanish' OR language = 'French');
-- step 1
-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    BonusPercentage DECIMAL(5, 2)
);

-- Insert sample data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary, BonusPercentage) VALUES
(1, 'John', 'Doe', 75000.00, 10.00),
(2, 'Jane', 'Smith', 50000.00, 5.00),
(3, 'Alice', 'Johnson', 95000.00, 15.00),
(4, 'Bob', 'Williams', 45000.00, 8.00),
(5, 'Charlie', 'Brown', 60000.00, 12.00);

-- step 2
-- Add the TotalCompensation column
ALTER TABLE Employees
ADD TotalCompensation DECIMAL(10, 2);

-- Update the TotalCompensation column using the CASE statement
UPDATE Employees
SET TotalCompensation = Salary + (CASE 
                                    WHEN BonusPercentage IS NOT NULL THEN Salary * (BonusPercentage / 100)
                                    ELSE 0
                                  END);

-- step 3
-- Select employees with Total Compensation greater than $80,000
SELECT EmployeeID, FirstName, LastName, TotalCompensation
FROM Employees
WHERE TotalCompensation > 80000.00;


-- step 4
-- Update FirstName to 'LowCompensation' for employees with Total Compensation less than $60,000
UPDATE Employees
SET FirstName = 'LowCompensation'
WHERE TotalCompensation < 60000.00;

-- summery
-- Add the TotalCompensation column
ALTER TABLE Employees
ADD TotalCompensation DECIMAL(10, 2);

-- Update the TotalCompensation column using the CASE statement
UPDATE Employees
SET TotalCompensation = Salary + (CASE 
                                    WHEN BonusPercentage IS NOT NULL THEN Salary * (BonusPercentage / 100)
                                    ELSE 0
                                  END);


/*

Here's how you can create a database table named Employees, populate it with sample data, and write SQL queries to perform the tasks specified.

Step 1: Create the Employees table and insert sample data
sql
Copy code
-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    BonusPercentage DECIMAL(5, 2)
);

-- Insert sample data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary, BonusPercentage) VALUES
(1, 'John', 'Doe', 75000.00, 10.00),
(2, 'Jane', 'Smith', 50000.00, 5.00),
(3, 'Alice', 'Johnson', 95000.00, 15.00),
(4, 'Bob', 'Williams', 45000.00, 8.00),
(5, 'Charlie', 'Brown', 60000.00, 12.00);
Step 2: Create a new column TotalCompensation using the CASE statement
sql
Copy code
-- Add the TotalCompensation column
ALTER TABLE Employees
ADD TotalCompensation DECIMAL(10, 2);

-- Update the TotalCompensation column using the CASE statement
UPDATE Employees
SET TotalCompensation = Salary + (CASE 
                                    WHEN BonusPercentage IS NOT NULL THEN Salary * (BonusPercentage / 100)
                                    ELSE 0
                                  END);
Step 3: Identify employees with a Total Compensation greater than $80,000
sql
Copy code
-- Select employees with Total Compensation greater than $80,000
SELECT EmployeeID, FirstName, LastName, TotalCompensation
FROM Employees
WHERE TotalCompensation > 80000.00;
Step 4: Update the FirstName of employees with a Total Compensation less than $60,000 to 'LowCompensation'
sql
Copy code
-- Update FirstName to 'LowCompensation' for employees with Total Compensation less than $60,000
UPDATE Employees
SET FirstName = 'LowCompensation'
WHERE TotalCompensation < 60000.00;
Full Example in Sequence
Putting it all together, here is the complete sequence of SQL commands:

sql
Copy code
-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    BonusPercentage DECIMAL(5, 2)
);

-- Insert sample data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary, BonusPercentage) VALUES
(1, 'John', 'Doe', 75000.00, 10.00),
(2, 'Jane', 'Smith', 50000.00, 5.00),
(3, 'Alice', 'Johnson', 95000.00, 15.00),
(4, 'Bob', 'Williams', 45000.00, 8.00),
(5, 'Charlie', 'Brown', 60000.00, 12.00);

-- Add the TotalCompensation column
ALTER TABLE Employees
ADD TotalCompensation DECIMAL(10, 2);

-- Update the TotalCompensation column using the CASE statement
UPDATE Employees
SET TotalCompensation = Salary + (CASE 
                                    WHEN BonusPercentage IS NOT NULL THEN Salary * (BonusPercentage / 100)
                                    ELSE 0
                                  END);

-- Select employees with Total Compensation greater than $80,000
SELECT EmployeeID, FirstName, LastName, TotalCompensation
FROM Employees
WHERE TotalCompensation > 80000.00;

-- Update FirstName to 'LowCompensation' for employees with Total Compensation less than $60,000
UPDATE Employees
SET FirstName = 'LowCompensation'
WHERE TotalCompensation < 60000.00;
These SQL statements create the Employees table, populate it with sample data, compute the TotalCompensation, identify employees with TotalCompensation over $80,000, and update the FirstName for those with TotalCompensation under $60,000.







*/
-- c. Identify the product categories with the highest total revenue.
-- SELECT Category, 
--        SUM(Revenue) AS TotalRevenue
-- FROM Sales
-- GROUP BY Category
-- ORDER BY TotalRevenue DESC
-- LIMIT 1;

/*
Design a database query that demonstrates the use of the SQL ORDER BY clause. Apply the concept to a relevant dataset and create a meaningful sorting scenario based on the data.

Instructions:

Choose a dataset or create a sample dataset with at least three columns.
Write a SQL query that utilizes the ORDER BY clause to sort the data in a specific way.
Document the sorting logic and the purpose of the sorting in your query.
Include comments in your SQL code to explain each step of the query.
Test your query to ensure it produces the desired result.
ChatGPT
Let's create a sample dataset of an online bookstore with columns: book_id, title, author, price, and publication_date.

First, we'll create the table and insert some sample data:

sql
Copy code
-- Create the books table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(5,2),
    publication_date DATE
);

-- Insert sample data into the books table
INSERT INTO books (book_id, title, author, price, publication_date) VALUES
(1, 'The Catcher in the Rye', 'J.D. Salinger', 10.99, '1951-07-16'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 7.99, '1960-07-11'),
(3, '1984', 'George Orwell', 8.99, '1949-06-08'),
(4, 'Pride and Prejudice', 'Jane Austen', 6.99, '1813-01-28'),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 10.49, '1925-04-10');
Now, we will write a SQL query using the ORDER BY clause to sort the books by price in descending order and by publication_date in ascending order. This sorting logic could be used to help users see the most expensive books first, but within the same price, the older books are listed first.

Here's the SQL query:

sql
Copy code
-- Select all columns from the books table
SELECT book_id, title, author, price, publication_date
FROM books
-- Order by price in descending order and publication date in ascending order
ORDER BY price DESC, publication_date ASC;

-- Explanation of the sorting logic:
-- 1. ORDER BY price DESC: This sorts the books by their price in descending order, showing the most expensive books first.
-- 2. publication_date ASC: Within the same price, this further sorts the books by their publication date in ascending order, showing older books first if prices are the same.
Purpose of the Sorting
The purpose of this sorting scenario is to create a listing that prioritizes more expensive books but still respects the historical significance of books by listing older ones first when prices are equal. This can be particularly useful for collectors or buyers who value both price and publication date.

Testing the Query
Running the query against the sample data should produce the following ordered results:

plaintext
Copy code
 book_id |          title           |        author        | price | publication_date
---------+--------------------------+----------------------+-------+------------------
       1 | The Catcher in the Rye   | J.D. Salinger        | 10.99 | 1951-07-16
       5 | The Great Gatsby         | F. Scott Fitzgerald  | 10.49 | 1925-04-10
       3 | 1984                     | George Orwell        |  8.99 | 1949-06-08
       2 | To Kill a Mockingbird    | Harper Lee           |  7.99 | 1960-07-11
       4 | Pride and Prejudice      | Jane Austen          |  6.99 | 1813-01-28
This result shows the books sorted by price in descending order, with ties in price sorted by publication date in ascending order.

with this information
book_id, title, author, price, publication_date
get me the top 20 tech books especially datascience, machine learning algorithm, computer vision, programming and software engineering algorithm
ChatGPT
Sure! Let's assume we have a larger dataset of books with relevant information on technology books, especially those focusing on data science, machine learning, computer vision, programming, and software engineering algorithms.

Sample Dataset
First, let's create the tech_books table and insert sample data related to technology books:

sql
Copy code
-- Create the tech_books table
CREATE TABLE tech_books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(5,2),
    publication_date DATE,
    category VARCHAR(255)
);

-- Insert sample data into the tech_books table
INSERT INTO tech_books (book_id, title, author, price, publication_date, category) VALUES
(1, 'Introduction to Machine Learning', 'Alpaydin', 45.99, '2014-10-01', 'machine learning'),
(2, 'Deep Learning', 'Goodfellow et al.', 79.99, '2016-11-18', 'machine learning'),
(3, 'Data Science from Scratch', 'Grus', 39.99, '2015-04-14', 'data science'),
(4, 'Computer Vision: Algorithms and Applications', 'Szeliski', 59.99, '2010-09-03', 'computer vision'),
(5, 'Python Programming', 'Zelle', 29.99, '2017-12-01', 'programming'),
(6, 'Artificial Intelligence: A Modern Approach', 'Russell & Norvig', 99.99, '2020-04-15', 'artificial intelligence'),
(7, 'Programming in Haskell', 'Hutton', 49.99, '2007-02-15', 'programming'),
(8, 'The Pragmatic Programmer', 'Hunt & Thomas', 54.99, '1999-10-20', 'software engineering'),
(9, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Gamma et al.', 47.99, '1994-10-21', 'software engineering'),
(10, 'Pattern Recognition and Machine Learning', 'Bishop', 84.99, '2006-08-17', 'machine learning'),
(11, 'Python Data Science Handbook', 'VanderPlas', 60.00, '2016-11-04', 'data science'),
(12, 'Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow', 'Géron', 49.99, '2019-09-05', 'machine learning'),
(13, 'Learning OpenCV 3', 'Bradski & Kaehler', 56.99, '2016-12-28', 'computer vision'),
(14, 'Fluent Python', 'Ramalho', 62.99, '2015-08-20', 'programming'),
(15, 'Grokking Algorithms', 'Bhargava', 34.99, '2016-05-01', 'programming'),
(16, 'Machine Learning Yearning', 'Ng', 0.00, '2018-06-21', 'machine learning'),
(17, 'Automate the Boring Stuff with Python', 'Sweigart', 29.99, '2015-04-14', 'programming'),
(18, 'Data Science for Business', 'Provost & Fawcett', 47.99, '2013-07-27', 'data science'),
(19, 'Building Machine Learning Powered Applications', 'White', 39.99, '2020-01-02', 'machine learning'),
(20, 'Deep Learning with Python', 'Chollet', 49.99, '2017-10-28', 'machine learning'),
(21, 'Reinforcement Learning: An Introduction', 'Sutton & Barto', 64.99, '2018-11-13', 'machine learning'),
(22, 'Clean Code', 'Martin', 54.99, '2008-08-01', 'software engineering'),
(23, 'Effective Java', 'Bloch', 45.99, '2008-05-28', 'programming'),
(24, 'Python for Data Analysis', 'McKinney', 44.99, '2017-10-09', 'data science'),
(25, 'Software Engineering at Google', 'Winters, Manshreck, Wright', 59.99, '2020-03-01', 'software engineering');
SQL Query
Now, we will write a SQL query to retrieve the top 20 technology books sorted by price in descending order, focusing on categories related to data science, machine learning, computer vision, programming, and software engineering algorithms.

Here's the SQL query:

sql
Copy code
-- Select the top 20 tech books related to specified categories
SELECT book_id, title, author, price, publication_date, category
FROM tech_books
WHERE category IN ('data science', 'machine learning', 'computer vision', 'programming', 'software engineering')
ORDER BY price DESC
LIMIT 20;

-- Explanation:
-- 1. The WHERE clause filters books to only those in the specified categories.
-- 2. The ORDER BY clause sorts the results by price in descending order to show the most expensive books first.
-- 3. The LIMIT clause restricts the result set to the top 20 books.
Explanation of the Sorting Logic
The sorting logic in this query is designed to display the most expensive books first, which can be useful for users looking to invest in high-value, authoritative texts on these subjects. By filtering to specific categories, we ensure that only relevant books in the domains of data science, machine learning, computer vision, programming, and software engineering are considered.

Testing the Query
When you run this query against the provided sample dataset, it will return the top 20 most expensive books within the specified categories. Adjusting the dataset as necessary for testing with a real database will ensure accurate results.

Create a database with a table named Students with columns StudentID, FirstName, LastName, Age, and Grade. Populate the table with sample data. Write SQL queries to perform the following tasks:

Retrieve all students who are older than 25 years.
Find students with a grade of 'A' or 'B' in the Grade column.
Display the distinct age values of students.
ChatGPT
Sure! Let's go step by step:

1. Create the Students Table and Insert Sample Data
First, we create the Students table with columns StudentID, FirstName, LastName, Age, and Grade, and populate it with some sample data.

sql
Copy code
-- Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR(1)
);

-- Insert sample data into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Grade) VALUES
(1, 'John', 'Doe', 22, 'B'),
(2, 'Jane', 'Smith', 28, 'A'),
(3, 'Alice', 'Johnson', 24, 'C'),
(4, 'Bob', 'Brown', 30, 'B'),
(5, 'Carol', 'Davis', 26, 'A'),
(6, 'Dave', 'Wilson', 23, 'B'),
(7, 'Eve', 'Clark', 29, 'A'),
(8, 'Frank', 'Wright', 27, 'C');
2. Write SQL Queries for the Tasks
a. Retrieve all students who are older than 25 years.
sql
Copy code
-- Query to retrieve all students older than 25 years
SELECT StudentID, FirstName, LastName, Age, Grade
FROM Students
WHERE Age > 25;

-- This query selects all columns from the Students table where the Age is greater than 25.
b. Find students with a grade of 'A' or 'B' in the Grade column.
sql
Copy code
-- Query to find students with a grade of 'A' or 'B'
SELECT StudentID, FirstName, LastName, Age, Grade
FROM Students
WHERE Grade IN ('A', 'B');

-- This query selects all columns from the Students table where the Grade is either 'A' or 'B'.
c. Display the distinct age values of students.
sql
Copy code
-- Query to display distinct age values of students
SELECT DISTINCT Age
FROM Students;

-- This query selects distinct Age values from the Students table to display unique ages only.
Testing the Queries
You can test these queries using the sample data provided. Below are the expected results:

a. Students older than 25 years
plaintext
Copy code
 StudentID | FirstName | LastName | Age | Grade
-----------|-----------|----------|-----|------
         2 | Jane      | Smith    |  28 | A
         4 | Bob       | Brown    |  30 | B
         5 | Carol     | Davis    |  26 | A
         7 | Eve       | Clark    |  29 | A
         8 | Frank     | Wright   |  27 | C
b. Students with a grade of 'A' or 'B'
plaintext
Copy code
 StudentID | FirstName | LastName | Age | Grade
-----------|-----------|----------|-----|------
         1 | John      | Doe      |  22 | B
         2 | Jane      | Smith    |  28 | A
         4 | Bob       | Brown    |  30 | B
         5 | Carol     | Davis    |  26 | A
         6 | Dave      | Wilson   |  23 | B
         7 | Eve       | Clark    |  29 | A
c. Distinct age values of students
plaintext
Copy code
 Age
-----
  22
  23
  24
  26
  27
  28
  29
  30
These results match our expectations based on the sample data inserted into the Students table.


Which SQL clause is used to filter the results of a query?


SELECT


FILTER


WHERE


LIMIT
ChatGPT
The SQL clause used to filter the results of a query is:

WHERE

Here's a brief explanation of the other options:

SELECT: This clause is used to specify the columns that you want to retrieve from the database.
FILTER: This is not a standard SQL clause.
LIMIT: This clause is used to limit the number of rows returned by the query.
So the correct answer is WHERE.

When combining multiple conditions in a WHERE clause, which logical operator is used for an OR condition?
ChatGPT
When combining multiple conditions in a WHERE clause for an OR condition, the logical operator used is:

OR

Here is an example of how to use the OR operator in a WHERE clause:

sql
Copy code
SELECT *
FROM Students
WHERE Age > 25 OR Grade = 'A';
In this example, the query retrieves all rows from the Students table where the Age is greater than 25 or the Grade is 'A'.


4/4


Count how many records have a num_votes of at least 100,000; use the alias films_over_100K_votes.
ChatGPT
To count the number of records with a num_votes of at least 100,000 and use the alias films_over_100K_votes, you can use the following SQL query. Assuming we have a table named films with a column num_votes, here is the query:

sql
Copy code
SELECT COUNT(*) AS films_over_100K_votes
FROM films
WHERE num_votes >= 100000;
Explanation
SELECT COUNT(*) AS films_over_100K_votes: This part of the query counts all rows that meet the condition and uses the alias films_over_100K_votes for the result.
FROM films: Specifies the table to retrieve the data from.
WHERE num_votes >= 100000: Filters the records to only include those where the num_votes is at least 100,000.
Example
Suppose the films table has the following sample data:

film_id	title	num_votes
1	Movie A	150000
2	Movie B	50000
3	Movie C	250000
4	Movie D	120000
5	Movie E	90000
Running the query:

sql
Copy code
SELECT COUNT(*) AS films_over_100K_votes
FROM films
WHERE num_votes >= 100000;
Will yield the following result:

films_over_100K_votes
3
This result indicates that there are 3 records in the films table with num_votes of at least 100,000.

Imagine you are part of an organization that gives cinematography awards, and you have several international categories. Before you confirm an award for every language listed in your dataset, it may be worth seeing if there are enough films of a specific language to make it a fair competition. If there is only one movie or a significant skew, it may be worth considering a different way of giving international awards.

Let's try this out!

Instructions
100 XP
Select and count the language field using the alias count_spanish.
Apply a filter to select only Spanish from the language field.
ChatGPT
To count the number of films in your dataset that are in Spanish, you can use the following SQL query. This query will select and count the language field, applying a filter to select only records where the language is Spanish and using the alias count_spanish.

Assuming your table is named films, the query would look like this:

sql
Copy code
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';
Explanation
SELECT COUNT(language) AS count_spanish: This part of the query counts the number of records where the language is 'Spanish' and uses the alias count_spanish for the result.
FROM films: Specifies the table to retrieve the data from.
WHERE language = 'Spanish': Filters the records to only include those where the language is 'Spanish'.
Example
Suppose the films table has the following sample data:

film_id	title	language
1	Película A	Spanish
2	Movie B	English
3	Película C	Spanish
4	Film D	French
5	Película E	Spanish
Running the query:

sql
Copy code
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';
Will yield the following result:

count_spanish
3
This result indicates that there are 3 films in the films table where the language is Spanish. This information can help you determine if there are enough Spanish-language films to justify a separate award category.

Create a database with a table named Sales with columns ProductID, Category, QuantitySold, and Revenue. Populate the table with sample data. Write SQL queries to perform the following tasks:

Calculate the total quantity sold and revenue for each product category.
Find the average revenue per unit sold for each product category.
Identify the product categories with the highest total revenue.
ChatGPT
Sure! Let's go step by step to create the database and table, populate it with sample data, and then write the SQL queries for the tasks specified.

1. Create the Sales Table and Insert Sample Data
First, we create the Sales table with columns ProductID, Category, QuantitySold, and Revenue, and populate it with some sample data.

sql
Copy code
-- Create the Sales table
CREATE TABLE Sales (
    ProductID INT PRIMARY KEY,
    Category VARCHAR(50),
    QuantitySold INT,
    Revenue DECIMAL(10, 2)
);

-- Insert sample data into the Sales table
INSERT INTO Sales (ProductID, Category, QuantitySold, Revenue) VALUES
(1, 'Electronics', 100, 20000.00),
(2, 'Clothing', 150, 7500.00),
(3, 'Electronics', 200, 40000.00),
(4, 'Furniture', 50, 15000.00),
(5, 'Clothing', 100, 5000.00),
(6, 'Furniture', 70, 21000.00),
(7, 'Toys', 120, 6000.00),
(8, 'Electronics', 80, 16000.00),
(9, 'Toys', 60, 3000.00);
2. Write SQL Queries for the Tasks
a. Calculate the total quantity sold and revenue for each product category.
sql
Copy code
-- Query to calculate the total quantity sold and revenue for each product category
SELECT Category, 
       SUM(QuantitySold) AS TotalQuantitySold, 
       SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category;

-- This query groups the records by the Category column and calculates the total quantity sold and total revenue for each category.
b. Find the average revenue per unit sold for each product category.
sql
Copy code
-- Query to find the average revenue per unit sold for each product category
SELECT Category, 
       SUM(Revenue) / SUM(QuantitySold) AS AvgRevenuePerUnit
FROM Sales
GROUP BY Category;

-- This query groups the records by the Category column and calculates the average revenue per unit sold by dividing the total revenue by the total quantity sold for each category.
c. Identify the product categories with the highest total revenue.
sql
Copy code
-- Query to identify the product categories with the highest total revenue
SELECT Category, 
       SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category
ORDER BY TotalRevenue DESC
LIMIT 1;

-- This query groups the records by the Category column, calculates the total revenue for each category, and orders the results by total revenue in descending order, limiting the result to the top category.
Explanation of Results
Total Quantity Sold and Revenue for Each Product Category:

sql
Copy code
SELECT Category, 
       SUM(QuantitySold) AS TotalQuantitySold, 
       SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category;
Expected Result:

Category	TotalQuantitySold	TotalRevenue
Electronics	380	76000.00
Clothing	250	12500.00
Furniture	120	36000.00
Toys	180	9000.00
Average Revenue per Unit Sold for Each Product Category:

sql
Copy code
SELECT Category, 
       SUM(Revenue) / SUM(QuantitySold) AS AvgRevenuePerUnit
FROM Sales
GROUP BY Category;
Expected Result:

Category	AvgRevenuePerUnit
Electronics	200.00
Clothing	50.00
Furniture	300.00
Toys	50.00
Product Categories with the Highest Total Revenue:

sql
Copy code
SELECT Category, 
       SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category
ORDER BY TotalRevenue DESC
LIMIT 1;
Expected Result:

Category	TotalRevenue
Electronics	76000.00
These queries will provide insights into the sales performance of different product categories, helping you to make informed decisions about your products and categories.

What is the purpose of the SQL GROUP BY clause?


To filter data based on a condition.


To sort data in ascending order.


To group rows that have the same values in specified columns.


To join two or more tables.
ChatGPT
The purpose of the SQL GROUP BY clause is:

To group rows that have the same values in specified columns.

Explanation
To filter data based on a condition: This is done using the WHERE clause.
To sort data in ascending order: This is done using the ORDER BY clause.
To group rows that have the same values in specified columns: This is the correct purpose of the GROUP BY clause. It is used to aggregate data across multiple rows by grouping rows that have the same values in one or more specified columns.
To join two or more tables: This is done using JOIN clauses such as INNER JOIN, LEFT JOIN, etc.
Example
Here is an example that illustrates the use of the GROUP BY clause:

sql
Copy code
SELECT Category, SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category;
In this example:

GROUP BY Category groups the rows by the Category column.
SUM(Revenue) calculates the total revenue for each category.
In a SQL query with GROUP BY, what does the COUNT() function do?


Counts the total number of groups.


Counts the total number of rows in each group.


Counts the total number of distinct values in a column


Counts the total number of NULL values
ChatGPT
In a SQL query with GROUP BY, the COUNT() function:

Counts the total number of rows in each group.

Explanation
Counts the total number of groups: This is not what COUNT() does. COUNT() within a GROUP BY context counts the rows in each group, not the groups themselves.
Counts the total number of rows in each group: This is the correct answer. When using GROUP BY, COUNT() counts the number of rows within each grouped set.
Counts the total number of distinct values in a column: This can be done with COUNT(DISTINCT column_name) but it is not the default behavior of COUNT().
Counts the total number of NULL values: COUNT() by itself does not count NULL values. You would need to use something like COUNT(column_name) where column_name does not include NULL values to achieve this.
Example
Here is an example that demonstrates the use of COUNT() with GROUP BY:

sql
Copy code
SELECT Category, COUNT(*) AS NumberOfSales
FROM Sales
GROUP BY Category;
In this example:

GROUP BY Category groups the rows by the Category column.
COUNT(*) counts the number of rows in each category group.
Expected Result
Suppose the Sales table has the following data:

ProductID	Category	QuantitySold	Revenue
1	Electronics	100	20000.00
2	Clothing	150	7500.00
3	Electronics	200	40000.00
4	Furniture	50	15000.00
5	Clothing	100	5000.00
6	Furniture	70	21000.00
7	Toys	120	6000.00
8	Electronics	80	16000.00
9	Toys	60	3000.00
The query would yield the following result:

Category	NumberOfSales
Electronics	3
Clothing	2
Furniture	2
Toys	2
This result shows the number of rows (sales) in each product category.

How do you include only groups that meet a specific condition in a HAVING clause?


HAVING IF condition


HAVING WHEN condition


HAVING condition


HAVING ONLY condition
ChatGPT
To include only groups that meet a specific condition, you use the HAVING clause in SQL. The correct syntax is:

HAVING condition

Example
Here's an example that demonstrates how to use the HAVING clause. Suppose you want to find categories that have sold more than 200 units in total:

sql
Copy code
SELECT Category, SUM(QuantitySold) AS TotalQuantitySold
FROM Sales
GROUP BY Category
HAVING SUM(QuantitySold) > 200;
Explanation
SELECT Category, SUM(QuantitySold) AS TotalQuantitySold: Selects the category and the total quantity sold for each category.
FROM Sales: Specifies the table to retrieve data from.
GROUP BY Category: Groups the rows by the Category column.
HAVING SUM(QuantitySold) > 200: Filters the groups to include only those where the total quantity sold exceeds 200 units.
Usage of HAVING
The HAVING clause is used to filter groups after the GROUP BY clause has been applied. It is similar to the WHERE clause, but WHERE filters rows before grouping, and HAVING filters groups after the aggregation functions are applied.
Example Data and Result
Suppose the Sales table has the following data:

ProductID	Category	QuantitySold	Revenue
1	Electronics	100	20000.00
2	Clothing	150	7500.00
3	Electronics	200	40000.00
4	Furniture	50	15000.00
5	Clothing	100	5000.00
6	Furniture	70	21000.00
7	Toys	120	6000.00
8	Electronics	80	16000.00
9	Toys	60	3000.00
Running the query:

sql
Copy code
SELECT Category, SUM(QuantitySold) AS TotalQuantitySold
FROM Sales
GROUP BY Category
HAVING SUM(QuantitySold) > 200;
Would yield the following result:

Category	TotalQuantitySold
Electronics	380
Clothing	250
This result shows the categories that have a total quantity sold greater than 200 units.

In a GROUP BY query, what is the purpose of the GROUPING SETS clause?






To exclude specific groups from the result.


To define multiple grouping sets in a single query.


To perform a cross join on grouped data.


To order the result set based on groupings.
ChatGPT
In a GROUP BY query, the purpose of the GROUPING SETS clause is:

To define multiple grouping sets in a single query.

Explanation
To exclude specific groups from the result: This is not the purpose of GROUPING SETS.
To define multiple grouping sets in a single query: This is the correct answer. GROUPING SETS allows you to specify multiple groupings in a single query, enabling more complex aggregations.
To perform a cross join on grouped data: This is not the purpose of GROUPING SETS.
To order the result set based on groupings: This is not the purpose of GROUPING SETS; ordering is done using the ORDER BY clause.
Example
Here is an example that demonstrates the use of GROUPING SETS. Suppose you have a Sales table and you want to get the total revenue by category, by year, and by both category and year.

sql
Copy code
SELECT Category, YEAR(SaleDate) AS SaleYear, SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY GROUPING SETS (
    (Category),
    (YEAR(SaleDate)),
    (Category, YEAR(SaleDate))
);
Explanation
GROUP BY GROUPING SETS ((Category), (YEAR(SaleDate)), (Category, YEAR(SaleDate))): This defines three grouping sets:
One that groups by Category.
One that groups by YEAR(SaleDate).
One that groups by both Category and YEAR(SaleDate).
Example Data and Result
Suppose the Sales table has the following data:

ProductID	Category	SaleDate	Revenue
1	Electronics	2023-01-10	20000.00
2	Clothing	2023-02-15	7500.00
3	Electronics	2024-03-20	40000.00
4	Furniture	2023-04-25	15000.00
5	Clothing	2024-05-30	5000.00
6	Furniture	2024-06-05	21000.00
7	Toys	2023-07-10	6000.00
8	Electronics	2023-08-15	16000.00
9	Toys	2024-09-20	3000.00
Running the query:

sql
Copy code
SELECT Category, YEAR(SaleDate) AS SaleYear, SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY GROUPING SETS (
    (Category),
    (YEAR(SaleDate)),
    (Category, YEAR(SaleDate))
);
Would yield the following result:

Category	SaleYear	TotalRevenue
Electronics	2023	36000.00
Electronics	2024	40000.00
Clothing	2023	7500.00
Clothing	2024	5000.00
Furniture	2023	15000.00
Furniture	2024	21000.00
Toys	2023	6000.00
Toys	2024	3000.00
Electronics	NULL	76000.00
Clothing	NULL	12500.00
Furniture	NULL	36000.00
Toys	NULL	9000.00
NULL	2023	74500.00
NULL	2024	69000.00
This result shows:

Total revenue by Category.
Total revenue by SaleYear.
Total revenue by both Category and SaleYear.
GROUPING SETS provides flexibility to get multiple aggregations in a single query.

i need thorough explanation on this
ChatGPT
Certainly! Let's delve deeper into the GROUPING SETS clause in SQL and explain how it works with a comprehensive example.

Understanding GROUPING SETS
The GROUPING SETS clause in SQL allows you to define multiple groupings in a single query. This is particularly useful when you need to perform complex aggregations and want to see multiple levels of summary information in a single result set.

Example Scenario
Consider a Sales table with the following columns:

ProductID: Unique identifier for each product.
Category: The category of the product.
SaleDate: The date the sale was made.
Revenue: The revenue generated from the sale.
Here's a sample dataset:

ProductID	Category	SaleDate	Revenue
1	Electronics	2023-01-10	20000.00
2	Clothing	2023-02-15	7500.00
3	Electronics	2024-03-20	40000.00
4	Furniture	2023-04-25	15000.00
5	Clothing	2024-05-30	5000.00
6	Furniture	2024-06-05	21000.00
7	Toys	2023-07-10	6000.00
8	Electronics	2023-08-15	16000.00
9	Toys	2024-09-20	3000.00
Goal
We want to obtain the following summaries:

Total revenue by Category.
Total revenue by SaleYear.
Total revenue by both Category and SaleYear.
Using GROUPING SETS
To achieve this, we can use the GROUPING SETS clause in our SQL query:

sql
Copy code
SELECT Category, YEAR(SaleDate) AS SaleYear, SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY GROUPING SETS (
    (Category),           -- Grouping by Category
    (YEAR(SaleDate)),     -- Grouping by SaleYear
    (Category, YEAR(SaleDate)) -- Grouping by both Category and SaleYear
);
Explanation
GROUP BY GROUPING SETS: This defines multiple groupings in a single query. Each grouping set will produce a separate subtotal in the result set.

(Category): This grouping set calculates the total revenue for each category without considering the year.

(YEAR(SaleDate)): This grouping set calculates the total revenue for each year without considering the category.

(Category, YEAR(SaleDate)): This grouping set calculates the total revenue for each combination of category and year.

Result Breakdown
The query will produce a result set that includes totals for each specified grouping. Here’s what the result would look like:

Category	SaleYear	TotalRevenue
Electronics	2023	36000.00
Electronics	2024	40000.00
Clothing	2023	7500.00
Clothing	2024	5000.00
Furniture	2023	15000.00
Furniture	2024	21000.00
Toys	2023	6000.00
Toys	2024	3000.00
Electronics	NULL	76000.00
Clothing	NULL	12500.00
Furniture	NULL	36000.00
Toys	NULL	9000.00
NULL	2023	74500.00
NULL	2024	69000.00
Detailed Breakdown
Category-Specific Totals:

Electronics total revenue is 76000.00 (sum of revenues from 2023 and 2024).
Clothing total revenue is 12500.00.
Furniture total revenue is 36000.00.
Toys total revenue is 9000.00.
Year-Specific Totals:

Total revenue for the year 2023 is 74500.00.
Total revenue for the year 2024 is 69000.00.
Category and Year-Specific Totals:

Electronics in 2023: 36000.00
Electronics in 2024: 40000.00
Clothing in 2023: 7500.00
Clothing in 2024: 5000.00
Furniture in 2023: 15000.00
Furniture in 2024: 21000.00
Toys in 2023: 6000.00
Toys in 2024: 3000.00
Why Use GROUPING SETS?
Efficiency: Instead of running multiple queries to get different levels of aggregation, you can get all the required summaries in one go.
Flexibility: You can specify exactly which combinations of groupings you need.
Clarity: The results are more comprehensive, showing various levels of aggregation clearly.
Conclusion
The GROUPING SETS clause in SQL is a powerful tool for generating multiple levels of grouped aggregations in a single query. This capability is useful for complex reporting and analysis, allowing you to obtain detailed insights from your data with improved efficiency and clarity.

Uploaded image
I need thorough explanation on this

ChatGPT
Sure, let's go through a thorough explanation of the CASE expression in SQL.

Introduction to SQL CASE Expression
The SQL CASE expression allows you to add conditional logic to your SQL queries. It works similarly to if-then-else logic in programming languages. The CASE expression evaluates a list of conditions and returns one of several possible results. There are two main formats of the CASE expression:

Simple CASE Expression
Searched CASE Expression
You can use the CASE expression in various parts of an SQL query, such as in the SELECT, DELETE, UPDATE, and INSERT statements, as well as in the WHERE, ORDER BY, and HAVING clauses.

Simple CASE Expression
The simple CASE expression compares an expression to a set of simple expressions using equality (=`) comparisons. Here's the general syntax:

sql
Copy code
CASE expression
    WHEN when_expression_1 THEN result_1
    WHEN when_expression_2 THEN result_2
    WHEN when_expression_3 THEN result_3
    ...
    ELSE else_result
END
expression: This is the expression that is evaluated once and compared to each when_expression.
when_expression_1, when_expression_2, when_expression_3, ...: These are the values that expression is compared against.
result_1, result_2, result_3, ...: These are the results returned when expression matches the corresponding when_expression.
else_result: This is the result returned if none of the when_expression values match the expression.
Example of Simple CASE Expression
Suppose we have a table called Students with columns StudentID, FirstName, LastName, Age, and Grade. We want to create a new column called GradeDescription that describes the grade in words.

sql
Copy code
SELECT 
    StudentID, 
    FirstName, 
    LastName, 
    Age, 
    Grade,
    CASE Grade
        WHEN 'A' THEN 'Excellent'
        WHEN 'B' THEN 'Good'
        WHEN 'C' THEN 'Average'
        WHEN 'D' THEN 'Below Average'
        ELSE 'Fail'
    END AS GradeDescription
FROM Students;
In this query:

The CASE expression evaluates the Grade column for each row.
If Grade is 'A', it returns 'Excellent'.
If Grade is 'B', it returns 'Good'.
If Grade is 'C', it returns 'Average'.
If Grade is 'D', it returns 'Below Average'.
If Grade is anything else, it returns 'Fail'.
Searched CASE Expression
The searched CASE expression uses Boolean conditions (logical tests) rather than simple equality checks. Here's the general syntax:

sql
Copy code
CASE
    WHEN condition_1 THEN result_1
    WHEN condition_2 THEN result_2
    WHEN condition_3 THEN result_3
    ...
    ELSE else_result
END
condition_1, condition_2, condition_3, ...: These are the conditions that are evaluated in sequence.
result_1, result_2, result_3, ...: These are the results returned when the corresponding condition is true.
else_result: This is the result returned if none of the conditions are true.
Example of Searched CASE Expression
Let's use the same Students table but now we want to categorize students based on their Age.

sql
Copy code
SELECT 
    StudentID, 
    FirstName, 
    LastName, 
    Age, 
    Grade,
    CASE 
        WHEN Age < 18 THEN 'Minor'
        WHEN Age BETWEEN 18 AND 22 THEN 'Young Adult'
        WHEN Age BETWEEN 23 AND 30 THEN 'Adult'
        ELSE 'Senior'
    END AS AgeCategory
FROM Students;
In this query:

The CASE expression evaluates each condition sequentially for the Age column.
If Age is less than 18, it returns 'Minor'.
If Age is between 18 and 22 inclusive, it returns 'Young Adult'.
If Age is between 23 and 30 inclusive, it returns 'Adult'.
If none of the conditions match, it returns 'Senior'.
Usage of CASE Expressions
SELECT: Used to create conditional columns.
WHERE: Used to filter rows based on conditions.
ORDER BY: Used to sort rows conditionally.
HAVING: Used to filter groups based on aggregate conditions.
Conclusion
The CASE expression is a powerful tool in SQL that allows you to add conditional logic directly within your queries. By using simple and searched CASE expressions, you can evaluate different conditions and return corresponding results, which makes your queries more flexible and powerful.
*/
/*

Sure! Let's go step by step to create the database and table, populate it with sample data, and then write the SQL queries for the tasks specified.

1. Create the Sales Table and Insert Sample Data
First, we create the Sales table with columns ProductID, Category, QuantitySold, and Revenue, and populate it with some sample data.
*/
-- solution
-- Create the Sales table
CREATE TABLE Sales (
    ProductID INT PRIMARY KEY,
    Category VARCHAR(50),
    QuantitySold INT,
    Revenue DECIMAL(10, 2)
);

-- Insert sample data into the Sales table
INSERT INTO Sales (ProductID, Category, QuantitySold, Revenue) VALUES
(1, 'Electronics', 100, 20000.00),
(2, 'Clothing', 150, 7500.00),
(3, 'Electronics', 200, 40000.00),
(4, 'Furniture', 50, 15000.00),
(5, 'Clothing', 100, 5000.00),
(6, 'Furniture', 70, 21000.00),
(7, 'Toys', 120, 6000.00),
(8, 'Electronics', 80, 16000.00),
(9, 'Toys', 60, 3000.00);

/*
2. Write SQL Queries for the Tasks
a. Calculate the total quantity sold and revenue for each product category.
*/
-- Query to calculate the total quantity sold and revenue for each product category
SELECT Category, 
       SUM(QuantitySold) AS TotalQuantitySold, 
       SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category;

-- This query groups the records by the Category column and calculates the total quantity sold and total revenue for each category.


-- b. Find the average revenue per unit sold for each product category.
-- Query to find the average revenue per unit sold for each product category
SELECT Category, 
       SUM(Revenue) / SUM(QuantitySold) AS AvgRevenuePerUnit
FROM Sales
GROUP BY Category;

-- This query groups the records by the Category column and calculates the average revenue per unit sold by dividing the total revenue by the total quantity sold for each category.

-- c. Identify the product categories with the highest total revenue.
-- Query to identify the product categories with the highest total revenue
SELECT Category, 
       SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category
ORDER BY TotalRevenue DESC
LIMIT 1;

-- This query groups the records by the Category column, calculates the total revenue for each category, and orders the results by total revenue in descending order, limiting the result to the top category.


/*
Using WHERE with text
WHERE can also filter string values.

Imagine you are part of an organization that gives cinematography awards, and you have several international categories. Before you confirm an award for every language listed in your dataset, it may be worth seeing if there are enough films of a specific language to make it a fair competition. If there is only one movie or a significant skew, it may be worth considering a different way of giving international awards.

Let's try this out!

Instructions
100 XP
Select and count the language field using the alias count_spanish.
Apply a filter to select only Spanish from the language field.
*/

-- solution
-- Count the Spanish-language films
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';



-- Count the records with at least 100,000 votes
SELECT COUNT(*) AS films_over_100K_votes
FROM reviews
WHERE num_votes >= 100000;


-- Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR(1)
);

-- Insert sample data into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Grade) VALUES
(1, 'John', 'Doe', 22, 'B'),
(2, 'Jane', 'Smith', 28, 'A'),
(3, 'Alice', 'Johnson', 24, 'C'),
(4, 'Bob', 'Brown', 30, 'B'),
(5, 'Carol', 'Davis', 26, 'A'),
(6, 'Dave', 'Wilson', 23, 'B'),
(7, 'Eve', 'Clark', 29, 'A'),
(8, 'Frank', 'Wright', 27, 'C');

-- Query to retrieve all students older than 25 years
SELECT StudentID, FirstName, LastName, Age, Grade
FROM Students
WHERE Age > 25;

-- This query selects all columns from the Students table where the Age is greater than 25.

-- Query to find students with a grade of 'A' or 'B'
SELECT StudentID, FirstName, LastName, Age, Grade
FROM Students
WHERE Grade IN ('A', 'B');

-- This query selects all columns from the Students table where the Grade is either 'A' or 'B'.
-- Query to display distinct age values of students
SELECT DISTINCT Age
FROM Students;

-- This query selects distinct Age values from the Students table to display unique ages only.













CREATE DATABASE documentation;
USE documentation;

-- Create the tech_books table
CREATE TABLE tech_books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(5,2),
    publication_date DATE,
    category VARCHAR(255)
);

-- Insert sample data into the tech_books table
INSERT INTO tech_books (book_id, title, author, price, publication_date, category) VALUES
(1, 'Introduction to Machine Learning', 'Alpaydin', 45.99, '2014-10-01', 'machine learning'),
(2, 'Deep Learning', 'Goodfellow et al.', 79.99, '2016-11-18', 'machine learning'),
(3, 'Data Science from Scratch', 'Grus', 39.99, '2015-04-14', 'data science'),
(4, 'Computer Vision: Algorithms and Applications', 'Szeliski', 59.99, '2010-09-03', 'computer vision'),
(5, 'Python Programming', 'Zelle', 29.99, '2017-12-01', 'programming'),
(6, 'Artificial Intelligence: A Modern Approach', 'Russell & Norvig', 99.99, '2020-04-15', 'artificial intelligence'),
(7, 'Programming in Haskell', 'Hutton', 49.99, '2007-02-15', 'programming'),
(8, 'The Pragmatic Programmer', 'Hunt & Thomas', 54.99, '1999-10-20', 'software engineering'),
(9, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Gamma et al.', 47.99, '1994-10-21', 'software engineering'),
(10, 'Pattern Recognition and Machine Learning', 'Bishop', 84.99, '2006-08-17', 'machine learning'),
(11, 'Python Data Science Handbook', 'VanderPlas', 60.00, '2016-11-04', 'data science'),
(12, 'Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow', 'Géron', 49.99, '2019-09-05', 'machine learning'),
(13, 'Learning OpenCV 3', 'Bradski & Kaehler', 56.99, '2016-12-28', 'computer vision'),
(14, 'Fluent Python', 'Ramalho', 62.99, '2015-08-20', 'programming'),
(15, 'Grokking Algorithms', 'Bhargava', 34.99, '2016-05-01', 'programming'),
(16, 'Machine Learning Yearning', 'Ng', 0.00, '2018-06-21', 'machine learning'),
(17, 'Automate the Boring Stuff with Python', 'Sweigart', 29.99, '2015-04-14', 'programming'),
(18, 'Data Science for Business', 'Provost & Fawcett', 47.99, '2013-07-27', 'data science'),
(19, 'Building Machine Learning Powered Applications', 'White', 39.99, '2020-01-02', 'machine learning'),
(20, 'Deep Learning with Python', 'Chollet', 49.99, '2017-10-28', 'machine learning'),
(21, 'Reinforcement Learning: An Introduction', 'Sutton & Barto', 64.99, '2018-11-13', 'machine learning'),
(22, 'Clean Code', 'Martin', 54.99, '2008-08-01', 'software engineering'),
(23, 'Effective Java', 'Bloch', 45.99, '2008-05-28', 'programming'),
(24, 'Python for Data Analysis', 'McKinney', 44.99, '2017-10-09', 'data science'),
(25, 'Software Engineering at Google', 'Winters, Manshreck, Wright', 59.99, '2020-03-01', 'software engineering');


SELECT title, category, price FROM tech_books;

-- best practice
SELECT title, category, price
FROM tech_books
LIMIT 3;

-- alternatively  
SELECT  author,
		title, 
		category, 
		price
FROM tech_books
LIMIT 3;




SELECT * FROM tech_books.price;
CREATE DATABASE  IF NOT EXISTS `8week` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `8week`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: 8week
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Bob Jones','Los Angeles'),(2,'John Doe','New Yory City'),(3,'Jane Wilson','Chicago');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 22:19:33

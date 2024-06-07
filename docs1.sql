/*

LIKE and NOT LIKE
The LIKE and NOT LIKE operators can be used to find records that either match or do not match a specified pattern, respectively. They can be coupled with the wildcards % and _. The % will match zero or many characters, and _ will match a single character.

This is useful when you want to filter text, but not to an exact word.

Do the following exercises to gain some practice with these keywords.

Instructions 1/3
35 XP
1
Select the names of all people whose names begin with 'B'.
ChatGPT
To select the names of all people whose names begin with 'B', you can use the LIKE operator with the % wildcard. The % wildcard matches zero or more characters, so by specifying B%, you are telling SQL to find any names that start with 'B' followed by any number of characters.

Here is the SQL query for this:

sql
Copy code
SELECT name
FROM people
WHERE name LIKE 'B%';
This query will return all names from the people table where the name starts with the letter 'B'.

Select the names of people whose names have 'r' as the second letter.
ChatGPT
To select the names of people whose names have 'r' as the second letter, you can use the LIKE operator with the _ wildcard. The _ wildcard matches exactly one character, so by specifying _r%, you are telling SQL to find any names where the second letter is 'r' followed by any number of characters.

Here is the SQL query for this:

sql
Copy code
SELECT name
FROM people
WHERE name LIKE '_r%';
This query will return all names from the people table where the second character in the name is 'r'.

Select the names of people whose names don't start with 'A'.
ChatGPT
To select the names of people whose names don't start with 'A', you can use the NOT LIKE operator along with the pattern 'A%'. This will retrieve all names that do not begin with 'A'.

Here is the SQL query:

sql
Copy code
SELECT name
FROM people
WHERE name NOT LIKE 'A%';
This query will return all names from the people table where the name does not start with 'A'.





*/
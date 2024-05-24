Select all columns from the books table
SELECT book_id, title, author, price, publication_date
FROM books
Order by price in descending order and publication date in ascending order
ORDER BY price DESC, publication_date ASC;
/*
Explanation of the sorting logic:
1. ORDER BY price DESC: This sorts the books by their price in descending order, showing the most expensive books first.
2. publication_date ASC: Within the same price, this further sorts the books by their publication date in ascending order, showing older books first if prices are the same.
*/


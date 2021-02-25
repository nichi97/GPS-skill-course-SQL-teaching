SELECT first, last, purchase_number FROM Customers 
WHERE purchase_number > 1;

SELECT first, last FROM customers
WHERE (first LIKE 'A%') OR (last LIKE 'L%');

SELECT ISBN FROM transactions
WHERE (customer_id == 11111) OR (customer_id == 11112);

SELECT ISBN FROM transactions
WHERE customer_id IN (11111, 11112);


SELECT id, first, last FROM Customers
WHERE id IN (11111, 11112);

SELECT ISBN13, title FROM Books
WHERE ISBN13 IN(9780872205468, 9780140449044, 9780141026282);

SELECT first, last, purchase_number FROM customers
WHERE (purchase_number > 1) AND (purchase_number < 3);

SELECT first || ' ' || last AS full_name FROM Customers;

SELECT title, avg(avg_rating) FROM Books;

SELECT customer_id, count(*) FROM transactions 
GROUP BY customer_id; 

SELECT Customers.last, Customers.first, 
Customers.fav_book, Books.title, Books.author
FROM Customers JOIN Books
ON Customers.fav_book == Books.ISBN13;

SELECT Customers.last, Customers.first,
Customers.id, Books.title
FROM Books JOIN Transactions JOIN customers
ON Books.ISBN13 == Transactions.ISBN 
AND Transactions.customer_id == Customers.id
WHERE Customers.id IN (11111,11112); 


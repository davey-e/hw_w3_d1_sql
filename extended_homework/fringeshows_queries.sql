-- ## Section 1
--
--   This section involves more complex queries.  You will need to go and find out about aggregate funcions in SQL to answer some of the next questions.

--   1. Select the names and prices of all shows, ordered by price in ascending order.
SELECT name, price FROM shows
ORDER BY price asc;

--   2. Select the average price of all shows.
SELECT AVG(price) FROM shows;

--   3. Select the price of the least expensive show.
SELECT MIN(price) FROM shows;

--   4. Select the sum of the price of all shows.
SELECT SUM(price) FROM shows;

--   5. Select the sum of the price of all shows whose prices is less than £20.
SELECT SUM(price) FROM shows
WHERE price < 20;

--   6. Select the name and price of the most expensive show.
SELECT name, price FROM shows
WHERE price = (SELECT MAX(price) FROM shows);

--   7. Select the name and price of the second from cheapest show.
--???

--   8. Select the names of all users whose names start with the letter "M".
SELECT name FROM users
WHERE name LIKE 'M%';

--   9. Select the names of users whose names contain "er".
SELECT name FROM users
WHERE name LIKE '%er%';

-- ## Section 2

--   The following questions can be answered by using nested SQL statements but ideally you should learn about JOIN clauses to answer them.

--   10. Select the time for the Edinburgh Royal Tattoo.
--Nested SQL
SELECT time FROM times
WHERE show_id = (SELECT id FROM shows WHERE name = 'Edinburgh Royal Tattoo');

--Join
SELECT time FROM times
JOIN shows ON shows.id = times.show_id
WHERE shows.name = 'Edinburgh Royal Tattoo';

--   11. Select the number of users who want to see "Shitfaced Shakespeare".
--Nested SQL
SELECT COUNT(name) FROM users
WHERE id IN (
  SELECT user_id FROM shows_users WHERE show_id IN (
    SELECT id FROM shows WHERE name = 'Shitfaced Shakespeare'
  )
);

--   12. Select all of the user names and the count of shows they're going to see. 

--   13. SELECT all users who are going to a show at 17:15.

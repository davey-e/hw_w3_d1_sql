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

--   5. Select the sum of the price of all shows whose prices is less than £20.

--   6. Select the name and price of the most expensive show.

--   7. Select the name and price of the second from cheapest show.

--   8. Select the names of all users whose names start with the letter "M".

--   9. Select the names of users whose names contain "er".


-- ## Section 2

--   The following questions can be answered by using nested SQL statements but ideally you should learn about JOIN clauses to answer them.

--   10. Select the time for the Edinburgh Royal Tattoo.

--   11. Select the number of users who want to see "Shitfaced Shakespeare".

--   12. Select all of the user names and the count of shows they're going to see.

--   13. SELECT all users who are going to a show at 17:15.

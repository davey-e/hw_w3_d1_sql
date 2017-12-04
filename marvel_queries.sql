-- ## Questions
-- 1. Return ALL the data in the 'movies' table.
SELECT * FROM MOVIES;

-- 2. Return ONLY the name column from the 'people' table
SELECT name FROM people;

-- 3. Oops! Someone at CodeClan spelled Lorna's name wrong! Change it to reflect the proper spelling (Noble)
UPDATE people SET name = 'Lorna Noble'
WHERE name = 'Lorna Nobel-Prize';
SELECT name FROM people;

-- 4. Return ONLY your name from the 'people' table.
SELECT name FROM people
WHERE name = 'Dave Ellis';

-- 5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies
WHERE title = 'Batman Begins';
SELECT * FROM movies;

-- 6. Create a new entry in the 'people' table with the name of one of the instructors
INSERT INTO people (name) VALUES ('Craig Morton');
SELECT name FROM people;

-- 7. Alex has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people
WHERE name = 'Alex Bazlinton';
SELECT name FROM people;

-- 8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');
SELECT * FROM movies;

-- 9. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 17:55 to 21:30
UPDATE movies SET show_time = '21:30'
WHERE title = 'Guardians of the Galaxy' AND year = 2014 AND show_time = '17:55';
SELECT * FROM movies;

-- ## Extension
-- 1. Research how to delete multiple entries from your table in a single command.
INSERT INTO people (name) VALUES ('Mickey Mouse');
INSERT INTO people (name) VALUES ('Donald Duck');
SELECT name FROM people;

DELETE FROM people
WHERE name IN ('Mickey Mouse', 'Donald Duck');
SELECT name FROM people;

SELECT * FROM books;

SELECT * FROM publishers;


SELECT id FROM publishers WHERE publisher = 'W&N';

SELECT title FROM books	WHERE publisher_id = 31;

SELECT title, format, pages, year FROM books WHERE publisher_id = (
	SELECT id FROM publishers WHERE publisher = 'William Heinemann'
);









SELECT id FROM books WHERE title = 'Flights';


SELECT author_id FROM authored WHERE book_id = 78;


SELECT name FROM authors WHERE id = 58;

-- SUBQUERY --
SELECT name FROM authors WHERE id = (
	SELECT author_id FROM authored WHERE book_id = (
		SELECT id FROM books WHERE title = 'boulder'
    )
);















SELECT * FROM books;
SELECT * FROM translated;
SELECT * FROM translators;

SELECT name FROM translators WHERE id = (
	SELECT translator_id FROM translated WHERE book_id = (
		SELECT id FROM books WHERE title = 'flights'
    )
)









SELECT id FROM translators where name = 'sophie hughes';

SELECT book_id FROM translated where translator_id = 68;

SELECT title FROM books WHERE id in (
	SELECT book_id FROM translated where translator_id = (
		SELECT id FROM translators where name = 'sophie hughes'
    )
)
Union
SELECT title FROM books WHERE id in (
	SELECT book_id FROM translated where translator_id = (
		SELECT id FROM translators where name = 'Margaret Jull Costa'
    )
);
SELECT title FROM books WHERE id in (
	SELECT book_id FROM translated where translator_id = (
		SELECT id FROM translators where name = 'sophie hughes'
    )
)
INTERSECT
SELECT title FROM books WHERE id in (
	SELECT book_id FROM translated where translator_id = (
		SELECT id FROM translators where name = 'Margaret Jull Costa'
    )
);

SELECT 'author' as profession ,name FROM authors
except
SELECT 'translator' as profession , name from translators;










select * from ratings;

SELECT book_id, avg(RATING) as avg_rating from RATINGS group by book_id having avg_rating > 4.0;













SELECT * FROM ratings;

SELECT book_id, AVG(rating) as "average_rating" FROM ratings GROUP BY book_id having average_rating > 3.5;



















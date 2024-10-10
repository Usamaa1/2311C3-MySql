CREATE DATABASE art_meusem;


CREATE TABLE arts(
	id int auto_increment,
    title varchar(255),
    accession_number float,
    acquired date default now(),
    PRIMARY KEY (id)
);


INSERT INTO arts(title, accession_number, acquired) 
VALUES
('Imaginative', 87.23, '1978-11-06'),
('Profusion of flowers', 56.257, '1956-01-02'),
('Farmers working at dawn', 11.6152, '1914-05-03'),
('Spring outing', 14.76, '1911-08-04');

DELETE FROM arts WHERE title = 'spring outing';

DELETE FROM ARTS;
DROP TABLE arts;

SELECT * FROM arts;






CREATE TABLE artist(
	id INT AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(id)
);


INSERT INTO artist(name) values 
('Li Yin'),
('Qian Weicheng'),
('Unidentified artist'),
('Zhou Chen');


SELECT * FROM artist;


CREATE TABLE created(
	artist_id INT,
    art_id INT,
    FOREIGN KEY (artist_id) REFERENCES artist(id) ON DELETE CASCADE,
    FOREIGN KEY (art_id) REFERENCES arts(id)
);

DROP table CREATED;
INSERT INTO created VALUES 
(3,5),
(1,7),
(2,4),
(4,(SELECT ID FROM ARTIST where name = 'li yin'));


SELECT * FROM created;
SELECT * FROM artist;

DELETE FROM artist WHERE name = 'unidentified artist';










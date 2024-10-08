CREATE DATABASE cda;



CREATE TABLE riders(
	id INT auto_increment,
    name VARCHAR(255) ,
    PRIMARY KEY (id)
);

CREATE TABLE stations(
	id INT auto_increment,
    name VARCHAR(255) NOT NULL UNIQUE,
    line VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE visits(
	rider_id INT,
    station_id INT,
    FOREIGN KEY(rider_id) REFERENCES riders(id),
    FoREIGN KEY(station_id) REFERENCES stations(id)
);


CREATE TABLE card(
	id INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE swipes(
	id INT auto_increment,
    card_id INT,
    station_id INT,
    type VARCHAR(10) NOT NULL CHECK (type IN ('exit','enter','deposit')),
    date_time datetime NOT NULL DEFAULT now(),
    amount numeric NOT NULL CHECK(amount != 0),
    PRIMARY KEY(id),
    FOREIGN KEY(card_id) REFERENCES card(id),
    FOREIGN KEY(station_id) REFERENCES stations(id)
);












CREATE TABLE students(
	id INT,
    name varchar(255)
);

ALTER TABLE students ADD (phoneNumber BIGINT);
ALTER TABLE students DROP COLUMN phoneNumber;

ALTER TABLE students ADD CONSTRAINT PRIMARY KEY (ID); 


ALTER TABLE students ADD (CARD_ID INT);
ALTER TABLE students ADD CONSTRAINT FOREIGN KEY(card_id) REFERENCES card(id); 

ALTER TABLE students DROP CONSTRAINT students_ibfk_2;






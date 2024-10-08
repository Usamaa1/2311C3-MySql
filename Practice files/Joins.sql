
SELECT * FROM migrations;
SELECT * FROM sea_lions;

SELECT sea_lions.id, sea_lions.name, sea_lions.species, migrations.distance, migrations.days 
FROM sea_lions INNER JOIN migrations ON sea_lions.id = migrations.id;


SELECT sea_lions.id, sea_lions.name, sea_lions.species, migrations.distance, migrations.days 
FROM sea_lions LEFT OUTER JOIN migrations ON sea_lions.id = migrations.id;

SELECT sea_lions.id, sea_lions.name, sea_lions.species, migrations.distance, migrations.days 
FROM sea_lions RIGHT OUTER JOIN migrations ON sea_lions.id = migrations.id where sea_lions.name is not null;

SELECT sea_lions.id, sea_lions.name, sea_lions.species,migrations.id, migrations.distance, migrations.days 
FROM sea_lions FULL JOIN migrations ON sea_lions.id = migrations.id;







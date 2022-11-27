DROP TABLE people;
CREATE TABLE people (
    name VARCHAR (30) NOT NULL,
    pet_type VARCHAR(30),
    has_pet BOOL DEFAULT false,
    pet_name VARCHAR (30),
    pet_age INT
);

SELECT * FROM people;
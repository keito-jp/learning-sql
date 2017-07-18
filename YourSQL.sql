CREATE TABLE person (
  person_id SMALLINT UNSIGNED AUTO_INCREMENT,
  fname VARCHAR(20),
  lname VARCHAR(20),
  gender ENUM('M','F'),
  birth_date DATE,
  address VARCHAR(30),
  city VARCHAR(20),
  state VARCHAR(20),
  country VARCHAR(20),
  postal_code VARCHAR(20),
  CONSTRAINT pk_person PRIMARY KEY (person_id)
);

CREATE TABLE favorite_food (
  person_id SMALLINT UNSIGNED,
  food VARCHAR(20),
  CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
  CONSTRAINT fk_person_id FOREIGN KEY (person_id)
  REFERENCES person (person_id)
);

ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;

INSERT INTO person
  (person_id, fname, lname, gender, birth_date)
  VALUES (null, 'William', 'Turner', 'M', '1972-05.27');

INSERT INTO favorite_food (person_id, food)
  VALUES (1, 'pizza');

INSERT INTO favorite_food (person_id, food)
  VALUES (1, 'cookies');

INSERT INTO favorite_food (person_id, food)
  VALUES (1, 'nachos');

INSERT INTO person (person_id, fname, lname, gender, birth_date, address, city, state, country, postal_code)
  VALUES (null, 'Susan', 'Smith', 'F', '1975-11-02', '23 Maple St.', 'Arlington', 'VA', 'USA', "20220");

UPDATE person SET
  address = '1225 Tremont St.',
  city = 'Boston',
  state = 'MA',
  country = 'USA',
  postal_code = '02138'
  WHERE person_id = 1;

DROP TABLE favorite_food;

DROP TABLE person;

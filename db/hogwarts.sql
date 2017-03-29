DROP TABLE IF EXISTS houses;
DROP TABLE IF EXISTS students;



CREATE TABLE students(
  id serial4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),
  age INT2
);

CREATE TABLE houses(
  id serial4 PRIMARY KEY,
  house_name VARCHAR(255),
  logo_url TEXT
);

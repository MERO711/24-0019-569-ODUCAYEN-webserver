CREATE DATABASE school;

USE school;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100),
    year_level INT
);

INSERT INTO students (name, course, year_level)
VALUES 
('Juan Dela Cruz', 'BSIT', 1),
('Maria Santos', 'BSCS', 2),
('Pedro Reyes', 'BSIT', 3);

SELECT * FROM students;

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    description VARCHAR(255),
    units INT
);

INSERT INTO courses (course_name, description, units)
VALUES
('CIT17', 'Web Information System', 3),
('CC6', 'Emerging Technologies in IT', 3),
('CC17', 'Mobile Application Design and Development', 3);

/* 
GUIDE QUESTIONS
Answer the following questions:
1. What command is used to create a database?
    The command used to create a database in mySQL is CREATE DATABASE [name_of_database].
2. What command is used to select a database?
    The command used to select a database in mySQL is USE [name_of_database].
3. What command is used to display all tables?
    The command used to display all tables in mySQL is SHOW TABLES.
4. What SQL command is used to add records?
    The command used to add records in mySQL are INSERT INTO [parameters] then VALUES [values of parameters].
5. What SQL command is used to retrieve records?
6. What is the purpose of the PRIMARY KEY ?
    The purpose of the PRIMARY KEY is to help uniquely identify each row and ensures it has its own value.
7. What is the purpose of AUTO_INCREMENT ?
    The purpose of AUTO_INCREMEMENT is to increase the identified value by 1 without needing to manually input it.
8. What is the difference between UPDATE and DELETE ? 
    The difference between UPDATE and DELETE is UPDATE enables a value to be modified, while DELETE erases a value.
*/
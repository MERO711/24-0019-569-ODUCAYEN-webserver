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
-- ACT 1 INSERTED VALUES FOR STUDENTS
('Juan Dela Cruz', 'BSIT', 1),
('Maria Santos', 'BSCS', 2),
('Pedro Reyes', 'BSIT', 3),
('Marc Oducayen', 'BSIT', 3),

-- ACT 2 INSERTED VALUES FOR STUDENTS
('Stephen Manalo', 'BSIT', 3),
('James Juguilon', 'BSIT', 3),
('Flaire Telles', 'BSIT', 2),
('Leigh Egino', 'BSCS', 4),
('Nel Egino', 'BMMA', 1);

SELECT * FROM students;

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    description VARCHAR(255),
    units INT
);

INSERT INTO courses (course_name, description, units)
VALUES

-- ACT 1 INSERTED VALUES FOR COURSES 
('CIT17', 'Web Information System', 3),
('CC6', 'Emerging Technologies in IT', 3),
('CC17', 'Mobile Application Design and Development', 3),

-- ACT 2 INSERTED VALUES FOR COURSES 
('Soc Sci 103N', 'The Contemporary World', 3),
('CIT6', 'Capstone Project 1', 3),
('CIT7', 'Capstone Project 2', 3),
('CIT18', 'Mastery in Web Technology', 3),
('Hist 101', 'The Life and Works of Rizal', 3);

CREATE TABLLE enrollements (
    enrollment_id INT AUTO_INCREMEMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollement_date DATE
);

INSERT INTO enrollements
(student_id, course_id, enrollement_date)
VALUES

-- TASK INSERTED VALUES
(1, 1, '2026-10-07'),
(2, 2, '2026-10-07'),
(3, 1, '2026-10-07'),
(4, 3, '2026-10-07'),

-- CHALLENGE INSERTED VALUES
(5, 4, '2026-10-07'),
(6, 5, '2026-10-07'),
(7, 6, '2026-10-07'),
(8, 7, '2026-10-07'),
(9, 8, '2026-10-07'),
(1, 7, '2026-10-07');

-- CHALLENGE QUERIES
-- TASK 1
SELECT students.* 
FROM students 
JOIN enrollments 
ON students.id = enrollments.student_id 
WHERE enrollments.course_id = 1;

-- TASK 2
SELECT courses.*
FROM courses
JOIN enrollments 
ON courses.course_id = enrollments.course_id 
WHERE enrollments.student_id = 1;

-- TASK 3 
SELECT course_id, 
COUNT(student_id) AS total_students 
FROM enrollments 
GROUP BY course_id;

-- TASK 4
 SELECT course_id, 
 COUNT(student_id) AS total_students 
 FROM enrollments 
 GROUP BY course_id 
 ORDER BY total_students DESC;

--  TASK 5
SELECT * FROM students ORDER BY name ASC;

-- TASK 6
SELECT COUNT(*) AS total_enrollments
FROM enrollments;
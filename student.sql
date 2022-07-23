DROP TABLE student;

-- Creating a table
CREATE TABLE student (
	student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

-- Describe the data

DESCRIBE student; 

ALTER TABLE student ADD gpa DECIMAL; 

ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Alice', 'Physics');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'English');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Comp. Sci');

-- Updating row

-- Changing all the variable
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Computer Science'
WHERE major = 'Comp. Sci';

UPDATE student
SET major = 'Biology'
WHERE major = 'Bio';

-- Changing a specific variable
UPDATE student
SET major = 'Computer Science'
WHERE student_id = 5;

-- Querying 

SELECT * FROM student;

-- Quering the name and major, with a desceding order of the id

SELECT student.name, student.major
FROM student
ORDER BY student_id DESC;

-- Querying by major then if same major by student id

SELECT *
FROM student
ORDER BY major, student_id
LIMIT 4;

-- Querying item where is in ()

SELECT *
FROM student
WHERE name IN ('Jack', 'Mike');


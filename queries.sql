create database new_database;
create schema example_schema;
create table_example(
	_example1 VARCHAR(20), 
	_example DATE
);

DROP TABLE table_example;
DROP DATABASE new_database;
create table example_table(
	_example1 VARCHAR(20),
	_example DATE	
);

create table example(
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	example VARCHAR(20)
);

ALTER TABLE exampl_table
ADD COLUMN example_f BIGINT NOT NULL;

ALTER TABLE example_table
ADD COLUMN hash VARCHAR(50);

ALTER TABLE example_table
ADD COLUMN id BIGINT;

ALTER TABLE example_table
MODIFY id BIGINT NOT NULL;

ALTER TABLE example_table
ADD CONSTRAINT PK_ PRIMARY KEY(id);

ALTER TABLE exmaple_table
MODIFY COLUMN id BIGINT auto_increment;

ALTER TABLE example_table
ADD CONSTRAINT foreign_constraint_name
FOREIGN KEY(example_f)
REFERENCES example(id);

CREATE SCHEMA School;

USE school;

CREATE TABLE Student (
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(200)
);

CREATE TABLE Course (
	id BIGINT NOT NULL,
	 course_name VARCHAR(200)
);

ALTER TABLE Course
ADD CONSTRAINT PK_ PRIMARY KEY(id);

ALTER TABLE Course
MODIFY COLUMN id BIGINT auto_increment;

ALTER TABLE Course
ADD CONSTRAINT unique_constraint UNIQUE(course_name);

CREATE TABLE Enrollment(
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	course_id BIGINT NOT NULL,
	student_id BIGINT NOT NULL
);

ALTER TABLE Enrollment
ADD CONSTRAINT foreign_constraint_course
FOREIGN KEY(course_id)
REFERENCES Course(id);

ALTER TABLE Enrollment
ADD CONSTRAINT foreign_constraint_student
FOREIGN KEY(student_id)
REFERENCES Student(id);

INSERT INTO Student (name) VALUES ("Sergio Figueroa");
INSERT INTO Student (name) VALUES ("Pablo Gaytan");
INSERT INTO Student (name) VALUES ("David Canto");
INSERT INTO Student (name) VALUES ("Memo Ri");

INSERT INTO Course (course_name) VALUES ("Anthropology");
INSERT INTO Course (course_name) VALUES ("Philosophy");
INSERT INTO Course (course_name) VALUES ("Math");
INSERT INTO Course (course_name) VALUES ("Physics I");

INSERT INTO Enrollment (course_id, student_id) VALUES (1, 2);
INSERT INTO Enrollment (course_id, student_id) VALUES (1, 3);

INSERT INTO Enrollment (course_id, student_id) VALUES (2, 2);
INSERT INTO Enrollment (course_id, student_id) VALUES (2, 4);

DELETE FROM Course WHERE course_name = "Math";
DELETE FROM Course WHERE course_name = "Physics I";

SELECT DISTINCT Student.* FROM Student INNER JOIN Enrollment ON Student.id = Enrollment.student_id;

SELECT Student.name FROM Student S FULL OUTER JOIN Enrollment E ON S.id = E.student_id WHERE S.id = NULL OR B.student_id = NULL;

SELECT COUNT(Student.*) FROM Student INNER JOIN Enrollment ON Student.id = Enrollment.student_id;

SELECT Course.course_name AS course_name, COUNT(*) AS frequency FROM Enrollment INNER JOIN Course ON Enrollment.course_id = Course.id GROUP BY Enrollment.course_id ORDER BY frequency DESC LIMIT 1; 





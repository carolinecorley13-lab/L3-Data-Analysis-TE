--create table
--populate table
--enforce entity integrety (Constraints, pk, fk)
--Data manipulation commands - ALTER, DROP, etc


USE collegeDB

CREATE TABLE student (
	studentID CHAR (3) PRIMARY KEY NOT NULL,
	std_name varchar (35) NOT NULL,
	std_address varchar (45) NOT NULL,
	std_age int NOT NULL,
	courseID char (4),

	CONSTRAINT fk_courseID 
	FOREIGN KEY (courseID) 
	REFERENCES course(courseID)
);

--highlighted and pressed execute to run the command

INSERT INTO course(courseID, course_name, location)
	VALUES ('C100', 'Computing', 'Riverside East'),
			('C200', 'Accounting', 'Riverside West')
;

--highlighted and pressed execute to run the command

INSERT INTO student(studentID, std_name, std_address, std_age, courseID)
	VALUES ('100', 'Bobby', 'Dundee',17 ,'C100'	)
;

--highlighted and pressed execute to run the command

SELECT* FROM student;
--highlighted and pressed execute to run the command

SELECT* FROM course;
--highlighted and pressed execute to run the command

ALTER TABLE course ADD tutor_name varchar (35);
--highlighted and pressed execute to run the command

SELECT* FROM course
--highlighted and pressed execute to run the command

UPDATE course	SET tutor_name = 'Tim' Where courseID = 'C100';
--highlighted and pressed execute to run the command

SELECT* FROM course
--highlighted and pressed execute to run the command

UPDATE course	SET tutor_name = 'Brian' Where courseID = 'C200';
--highlighted and pressed execute to run the command

DELETE FROM course WHERE courseID = 'C200'
--highlighted and pressed execute to run the command

SELECT* FROM course
--highlighted and pressed execute to run the command

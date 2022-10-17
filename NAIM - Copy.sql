-- start 

sqlplus

-- create a new user

CREATE USER CSE302_S2_F22 IDENTIFIED BY cse302;

--giving permission to user 

GRANT CONNECT, CREATE SESSION, CREATE TABLE, CREATE VIEW, 
CREATE SEQUENCE, CREATE ANY TRIGGER, UNLIMITED TABLESPACE 
TO CSE302_S2_F22;

-- log in

CONNECT CSE302_S2_F22
-- cse302


--create a table 

create TABLE Student(
	id VARCHAR2(13),
	name VARCHAR2(10),
	addr VARCHAR2(3),
	age NUMBER(3,0),
	gender CHAR(1),
	dob DATE,
	credits_earned NUMBER(5,2),
	cgpa NUMBER(3,2),
	PRIMARY KEY(ID),
	CHECK (cgpa >= 0 and cgpa <=4.00),
	CHECK (credits_earned >= 0 and credits_earned <= 140) 		
);

-- view the collum names

desc Student 


--drop a table

DROP TABLE Student 


--insert record in a table

INSERT INTO Student VALUES ('2017-1-60-001', 'Alice', 'DHA', 21, 'F', '01-FEB-2000', 85, 3.75);

INSERT INTO Student VALUES ('2018-2-60-999', 'Bob', 'CTG', 20, 'M', '01-JAN-2001', 105, 3.25);

INSERT INTO Student VALUES ('2019-1-60-303', 'Charlie', 'KHL', 20, 'M', '01-OCT-2001', 57, 2.75);


INSERT INTO Student VALUES ('2019-1-60-203', 'Don', 'DHK', 25, 'M', '12-DEC-1997', 140, 3.5);

INSERT INTO Student VALUES ('2016-1-60-203', 'Don', 'DHK', 25, 'M', '12-DEC-1997', 140, 10);


-- view table 
 
SELECT * FORM Student;


--update
-- update the row of student id 

UPDATE Student SET credits_earned = 99, cgpa = 3.8 WHERE id = '2017-1-60-001';


-- DELETE ROW 
DELETE FROM Student WHERE id='2019-1-60-303';






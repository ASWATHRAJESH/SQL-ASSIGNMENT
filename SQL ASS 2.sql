use student ;

CREATE TABLE students 
(
  id INTEGER PRIMARY KEY AUTO_INCREMENT ,
  name TEXT NOT NULL ,
  age INTEGER ,
  gender TEXT NOT NULL
) ;

SELECT * FROM students ;

INSERT INTO students ( name , age , gender ) VALUES ( 'Aswath' , 21 , 'Male' ) ;
INSERT INTO students ( name , age , gender ) VALUES ( 'Suvetha' , 23 , 'Female' ) ;
INSERT INTO students ( name , age , gender ) VALUES ( 'Radha' , 25 , 'Female' ) ;

SELECT * FROM students ;

UPDATE students SET name = 'Janet' WHERE id = 2 ; 

SELECT * FROM students ;

DELETE FROM students WHERE id = 3 ;

SELECT * FROM students ;
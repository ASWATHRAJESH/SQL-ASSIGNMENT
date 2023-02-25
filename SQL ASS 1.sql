use sales ;

CREATE TABLE salesman 
(
  salesman_id INTEGER PRIMARY KEY ,
  name TEXT NOT NULL ,
  city TEXT NOT NULL ,
  comission float
) ;

SELECT * FROM salesman ;

INSERT INTO salesman ( salesman_id , name , city , comission ) VALUES ( 5001 , 'James Hoog' , 'New York' , 0.15) ;
INSERT INTO salesman ( salesman_id , name , city , comission ) VALUES ( 5002 , 'Nail Knite' , 'Paris' , 0.13 ) ;
INSERT INTO salesman ( salesman_id , name , city , comission ) VALUES ( 5005 , 'Pit Alex' , 'London' , 0.11 ) ;
INSERT INTO salesman ( salesman_id , name , city , comission ) VALUES ( 5006 , 'Mc Lyon' , 'Paris' , 0.14 ) ;
INSERT INTO salesman ( salesman_id , name , city , comission ) VALUES ( 5007 , 'Paul Adam' , 'Rome' , 0.13 ) ;
INSERT INTO salesman ( salesman_id , name , city , comission ) VALUES ( 5003 , 'Lauson Hen' , 'San Jose' , 0.12 ) ;

SELECT * FROM salesman ;

CREATE TABLE customer 
(
  customer_id INTEGER PRIMARY KEY ,
  cust_name TEXT NOT NULL ,
  city TEXT NOT NULL ,
  grade INTEGER ,
  salesman_id INTEGER
) ;

SELECT * FROM customer ;

INSERT INTO customer ( customer_id , cust_name , city , grade , salesman_id ) VALUES ( 3002 , 'Nick Rimando' , 'New York' , 100 , 5001 ) ;
INSERT INTO customer ( customer_id , cust_name , city , grade , salesman_id ) VALUES ( 3007 , 'Brad Davis' , 'New York' , 200 , 5001 ) ;
INSERT INTO customer ( customer_id , cust_name , city , grade , salesman_id ) VALUES ( 3005 , 'Graham Zusi' , 'California' , 200 , 5002 ) ;
INSERT INTO customer ( customer_id , cust_name , city , grade , salesman_id ) VALUES ( 3008 , 'Julian Green' , 'London' , 300 , 5002 ) ;
INSERT INTO customer ( customer_id , cust_name , city , grade , salesman_id ) VALUES ( 3004 , 'Fabian Johnson' , 'Paris' , 300 , 5006 ) ;
INSERT INTO customer ( customer_id , cust_name , city , grade , salesman_id ) VALUES ( 3009 , 'Geoff Cameron' , 'Berlin' , 100 , 5003 ) ;
INSERT INTO customer ( customer_id , cust_name , city , grade , salesman_id ) VALUES ( 3003 , 'Jozy Altidor' , 'Moscow' , 200 , 5007 ) ;
INSERT INTO customer ( customer_id , cust_name , city , grade , salesman_id ) VALUES ( 3001 , 'Brad Guzan' , 'London' , null , 5005 ) ;

SELECT * FROM customer ;

SELECT cust_name , name AS 'Salesman' , customer.city
FROM salesman
JOIN customer ON salesman.city = customer.city

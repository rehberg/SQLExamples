-- SQL Exercise for my students
-- Ben Rehberg
-- June 19, 2013

-- 1.	Write the CREATE TABLE statement that would be used to instantiate this table in a database.
-- 		Execute the statement to create the table in your database (or a new database).
-- 2.	Populate the table with at least 10 records.  Make up the information.  Be creative.
-- 3.	Write a query that will return all fields and all records in the table.
-- 4.	Write a query that will return a list of unique last names of the children.
-- 5.	Write a query that will return all children’s first and last names, sorted from youngest to oldest.
-- 6.	Write a query that will return guardian last names sorted Z to A (reverse alphabetical).
-- 7.	Write a query that will return a list of emergency contacts, including children’s names and the emergency 
-- 		contact’s phone number, with column headings that make sense (make the column heading something other than the field name).
-- 8.	Write a query that will return the total number of records in the table (this should return a single number).
-- 9.	Write the statement that will add a field named childAge to the table.  Execute the statement on the table.
-- 10.	Extra credit: Write a statement that will calculate each child’s age and store it in the childAge field.


-- CREATE DATABASE CHILDCARE;

--CREATE TABLE CHILD_TBL(
--	ID	INT IDENTITY(1,1) NOT NULL primary key,
--	fName VARCHAR(30) NOT NULL,
--	lName VARCHAR(30) NOT NULL,
--	dateOfBirth date NOT NULL,
--	guardianFName VARCHAR(30) NOT NULL,
--	guardianLName VARCHAR(30) NOT NULL,
--	address VARCHAR(40) NOT NULL,
--	address2 VARCHAR(15) NULL,
--	city VARCHAR(30) NOT NULL,
--	state VARCHAR(2) NOT NULL,
--	zip INT NOT NULL,
--	phone VARCHAR(14) NOT NULL,
--	eMail VARCHAR(50) NULL,
--	emContactName VARCHAR(60) NOT NULL,
--	emContactPhone VARCHAR(14) NOT NULL
--);

--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Mary', 'Watkins', '2004-01-09', 'Nancy', 'Watkins', '789 Kinesthetic Court', NULL, 'Tifton', 'GA', 31794, '(229) 555-9328', 'watkins9328@friendlycity.com', 'George Sutherland', '(229) 555-2435');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Sue', 'Ashford', '2012-11-23', 'Janet', 'Ashford', '639 Cedarcrest Road', NULL, 'Tifton', 'GA', 31794, '(229) 555-7651', 'ashford7651@friendlycity.com', 'Tom Joad', '(229) 555-2009');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Ashley', 'Janning', '2008-05-31', 'Heather', 'Janning', '123 Camellia Drive', NULL, 'Tifton', 'GA', 31794, '(229) 555-2233', 'jannng2233@friendlycity.com', 'George Sutherland', '(229) 555-2957');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Billy', 'Mistik', '2008-02-13', 'Sharon', 'Mistik', '9321 Hwy 125 South', 'Lot 46', 'Tifton', 'GA', 31794, '(229) 555-5432', 'watkins9328@friendlycity.com', 'George Sutherland', '(229) 555-5472');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Rusty', 'Lerons', '2009-07-20', 'Tracy', 'Lerons', '1207 Plywood Ct', NULL, 'Tifton', 'GA', 31794, '(229) 555-4756', 'watkins9328@friendlycity.com', 'George Sutherland', '(229) 555-6858');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Fanny', 'Plertsy', '2007-09-22', 'Ingrid', 'Plertsy', '4481 Pendarvis Ln', NULL, 'Tifton', 'GA', 31794, '(229) 555-2466', 'watkins9328@friendlycity.com', 'George Sutherland', '(229) 555-5870');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Geraldine', 'Thomas', '2002-02-14', 'Grace', 'Thomas', '376 Orange Park', NULL, 'Tifton', 'GA', 31794, '(229) 555-7924', 'watkins9328@friendlycity.com', 'George Sutherland', '(229) 555-8675');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Betsy', 'Oppenheimer', '2009-08-30', 'Orchid', 'Oppenheimer', '8844 Carolina St', NULL, 'Tifton', 'GA', 31794, '(229) 555-7962', 'watkins9328@friendlycity.com', 'George Sutherland', '(229) 555-3568');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Kristine', 'Wortman', '2010-07-04', 'Rachel', 'Wortman', '312 Baseball Dr', NULL, 'Tifton', 'GA', 31794, '(229) 555-4422', 'watkins9328@friendlycity.com', 'George Sutherland', '(229) 555-2665');
--INSERT INTO CHILD_TBL (fName, lName, dateOfBirth, guardianFName, guardianLName, address, address2, city, state, zip, phone, eMail, emContactName, emContactPhone) VALUES('Chandler', 'Bing', '2011-04-21', 'Muriel', 'Bing', '234 Lavish Road', NULL, 'Tifton', 'GA', 31794, '(229) 555-9933', 'watkins9328@friendlycity.com', 'George Sutherland', '(229) 555-4252');

--SELECT * FROM CHILD_TBL;

--SELECT DISTINCT(lName) FROM CHILD_TBL;

--SELECT fName, lName, dateOfBirth FROM CHILD_TBL
--ORDER BY dateOfBirth DESC;

--SELECT guardianLName FROM CHILD_TBL
--ORDER BY guardianLName DESC;

--SELECT lName "Last Name", fName "First Name", emContactName "Emergency Contact", emContactPhone "Emergency Phone"
--FROM CHILD_TBL
--ORDER BY lName;

--SELECT COUNT(*) FROM CHILD_TBL;

--ALTER TABLE CHILD_TBL
--ADD childAge TINYINT NULL;

--UPDATE CHILD_TBL
--SET childAge = DATEDIFF(hour, dateOfBirth, GETDATE())/8766;

--SELECT dateOfBirth, childAge FROM CHILD_TBL
--ORDER BY childAge;
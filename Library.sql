
CREATE DATABASE LibrarySystem;
USE LibrarySystem;

CREATE TABLE reader
(
	ssn INT PRIMARY KEY IDENTITY(1,1),
	firstname VARCHAR(50) NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	street VARCHAR(50) NOT NULL,
	phone INT NOT NULL,

);
	



CREATE TABLE book
(
	book_id INT PRIMARY KEY IDENTITY(1,1),
	ISBN INT NOT NULL,
	name VARCHAR(50) NOT NULL,
	author VARCHAR(50) NOT NULL,
	publish_name VARCHAR(50)NOT NULL,
	price INT NOT NULL,
	publish_date DATE  NOT NULL,
	amount INT NOT NULL,


);


CREATE TABLE borrowbook
(
	borrow_id INT PRIMARY KEY IDENTITY(1,1),
	reader_ssn INT NOT NULL ,
	book_id INT NOT NULL ,
	start_date  DATE NOT NULL , 
	return_date DATE NOT NULL , 
	constraint fk_borrowing_reader FOREIGN KEY  (reader_ssn )
		REFERENCES reader (ssn) 
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	
	constraint fk_borrowing_book FOREIGN KEY  (book_id)
		REFERENCES books (book_id) 
		ON UPDATE CASCADE
		ON DELETE CASCADE
	
);



CREATE TABLE returnbook
(
	return_id INT PRIMARY KEY IDENTITY(1,1),
	reader_ssn INT NOT NULL ,
	book_id INT NOT NULL ,
	return_date DATE NOT NULL , 
	constraint fk_borrowing_reader FOREIGN KEY  (reader_ssn)
		REFERENCES reader (ssn) 
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	
	constraint fk_borrowing_book FOREIGN KEY  (book_id)
		REFERENCES book (book_id) 
		ON UPDATE CASCADE
		ON DELETE CASCADE
	
);







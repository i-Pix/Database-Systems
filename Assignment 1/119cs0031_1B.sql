CREATE TABLE Publisher (
    publisher_name VARCHAR(40)     NOT NULL,
    city           VARCHAR(20)     NOT NULL,
    country        VARCHAR(20)     NOT NULL,
    telephone      INT             NOT NULL,
    year_founded   INT             NOT NULL,
    PRIMARY KEY (publisher_name)
);

CREATE TABLE Author(
    author_number INT             NOT NULL,
    author_name   VARCHAR(20)     NOT NULL,
    dob           INT             NOT NULL,
    PRIMARY KEY (author_number)
);

CREATE TABLE Book (
    book_number    INT            NOT NULL,
    book_name      VARCHAR(20)    NOT NULL,
    published_year INT            NOT NULL,
    pages          INT            NOT NULL,
    cost           DECIMAL(5,2)   NOT NULL,
    publisher_name VARCHAR(40)    NOT NULL,
    PRIMARY KEY (book_number),
    FOREIGN KEY (publisher_name) REFERENCES Publisher(publisher_name)
);

CREATE TABLE CustomerBook(
    customer_number INT           NOT NULL,
    customer_name   VARCHAR(20)   NOT NULL,
    street          VARCHAR(20)   NOT NULL,
    city            VARCHAR(20)   NOT NULL,
    cus_state       VARCHAR(20)   NOT NULL,
    country         VARCHAR(20)   NOT NULL,
    PRIMARY KEY (customer_number)
);

CREATE TABLE Writing(
    book_number     INT           NOT NULL,
    author_number   INT           NOT NULL,
    FOREIGN KEY (book_number) REFERENCES Book(book_number),
    FOREIGN KEY (author_number) REFERENCES Author(author_number)
);

CREATE TABLE Sale(
    book_number     INT           NOT NULL,
    customer_number INT           NOT NULL,
    date_sale       DATE          NOT NULL,
    price           DECIMAL(5,2)  NOT NULL,
    quantity        INT           NOT NULL,
    FOREIGN KEY (book_number) REFERENCES Book(book_number),
    FOREIGN KEY (customer_number) REFERENCES CustomerBook(customer_number)
);

INSERT ALL
   
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('Paris Publishing Ltd.', 'Paris','France',34420723456,1876)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('JokoVich Publishing Ltd.', 'Ninu','Norway',14420723456,1912)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('Japan Publishing Ltd.', 'Tokyo','Japan',14420723456,1912)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('USA Publishing Ltd.', 'LA','USA',14420723456,1912)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('BRITAIN Publishing Ltd.', 'London','UK',14420723456,1912)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('BRAZIL Publishing Ltd.', 'paoulo santo','BRAZIL',14420723456,1912)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('BEIJING Publishing Ltd.', 'beijing','china',14420723456,1924)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('India Publishing Ltd.', 'Delhi','INDIA',14420723456,1919)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('Nairobi Publishing Ltd.', 'Nairobi','Kenya',54422343456,2001)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('Auckland Publishing Ltd.', 'Auckland','New Zealand',74472343456,1980)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('Singapore Publishing Ltd.', 'Singapore','Singapore',84420743456,1988)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('London Publishing Ltd.', 'London','UK',442072343456,1883)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('Brussels Publishing Ltd.', 'Brussels','Belgium',04420743456,1911)
    INTO Publisher(publisher_name,city,country,telephone,year_founded) VALUES ('Sao Paulo Publishing Ltd.', 'Sao Paulo','Brazil',94472343456,1960)
SELECT * FROM dual;

INSERT ALL
    INTO Author(author_number,author_name,dob) VALUES (101,'Brad',1888)
    INTO Author(author_number,author_name,dob) VALUES (102,'Tigre',1780)
    INTO Author(author_number,author_name,dob) VALUES (103,'Aloma',1986)
    INTO Author(author_number,author_name,dob) VALUES (104,'Santa',1129)
    INTO Author(author_number,author_name,dob) VALUES (105,'Sarchinii',1677)
    INTO Author(author_number,author_name,dob) VALUES (106,'Christopher',1120)
    INTO Author(author_number,author_name,dob) VALUES (107,'MBrandi',1649)
    INTO Author(author_number,author_name,dob) VALUES (108,'Mbape',1765)
    INTO Author(author_number,author_name,dob) VALUES (109,'Romaldoo',1675)
    INTO Author(author_number,author_name,dob) VALUES (110,'William',1612)
    INTO Author(author_number,author_name,dob) VALUES (112,'Tagore',1940)
    INTO Author(author_number,author_name,dob) VALUES (199,'Leo',1856)
    INTO Author(author_number,author_name,dob) VALUES (111,'Marley',1989)
    INTO Author(author_number,author_name,dob) VALUES (131,'Sarojini',1947)
    INTO Author(author_number,author_name,dob) VALUES (145,'Charles',1760)
    INTO Author(author_number,author_name,dob) VALUES (164,'Marie',1909)
    INTO Author(author_number,author_name,dob) VALUES (198,'Lashley',1956)
    INTO Author(author_number,author_name,dob) VALUES (099,'Bob',1931)
SELECT * FROM dual;

INSERT ALL
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1022, 'Xiao Chin Piao', 2010, 144, 884.5,'BEIJING Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1012, 'Bharat ki khoj', 1947, 655, 312.5,'India Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1035, 'Did Bush did it?', 2002, 129, 544.5,'USA Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1057, 'Brexit is a lie', 2012, 244, 270.5,'BRITAIN Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1079, 'Why Nagasaki', 1959, 44, 122.5,'Japan Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1090, 'Roger F', 2001, 675, 999.5,'JokoVich Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1070, 'Trevor Noah', 1950, 1012, 877.5,'India Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1112, 'Wishme luck', 1980, 469, 235.5,'USA Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1021, 'Fallen', 2001, 444, 344.5,'Paris Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1011, 'Black Beauty', 2001, 655, 312.5,'London Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1034, 'Harry Potter', 1989, 499, 544.5,'London Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1056, 'Rudening', 2002, 244, 270.5,'Brussels Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1078, 'Endgame', 1900, 744, 122.5,'London Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1089, 'Mindfield', 2001, 675, 999.5,'Singapore Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1069, 'Tremor', 1950, 1012, 877.5,'Sao Paulo Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1111, 'Wakanda Forever', 1980, 469, 235.5,'Brussels Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1033, 'Tryst', 1899, 399, 199.5,'India Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1017, 'Shallow Path', 2001, 100, 145.5,'India Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1233, 'Duty Calling', 1920, 500, 679.5,'Paris Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1265, 'Hitman', 2001, 494, 899.5,'Auckland Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1071, 'Awakening', 1989, 349, 299.5,'Paris Publishing Ltd.')
    INTO Book(book_number,book_name,published_year,pages,cost,publisher_name) VALUES (1199, 'Revenge', 2001, 299, 599.5,'Nairobi Publishing Ltd.')
SELECT * FROM dual;

INSERT ALL
    INTO CustomerBook(customer_number,customer_name,street,city,cus_state,country) VALUES (3000,'JJ','Pamsy Street','New Jersey','NYU','USA')
    INTO CustomerBook(customer_number,customer_name,street,city,cus_state,country) VALUES (3111,'Google','GHQ Street','Seattle','Washington','US')
SELECT * FROM dual;

INSERT ALL
    INTO Writing(book_number,author_number) VALUES (1021,101)
    INTO Writing(book_number,author_number) VALUES (1011,103)
    INTO Writing(book_number,author_number) VALUES (1034,103)
    INTO Writing(book_number,author_number) VALUES (1056,105)
    INTO Writing(book_number,author_number) VALUES (1078,101)
    INTO Writing(book_number,author_number) VALUES (1089,105)
    INTO Writing(book_number,author_number) VALUES (1069,111)
    INTO Writing(book_number,author_number) VALUES (1111,131)
    INTO Writing(book_number,author_number) VALUES (1033,131)
    INTO Writing(book_number,author_number) VALUES (1017,145)
    INTO Writing(book_number,author_number) VALUES (1233,164)
    INTO Writing(book_number,author_number) VALUES (1265,198)
    INTO Writing(book_number,author_number) VALUES (1070,198)
    INTO Writing(book_number,author_number) VALUES (1199,099)
SELECT * FROM dual;

INSERT ALL
    INTO Sale(book_number,customer_number,date_sale,price,quantity) VALUES(1199, 3111, '1-3-2021', 599.5, 5)
SELECT * FROM dual;

-- 1
SELECT book_number, book_name, pages
FROM Book
WHERE publisher_name = 'London Publishing Ltd.'
ORDER BY book_name;

-- 2
SELECT COUNT(*)
FROM Publisher, Book
WHERE Publisher.publisher_name = book.publisher_name
AND city = 'Paris'
AND country = 'France'
AND Pages >= 400;

-- 3
SELECT DISTINCT Publisher.publisher_name
FROM Publisher, Book, Writing, Author
WHERE Publisher.publisher_name=Book.publisher_name
AND Book.book_number=Writing.book_number
AND Writing.author_number=Author.author_number 
AND country IN ('Belgium', 'Brazil', 'Singapore')
AND dob < 1920;

-- 4
SELECT Publisher.publisher_name ,COUNT(*)
FROM Publisher, Book
WHERE Publisher.publisher_name = Book.publisher_name
AND ((city='India' AND country='Norway')
	OR (city='Nairobi' AND country='Kenya')
	OR (city='Auckland' AND country='New Zealand')) 
AND published_year = 2001 
GROUP BY Publisher.publisher_name;

-- 5
SELECT DISTINCT publisher_name
FROM Book
WHERE published_year= 
	(SELECT MIN(published_year)
	FROM Book);




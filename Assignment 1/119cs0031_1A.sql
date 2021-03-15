
CREATE TABLE Office(
    office_number INT    NOT NULL,
    telephone     INT    NOT NULL,
    office_size   INT    NOT NULL,
    PRIMARY KEY (office_number)
);

CREATE TABLE SalesPerson(
    sales_person_number INT             NOT NULL,
    sales_person_name   VARCHAR(20)     NOT NULL,
    comm_percentage     DECIMAL(5,2)    NOT NULL,
    year_hire           INT             NOT NULL,
    office_number       INT             NOT NULL,
    PRIMARY KEY (sales_person_number),
    FOREIGN KEY (office_number) REFERENCES Office(office_number)
);

CREATE TABLE Customer(
    customer_number     INT             NOT NULL,
    customer_name       VARCHAR(20)     NOT NULL,
    sales_person_number INT             NOT NULL,
    headquarter_city    VARCHAR(20)     NOT NULL,
    PRIMARY KEY (customer_number),
    FOREIGN KEY (sales_person_number) REFERENCES SalesPerson(sales_person_number)
);

CREATE TABLE CustomerEmployee(
    customer_number     INT             NOT NULL,
    employee_number     INT             NOT NULL,
    employee_name       VARCHAR(20)     NOT NULL,
    title               VARCHAR(20)     NOT NULL,
    FOREIGN KEY (customer_number) REFERENCES Customer(customer_number)
);

CREATE TABLE Product(
    product_number      INT             NOT NULL,
    product_name        VARCHAR(20)     NOT NULL,
    unit_price          DECIMAL(10,2)   NOT NULL,
    PRIMARY KEY (product_number)
);

CREATE TABLE Sales(
    sales_person_number INT             NOT NULL,
    product_number      INT             NOT NULL,
    quantity            INT             NOT NULL,
    FOREIGN KEY (sales_person_number) REFERENCES SalesPerson(sales_person_number),
    FOREIGN KEY (product_number) REFERENCES Product(product_number)
);

INSERT ALL
    INTO Office(office_number,telephone,office_size) VALUES(1253,912345678,120)
    INTO Office(office_number,telephone,office_size) VALUES(1227,932345678,100)
    INTO Office(office_number,telephone,office_size) VALUES(1284,952345678,120)
    INTO Office(office_number,telephone,office_size) VALUES(1209,962345678,100)
    INTO Office(office_number,telephone,office_size) VALUES(1243,962345678,500)
    INTO Office(office_number,telephone,office_size) VALUES(1212,962345678,900)
    INTO Office(office_number,telephone,office_size) VALUES(1219,962345678,84)
    INTO Office(office_number,telephone,office_size) VALUES(1579,962345678,76)
    INTO Office(office_number,telephone,office_size) VALUES(1819,962345678,66)
SELECT * FROM dual;

INSERT ALL
    INTO SalesPerson(sales_person_number,sales_person_name,comm_percentage,year_hire,office_number) VALUES(137,'Baker',10,1995,1284)
    INTO SalesPerson(sales_person_number,sales_person_name,comm_percentage,year_hire,office_number) VALUES(186,'Adams',15,2001,1253)
    INTO SalesPerson(sales_person_number,sales_person_name,comm_percentage,year_hire,office_number) VALUES(204,'Dickens',10,1998,1209)
    INTO SalesPerson(sales_person_number,sales_person_name,comm_percentage,year_hire,office_number) VALUES(361,'Carlyle',20,2001,1227)
SELECT * FROM dual;


INSERT ALL
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(0121,'Main St. Hardware',137,'New York')
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(0839,'Janes Stores',186,'Chicago')
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(0933,'ABC Home Stores',137,'Los Angeles')
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(1047,'Acme Hardware Store',137,'Los Angeles')
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(1525,'Fred Tool Store',361,'Atlanta')
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(1700,'XYZ Store',361,'Washington')
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(1826,'City Hardware',137,'New York')
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(2198,'Western Hardware',204,'New York')
    INTO Customer(customer_number,customer_name,sales_person_number,headquarter_city) VALUES(2267,'Central Stores',186,'New York')
SELECT * FROM dual;

INSERT ALL
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(0121,27498,'Atlas','Co-Owner')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(0121,30411,'Brawa','Co-Owner')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(0933,25270,'Busch','VP Sales')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(0933,30411,'Digitrax','Sales Manager')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(0933,48258,'Faller','President')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(1525,33779,'Heki','Sales Manager')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(2198,27470,'Atlas','President')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(2198,30441,'Lenz','VP Sales')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(2198,33779,'Brawa','VP Personnel')
    INTO CustomerEmployee(customer_number,employee_number,employee_name,title) VALUES(2198,35268,'Merten','Senior Accountant')
SELECT * FROM dual;

INSERT ALL
    INTO Product(product_number,product_name,unit_price) VALUES(16386,'Wrench',12.95)
    INTO Product(product_number,product_name,unit_price) VALUES(19440,'Hammer',17.50)
    INTO Product(product_number,product_name,unit_price) VALUES(21765,'Drill',32.99)
    INTO Product(product_number,product_name,unit_price) VALUES(24013,'Saw',26.25)
    INTO Product(product_number,product_name,unit_price) VALUES(26722,'Pliers',11.50)
SELECT * FROM dual;

INSERT ALL
    INTO Sales(sales_person_number,product_number,quantity) VALUES(137,19440,473)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(137,24013,170)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(137,26722,688)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(186,16386,1745)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(186,19440,2529)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(186,21765,1962)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(186,24013,3071)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(204,21765,809)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(204,26722,734)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(361,16386,3729)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(361,21765,3110)
    INTO Sales(sales_person_number,product_number,quantity) VALUES(361,26722,2738)
SELECT * FROM dual;

-- 1
SELECT comm_percentage, year_hire
FROM SalesPerson
WHERE sales_person_number = 186;

-- 2
SELECT sales_person_number, sales_person_name
FROM SalesPerson
WHERE comm_percentage = 10;

-- 3
SELECT sales_person_number, sales_person_name
FROM SalesPerson;

-- 4
SELECT sales_person_number, sales_person_name, comm_percentage
FROM SalesPerson
WHERE comm_percentage < 12; 

-- 5
SELECT customer_number, headquarter_city 
FROM Customer
WHERE customer_number >= 1700;

-- 6
SELECT customer_number, customer_name, headquarter_city
FROM Customer
WHERE headquarter_city='New York'
AND customer_number > 1500;

-- 7
SELECT customer_number, customer_name, headquarter_city
FROM Customer
WHERE headquarter_city='New York'
OR customer_number > 1500;

-- 8
SELECT customer_number, customer_name, headquarter_city
FROM Customer
WHERE (headquarter_city='New York'
OR customer_number > 1500)
AND headquarter_city ='Atlanta'

-- 9
SELECT DISTINCT headquarter_city
FROM Customer;

-- 10
SELECT customer_number, customer_name, headquarter_city
FROM Customer
WHERE customer_number > 1000
ORDER BY headquarter_city;

-- 11
SELECT AVG(quantity)
FROM Sales
WHERE sales_person_number = 137;

-- 12
SELECT MAX(quantity)
FROM Sales
WHERE product_number = 21765;

-- 13
SELECT COUNT(*)
FROM Sales
WHERE product_number = 21765;

-- 14
SELECT sales_person_number, SUM(quantity)
FROM Sales
GROUP BY sales_person_number;

-- 15
SELECT sales_person_number, SUM(quantity)
FROM Sales
WHERE sales_person_number >= 150
GROUP BY sales_person_number;

-- 16
SELECT sales_person_number, SUM(quantity)
FROM Sales
WHERE sales_person_number >= 150
GROUP BY sales_person_number;

-- 17
SELECT sales_person_number, SUM(quantity)
FROM Sales
WHERE sales_person_number >= 150
GROUP BY sales_person_number
HAVING SUM(quantity) > = 5000;

-- 18
SELECT sales_person_name
FROM SalesPerson, Customer
WHERE SalesPerson.sales_person_number = Customer.sales_person_number AND customer_number = 1525;

-- 19
SELECT product_name
FROM SalesPerson, Product, Sales
WHERE SalesPerson.sales_person_number = Sales.sales_person_number
AND Sales.product_number = Product.product_number
AND sales_person_name = 'Adams'
AND quantity > 2000;

-- 20
SELECT sales_person_number
FROM SalesPerson
WHERE sales_person_number > 200
AND comm_percentage =
	(SELECT MIN(comm_percentage)
	FROM SalesPerson
	WHERE sales_person_number > 200); 








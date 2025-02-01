SELECT * FROM `Students`

SELECT * FROM `Orders`

ALTER TABLE `Students` ADD city VARCHAR(100)


ALTER TABLE `Students` ADD age SMALLINT

ALTER TABLE `Orders` ADD Status VARCHAR(50) DEFAULT 'NOT SHIPPED'


UPDATE `Orders` SET status='SHIPPED' WHERE `OrderID`=4



UPDATE `Students` SET `city` = 'Los Angeles' WHERE `StudentID` =8

UPDATE `Students` SET `age` = 25 WHERE `StudentID` =6

SELECT * FROM `Students` WHERE city='New York' OR age >27


SELECT OrderDate, Min(Total) AS TotalSales FROM Orders GROUP BY OrderDate;


SELECT * FROM `Orders` WHERE `Total` <= (SELECT AVG(`Total`) FROM `Orders`)

SELECT AVG(`Total`) FROM `Orders`


CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Price FLOAT NOT NULL
)


INSERT INTO `Products` (`ProductID`,`Name`,`Price`) 
    VALUES (1,'SHOES',150),(2,'SKIRT',310),(3,'COAT',50),(4,'HAT LV',25.89),(5,'BOOTS','25')


SELECT * FROM `Products` WHERE `Price`>50;
SELECT * FROM `Orders`



SELECT * FROM `Orders` WHERE `OrderDate`>'2023-01-01' and status='SHIPPED'

SELECT CONCAT(`LastName`,'  ',`FirstName`) AS FullName,`Email` FROM `Students`


SELECT * FROM `Employees`;
SELECT COUNT(*) AS TotalEmployees FROM `Employees`;

SELECt AVG(`Price`) FROM `Products`;

SELECT * FROM `Products`;
SELECT * FROM `Products` WHERE `Price` > (SELECt AVG(`Price`) FROM `Products`);

CREATE TABLE IF NOT EXISTS Employees (
  EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) UNIQUE,
  Department VARCHAR(150) NOT NULL,
  HireDate DATE
);


INSERT INTO `Employees` (`EmployeeID`,`FirstName`,`LastName`,`Email`,`Department`,`HireDate`)
    VALUES (1,'SEMPER FIDELIS','ADAMOU','ali@gmail.com','IT','2024-12-12'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com','DGCOM', '2021-08-22'),
       (3, 'Michael', 'Johnson', 'michael.johnson@example.com',"SG", '2023-02-01');


SELECT * FROM `Employees`

SELECT Email FROM `Employees`

UPDATE `Employees`

/* DROP TABLE `Employees` */


SELECT * FROM `Employees` WHERE `HireDate` >= '2020-01-01' ORDER BY `LastName` ASC

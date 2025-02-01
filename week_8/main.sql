CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY,
    LastName VARCHAR(250)  NOT NULL,
    FirstName VARCHAR(250)  NOT NULL,
    Email VARCHAR(180) UNIQUE,
    EnrollmentDate DATE NOT NULL
)

INSERT INTO Students (`StudentID`,`LastName`,`FirstName`,`Email`,`EnrollmentDate`)
    VALUES (7,'NIKIEMA','ABDOUL','abdou@gmail.com','2002-10-05'),
            (8,'NIKIEMA','BEN','n.adamou@gmail.com','2001,10,03'),
            (9,'SEMPER','FI','semperfide@gmail.com','2006;10;20')

SELECT * FROM `Students`


SELECT FirstName ,LastName, Email,`EnrollmentDate` FROM `Students` WHERE `EnrollmentDate` > '2000-01-10'
    ORDER BY `LastName` ASC;
ALTER TABLE `Students` ADD IsEnable BOOLEAN

UPDATE `Students` SET `IsEnable`=1 WHERE `StudentID`=10


UPDATE `Students` SET `IsEnable`=1 WHERE `StudentID` IS NOT NULL



UPDATE `Students` SET `Email` = 'adamou@gmail.com' WHERE `StudentID` =3


DELETE FROM `Students` WHERE `LastName`="NIKIEMA"


CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY,
    StudentID int,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    OrderDate DATE,
    Total FLOAT
    )

SELECT * FROM Orders 

INSERT INTO `Orders` (`OrderID`,`StudentID`,`OrderDate`,`Total`)
    VALUES (4,9,'2024-12-01',3400),(9,6,'2025-01-01',356400)

UPDATE `Orders` SET `Total`=25000 WHERE `OrderID`=3

DELETE FROM `Orders` WHERE  `OrderID`=9


SELECT `Orders`.*, `Students`.`Email` ,CONCAT( `Students`.`LastName`,' ', `Students`.`FirstName`) as FullName FROM `Orders` 
INNER JOIN `Students` ON `Students`.`StudentID`=`Orders`.`StudentID`



SELECT * FROM Orders WHERE `OrderDate` >= '2025-01-20'

UPDATE `Students` SET `LastName` = 'MESSI', `FirstName`='LIONEL' WHERE `StudentID`=9

UPDATE `Orders` SET `StudentID` =7 WHERE `OrderID`=2
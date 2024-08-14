create database testing;
use testing;
CREATE TABLE AadharCard (
    AadharCardID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    AadharNumber VARCHAR(12) UNIQUE NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    PinCode VARCHAR(10) NOT NULL,
    IsActive BOOLEAN NOT NULL DEFAULT TRUE,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    DateOfBirth DATE NOT NULL,
    FathersName VARCHAR(100) NOT NULL
);
-- Insert 100 dummy entries into the AadharCard table
INSERT INTO AadharCard (Name, AadharNumber, Address, City, State, PinCode, IsActive, Gender, DateOfBirth, FathersName)
VALUES
    ('John Doe', '123456789012', '123 Main Street', 'Anytown', 'AnyState', '12345', TRUE, 'Male', '1990-05-15', 'Michael Doe'),
    ('Jane Smith', '23456789078', '456 Oak Avenue', 'Othertown', 'OtherState', '23456', TRUE, 'Female', '1988-08-20', 'David Smith'),
    ('Alice Johnson', '345678901234', '789 Elm Road', 'Sometown', 'SomeState', '34567', TRUE, 'Female', '1995-03-10', 'Robert Johnson'),
    ('Bob Brown', '456789012345', '321 Pine Lane', 'Anothertown', 'AnotherState', '45678', TRUE, 'Male', '1985-11-25', 'William Brown'),
    ('Mary Davis', '567890123456', '654 Cedar Street', 'Newtown', 'NewState', '56789', TRUE, 'Female', '1992-07-30', 'James Davis'),
    ('David Lee', '678901234567', '987 Birch Avenue', 'Smalltown', 'SmallState', '67890', TRUE, 'Male', '1983-12-05', 'Richard Lee'),
    ('Emma Johnson', '789012345678', '159 Maple Drive', 'Hometown', 'HomeState', '78901', TRUE, 'Female', '1987-09-12', 'Thomas Johnson'),
    ('James Wilson', '890123456789', '357 Walnut Street', 'Bigtown', 'BigState', '89012', TRUE, 'Male', '1980-04-22', 'George Wilson'),
    ('Olivia Martinez', '901234567890', '258 Pine Street', 'Lasttown', 'LastState', '90123', TRUE, 'Female', '1998-01-18', 'Carlos Martinez'),
    ('Liam Taylor', '012345678901', '753 Oak Drive', 'Smallertown', 'SmallerState', '01234', TRUE, 'Male', '1994-06-08', 'Daniel Taylor'),
    ('Sophia Anderson', '123450987654', '456 Elm Lane', 'Newertown', 'NewerState', '54321', TRUE, 'Female', '1996-11-03', 'Matthew Anderson'),
    ('Logan White', '234561098765', '987 Maple Road', 'Latesttown', 'LatestState', '65432', TRUE, 'Male', '1989-02-28', 'Ryan White'),
    ('Amelia Clark', '345672109876', '159 Birch Lane', 'Farawaytown', 'FarawayState', '76543', TRUE, 'Female', '1986-10-17', 'Anthony Clark'),
    ('Benjamin Turner', '456783210987', '357 Walnut Drive', 'Nearbytown', 'NearbyState', '87654', TRUE, 'Male', '1993-08-11', 'Joseph Turner'),
    ('Mia Hill', '567894321098', '753 Cedar Road', 'Hiddenvalleytown', 'HiddenvalleyState', '98765', TRUE, 'Female', '1984-07-25', 'Christopher Hill'),
    ('Ethan Moore', '678905432109', '258 Pine Lane', 'Distanttown', 'DistantState', '09876', TRUE, 'Male', '1991-05-19', 'William Moore'),
    ('Charlotte King', '789016543210', '456 Oak Drive', 'Unknownvalleytown', 'UnknownvalleyState', '10987', TRUE, 'Female', '1981-03-14', 'Charles King'),
    ('William Ward', '890127654321', '987 Maple Lane', 'Middletown', 'MiddleState', '21098', TRUE, 'Male', '1997-12-09', 'Andrew Ward'),
    ('Harper Scott', '901238765432', '159 Cedar Street', 'Nextdoortown', 'NextdoorState', '32109', TRUE, 'Female', '1982-09-03', 'David Scott'),
    ('Aiden Green', '012349876543', '357 Pine Road', 'Everywheretown', 'EverywhereState', '43210', TRUE, 'Male', '1988-06-27', 'Mark Green');
SELECT*FROM AADHARCARD;
SELECT*FROM AADHARCARD WHERE CITY ='anytown ' or state= 'somestate';
select*from aadharcard where name = 'john doe';
SELECT*FROM AADHARCARD WHERE YEAR(DATEOFBIRTH) between 1980 AND 1985;
SELECT COUNT(NAME)  FROM AADHARCARD WHERE GENDER= 'male';
select count(gender) from aadharcard where year(dateofbirth)=1980;
select distinct city, aadharnumber from aadharcard;
select count(Distinct state) from aadharcard;
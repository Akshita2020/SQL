CREATE DATABASE ASSESSMENT;
USE ASSESSMENT;

CREATE TABLE EVENT (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Event_Name VARCHAR(255),
    Event_Date DATE,
    Event_Time TIME,
    Event_Datetime DATETIME,
    Organizer_Name VARCHAR(255),
    Organizer_Email VARCHAR(255)
);

INSERT INTO EVENT (Event_Name, Event_Date, Event_Time, Event_Datetime, Organizer_Name, Organizer_Email) VALUES
('Birthday Party', '2024-04-15', '18:00:00', '2024-04-15 18:00:00', 'Rajesh Kumar', 'rajesh@gmail.com'),
('Conference', '2024-05-20', '09:00:00', '2024-05-20 09:00:00', 'Soham yadav', 'rajesh@gmail.com'),
('Workshop', '2024-06-10', '14:30:00', '2024-06-10 14:30:00', 'Supriya Shrivastav', 'Supriya@gmail.com'),
('Music Concert', '2024-07-05', '20:00:00', '2024-07-05 20:00:00', 'Sheel Kumar', 'Sheel@gmail.com'),
('Meeting', '2024-08-12', '10:00:00', '2024-08-12 10:00:00', 'Rishita Agrwal', 'Rishita@gmail.com'),
('Seminar', '2024-09-18', '13:00:00', '2024-09-18 13:00:00', 'Sandeep Atre', 'Sandeep@gmail.com'),
('Wedding Ceremony', '2024-10-30', '15:30:00', '2024-10-30 15:30:00', 'Priya Sharma', 'priya@example.com'),
('Networking Event', '2024-11-08', '19:00:00', '2024-11-08 19:00:00', 'Anubhuti Bausakar', 'Anubhuti@gmail.com'),
('Exhibition', '2024-12-22', '11:00:00', '2024-12-22 11:00:00', 'Rajul Soni', 'Rajul@gmail.com'),
('Team Building Activity', '2025-01-15', '09:30:00', '2025-01-15 09:30:00', 'Suman Malakar', 'Suman@gmail.com'),
('Product Launch', '2025-02-28', '17:00:00', '2025-02-28 17:00:00', 'Tata Insdustry', 'Tata@gmail.com'),
('Training Session', '2025-03-10', '14:00:00', '2025-03-10 14:00:00', 'TCS Solutions Ltd.', 'TCS@gmail.com'),
('Charity Event', '2025-04-05', '19:30:00', '2025-04-05 19:30:00', 'Ratan Tata', 'Ratan @gmail.com'),
('Job Fair', '2025-05-20', '10:00:00', '2025-05-20 10:00:00', 'Employment Agency', 'info@employmentagency.com'),
('Fashion Show', '2025-06-18', '20:30:00', '2025-06-18 20:30:00', 'Ekta kapoor.', 'Ekta@fashionevents.com'),
('Business Lunch', '2025-07-12', '12:30:00', '2025-07-12 12:30:00', 'Ambani Corporation', 'Ambani@corp.com'),
('Seminar Series', '2025-08-25', '09:00:00', '2025-08-25 09:00:00', 'Volcanus', 'registration@Volcanusseminars.com'),
('Holiday Party', '2025-12-20', '19:00:00', '2025-12-20 19:00:00', 'Abhishek Kumar', 'celebrate@abcholidays.com'),
('Webinar', '2026-01-08', '15:00:00', '2026-01-08 15:00:00', 'Komal Prajapat', 'Komal@onlineevents.com'),
('Farwell', '2026-02-15', '08:00:00', '2026-02-15 08:00:00', 'Delhi Public School', 'DelhiPublic@school.com');


-- STRING FUNCTION 
SELECT CONCAT(Organizer_Name, '-->  ', Event_Name) AS Organizer_Event_Name FROM EVENT;
SELECT Organizer_Name, LENGTH(Organizer_Name) AS LENGTH_OF_NAME FROM EVENT;
SELECT Organizer_Name, UPPER(EVENT_Name) AS EVENT_IN_UPPERCASE FROM EVENT;
SELECT Organizer_Name, LOWER(EVENT_Name) AS EVENT_IN_UPPERCASE FROM EVENT;
SELECT Organizer_Name, REVERSE( Organizer_Name) AS REVERSED_NAMES FROM EVENT;
SELECT Organizer_Name, SUBSTRING( Organizer_EMAIL,7,8) AS SUBSTRING_OF_EMAILS FROM EVENT;
SELECT Organizer_Name, LEFT(EVENT_NAME, 9) FROM EVENT;
SELECT Organizer_Name, RIGHT(EVENT_NAME, 9) FROM EVENT;
SELECT TRIM(EVENT_NAME ) FROM EVENT;
SELECT LTRIM(EVENT_NAME ) FROM EVENT; 
SELECT RTRIM(EVENT_NAME ) FROM EVENT; 
SELECT REPLACE(Event_Name, ' ', '_') AS Modified_Event_Name FROM EVENT;
SELECT LOCATE('Birthday Party', Event_Name) AS Position_In_Event_Name FROM EVENT;

    
-- DATETIME FUNCTION
  
SELECT NOW() AS Current_Date_and_Time;

-- RETURN CURRENT DATE
SELECT CURDATE() AS Current_Date;

-- RETURN CURRENT TIME
SELECT CURTIME() AS Current_Time;

-- EXTRACT DATE FROM DATETIME
SELECT DATE(Event_Datetime) AS Extracted_Date FROM EVENT;

-- EXTRACT TIME FROM DATETIME
SELECT TIME(Event_Datetime) AS Extracted_Time FROM EVENT;

-- EXTRACT YEAR FROM DATETIME
SELECT YEAR(Event_Datetime) AS Extracted_Year FROM EVENT;

-- EXTRACT MONTH FROM DATETIME
SELECT MONTH(Event_Datetime) AS Extracted_Month FROM EVENT;

-- EXTRACT DAY FROM DATETIME
SELECT DAY(Event_Datetime) AS Extracted_Day FROM EVENT;

-- EXTRACT MONTH NAME FROM DATETIME
SELECT MONTHNAME(Event_Datetime) AS Extracted_Month_Name FROM EVENT;

-- EXTRACT LAST DAY OF MONTH FROM DATE
SELECT LAST_DAY(Event_Date) AS Last_Day_of_Month FROM EVENT;

-- EXTRACT WEEK FROM DATE
SELECT WEEK(Event_Date) AS Week_of_Year FROM EVENT;

-- EXTRACT DAY NAME FROM DATE
SELECT DAYNAME(Event_Date) AS Day_Name FROM EVENT;

-- EXTRACT WEEKDAY FROM DATE
SELECT WEEKDAY(Event_Date) AS Weekday_Index FROM EVENT;

-- EXTRACT DAY OF WEEK FROM DATE
SELECT DAYOFWEEK(Event_Date) AS Day_of_Week FROM EVENT;

-- EXTRACT HOUR FROM DATETIME
SELECT HOUR(Event_Datetime) AS Extracted_Hour FROM EVENT;

-- EXTRACT HOUR FROM CURRENT DATETIME
SELECT HOUR(NOW()) AS Current_Hour;

-- EXTRACT MINUTE FROM CURRENT DATETIME
SELECT MINUTE(NOW()) AS Current_Minute;

-- EXTRACT SECOND FROM CURRENT DATETIME
SELECT SECOND(NOW()) AS Current_Second;

-- DAY OF WEEK FROM CURRENT DATETIME
SELECT DAYOFWEEK(NOW()) AS Current_Day_of_Week;

-- DAY OF WEEK FROM CURRENT DATETIME
SELECT WEEKDAY(NOW()) AS Current_Weekday_Index;

-- ADD INTERVAL TO DATE
SELECT DATE_ADD(Event_Date, INTERVAL 45 DAY) AS Date_Plus_45_Days FROM EVENT;

-- SUBTRACT INTERVAL FROM DATE
SELECT DATE_SUB(Event_Date, INTERVAL 45 DAY) AS Date_Minus_45_Days FROM EVENT;

-- DIFFERENCE BETWEEN DATES
SELECT DATEDIFF('2024-03-07', '2024-03-04') AS Date_Difference;

-- TIMESTAMPDIFF FUNCTION
SELECT TIMESTAMPDIFF(SECOND, '2024-03-07 18:25:35', '2024-03-04 18:15:32') AS Time_Difference_In_Seconds;

-- TIMESTAMPADD FUNCTION
SELECT TIMESTAMPADD(HOUR, 2, '2024-03-07 18:25:35') AS Added_Two_Hours;

COMMIT;
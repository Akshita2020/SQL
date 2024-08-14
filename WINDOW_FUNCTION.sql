USE Company;
 CREATE TABLE FacultyMembers (
    faculty_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE,
    office_number VARCHAR(20),
    phone_number VARCHAR(15),
    research_interests TEXT,
    bio TEXT
);
DESCRIBE FacultyMembers;
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    faculty_id INT,
    department VARCHAR(50),
    course_code VARCHAR(20),
    start_date DATE,
    end_date DATE,
    room_number VARCHAR(20),
    credits DECIMAL(3, 2),
    description TEXT
);
INSERT INTO FacultyMembers (first_name, last_name, email, department, hire_date, office_number, phone_number, research_interests, bio)
VALUES
    ('Amit', 'Kumar', 'amit.kumar@example.com', 'Computer Science', '2021-07-15', 'C101', '123-456-7890', 'Data Science, Machine Learning', 'Amit Kumar is a professor of Computer Science.'),
    ('Priya', 'Sharma', 'priya.sharma@example.com', 'Physics', '2019-06-22', 'PH201', '987-654-3210', 'Quantum Mechanics, Thermodynamics', 'Priya Sharma teaches Physics.'),
    ('Rajesh', 'Patel', 'rajesh.patel@example.com', 'Mechanical Engineering', '2020-04-10', 'ME205', '555-123-4567', 'Thermodynamics, Fluid Mechanics', 'Rajesh Patel specializes in Mechanical Engineering.'),
    ('Neha', 'Singh', 'neha.singh@example.com', 'Mathematics', '2018-09-05', 'M101', '789-123-4567', 'Algebra, Calculus', 'Neha Singh is a Mathematics professor.'),
    ('Ankur', 'Gupta', 'ankur.gupta@example.com', 'Economics', '2022-02-20', 'E401', '555-789-4561', 'Microeconomics, Macroeconomics', 'Ankur Gupta is an Economics professor.'),
    ('Deepa', 'Verma', 'deepa.verma@example.com', 'Electrical Engineering', '2019-12-18', 'EE302', '321-987-6543', 'Circuit Design, Power Systems', 'Deepa Verma teaches Electrical Engineering.'),
    ('Vikram', 'Mishra', 'vikram.mishra@example.com', 'Chemistry', '2020-05-22', 'CH102', '987-123-9876', 'Organic Chemistry, Inorganic Chemistry', 'Vikram Mishra is a Chemistry professor.'),
    ('Sunita', 'Rajput', 'sunita.rajput@example.com', 'Psychology', '2017-03-25', 'PSY101', '123-555-9876', 'Clinical Psychology, Cognitive Psychology', 'Sunita Rajput specializes in Psychology.'),
    ('Rahul', 'Yadav', 'rahul.yadav@example.com', 'English', '2021-11-30', 'EN102', '456-987-1234', 'American Literature, Poetry', 'Rahul Yadav teaches English.'),
    ('Anita', 'Mehra', 'anita.mehra@example.com', 'Civil Engineering', '2020-06-15', 'CE301', '321-456-9870', 'Structural Engineering, Construction Management', 'Anita Mehra is a Civil Engineering professor.'),
    ('Sachin', 'Shukla', 'sachin.shukla@example.com', 'History', '2019-04-03', 'H202', '123-321-4567', 'World History, European History', 'Sachin Shukla specializes in History.'),
    ('Pooja', 'Thakur', 'pooja.thakur@example.com', 'Biology', '2022-08-10', 'B201', '789-555-9876', 'Genetics, Ecology', 'Pooja Thakur is a Biology expert.'),
    ('Arun', 'Choudhary', 'arun.choudhary@example.com', 'Mechanical Engineering', '2018-02-28', 'ME201', '555-123-9876', 'Thermodynamics, Fluid Mechanics', 'Arun Choudhary specializes in Mechanical Engineering.'),
    ('Sarita', 'Sinha', 'sarita.sinha@example.com', 'Physics', '2023-01-12', 'PH202', '123-555-7890', 'Quantum Mechanics, Thermodynamics', 'Sarita Sinha is a Physics professor.'),
    ('Rajiv', 'Malhotra', 'rajiv.malhotra@example.com', 'Computer Science', '2019-10-05', 'C202', '987-321-1234', 'Data Science, Machine Learning', 'Rajiv Malhotra is a professor of Computer Science.'),
    ('Meena', 'Gandhi', 'meena.gandhi@example.com', 'Mathematics', '2020-04-15', 'M201', '456-555-7890', 'Algebra, Calculus', 'Meena Gandhi is a Mathematics professor.'),
    ('Prakash', 'Jain', 'prakash.jain@example.com', 'Chemistry', '2021-05-20', 'CH101', '987-789-4561', 'Organic Chemistry, Inorganic Chemistry', 'Prakash Jain specializes in Chemistry.'),
    ('Suman', 'Saxena', 'suman.saxena@example.com', 'Economics', '2018-12-30', 'E301', '555-987-6543', 'Microeconomics, Macroeconomics', 'Suman Saxena is an Economics professor.'),
    ('Vishal', 'Verma', 'vishal.verma@example.com', 'Electrical Engineering', '2017-07-05', 'EE201', '321-456-7890', 'Circuit Design, Power Systems', 'Vishal Verma teaches Electrical Engineering.'),
    ('Nisha', 'Kapoor', 'nisha.kapoor@example.com', 'Psychology', '2022-09-18', 'PSY102', '123-987-6543', 'Clinical Psychology, Cognitive Psychology', 'Nisha Kapoor specializes in Psychology');
INSERT INTO Courses (course_name, faculty_id, department, course_code, start_date, end_date, room_number, credits, description)
VALUES
    ('Introduction to Computer Science', 1, 'Computer Science', 'CS101', '2023-01-15', '2023-05-15', 'C101', 3.0, 'This course provides an introduction to computer science.'),
    ('Physics 101', 4, 'Physics', 'PH101', '2023-02-01', '2023-05-20', 'PH201', 4.0, 'Fundamental principles of physics.'),
    ('Mechanical Engineering Fundamentals', 3, 'Mechanical Engineering', 'ME101', '2023-01-30', '2023-05-30', 'ME101', 3.0, 'Basic concepts of mechanical engineering.'),
    ('Advanced Mathematics', 1, 'Mathematics', 'MATH202', '2023-02-15', '2023-06-15', 'M101', 4.0, 'Advanced topics in mathematics.'),
    ('Economic Theory', 7, 'Economics', 'ECON301', '2023-01-10', '2023-05-10', 'E301', 3.0, 'Economic theory and principles.'),
    ('Digital Electronics', 8, 'Electrical Engineering', 'EE202', '2023-02-10', '2023-06-10', 'EE202', 4.0, 'Introduction to digital electronics.'),
    ('Organic Chemistry', 4, 'Chemistry', 'CHEM201', '2023-02-20', '2023-06-20', 'CH202', 4.0, 'Organic chemistry concepts and reactions.'),
    ('Psychology of Human Behavior', 10, 'Psychology', 'PSY201', '2023-01-25', '2023-05-25', 'PSY101', 3.0, 'Study of human behavior and psychological concepts.'),
    ('English Literature', 9, 'English', 'ENGL101', '2023-02-05', '2023-06-05', 'EN101', 3.0, 'Literature and literary analysis.'),
    ('Civil Engineering Design', 9, 'Civil Engineering', 'CE301', '2023-01-30', '2023-05-30', 'CE101', 3.0, 'Design principles in civil engineering.'),
    ('World History', 6, 'History', 'HIST101', '2023-02-10', '2023-06-10', 'H201', 3.0, 'Overview of world history.'),
    ('Genetics and Evolution', 4, 'Biology', 'BIOL301', '2023-02-15', '2023-06-15', 'B301', 4.0, 'Genetics and evolution principles.'),
    ('Mechanical Vibrations', 3, 'Mechanical Engineering', 'ME302', '2023-02-20', '2023-06-20', 'ME202', 4.0, 'Study of mechanical vibrations.'),
    ('Modern Physics', 4, 'Physics', 'PH202', '2023-01-15', '2023-05-15', 'PH102', 3.0, 'Modern physics concepts.'),
    ('Computer Networks', 1, 'Computer Science', 'CS302', '2023-02-01', '2023-06-01', 'C301', 4.0, 'Principles of computer networks.'),
    ('Linear Algebra', 1, 'Mathematics', 'MATH201', '2023-02-05', '2023-06-05', 'M201', 3.0, 'Linear algebra concepts and applications.'),
    ('Inorganic Chemistry', 4, 'Chemistry', 'CHEM301', '2023-01-20', '2023-05-20', 'CH201', 3.0, 'Inorganic chemistry principles.'),
    ('Microeconomics', 7, 'Economics', 'ECON201', '2023-02-10', '2023-06-10', 'E202', 4.0, 'Study of microeconomics.'),
    ('Circuit Design', 8, 'Electrical Engineering', 'EE301', '2023-01-25', '2023-05-25', 'EE301', 3.0, 'Designing electrical circuits.'),
    ('Clinical Psychology', 10, 'Psychology', 'PSY301', '2023-02-20', '2023-06-20', 'PSY201', 4.0, 'Clinical psychology principles.');
    
    SELECT * FROM FACULTYMEMBERS;
    SELECT * FROM COURSES;

SELECT FACULTY_ID, FIRST_NAME, LAST_NAME, HIRE_DATE FROM FACULTYMEMBERS ORDER BY HIRE_DATE;

  -- ASSIGNING UNIQUE NUMBER TO EACH ROW BASED ON HIRE DATE, AND ROW NUMBER PROVIDE UNIQUE NUMBER TO EACH ROW 
SELECT FACULTY_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, row_number() OVER (ORDER BY HIRE_DATE) FROM FACULTYMEMBERS ;

SELECT COURSE_NAME, row_number() OVER (ORDER BY START_DATE) AS ROW_NUM FROM COURSES ;


-- RANK () 
UPDATE FACULTYMEMBERS SET HIRE_DATE = '2017-07-05' WHERE FACULTY_ID = 8;
SELECT FACULTY_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, RANK() OVER (ORDER BY HIRE_DATE) AS RANK_NUM FROM FACULTYMEMBERS ;

-- DENSE RANK()
SELECT FACULTY_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, DENSE_RANK() OVER (ORDER BY HIRE_DATE) AS DENSE_RANK_NUM FROM FACULTYMEMBERS ;
SELECT FACULTY_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, row_number() OVER (ORDER BY HIRE_DATE) AS ROW_NUM FROM FACULTYMEMBERS ;

SELECT
    F.faculty_id,
    F.first_name,
    F.last_name,
    C.course_name,
    C.credits,
    SUM(C.credits) OVER (PARTITION BY F.faculty_id ORDER BY C.start_date) AS cumulative_credits
FROM
    FacultyMembers F
JOIN
    Courses C ON F.faculty_id = C.faculty_id;
    select * from facultymembers;
SELECT
    F.faculty_id,
    F.first_name,
    F.last_name,
    C.course_name,
    C.credits,
    min(C.credits) OVER (PARTITION BY F.faculty_id ORDER BY C.start_date) AS cumulative_credits
FROM
    FacultyMembers F
JOIN
    Courses C ON F.faculty_id = C.faculty_id;
    SELECT
    F.faculty_id,
    F.first_name,
    F.last_name,
    C.course_name,
    C.credits,
    max(C.credits) OVER (PARTITION BY F.faculty_id ORDER BY C.start_date) AS cumulative_credits
FROM
    FacultyMembers F
JOIN
    Courses C ON F.faculty_id = C.faculty_id;
    SELECT
    F.faculty_id,
    F.first_name,
    F.last_name,
    C.course_name,
    C.credits,
    avg(C.credits) OVER (PARTITION BY F.faculty_id ORDER BY C.start_date) AS cumulative_credits
FROM
    FacultyMembers F
JOIN
    Courses C ON F.faculty_id = C.faculty_id;
    -- lead lag
    SELECT
    F.faculty_id,
    F.first_name,
    F.last_name,
    C.course_name,
    C.credits,
    lead(C.course_name) OVER (PARTITION BY F.faculty_id ORDER BY C.start_date) AS next_course,
    lag(C.course_name) OVER (PARTITION BY F.faculty_id ORDER BY C.start_date) AS previous
FROM
    FacultyMembers F
JOIN
    Courses C ON F.faculty_id = C.faculty_id;
-- first value , last value
SELECT
    F.faculty_id,
    F.first_name,
    F.last_name,
    C.course_name,
    C.credits,
    first_value(C.course_name) OVER (PARTITION BY F.faculty_id ORDER BY C.start_date) AS first_course,
    last_value(C.course_name) OVER (PARTITION BY F.faculty_id ORDER BY C.start_date rows between unbounded preceding and unbounded following) AS last_course
FROM
    FacultyMembers F
JOIN
    Courses C ON F.faculty_id = C.faculty_id;


COMMIT;
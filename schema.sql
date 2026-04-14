-- LEVEL 1: Independent Tables
CREATE TABLE PROFESSOR (
    ProfessorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE STUDENT (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- LEVEL 2: Tables dependent on Level 1
CREATE TABLE COURSE (
    CourseID INT PRIMARY KEY,
    ProfessorID INT,
    Department VARCHAR(50),
    CourseNumber VARCHAR(20),
    CourseName VARCHAR(100),
    Semester VARCHAR(20),
    Year INT,
    FOREIGN KEY (ProfessorID) REFERENCES PROFESSOR(ProfessorID)
);

-- LEVEL 3: Tables dependent on Course
CREATE TABLE ENROLLMENT (
    EnrollmentID INT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    FinalScore DECIMAL(5,2),
    LetterGrade CHAR(2),
    FOREIGN KEY (CourseID) REFERENCES COURSE(CourseID),
    FOREIGN KEY (StudentID) REFERENCES STUDENT(StudentID)
);

CREATE TABLE CATEGORY (
    CategoryID INT PRIMARY KEY,
    CourseID INT,
    CategoryName VARCHAR(50),
    WeightPercent DECIMAL(5,2),
    FOREIGN KEY (CourseID) REFERENCES COURSE(CourseID)
);

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

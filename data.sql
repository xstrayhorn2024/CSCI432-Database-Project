INSERT INTO PROFESSOR (ProfessorID, FirstName, LastName, Email) VALUES 
(1, 'Dr. Emmett', 'Brown', 'ebrown@univ.edu'),
(2, 'Dr. Grace', 'Hopper', 'ghopper@univ.edu');

INSERT INTO STUDENT (StudentID, FirstName, LastName, Email) VALUES 
(1, 'John', 'Smith', 'jsmith@email.com'),
(2, 'Alice', 'Quick', 'aquick@email.com'), -- The 'Q' student
(3, 'Bob', 'Jones', 'bjones@email.com');

INSERT INTO COURSE (CourseID, ProfessorID, Department, CourseNumber, CourseName, Semester, Year) VALUES 
(101, 1, 'CSCI', '432', 'Database Systems', 'Spring', 2026);

INSERT INTO CATEGORY (CategoryID, CourseID, CategoryName, WeightPercent) VALUES 
(1, 101, 'Homework', 40.0),
(2, 101, 'Exams', 60.0);

INSERT INTO ASSIGNMENT (AssignmentID, CategoryID, Title, MaxScore, DueDate) VALUES 
(501, 1, 'SQL Lab 1', 100, '2026-03-01'),
(502, 2, 'Midterm Exam', 100, '2026-04-15');

-- Enrolling the 3 students into Course 101
INSERT INTO ENROLLMENT (EnrollmentID, CourseID, StudentID, FinalScore, LetterGrade) VALUES 
(1, 101, 1, NULL, NULL),
(2, 101, 2, NULL, NULL),
(3, 101, 3, NULL, NULL);

-- Adding scores for Assignment 501 (SQL Lab)
INSERT INTO SUBMISSION (SubmissionID, AssignmentID, EnrollmentID, Score) VALUES 
(1, 501, 1, 85),
(2, 501, 2, 92),
(3, 501, 3, 78);

-- Adding scores for Assignment 502 (Midterm)
INSERT INTO SUBMISSION (SubmissionID, AssignmentID, EnrollmentID, Score) VALUES 
(4, 502, 1, 90),
(5, 502, 2, 88),
(6, 502, 3, 70);

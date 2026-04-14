-- 1. Professors and Students
INSERT INTO PROFESSOR (ProfessorID, FirstName, LastName, Email) VALUES 
(1, 'Dr. Emmett', 'Brown', 'ebrown@univ.edu'),
(2, 'Dr. Grace', 'Hopper', 'ghopper@univ.edu');

INSERT INTO STUDENT (StudentID, FirstName, LastName, Email) VALUES 
(1, 'John', 'Smith', 'jsmith@email.com'),
(2, 'Alice', 'Quick', 'aquick@email.com'), -- The 'Q' student
(3, 'Bob', 'Jones', 'bjones@email.com');

-- 2. Course (Matching the Rubric Problem Statement)
INSERT INTO COURSE (CourseID, ProfessorID, Department, CourseNumber, CourseName, Semester, Year) VALUES 
(101, 1, 'CSCI', '432', 'Database Systems', 'Spring', 2026);

-- 3. Categories (Matching the exact rubric weights: 10%, 20%, 50%, 20%)
INSERT INTO CATEGORY (CategoryID, CourseID, CategoryName, WeightPercent) VALUES 
(1, 101, 'Participation', 10.0),
(2, 101, 'Homework', 20.0),
(3, 101, 'Tests', 50.0),
(4, 101, 'Projects', 20.0);

-- 4. Assignments (Adding one for each category)
INSERT INTO ASSIGNMENT (AssignmentID, CategoryID, Title, MaxScore, DueDate) VALUES 
(501, 1, 'Attendance', 100, '2026-05-01'),
(502, 2, 'SQL Lab 1', 100, '2026-03-01'),
(503, 3, 'Midterm Exam', 100, '2026-04-15'),
(504, 4, 'Final Project', 100, '2026-05-10');

-- 5. Enrollments
INSERT INTO ENROLLMENT (EnrollmentID, CourseID, StudentID, FinalScore, LetterGrade) VALUES 
(1, 101, 1, NULL, NULL),
(2, 101, 2, NULL, NULL),
(3, 101, 3, NULL, NULL);

-- 6. Submissions (Scores for all 4 assignments for all 3 students)
-- Student 1 Scores
INSERT INTO SUBMISSION (SubmissionID, AssignmentID, EnrollmentID, Score) VALUES 
(1, 501, 1, 100), (2, 502, 1, 85), (3, 503, 1, 90), (4, 504, 1, 95);

-- Student 2 Scores (The 'Q' Student)
INSERT INTO SUBMISSION (SubmissionID, AssignmentID, EnrollmentID, Score) VALUES 
(5, 501, 2, 100), (6, 502, 2, 92), (7, 503, 2, 88), (8, 504, 2, 90);

-- Student 3 Scores
INSERT INTO SUBMISSION (SubmissionID, AssignmentID, EnrollmentID, Score) VALUES 
(9, 501, 3, 90), (10, 502, 3, 78), (11, 503, 3, 70), (12, 504, 3, 85);

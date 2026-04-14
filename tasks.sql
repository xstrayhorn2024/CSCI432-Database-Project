SELECT 
    AVG(Score) AS Average_Score, 
    MAX(Score) AS Highest_Score, 
    MIN(Score) AS Lowest_Score 
FROM SUBMISSION 
WHERE AssignmentID = 501;

SELECT DISTINCT s.FirstName, s.LastName
FROM STUDENT s
JOIN ENROLLMENT e ON s.StudentID = e.StudentID
JOIN COURSE c ON e.CourseID = c.CourseID
WHERE c.CourseID = 101;

SELECT 
    s.FirstName, 
    s.LastName, 
    a.Title AS Assignment_Name, 
    sub.Score
FROM STUDENT s
JOIN ENROLLMENT e ON s.StudentID = e.StudentID
JOIN SUBMISSION sub ON e.EnrollmentID = sub.EnrollmentID
JOIN ASSIGNMENT a ON sub.AssignmentID = a.AssignmentID
WHERE e.CourseID = 101
ORDER BY s.LastName, a.Title;

INSERT INTO ASSIGNMENT (AssignmentID, CategoryID, Title, MaxScore, DueDate) 
VALUES (503, 1, 'SQL Lab 2', 100, '2026-05-01');

-- Changing Homework (ID 1) to 30% and Exams (ID 2) to 70%
UPDATE CATEGORY SET WeightPercent = 30.0 WHERE CategoryID = 1;
UPDATE CATEGORY SET WeightPercent = 70.0 WHERE CategoryID = 2;

UPDATE SUBMISSION 
SET Score = Score + 2 
WHERE AssignmentID = 501;

UPDATE SUBMISSION
SET Score = Score + 2
WHERE AssignmentID = 501 
AND EnrollmentID IN (
    SELECT e.EnrollmentID 
    FROM ENROLLMENT e
    JOIN STUDENT s ON e.StudentID = s.StudentID
    WHERE s.LastName LIKE '%Q%'
);

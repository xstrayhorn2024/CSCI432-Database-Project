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

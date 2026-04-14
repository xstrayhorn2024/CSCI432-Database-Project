SELECT 
    AVG(Score) AS Average_Score, 
    MAX(Score) AS Highest_Score, 
    MIN(Score) AS Lowest_Score 
FROM SUBMISSION 
WHERE AssignmentID = 501;

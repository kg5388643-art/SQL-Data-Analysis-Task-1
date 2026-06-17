CREATE DATABASE StudentManagement;
USE StudentManagement;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender CHAR(1),
    Age INT,
    Grade VARCHAR(2),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);
INSERT INTO Students
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Aman', 'M', 18, 'A', 85, 78, 90),
('Priya', 'F', 17, 'A', 92, 88, 95),
('Rahul', 'M', 18, 'B', 76, 80, 72),
('Sneha', 'F', 17, 'A', 89, 91, 87),
('Vikas', 'M', 19, 'C', 65, 70, 68),
('Neha', 'F', 18, 'B', 81, 84, 79),
('Arjun', 'M', 17, 'A', 95, 93, 96),
('Kajal', 'F', 18, 'B', 74, 77, 82),
('Rohan', 'M', 19, 'C', 69, 72, 75),
('Pooja', 'F', 17, 'A', 88, 86, 91);
SELECT * fROM Students;
SELECT
AVG(MathScore) AS Avg_Math,
AVG(ScienceScore) AS Avg_Science,
AVG(EnglishScore) AS Avg_English
FROM Students;
SELECT *,
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;
SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;
SELECT Gender,
AVG(MathScore) AS AvgMath,
AVG(ScienceScore) AS AvgScience,
AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;
SELECT *
FROM Students
WHERE MathScore > 80;
SELECT * FROM Students;
UPDATE Students
SET Grade = 'A'
WHERE StudentID = 3;
SELECT * FROM Students
WHERE Name = 'Rahul';


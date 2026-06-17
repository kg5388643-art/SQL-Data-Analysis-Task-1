# SQL Data Analysis Internship – Task 1
## Student Management Database
### Objective
The objective of this project is to create a Student Management Database using MySQL and perform basic data analysis using SQL queries.
### Tools Used
* MySQL Server
* MySQL Workbench
* GitHub
---
## Database Creation
```sql
CREATE DATABASE StudentManagement;
USE StudentManagement;
## Table Creation
```sql
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
## Data Insertion
10 student records were inserted into the Students table for analysis purposes.
## Query 1: Display All Student Records
### SQL Query
```sql
SELECT * FROM Students;
```
## Query 1: Display All Student Records

![Select All Queries](Select%20all%20queries.png)

### Explanation
This query displays all records from the Students table.
### Explanation

This query retrieves all records from the Students table.

---
## Query 2: Average Score in Each Subject

### SQL Query

```sql
SELECT
AVG(MathScore) AS Avg_Math,
AVG(ScienceScore) AS Avg_Science,
AVG(EnglishScore) AS Avg_English
FROM Students;
```

### Explanation

This query calculates the average marks obtained by students in Mathematics, Science, and English.

---

## Query 3: Find the Top Performer

### SQL Query

```sql
SELECT *,
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;
```


### Explanation

This query calculates total marks and displays the student with the highest score.

---

## Query 4: Count Students by Grade

### SQL Query

```sql
SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;
```



### Explanation

This query groups students by grade and counts the number of students in each grade.

---

## Query 5: Average Score by Gender

### SQL Query

```sql
SELECT Gender,
AVG(MathScore) AS AvgMath,
AVG(ScienceScore) AS AvgScience,
AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;
```


### Explanation

This query calculates average subject scores separately for male and female students.

---

## Query 6: Students Scoring More Than 80 in Mathematics

### SQL Query

```sql
SELECT *
FROM Students
WHERE MathScore > 80;
```



### Explanation

This query displays students whose Mathematics score is greater than 80.

---

## Query 7: Update Student Grade

### SQL Query

```sql
UPDATE Students
SET Grade = 'A'
WHERE StudentID = 3;
```

### Verification Query

```sql
SELECT *
FROM Students
WHERE StudentID = 3;
```


### Explanation

This query updates the grade of a student and verifies the updated record.

---

## Conclusion

A Student Management Database was successfully created using MySQL. SQL operations such as CREATE, INSERT, SELECT, UPDATE, AVG(), COUNT(), GROUP BY, ORDER BY, and WHERE were used to manage and analyze student data. This project demonstrates fundamental database management and data analysis skills required for SQL and Data Analytics roles.

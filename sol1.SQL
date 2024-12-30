-- SOL1.1
-- INNER JOIN
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
INNER JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id;

-- SOL1.2
-- LEFT INCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
LEFT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id;

-- SOL1.3
-- RIGHT INCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
RIGHT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id

-- SOL1.4
-- LEFT EXCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
LEFT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;

-- SOL1.5
-- RIGHT EXCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
RIGHT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;

-- SOL1.6
-- FULL JOIN
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
FULL JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id;

-- SOL1.7
-- FULL EXCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
FULL JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL OR Lecturers.lecturer_id;

-- SOL1.8
SELECT Lecturers.name, Lecturers.lecturer_id
FROM Lecturers
WHERE Lecturers.name LIKE '%i%';

-- SOL1.9
SELECT COUNT(*) AS Count_Lectueres
FROM Lecturers;

-- SOL1.10
SELECT COUNT(*) AS Count_Courses
FROM Courses;

-- SOL1.11
ALTER TABLE Courses ADD COLUMN weekly_hours;

UPDATE Courses
SET weekly_hours = CASE
    WHEN RANDOM() < 0.33 THEN 4
    WHEN RANDOM() < 0.66 THEN 6
    ELSE 8
END;

-- SOL1.12
-- GROUP BY
SELECT Courses.*, count(*) as Count_Show
FROM Courses
GROUP by weekly_hours;

-- SOL1.13
SELECT  Lecturers.name
FROM Courses
INNER JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.weekly_hours = 8;

-- SOL1.14
DELETE FROM Courses
WHERE weekly_hours = 4
AND lecturer_id IS NULL;
-- Will erase course_id = 8






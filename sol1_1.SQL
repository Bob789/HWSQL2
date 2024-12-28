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
-- NOT WORKING I DON'T UNDERSTAND
SELECT Courses.*, Lecturers.*
FROM Courses
RIGHT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
DELETE FROM Courses
WHERE Lecturers.lecturer_id IS NULL AND Courses.weekly_hours = 4;

-- +-----------+-------------------------+-------------+--------------+
-- | course_id | course_name             | lecturer_id | weekly_hours |
-- +-----------+-------------------------+-------------+--------------+
-- |     3     | Chemistry               |     3       |      8       | -- Chemistry is taught by lecturer ID 3 with 8 weekly hours.
-- |     6     | Sociology               |    10       |      8       | -- Sociology is taught by lecturer ID 10 with 8 weekly hours.
-- |     9     | Philosophy              |     8       |      8       | -- Philosophy is taught by lecturer ID 8 with 8 weekly hours.
-- |    11     | Computer Science        |     5       |      8       | -- Computer Science is taught by lecturer ID 5 with 8 weekly hours.
-- |    12     | Statistics              |     6       |      8       | -- Statistics is taught by lecturer ID 6 with 8 weekly hours.
-- |     7     | Art History             |             |      6       | -- Art History has no assigned lecturer and has 6 weekly hours.
-- |    10     | Environmental Studies   |             |      6       | -- Environmental Studies has no assigned lecturer and has 6 weekly hours.
-- |    13     | Psychology              |     9       |      6       | -- Psychology is taught by lecturer ID 9 with 6 weekly hours.
-- |     1     | Mathematics             |     1       |      4       | -- Mathematics is taught by lecturer ID 1 with 4 weekly hours.
-- |     2     | Physics                 |     2       |      4       | -- Physics is taught by lecturer ID 2 with 4 weekly hours.
-- |     4     | Economics               |     7       |      4       | -- Economics is taught by lecturer ID 7 with 4 weekly hours.
-- |     5     | Biology                 |     4       |      4       | -- Biology is taught by lecturer ID 4 with 4 weekly hours.
-- |     8     | Music Theory            |             |      4       | -- Music Theory has no assigned lecturer and has 4 weekly hours.
-- +-----------+-------------------------+-------------+--------------+





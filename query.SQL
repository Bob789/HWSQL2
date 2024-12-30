-- FULL JOIN
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
FULL JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id;

-- +-----------+-----------------------+-------------+-------------------+-------------+
-- | course_id | course_name           | lecturer_id | lecturer_name     | lecturer_id |
-- +-----------+-----------------------+-------------+-------------------+-------------+
-- |     1     | Mathematics           |     1       | John Smith        |     1       | -- Mathematics course is taught by John Smith.
-- |     2     | Physics               |     2       | Emily Johnson     |     2       | -- Physics course is taught by Emily Johnson.
-- |     3     | Chemistry             |     3       | Michael Brown     |     3       | -- Chemistry course is taught by Michael Brown.
-- |     4     | Economics             |     7       | Daniel Moore      |     7       | -- Economics course is taught by Daniel Moore.
-- |     5     | Biology               |     4       | Sarah Davis       |     4       | -- Biology course is taught by Sarah Davis.
-- |     6     | Sociology             |    10       | Sophia Martinez   |    10       | -- Sociology course is taught by Sophia Martinez.
-- |     7     | Art History           |             |                   |             | -- Art History course has no assigned lecturer.
-- |     8     | Music Theory          |             |                   |             | -- Music Theory course has no assigned lecturer.
-- |     9     | Philosophy            |     8       | Emma Anderson     |     8       | -- Philosophy course is taught by Emma Anderson.
-- |    10     | Environmental Studies |             |                   |             | -- Environmental Studies course has no assigned lecturer.
-- |    11     | Computer Science      |     5       | David Wilson      |     5       | -- Computer Science course is taught by David Wilson.
-- |    12     | Statistics            |     6       | Jessica Taylor    |     6       | -- Statistics course is taught by Jessica Taylor.
-- |    13     | Psychology            |     9       | Chris Thomas      |     9       | -- Psychology course is taught by Chris Thomas.
-- +-----------+-----------------------+-------------+-------------------+-------------+


-- LEFT INCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
LEFT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id;

-- +-----------+-----------------------+-------------+-------------------+-------------+
-- | course_id | course_name           | lecturer_id | lecturer_name     | lecturer_id |
-- +-----------+-----------------------+-------------+-------------------+-------------+
-- |     1     | Mathematics           |     1       | John Smith        |     1       | -- Mathematics course is taught by John Smith.
-- |     2     | Physics               |     2       | Emily Johnson     |     2       | -- Physics course is taught by Emily Johnson.
-- |     3     | Chemistry             |     3       | Michael Brown     |     3       | -- Chemistry course is taught by Michael Brown.
-- |     4     | Economics             |     7       | Daniel Moore      |     7       | -- Economics course is taught by Daniel Moore.
-- |     5     | Biology               |     4       | Sarah Davis       |     4       | -- Biology course is taught by Sarah Davis.
-- |     6     | Sociology             |    10       | Sophia Martinez   |    10       | -- Sociology course is taught by Sophia Martinez.
-- |     7     | Art History           |             |                   |             | -- Art History course has no assigned lecturer.
-- |     8     | Music Theory          |             |                   |             | -- Music Theory course has no assigned lecturer.
-- |     9     | Philosophy            |     8       | Emma Anderson     |     8       | -- Philosophy course is taught by Emma Anderson.
-- |    10     | Environmental Studies |             |                   |             | -- Environmental Studies course has no assigned lecturer.
-- |    11     | Computer Science      |     5       | David Wilson      |     5       | -- Computer Science course is taught by David Wilson.
-- |    12     | Statistics            |     6       | Jessica Taylor    |     6       | -- Statistics course is taught by Jessica Taylor.
-- |    13     | Psychology            |     9       | Chris Thomas      |     9       | -- Psychology course is taught by Chris Thomas.
-- +-----------+-----------------------+-------------+-------------------+-------------+


-- LEFT EXCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
LEFT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;

-- +-----------+-----------------------+-------------+-------------------+-------------+
-- | course_id | course_name           | lecturer_id | lecturer_name     | lecturer_id |
-- +-----------+-----------------------+-------------+-------------------+-------------+
-- |     7     | Art History           |             |                   |             | -- Art History course has no assigned lecturer.
-- |     8     | Music Theory          |             |                   |             | -- Music Theory course has no assigned lecturer.
-- |    10     | Environmental Studies |             |                   |             | -- Environmental Studies course has no assigned lecturer.
-- +-----------+-----------------------+-------------+-------------------+-------------+


-- RIGHT INCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
RIGHT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id

-- +-----------+-------------------+-------------+-------------------+-------------+
-- | course_id | course_name       | lecturer_id | lecturer_name     | lecturer_id |
-- +-----------+-------------------+-------------+-------------------+-------------+
-- |     1     | Mathematics       |     1       | John Smith        |     1       | -- Mathematics course is taught by John Smith.
-- |     2     | Physics           |     2       | Emily Johnson     |     2       | -- Physics course is taught by Emily Johnson.
-- |     3     | Chemistry         |     3       | Michael Brown     |     3       | -- Chemistry course is taught by Michael Brown.
-- |     4     | Economics         |     7       | Daniel Moore      |     7       | -- Economics course is taught by Daniel Moore.
-- |     5     | Biology           |     4       | Sarah Davis       |     4       | -- Biology course is taught by Sarah Davis.
-- |     6     | Sociology         |    10       | Sophia Martinez   |    10       | -- Sociology course is taught by Sophia Martinez.
-- |     9     | Philosophy        |     8       | Emma Anderson     |     8       | -- Philosophy course is taught by Emma Anderson.
-- |    11     | Computer Science  |     5       | David Wilson      |     5       | -- Computer Science course is taught by David Wilson.
-- |    12     | Statistics        |     6       | Jessica Taylor    |     6       | -- Statistics course is taught by Jessica Taylor.
-- |    13     | Psychology        |     9       | Chris Thomas      |     9       | -- Psychology course is taught by Chris Thomas.
-- +-----------+-------------------+-------------+-------------------+-------------+

-- RIGHT EXCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
RIGHT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;

-- INNER JOIN
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
INNER JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id;
-- +-----------+-------------------+-------------+-------------------+-------------+
-- | course_id | course_name       | lecturer_id | lecturer_name     | lecturer_id |
-- +-----------+-------------------+-------------+-------------------+-------------+
-- |     1     | Mathematics       |     1       | John Smith        |     1       | -- Mathematics course is taught by John Smith.
-- |     2     | Physics           |     2       | Emily Johnson     |     2       | -- Physics course is taught by Emily Johnson.
-- |     3     | Chemistry         |     3       | Michael Brown     |     3       | -- Chemistry course is taught by Michael Brown.
-- |     4     | Economics         |     7       | Daniel Moore      |     7       | -- Economics course is taught by Daniel Moore.
-- |     5     | Biology           |     4       | Sarah Davis       |     4       | -- Biology course is taught by Sarah Davis.
-- |     6     | Sociology         |    10       | Sophia Martinez   |    10       | -- Sociology course is taught by Sophia Martinez.
-- |     9     | Philosophy        |     8       | Emma Anderson     |     8       | -- Philosophy course is taught by Emma Anderson.
-- |    11     | Computer Science  |     5       | David Wilson      |     5       | -- Computer Science course is taught by David Wilson.
-- |    12     | Statistics        |     6       | Jessica Taylor    |     6       | -- Statistics course is taught by Jessica Taylor.
-- |    13     | Psychology         |     9       | Chris Thomas      |     9       | -- Psychology course is taught by Chris Thomas.
-- +-----------+-------------------+-------------+-------------------+-------------+

-- FULL EXCLUSIVE
SELECT Courses.course_id, Courses.name , Courses.lecturer_id, Lecturers.name, Lecturers.lecturer_id
FROM Courses
FULL JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL OR Lecturers.lecturer_id;
-- +-----------+-----------------------+-------------+-------------------+-------------+
-- | course_id | course_name           | lecturer_id | lecturer_name     | lecturer_id |
-- +-----------+-----------------------+-------------+-------------------+-------------+
-- |     7     | Art History           |             |                   |             | -- Art History course has no assigned lecturer.
-- |     8     | Music Theory          |             |                   |             | -- Music Theory course has no assigned lecturer.
-- |    10     | Environmental Studies |             |                   |             | -- Environmental Studies course has no assigned lecturer.
-- +-----------+-----------------------+-------------+-------------------+-------------+

-- GROUP BY
SELECT Courses.*, count(*) as Count_Show
FROM Courses
GROUP by weekly_hours;

-- +-----------+-------------------+-------------+--------------+------------+
-- | course_id | course_name       | lecturer_id | weekly_hours | Count_Show |
-- +-----------+-------------------+-------------+--------------+------------+
-- |     1     | Mathematics       |     1       |      4       |     5      | -- Mathematics course is taught by lecturer ID 1, with 4 weekly hours, shown 5 times.
-- |     7     | Art History       |             |      6       |     3      | -- Art History course has no assigned lecturer, with 6 weekly hours, shown 3 times.
-- |     3     | Chemistry         |     3       |      8       |     5      | -- Chemistry course is taught by lecturer ID 3, with 8 weekly hours, shown 5 times.
-- +-----------+-------------------+-------------+--------------+------------+
-----------------------------------------------


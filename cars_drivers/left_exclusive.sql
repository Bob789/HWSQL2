SELECT  Drivers.driver_id AS Driver_Id, Drivers.name AS Name, Cars.car_id AS Car_Id, Cars.model AS Model, Cars.color AS Color
FROM Drivers
LEFT JOIN Cars
ON Cars.car_id = Drivers.car_id
WHERE Drivers.car_id IS NULL;

-- +-----------+--------+--------+-----------+-------+
-- | driver_id | name   | car_id | model     | color |
-- +-----------+--------+--------+-----------+-------+
-- |     2     | Bob    |        |           |       |-- Bob has no additional information or car assigned.
-- |     5     | Eve    |        |           |       |-- Eve has no additional information or car assigned.
-- |     8     | Hannah |        |           |       |-- Hannah has no additional information or car assigned.
-- +-----------+--------+--------+-----------+-------+


SELECT Drivers.driver_id AS Driver_Id, Drivers.name AS Driver_Name, Cars.car_id AS Car_Id, Cars.model AS car_model, Cars.color AS car_color
FROM Drivers
RIGHT JOIN cars
ON drivers.car_id = cars.car_id
WHERE Drivers.car_id IS NULL;

-- +-----------+-------------+--------+-----------+-----------+
-- | Driver_Id | Driver_Name | Car_Id | car_model | car_color |
-- +-----------+-------------+--------+-----------+-----------+
-- |           |             |   8    | Tesla     | Green     | -- Tesla is available in green color, no driver assigned.
-- |           |             |   9    | Hyundai   | Purple    | -- Hyundai is available in purple color, no driver assigned.
-- |           |             |  10    | Kia       | Orange    | -- Kia is available in orange color, no driver assigned.
-- +-----------+-------------+--------+-----------+-----------+

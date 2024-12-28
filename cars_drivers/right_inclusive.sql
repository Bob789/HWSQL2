SELECT  Drivers.driver_id AS Driver_Id, Drivers.name AS Name, Cars.car_id AS Car_Id, Cars.model AS Model, Cars.color AS Color
FROM Drivers
RIGHT JOIN cars
ON drivers.car_id = cars.car_id

-- +-----------+---------+--------+-----------+--------+
-- | Driver_Id | Name    | Car_Id | Model     | Color  |
-- +-----------+---------+--------+-----------+--------+
-- |     1     | Alice   |   1    | Toyota    | Red    | -- Alice drives a Toyota, red color.
-- |     3     | Charlie |   2    | Honda     | Blue   | -- Charlie drives a Honda, blue color.
-- |     4     | David   |   3    | Ford      | Black  | -- David drives a Ford, black color.
-- |     6     | Frank   |   4    | BMW       | White  | -- Frank drives a BMW, white color.
-- |     7     | Grace   |   5    | Audi      | Silver | -- Grace drives an Audi, silver color.
-- |     9     | Ian     |   6    | Mercedes  | Gray   | -- Ian drives a Mercedes, gray color.
-- |    10     | Jack    |   7    | Chevrolet | Yellow | -- Jack drives a Chevrolet, yellow color.
-- |           |         |   8    | Tesla     | Green  | -- Tesla is available in green color, no driver assigned.
-- |           |         |   9    | Hyundai   | Purple | -- Hyundai is available in purple color, no driver assigned.
-- |           |         |  10    | Kia       | Orange | -- Kia is available in orange color, no driver assigned.
-- +-----------+---------+--------+-----------+--------+

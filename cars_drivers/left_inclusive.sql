SELECT  Drivers.driver_id AS Driver_Id, Drivers.name AS Name, Cars.car_id AS Car_Id, Cars.model AS Model, Cars.color AS Color
FROM Drivers
LEFT JOIN Cars
ON Cars.car_id = Drivers.car_id;

-- +----+---------+----+-----------+--------+
-- | ID | Name    | ID | Model     | Color  |
-- +----+---------+----+-----------+--------+
-- | 1  | Alice   | 1  | Toyota    | Red    | -- Alice drives a Toyota, red color.
-- | 2  | Bob     |    |           |        | -- Bob has no car assigned.
-- | 3  | Charlie | 2  | Honda     | Blue   | -- Charlie drives a Honda, blue color.
-- | 4  | David   | 3  | Ford      | Black  | -- David drives a Ford, black color.
-- | 5  | Eve     |    |           |        | -- Eve has no car assigned.
-- | 6  | Frank   | 4  | BMW       | White  | -- Frank drives a BMW, white color.
-- | 7  | Grace   | 5  | Audi      | Silver | -- Grace drives an Audi, silver color.
-- | 8  | Hannah  |    |           |        | -- Hannah has no car assigned.
-- | 9  | Ian     | 6  | Mercedes  | Gray   | -- Ian drives a Mercedes, gray color.
-- | 10 | Jack    | 7  | Chevrolet | Yellow | -- Jack drives a Chevrolet, yellow color.
-- +----+---------+----+-----------+--------+



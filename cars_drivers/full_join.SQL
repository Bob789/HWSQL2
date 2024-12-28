SELECT Drivers.*, Cars.model AS car_model, Cars.color AS car_color
FROM Drivers
FULL JOIN cars
ON drivers.car_id = cars.car_id

-- +----+---------+-----+----+-----------+--------+
-- | ID | Name    | Age | ID | Model     | Color  |
-- +----+---------+-----+----+-----------+--------+
-- | 1  | Alice   | 30  | 1  | Toyota    | Red    |
-- | 2  | Bob     | 45  |    |           |        |
-- | 3  | Charlie | 27  | 2  | Honda     | Blue   |
-- | 4  | David   | 50  | 3  | Ford      | Black  |
-- | 5  | Eve     | 22  |    |           |        |
-- | 6  | Frank   | 33  | 4  | BMW       | White  |
-- | 7  | Grace   | 29  | 5  | Audi      | Silver |
-- | 8  | Hannah  | 40  |    |           |        |
-- | 9  | Ian     | 35  | 6  | Mercedes  | Gray   |
-- | 10 | Jack    | 28  | 7  | Chevrolet | Yellow |
-- |    |         |     |    | Tesla     | Green  |
-- |    |         |     |    | Hyundai   | Purple |
-- |    |         |     |    | Kia       | Orange |
-- +----+---------+-----+----+-----------+--------+

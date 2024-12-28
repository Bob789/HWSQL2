select drivers.*,
		cars.model as car_model,
		cars.color as car_color
from drivers
full join cars ON drivers.car_id = cars.car_id
where drivers.driver_id is null or cars.car_id is null;

-- +-----------+--------+-----+--------+-----------+-----------+
-- | driver_id | name   | age | car_id | car_model | car_color |
-- +-----------+--------+-----+--------+-----------+-----------+
-- |     2     | Bob    | 45  |        |           |           | -- Bob has no car assigned.
-- |     5     | Eve    | 22  |        |           |           | -- Eve has no car assigned.
-- |     8     | Hannah | 40  |        |           |           | -- Hannah has no car assigned.
-- |           |        |     |   8    | Tesla     | Green     | -- Tesla is available in green color, no driver assigned.
-- |           |        |     |   9    | Hyundai   | Purple    | -- Hyundai is available in purple color, no driver assigned.
-- |           |        |     |  10    | Kia       | Orange    | -- Kia is available in orange color, no driver assigned.
-- +-----------+--------+-----+--------+-----------+-----------+

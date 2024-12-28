SELECT Cars.*, Drivers.name
FROM Cars
INNER JOIN Drivers
ON Cars.car_id = Drivers.car_id
ORDER BY Cars.car_id DESC;-- ASC/

-- +------+------------+--------+---------+
-- | car_id | model     | color  | name    |
-- +------+------------+--------+---------+
-- | -- 7 -- | -- Chevrolet -- | -- Yellow -- | -- Jack -- |
-- | -- 6 -- | -- Mercedes --   | -- Gray --   | -- Ian --  |
-- | -- 5 -- | -- Audi --        | -- Silver -- | -- Grace --|
-- | -- 4 -- | -- BMW --         | -- White --  | -- Frank --|
-- | -- 3 -- | -- Ford --        | -- Black --  | -- David --|
-- | -- 2 -- | -- Honda --       | -- Blue --   | -- Charlie--|
-- | -- 1 -- | -- Toyota --      | -- Red --    | -- Alice -- |
-- +------+------------+--------+---------+


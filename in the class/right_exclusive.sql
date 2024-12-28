SELECT Drivers.*, Cars.car_id AS Car_Id, Cars.model AS car_model, Cars.color AS car_color
FROM Drivers
RIGHT JOIN cars
ON drivers.car_id = cars.car_id
WHERE Drivers.driver_id IS NULL;
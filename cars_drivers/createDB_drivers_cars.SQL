CREATE TABLE Cars (
    car_id INTEGER PRIMARY KEY,
    model TEXT NOT NULL,
    color TEXT
);

CREATE TABLE Drivers (
    driver_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
	car_id INTEGER UNIQUE, -- 1:1 without unique 1:n
	FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

INSERT INTO Cars (car_id, model, color) VALUES
(1, 'Toyota', 'Red'),
(2, 'Honda', 'Blue'),
(3, 'Ford', 'Black'),
(4, 'BMW', 'White'),
(5, 'Audi', 'Silver'),
(6, 'Mercedes', 'Gray'),
(7, 'Chevrolet', 'Yellow'),
(8, 'Tesla', 'Green'),
(9, 'Hyundai', 'Purple'),
(10, 'Kia', 'Orange');

INSERT INTO Drivers (driver_id, name, age, car_id) VALUES
(1, 'Alice', 30, 1),
(2, 'Bob', 45, NULL),
(3, 'Charlie', 27, 2),
(4, 'David', 50, 3),
(5, 'Eve', 22, NULL),
(6, 'Frank', 33, 4),
(7, 'Grace', 29, 5),
(8, 'Hannah', 40, NULL),
(9, 'Ian', 35, 6),
(10, 'Jack', 28, 7);

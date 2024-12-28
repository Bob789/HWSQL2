CREATE TABLE Departments (
    department_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    building TEXT NOT NULL,
    budget INTEGER DEFAULT 100000
);

CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    salary REAL NOT NULL,
    seniority INTEGER NOT NULL,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Departments (name, building, budget) VALUES 
('Human Resources', 'Building A', 120000),
('IT', 'Building B', 200000),
('Finance', 'Building C', 150000),
('Marketing', 'Building A', 100000),
('Operations', 'Building C', 180000);

INSERT INTO Employees (name, email, salary, seniority, department_id) VALUES 
-- Employees with a valid department_id
('John Smith', 'john.smith@example.com', 50000, 5, 1),
('Emily Johnson', 'emily.johnson@example.com', 60000, 6, 2),
('Michael Brown', 'michael.brown@example.com', 55000, 4, 3),
('Sarah Davis', 'sarah.davis@example.com', 62000, 7, 1),
('David Wilson', 'david.wilson@example.com', 58000, 3, 4),
('Jessica Taylor', 'jessica.taylor@example.com', 49000, 2, 5),
('Daniel Moore', 'daniel.moore@example.com', 61000, 8, 2),
('Emma Anderson', 'emma.anderson@example.com', 53000, 5, 4),
('Chris Thomas', 'chris.thomas@example.com', 52000, 4, 3),
('Sophia Martinez', 'sophia.martinez@example.com', 60000, 6, 1),
('Anna White', 'anna.white@example.com', 51000, 3, 2),
('Robert Green', 'robert.green@example.com', 56000, 4, 4),
('Alice Black', 'alice.black@example.com', 59000, 5, 3),
('Steven Gray', 'steven.gray@example.com', 65000, 7, 1),
('Megan Brown', 'megan.brown@example.com', 47000, 2, 5),
('Laura Blue', 'laura.blue@example.com', 48000, 3, NULL),
('George White', 'george.white@example.com', 52000, 4, NULL),
('Thomas Red', 'thomas.red@example.com', 55000, 5, NULL),
('Lily Green', 'lily.green@example.com', 50000, 2, NULL),
('Jacob Black', 'jacob.black@example.com', 53000, 4, NULL),
('Eleanor Gray', 'eleanor.gray@example.com', 54000, 3, NULL),
('Henry Gold', 'henry.gold@example.com', 62000, 6, NULL),
('Sophia Blue', 'sophia.blue@example.com', 57000, 5, NULL),
('James Pink', 'james.pink@example.com', 51000, 2, NULL),
('Olivia Violet', 'olivia.violet@example.com', 60000, 6, 3),
('Mason Silver', 'mason.silver@example.com', 58000, 4, 2),
('Lucas Brown', 'lucas.brown@example.com', 54000, 3, 5),
('Isabella Gold', 'isabella.gold@example.com', 59000, 5, 1),
('Charlotte Green', 'charlotte.green@example.com', 61000, 7, 4),
('Amelia Purple', 'amelia.purple@example.com', 48000, 2, 2);



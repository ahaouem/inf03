CREATE DATABASE db; 
USE db;

CREATE TABLE Restaurant (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100),
    address VARCHAR(255),
    postcode VARCHAR(10),
    PRIMARY KEY (id)
);

CREATE TABLE Meal_Type (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE Meal (
    id INT NOT NULL AUTO_INCREMENT,
    meal_type_id INT,
    restaurant_id INT,
    price INT,
    meal_name VARCHAR(100),
    PRIMARY KEY (id),
    FOREIGN KEY (meal_type_id) REFERENCES Meal_Type (id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant (id)
);

CREATE TABLE Employee_Position (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE Employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    personal_id_number VARCHAR(11),
    PRIMARY KEY (id)
);

CREATE TABLE Employment (
    id INT NOT NULL AUTO_INCREMENT,
    employee_id INT,
    employee_position_id INT,
    restaurant_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (employee_id) REFERENCES Employee (id),
    FOREIGN KEY (employee_position_id) REFERENCES Employee_position (id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant (id)
);

CREATE TABLE Restaurant_Table (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    number_of_guests INT,
    restaurant_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant (id)
);

CREATE TABLE Reservation (
    id INT NOT NULL AUTO_INCREMENT,
    restaurant_table_id INT,
    phone_number VARCHAR(12),
    date DATE,
    number_of_guests INT,
    PRIMARY KEY (id),
    FOREIGN KEY (restaurant_table_id) REFERENCES Restaurant_Table (id)
);
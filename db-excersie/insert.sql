INSERT INTO Restaurant (name, city, address, postcode)
VALUES 
    ('Bella Italia', 'Rome', 'Via Roma 123', '00100'),
    ('Sakura Sushi', 'Tokyo', 'Shibuya 678', '150-0002'),
    ('La Bonne Table', 'Paris', '12 Rue de Rivoli', '75001'),
    ('The Green Garden', 'London', '221B Baker St', 'NW16XE'),
    ('El Asador', 'Madrid', 'Calle Mayor 45', '28013'),
    ('Biergarten', 'Berlin', 'Unter den Linden 99', '10117'),
    ('The Spice Route', 'Mumbai', 'Marine Drive 87', '400020'),
    ('Golden Pavilion', 'Beijing', 'Tiananmen Square 1', '100006'),
    ('The Maple Leaf', 'Toronto', '123 Queen St W', 'M5H 2M9'),
    ('Outback Grill', 'Sydney', '456 George St', '2000');

INSERT INTO Meal_Type (name)
VALUES 
    ('Appetizer'),
    ('Main Course'),
    ('Dessert'),
    ('Beverage'),
    ('Salad'),
    ('Soup'),
    ('Side Dish'),
    ('Snack'),
    ('Specialty'),
    ('Breakfast');

INSERT INTO Meal (meal_type_id, restaurant_id, price, meal_name)
VALUES 
    (1, 1, 10, 'Bruschetta al Pomodoro'),
    (2, 1, 30, 'Lasagna Bolognese'),
    (3, 1, 8, 'Tiramisu'),
    (4, 2, 5, 'Matcha Tea'),
    (2, 2, 25, 'Sashimi Platter'),
    (3, 2, 7, 'Mochi Ice Cream'),
    (1, 3, 12, 'Escargot'),
    (2, 3, 35, 'Beef Bourguignon'),
    (4, 3, 6, 'Chardonnay Wine'),
    (2, 4, 28, 'Vegan Burger'),
    (3, 4, 9, 'Chocolate Mousse'),
    (1, 5, 15, 'Guacamole and Chips'),
    (2, 5, 22, 'Paella Valenciana'),
    (3, 5, 10, 'Flan'),
    (2, 6, 18, 'Wurst Platter'),
    (1, 6, 8, 'Pretzel'),
    (2, 7, 20, 'Butter Chicken'),
    (1, 8, 12, 'Kung Pao Chicken'),
    (3, 9, 5, 'Maple Syrup Pancakes'),
    (2, 10, 27, 'BBQ Ribs');

INSERT INTO Employee_Position (name)
VALUES 
    ('Head Chef'),
    ('Sous Chef'),
    ('Server'),
    ('Barista'),
    ('Bartender'),
    ('Restaurant Manager'),
    ('Host/Hostess'),
    ('Dishwasher'),
    ('Food Runner'),
    ('Prep Cook');

INSERT INTO Employee (first_name, last_name, personal_id_number)
VALUES 
    ('Marco', 'Conti', '98765432109'),
    ('Haruki', 'Watanabe', '12345678910'),
    ('Chloe', 'Benoit', '45678912302'),
    ('Liam', 'Johnson', '78912345600'),
    ('Sofia', 'Lopez', '23456789012'),
    ('Jasper', 'Müller', '32165498765'),
    ('Priya', 'Sharma', '65498732145'),
    ('Ling', 'Zhao', '12378945601'),
    ('Isabella', 'Garcia', '78932165498'),
    ('Noah', 'Lee', '45612378907');

INSERT INTO Employment (employee_id, employee_position_id, restaurant_id)
VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6),
    (7, 7, 7),
    (8, 8, 8),
    (9, 9, 9),
    (10, 10, 10),
    (1, 1, 2),
    (2, 3, 3),
    (3, 5, 4),
    (4, 6, 5),
    (5, 8, 6),
    (6, 9, 7),
    (7, 10, 8),
    (8, 1, 9),
    (9, 2, 10),
    (10, 3, 1);

INSERT INTO Restaurant_Table (name, number_of_guests, restaurant_id)
VALUES 
    ('Table A', 4, 1),
    ('Table B', 6, 1),
    ('Table C', 2, 2),
    ('Table D', 8, 3),
    ('Table E', 5, 4),
    ('Table F', 10, 5),
    ('Table G', 3, 6),
    ('Table H', 7, 7),
    ('Table I', 4, 8),
    ('Table J', 6, 9),
    ('Table K', 8, 10),
    ('Table L', 2, 1),
    ('Table M', 4, 2),
    ('Table N', 5, 3),
    ('Table O', 6, 4);

INSERT INTO Reservation (restaurant_table_id, phone_number, date, number_of_guests)
VALUES 
    (1, '123456789', '2024-10-20', 4),
    (2, '111222333', '2024-10-21', 6),
    (3, '444555666', '2024-10-22', 2),
    (4, '777888999', '2024-10-23', 8),
    (5, '000000000', '2024-10-24', 5),
    (6, '5550001111', '2024-10-25', 10),
    (7, '5552223333', '2024-10-26', 3),
    (8, '5554445555', '2024-10-27', 7),
    (9, '5556667777', '2024-10-28', 4),
    (10, '5558887777', '2024-10-29', 6),
    (11, '5559998888', '2024-10-30', 8),
    (12, '5551114444', '2024-10-31', 2),
    (13, '5552225555', '2024-11-01', 4),
    (14, '5553336666', '2024-11-02', 5),
    (15, '5554447777', '2024-11-03', 6);
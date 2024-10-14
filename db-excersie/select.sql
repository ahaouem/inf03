use db;

SELECT *
FROM Reservation;

SELECT rt.*
FROM Restaurant_Table rt
LEFT JOIN Reservation r ON rt.id = r.restaurant_table_id
WHERE r.id IS NULL;

SELECT rt.*
FROM Restaurant_Table rt
LEFT JOIN Restaurant r ON rt.restaurant_id = r.id
WHERE r.id = 1;

SELECT e.first_name, e.last_name, 
       ep.name AS position, 
       r.name AS restaurant_name
FROM Employee e
LEFT JOIN Employment em ON e.id = em.employee_id
LEFT JOIN Employee_Position ep ON em.employee_position_id = ep.id
LEFT JOIN Restaurant r ON em.restaurant_id = r.id;

SELECT e.*
FROM Employee e
LEFT JOIN Employment em ON e.id = em.employee_id
WHERE em.id IS NULL;

SELECT e.first_name, e.last_name, COUNT(DISTINCT em.restaurant_id) AS restaurant_count
FROM Employee e
JOIN Employment em ON e.id = em.employee_id
GROUP BY e.id
HAVING restaurant_count >= 2;

SELECT r.name AS restaurant_name, 
       r.city AS restaurant_city, 
       e.first_name, 
       e.last_name
FROM Restaurant r
CROSS JOIN Employee e;
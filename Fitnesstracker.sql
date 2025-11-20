CREATE DATABASE fitness_tracker;
USE fitness_tracker;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT
);

CREATE TABLE fitness_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    log_date DATE,
    steps INT,
    water_liters FLOAT,
    calories_burned INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users (name, age) VALUES
('Riya', 20),
('Aman', 22);

INSERT INTO fitness_log (user_id, log_date, steps, water_liters, calories_burned) VALUES
(1, '2025-01-01', 5500, 2.0, 250),
(1, '2025-01-02', 7000, 2.5, 300),
(2, '2025-01-02', 4000, 1.5, 180);

SELECT u.name, log_date, steps, water_liters, calories_burned
FROM fitness_log f
JOIN users u ON f.user_id = u.user_id;

SELECT u.name, AVG(steps) AS avg_steps
FROM fitness_log f
JOIN users u ON f.user_id = u.user_id
GROUP BY u.user_id;

SELECT u.name, SUM(calories_burned) AS total_calories
FROM fitness_log f
JOIN users u ON f.user_id = u.user_id
GROUP BY u.user_id;

UPDATE fitness_log
SET steps = 8000
WHERE log_id = 1;

DELETE FROM fitness_log
WHERE log_id = 3;

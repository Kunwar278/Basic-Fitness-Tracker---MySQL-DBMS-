Basic Fitness Tracker – MySQL Project

The Basic Fitness Tracker is a simple and beginner-friendly database project designed to store and track daily fitness activities like steps walked, water intake, and calories burned.
It uses MySQL and demonstrates basic DBMS concepts such as tables, keys, relationships, and SQL queries.

🚀 Features

Store user information

Log daily fitness activities

Track steps, water intake, and calories burned

Generate helpful insights like:

Average steps per user

Total calories burned

Simple and clean database structure (perfect for beginners)

🗄️ Database Structure
1. users
Column	Type	Description
user_id	INT (PK)	Unique ID for each user
name	VARCHAR(100)	User’s name
age	INT	User’s age
2. fitness_log
Column	Type	Description
log_id	INT (PK)	Unique ID for each log  
user_id	INT (FK)	Links log to user
log_date	DATE	Date of entry        
steps	INT	Number of steps walked
water_liters	FLOAT	Water intake (liters)
calories_burned	INT	Calories burned

Relationship:
One user → Many fitness_log entries
Some Sample Queries to try are:
1.
SELECT * FROM users;
SELECT * FROM fitness_log;

2.
SELECT name, AVG(steps) FROM users
JOIN fitness_log USING (user_id)
GROUP BY user_id;

3.
    SELECT name, SUM(calories_burned) FROM users
JOIN fitness_log USING (user_id)
GROUP BY user_id;



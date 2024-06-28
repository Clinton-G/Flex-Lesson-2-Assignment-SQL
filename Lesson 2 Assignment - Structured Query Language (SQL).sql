CREATE DATABASE Lesson_2_Assignment_Structured_Query_Language;
USE Lesson_2_Assignment_Structured_Query_Language;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age) VALUES
(1, 'Jane Doe', NULL);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(100, 1, '2024-06-27', '10:00 AM', 'Swimming');

UPDATE WorkoutSessions
SET session_time = '05:00 PM'
WHERE member_id = 1 AND session_date = '2024-06-27';

INSERT INTO Members (id, name, age) VALUES
(2, 'John Doe', NULL);

DELETE FROM Members
WHERE id = 2;

SELECT VERSION();
CREATE SCHEMA student_course_db;
USE student_course_db;
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL UNIQUE,
    duration_months INT NOT NULL CHECK (duration_months > 0),
    fee DECIMAL(10,2) NOT NULL CHECK (fee >= 0),
    status VARCHAR(20) DEFAULT 'Active'
);
--Day 1: Practice creating databases and tables
CREATE DATABASE TestDB;

USE TestDB;

CREATE TABLE Patients (
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Age INT,
);

INSERT INTO Patients (ID, Name, Age) VALUES
  (1, 'John Doe', 30), (2, 'Jane Doe', 25);

SELECT *
FROM Patients;

SELECT
  name,
  age
FROM Patients
WHERE age > 25;
USE EmployeeDB;

DROP TABLE IF EXISTS EmployeeInfo;
CREATE TABLE EmployeeInfo (
	EmpID int NOT NULL, 
    EmpFname varchar(255),
    EmpLname varchar(255),
    Department varchar(255),
    Project varchar(255),
    Address varchar(255),
    DOB varchar(255),
    Gender char(1),
    PRIMARY KEY(EmpID)
);

DROP TABLE IF EXISTS EmployeePosition;
CREATE TABLE EmployeePosition (
	EmpID int,
    EmpPosition varchar(255),
    DateofJoining varchar(255),
    Salary int
);
USE EmployeeDB;

TRUNCATE TABLE EmployeeInfo;
INSERT INTO EmployeeInfo(EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender)
VALUES 
(1, "Sanjay", "Mehra", "HR", "P1", "Hyderabad(HYD)", "01/12/1976", 'M'),
(2, "Ananya", "Mishra", "Admin", "P2", "Delhi(DEL)", "02/05/1968", 'F'),
(3, "Rohan", "Diwan", "Account", "P3", "Mumbai(BOM)", "01/01/1980", 'M'),
(4, "Sonia", "Kulkarni", "HR", "P1", "Hyderabad(HYD)", "02/05/1992", 'F'),
(5, "Ankit", "Kapoor", "Admin", "P2", "Delhi(DEL)", "03/07/1994", 'M');

TRUNCATE TABLE EmployeePosition;
INSERT INTO EmployeePosition (EmpID, EmpPosition, DateofJoining, Salary)
VALUES
(1, "Manager", "01/05/2022", 500000),
(2, "Executive", "02/05/2022", 75000),
(3, "Manager", "01/05/2022", 90000),
(2, "Lead", "02/05/2022", 85000),
(1, "Executive", "01/05/2022", 300000);
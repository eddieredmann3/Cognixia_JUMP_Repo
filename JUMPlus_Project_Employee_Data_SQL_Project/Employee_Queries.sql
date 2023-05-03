USE EmployeeDB;

-- #1
SELECT UPPER(EmpFName) AS EmpName FROM EmployeeInfo;

-- #2
SELECT count(EmpID) AS "HREmployees" FROM EmployeeInfo WHERE department = "HR";

-- #3
SELECT current_date();

-- #4
SELECT substring(EmpLName, 1, 4) as "NameCode" FROM EmployeeInfo;

-- #5
SELECT LEFT(Address, LOCATE('(', Address) - 1) FROM EmployeeInfo;

-- #6
CREATE TABLE IF NOT EXISTS Employee_Info_Duplicate SELECT * FROM EmployeeInfo;

-- #7
SELECT * FROM EmployeePosition WHERE (Salary > 50000) AND (Salary < 100000);

-- #8
SELECT *, substring(EmpFName, 1, 1) FROM EmployeeInfo where (substring(EmpFName, 1, 1) = "S");

-- #9
SELECT * FROM EmployeeInfo LIMIT 3;

-- #10
SELECT CONCAT(EmpFName, " ", EmpLName) FROM EmployeeInfo;

-- #11
SELECT DATE(DOB) FROM EmployeeInfo WHERE (DATE(DOB) > DATE("05/02/1970")) AND (DATE(DOB) < DATE("12/31/1975")) GROUP BY Gender;

-- #12
SELECT * FROM EmployeeInfo ORDER BY EmpLName, Department DESC;

-- #13
SELECT *, substring(EmpLName, -1, 1), length(EmpLName) FROM EmployeeInfo where (substring(EmpLName, -1, 1) = "A") and (length(EmpLName) = 5);

-- #14
SELECT * FROM EmployeeInfo WHERE (EmpFName = "Sonia") OR (EmpFName = "Sanjay");

-- #15
SELECT * FROM EmployeeInfo WHERE (Address = "Delhi(DEL)");

-- #16
SELECT EmpID FROM EmployeePosition WHERE (EmpPosition = "Manager");

-- #17
SELECT Department, count(Department) from EmployeeInfo GROUP BY Department ORDER BY count(Department) ASC;

-- #18
SELECT * FROM EmployeeInfo WHERE (EmpID % 2 = 0);

-- #19
SELECT EmployeeInfo.*, EmployeePosition.DateofJoining FROM EmployeeInfo
INNER JOIN EmployeePosition ON EmployeeInfo.EmpID = EmployeePosition.EmpID;

-- #20
SELECT Salary FROM EmployeePosition ORDER BY Salary ASC LIMIT 2;
SELECT Salary FROM EmployeePosition ORDER BY Salary DESC LIMIT 2;

-- #21
SELECT nth_value(Salary, 3) OVER (ORDER BY Salary DESC) FROM EmployeePosition;

-- #22
SELECT *, count(EmpID) FROM EmployeePosition GROUP BY EmpID HAVING (count(EmpID) > 1);

-- #23
SELECT * FROM EmployeeInfo WHERE (Department = "HR");

-- #24
SELECT * FROM EmployeeInfo ORDER BY EmpID DESC LIMIT 3;

-- #25
SELECT nth_value(Salary, 3) OVER (ORDER BY Salary DESC) FROM EmployeePosition;

-- #26
SELECT * FROM EmployeeInfo LIMIT 1;
SELECT * FROM EmployeeInfo ORDER BY EmpID DESC LIMIT 1;

-- #27 Email Validation, regex
SELECT EmpPosition FROM EmployeePosition WHERE EmpPosition REGEXP "^.+[@].+[.].+$";

-- #28 
SELECT *, count(EmpID) FROM EmployeeInfo GROUP BY Department HAVING count(EmpID) < 2;

-- #29
SELECT EmpPosition, Salary FROM EmployeePosition;

-- #30
SELECT * FROM EmployeeInfo WHERE (EmpID % 2 = 0);
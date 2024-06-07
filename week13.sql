SELECT E.EmployeeID, E.FirstName, E.LastName
FROM Employees2 E
LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE E.DepartmentID IS NULL;

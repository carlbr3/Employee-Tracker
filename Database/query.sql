SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM manager;
SELECT * FROM employee;

--View departments
--SELECT * FROM department;

--View roles
SELECT role.id, title, salary, department.name FROM role
JOIN department on role.department_id = department.id;

--View employees

SELECT employee.id, employee.first_name AS 'Employee First Name', employee.last_name AS 'Employee Last Name', role.title, role.salary, department.name AS 'Department', CONCAT (manager.first_name, ' ', manager.last_name) AS "Manager Name"
FROM employee
INNER JOIN role ON employee.role_id = role.id
INNER JOIN department ON role.department_id = department.id
LEFT JOIN employee AS manager ON employee.manager_id = manager.id;

--Add departments
--INSERT INTO department (name) VALUES ('Sales');

--Add roles
--INSERT INTO role (title, salary, department_id) VALUES ('Sales Manager', 60000, 1);

--Add employees
--INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('John', 'Doe', 1, NULL);

--Update employee roles
--UPDATE employee set role_id = <selected role_id> WHERE employee_id = <selected employee_id/name>;

-- TODO: Test these entries
\c company_db;

INSERT INTO department (name) VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');


INSERT INTO role (title, salary, department_id) VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Lead Software Engineer', 150000, 2),
    ('Software Engineer', 120000, 2),
    ('Account Manager', 160000, 3),
    ('Accountant', 125000, 3),
    ('Legal Team Lead', 250000, 4),
    ('Lawyer', 190000, 4);

--INSERT INTO manager (first_name, last_name) VALUES
 --   ('John', 'Doe'),
  --  ('Ashley', 'Rodriguez'),
   -- ('Kunal', 'Singh'),
  --  ('Sarah', 'Lourd');

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    ('John', 'Doe', 1, NULL),
    ('Mike', 'Chan', 2, 1),
    ('Ashley', 'Rodriguez',3, NULL),
    ('Kevin', 'Tupik', 4, 2),
    ('Kunal', 'Singh', 5, NULL),
    ('Malia', 'Brown', 6, 3),
    ('Sarah', 'Lourd', 7, NULL),
    ('Tom', 'Allen', 8, 4);
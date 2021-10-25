INSERT INTO employee (name)
VALUES ('Ivanov'),
       ('Petrov'),
       ('Sidorov');

INSERT INTO project (name)
VALUES ('Project1'),
       ('Project2'),
       ('Project3');

INSERT INTO SALARIES

SELECT id, 'Lead', 50000
FROM employee
WHERE name = 'Ivanov'
UNION
SELECT id, 'Senior', 40001
FROM employee
WHERE name = 'Petrov';
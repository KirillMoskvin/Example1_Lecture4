INSERT INTO employee (name)
VALUES ('Ivanov'),
       ('Petrov'),
       ('Sidorov');

INSERT INTO project (name)
VALUES ('Project1'),
       ('Project2'),
       ('Project3');

INSERT INTO SALARIES

SELECT id, 'Lead'
FROM employee
WHERE name = 'Ivanov'
UNION
SELECT id, 'Senior'
FROM employee
WHERE name = 'Petrov';
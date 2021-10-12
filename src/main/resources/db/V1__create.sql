CREATE TABLE employee
(
    id   SERIAL  NOT NULL,
    name VARCHAR NOT NULL,
    CONSTRAINT employee_pk PRIMARY KEY (id)
);

CREATE TABLE project
(
    id   SERIAL  NOT NULL,
    name VARCHAR NOT NULL,
    CONSTRAINT project_pk PRIMARY KEY (id)
);

CREATE TABLE salaries
(
    employee_id   INT     NOT NULL REFERENCES employee (id) ON UPDATE CASCADE ON DELETE CASCADE,
    qualification VARCHAR NOT NULL,
    salary        INT     NOT NULL DEFAULT 0,
    CONSTRAINT salaries_pk PRIMARY KEY (employee_id)
);

CREATE TABLE tasks
(
    employee_id INT     NOT NULL REFERENCES employee (id) ON UPDATE CASCADE ON DELETE CASCADE,
    project_id  INT     NOT NULL REFERENCES project (id) ON UPDATE CASCADE ON DELETE CASCADE,
    task        VARCHAR NOT NULL,
    CONSTRAINT tasks_pk PRIMARY KEY (employee_id, project_id)
);
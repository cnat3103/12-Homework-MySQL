USE employeeTrackerDB;

/* Inserting 3 rows into role */
INSERT INTO department (id, name)
VALUES 
("1", "Engineering"),
("2", "Sales"),
("3", "Finance"),
("4", "Legal");

INSERT INTO role (id, title, salary, department_id)
VALUES 
("1", "Chief Technical Officer", "250000", "0"),
("2", "Senior Developer", "175000", "1"),
("3", "Sales Lead", "175000", "2"),
("4", "Sales Engineer", "135000", "2"),
("5", "Chief Financial Officer", "200000", "3"),
("6", "Internal Auditor", "80000", "3"),
("7", "Compliance Officer", "90000", "4"),
("8", "Inhouse Council", "120000", "4");

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES 
("1", "Jack", "Reacher", "1"),
("2", "Athena", "Divine", "2", "1"),
("3", "Phoebe", "Bridges", "3"),
("4", "Arwin", "Soetanto", "4", "3"),
("5", "Rachel", "Bilson", "5"),
("6", "Ronald", "McDonald", "6", "5"),
("7", "Arnold", "Heyman", "7", "8"),
("8", "Night", "Shayamalan", "8");
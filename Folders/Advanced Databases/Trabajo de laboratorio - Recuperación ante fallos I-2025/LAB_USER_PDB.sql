SHOW USER;
SHOW CON_NAME;

CREATE TABLE estudiante (
  carnet           VARCHAR2(10) PRIMARY KEY,
  nombre           VARCHAR2(50),
  apellido         VARCHAR2(50),
  email            VARCHAR2(100),
  fecha_nacimiento DATE
);

INSERT INTO estudiante VALUES ('2021001','Luis','Esquivel','luis.esquivel@ucr.ac.cr', DATE '2002-03-15');
INSERT INTO estudiante VALUES ('2021002','Ignacio','Diaz','ignacio.diaz@ucr.ac.cr', DATE '2001-07-22');
INSERT INTO estudiante VALUES ('2021003','Hugo','Pena','hugo.pena@ucr.ac.cr', DATE '2002-11-05');
INSERT INTO estudiante VALUES ('2021004','Carlos','Lobo','carlos.lobo@ucr.ac.cr', DATE '2001-01-30');
INSERT INTO estudiante VALUES ('2021005','Jessica','Lu','jessica.lu@ucr.ac.cr', DATE '2002-06-18');
COMMIT;

SELECT * FROM estudiante;

-- cambio

SELECT COUNT(*) FROM employees;

UPDATE employees
  SET salary = salary * 1.4
WHERE salary > 1000;
COMMIT;

SELECT employee_id, salary FROM employees
 WHERE salary > 1000 AND ROUND(salary/1.4,2) > 1000;
 
ALTER TABLE employees ENABLE ROW MOVEMENT;

FLASHBACK TABLE employees TO SCN 2860708;
COMMIT;

DROP TABLE employees;

SELECT object_name, original_name
  FROM recyclebin;
  
FLASHBACK TABLE employees TO BEFORE DROP;

DROP TABLE estudiante;
PURGE TABLE estudiante;

SELECT * FROM estudiante;

DROP TABLE ESTUDIANTE PURGE;

-- cambio



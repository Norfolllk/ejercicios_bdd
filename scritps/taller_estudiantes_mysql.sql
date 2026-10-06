CREATE DATABASE IF NOT EXISTS ejercicios_bdd;
USE ejercicios_bdd;
SET SQL_SAFE_UPDATES = 0;

DROP TABLE IF EXISTS estudiantes;

CREATE TABLE estudiantes (
    id_estudiante  INT NOT NULL,
    nombres        VARCHAR(50),
    apellidos      VARCHAR(50),
    edad           INT,
    curso          VARCHAR(50),
    fecha_registro VARCHAR(10),
    CONSTRAINT estudiantes_pk PRIMARY KEY (id_estudiante)
);

INSERT INTO estudiantes VALUES (1,  'Juan',   'Perez',   20, 'Programacion',          '2026-01-10');
INSERT INTO estudiantes VALUES (2,  'Maria',  'Lopez',   18, 'Base de Datos',         '2026-01-25');
INSERT INTO estudiantes VALUES (3,  'Carlos', 'Gomez',   22, 'Redes',                 '2026-02-05');
INSERT INTO estudiantes VALUES (4,  'Ana',    'Torres',  25, 'Base de Datos',         '2026-02-14');
INSERT INTO estudiantes VALUES (5,  'Luis',   'Mora',    30, 'Programacion',          '2026-02-28');
INSERT INTO estudiantes VALUES (6,  'Sofia',  'Vera',    17, 'Inteligencia Artificial','2026-03-01');
INSERT INTO estudiantes VALUES (7,  'Miguel', 'Ramos',   19, 'Programacion',          '2026-03-15');
INSERT INTO estudiantes VALUES (8,  'Elena',  'Flores',  28, 'Redes',                 '2026-03-20');
INSERT INTO estudiantes VALUES (9,  'Pedro',  'Castillo',35, 'Base de Datos',         '2026-04-02');
INSERT INTO estudiantes VALUES (10, 'Lucia',  'Andrade', 21, 'Diseno Web',            '2026-04-18');
INSERT INTO estudiantes VALUES (11, 'Juan',   'Perez',   20, 'Base de Datos',         '2026-04-30');
INSERT INTO estudiantes VALUES (12, 'Maria',  'Lopez',   18, 'Programacion',          '2026-05-05');
INSERT INTO estudiantes VALUES (13, 'Diego',  'Salazar', 23, 'Inteligencia Artificial','2026-05-11');
INSERT INTO estudiantes VALUES (14, 'Camila', 'Ortiz',   26, 'Diseno Web',            '2026-02-20');
INSERT INTO estudiantes VALUES (15, 'Andres', 'Vega',    40, 'Redes',                 '2026-01-05');
INSERT INTO estudiantes VALUES (16, 'Ana',    'Torres',  25, 'Programacion',          '2026-03-15');


SELECT * FROM estudiantes;
SELECT nombres, curso FROM estudiantes;
SELECT * FROM estudiantes WHERE edad > 18;
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';

UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;
UPDATE estudiantes SET edad = 21 WHERE id_estudiante = 3;
UPDATE estudiantes SET fecha_registro = '2026-02-10' WHERE id_estudiante = 4;
UPDATE estudiantes SET curso = 'Redes', edad = 31 WHERE id_estudiante = 5;
UPDATE estudiantes SET nombres = 'Maria Jose', apellidos = 'Lopez Garcia' WHERE id_estudiante = 2;
SELECT * FROM estudiantes ORDER BY id_estudiante;  -- verificar cambios

DELETE FROM estudiantes WHERE id_estudiante = 15;
DELETE FROM estudiantes WHERE curso = 'Diseno Web';
DELETE FROM estudiantes WHERE edad = 17;
DELETE FROM estudiantes WHERE fecha_registro = '2026-05-11';
DELETE FROM estudiantes WHERE nombres = 'Pedro' AND apellidos = 'Castillo';
SELECT * FROM estudiantes ORDER BY id_estudiante;

ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);
SELECT * FROM estudiantes ORDER BY id_estudiante;

DROP TABLE IF EXISTS estudiantes;

CREATE TABLE estudiantes (
    id_estudiante  INT          NOT NULL,
    nombres        VARCHAR(50),
    apellidos      VARCHAR(50),
    edad           INT,
    curso          VARCHAR(50),
    fecha_registro VARCHAR(10),
    correo         VARCHAR(100),
    CONSTRAINT estudiantes_pk PRIMARY KEY (id_estudiante)
);

INSERT INTO estudiantes VALUES (1,  'Juan',   'Perez',   20, 'Programacion',          '2026-01-10', 'juan.perez@gmail.com');
INSERT INTO estudiantes VALUES (2,  'Maria',  'Lopez',   18, 'Base de Datos',         '2026-01-25', 'maria.lopez@gmail.com');
INSERT INTO estudiantes VALUES (3,  'Carlos', 'Gomez',   22, 'Redes',                 '2026-02-05', 'carlos.gomez@gmail.com');
INSERT INTO estudiantes VALUES (4,  'Ana',    'Torres',  25, 'Base de Datos',         '2026-02-14', 'ana.torres@gmail.com');
INSERT INTO estudiantes VALUES (5,  'Luis',   'Mora',    30, 'Programacion',          '2026-02-28', 'luis.mora@gmail.com');
INSERT INTO estudiantes VALUES (6,  'Sofia',  'Vera',    17, 'Inteligencia Artificial','2026-03-01', 'sofia.vera@gmail.com');
INSERT INTO estudiantes VALUES (7,  'Miguel', 'Ramos',   19, 'Programacion',          '2026-03-15', 'miguel.ramos@gmail.com');
INSERT INTO estudiantes VALUES (8,  'Elena',  'Flores',  28, 'Redes',                 '2026-03-20', 'elena.flores@gmail.com');
INSERT INTO estudiantes VALUES (9,  'Pedro',  'Castillo',35, 'Base de Datos',         '2026-04-02', 'pedro.castillo@gmail.com');
INSERT INTO estudiantes VALUES (10, 'Lucia',  'Andrade', 21, 'Diseno Web',            '2026-04-18', 'lucia.andrade@gmail.com');
INSERT INTO estudiantes VALUES (11, 'Juan',   'Perez',   20, 'Base de Datos',         '2026-04-30', 'juan.perez@gmail.com');
INSERT INTO estudiantes VALUES (12, 'Maria',  'Lopez',   18, 'Programacion',          '2026-05-05', 'maria.lopez@gmail.com');
INSERT INTO estudiantes VALUES (13, 'Diego',  'Salazar', 23, 'Inteligencia Artificial','2026-05-11', 'diego.salazar@gmail.com');
INSERT INTO estudiantes VALUES (14, 'Camila', 'Ortiz',   26, 'Diseno Web',            '2026-02-20', 'camila.ortiz@gmail.com');
INSERT INTO estudiantes VALUES (15, 'Andres', 'Vega',    40, 'Redes',                 '2026-01-05', 'andres.vega@gmail.com');
INSERT INTO estudiantes VALUES (16, 'Ana',    'Torres',  25, 'Programacion',          '2026-03-15', 'ana.torres2@gmail.com');

UPDATE estudiantes SET correo = 'juan.perez@instituto.edu.ec' WHERE id_estudiante = 1;
UPDATE estudiantes SET curso = 'Redes', correo = 'luis.mora@instituto.edu.ec' WHERE id_estudiante = 5;

SELECT * FROM estudiantes;
SELECT nombres, apellidos, correo FROM estudiantes;
SELECT nombres, curso, correo FROM estudiantes WHERE curso = 'Base de Datos';

SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-02-01' AND '2026-03-31';
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';
SELECT * FROM estudiantes WHERE curso = 'Programacion' AND fecha_registro > '2026-01-01';
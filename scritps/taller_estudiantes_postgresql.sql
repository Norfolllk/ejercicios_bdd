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

--SELECT
--Mostrar todos los registros
SELECT * FROM estudiantes;
 
--Mostrar nombres y curso
SELECT nombres, curso FROM estudiantes;
 
--Mostrar mayores de 18
SELECT * FROM estudiantes WHERE edad > 18;
 
--Mostrar entre 18 y 25
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;
 
--Mostrar el curso de Base de Datos
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';
 
--Mostrar registrados despues de 2026-03-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';
 
--Mostrar registrados entre 2026-01-01 y 2026-04-30
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';

--UPDATE
--Cambiar curso
UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;

--Cambiar edad
UPDATE estudiantes SET edad = 21 WHERE id_estudiante = 3;

--Cambiar fecha
UPDATE estudiantes SET fecha_registro = '2026-02-10' WHERE id_estudiante = 4;

--Cambiar varios campos (curso y edad)
UPDATE estudiantes SET curso = 'Redes', edad = 31 WHERE id_estudiante = 5;

--Cambiar varios campos (nombres y apellidos)
UPDATE estudiantes SET nombres = 'Maria Jose', apellidos = 'Lopez Garcia' WHERE id_estudiante = 2;

-- verificar cambios 
SELECT * FROM estudiantes ORDER BY id_estudiante;

--DELATE
--Eliminar por ID
DELETE FROM estudiantes WHERE id_estudiante = 15;

--Eliminar por curso
DELETE FROM estudiantes WHERE curso = 'Diseno Web';

--Eliminar por edad
DELETE FROM estudiantes WHERE edad = 17;

--Eliminar por fecha
DELETE FROM estudiantes WHERE fecha_registro = '2026-05-11';

--Eliminar por nombres y apellidos
DELETE FROM estudiantes WHERE nombres = 'Pedro' AND apellidos = 'Castillo';

-- verificar eliminaciones 
SELECT * FROM estudiantes ORDER BY id_estudiante;  


--MODIFICAR TABLA
ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);

--El correo aparece en NULL 
SELECT * FROM estudiantes ORDER BY id_estudiante;


--ACTUALIZACION
DROP TABLE IF EXISTS estudiantes;
CREATE TABLE estudiantes (
    id_estudiante  INT NOT NULL,
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
 
-- UPDATE con correo
UPDATE estudiantes SET correo = 'juan.perez@instituto.edu.ec' WHERE id_estudiante = 1;
UPDATE estudiantes SET curso = 'Redes', correo = 'luis.mora@instituto.edu.ec' WHERE id_estudiante = 5;
 
-- SELECT con correo
SELECT * FROM estudiantes;
SELECT nombres, apellidos, correo FROM estudiantes;
SELECT nombres, curso, correo FROM estudiantes WHERE curso = 'Base de Datos';
 

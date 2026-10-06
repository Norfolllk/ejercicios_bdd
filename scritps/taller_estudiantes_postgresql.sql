CREATE TABLE estudiantes (
    id_estudiante  INT primary key,
    nombres        VARCHAR(50),
    apellidos      VARCHAR(50),
    edad           INT,
    curso          VARCHAR(50),
    fecha_registro VARCHAR(10),
	
    CONSTRAINT estudiantes_pk PRIMARY KEY (id_estudiante)
);

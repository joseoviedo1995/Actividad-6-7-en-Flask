---creacion de la base de datos
CREATE DATABASE IF NOT EXISTS APP_EMPRESA_BD;

--USAR LA BASE DE DFATOS RECIEN CREADA
USE APP_EMPRESA_BD:

--CREACION DE LA TABLA USUARIOS
create table usuarios(
    id_usuario INT AUTO_INCREMENT PRYMARY KEY,
    usuario VARCHAR (50) NOT NULL,
    password VARCHAR (255) NOT NULL,
    email VARCHAR (100) NOT NULL,
    fecha_creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--CREACION DE LA TABLA EMPLEADOS CON RELACION 1:1
CREATE TABLE empleados(
    id_empleado INT AUTO_INCREMENT PRYMARY KEY,
    nombre_empleado VARCHAR (100) NOT NULL,
    apellidos_empleado VARCHAR (100) NOT NULL,
    tipo_identidad VARCHAR (50) NOT NULL,
    n_identidad VARCHAR (50) NOT NULL,
    fecha_nacimento TIMESTAMP,
    sexo CHAR (1) NOT NULL,
    grupo_rh VARCHAR (3) NOT NULL,
    email VARCHAR (100) NOT NULL UNIQUE,
    telefono VARCHAR (20)NOT NULL,
    profesion VARCHAR (100) NOT NULL,
    salario DECIMAL (10,2) NOT NULL,
    foto_perfil VARCHAR (255),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT UNIQUE, 
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE ON UPDATE CASCADE 
);   


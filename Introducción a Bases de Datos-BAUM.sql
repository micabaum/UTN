PROGRAMACIÓN - LABORATORIO I
Profesora: Claudia Naveda
Estudiante: Micaela Baum 
Legajo: 811658
PRACTICA I BASE DE DATOS

LINK AL CÓDIGO: https://www.mycompiler.io/view/4bWVZgNkhk2 



--Crear tabla llamada Empleados con los campos 'id', 'nombre', 'apellido', 'fecha_nacimiento', 'puesto', 'salario'

CREATE TABLE Empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE,
    puesto VARCHAR(50),
    salario DECIMAL (10,2)
);

--insertar 5 registros

INSERT INTO Empleados (id, nombre, apellido, fecha_nacimiento, puesto, salario) VALUES
(1, 'Juan', 'Pérez', '1985-05-15', 'Desarrollador', 50000.00),
(2, 'María', 'Gómez', '1990-08-22', 'Analista', 45000.00),
(3, 'Carlos', 'Rodríguez', '1982-03-10', 'Gerente', 70000.00),
(4, 'Laura', 'Martínez', '1995-11-05', 'Diseñador', 40000.00),
(5, 'Pedro', 'López', '1988-07-18', 'Desarrollador', 55000.00);

--Escribir consulta para seleccionar empleados de la tabla Empleados

SELECT*FROM Empleados;

--Consulta con condición, todos los empleados con puesto de Desarrollador
SELECT*FROM Empleados WHERE puesto='Desarrollador';

--Consulta para seleccionar los empleados ordenados por salario en orden descendente
SELECT*FROM Empleados ORDER BY salario DESC;

-- Consulta para seleccionar puestos únicos 
SELECT DISTINCT puesto FROM Empleados;

-- Consulta para seleccionar empelados que cobran más de 50000 y cuyo puesto es Desarrollador
SELECT*FROM Empleados WHERE salario > 50000 AND puesto = 'Desarrollador';

--Consulta para seleccionar empleados cuya fecha de nacimiento esté ente 1980-01-0 y 1990-12-31
SELECT*FROM Empleados WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1990-12-31';

--Consulta para seleccionar empleados con apellido que comience con G
SELECT*FROM Empleados WHERE apellido LIKE 'G%';

--Consulta para seleccionar empleados cuyo puesto se Desarrollador o Gerente
SELECT*FROM Empleados WHERE puesto IN ('Desarrollador', 'Gerente');



--Crear tabla llamada Productos
CREATE TABLE productos(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10,2),
    stock DECIMAL(10,2)
);

--Insertar registros
INSERT INTO productos (id, nombre, categoria, precio, stock) VALUES
(1, 'Laptop', 'Electronica', 500, 30),
(2, 'Celular', 'Electronica', 200, 140),
(3, 'Camiseta', 'Ropa', 15, 250),
(4, 'Pantalón', 'Ropa', 20, 175),
(5, 'Gorro', 'Ropa', 5, 65);

--Consulta para seleccionar los productos de la tabla
SELECT*FROM productos;

--Consulta para seleccionar los productos de la categoria electrónica
SELECT*FROM productos WHERE categoria='Electronica';

--Consulta para seleccionar productos ordenados por precio ascendente
SELECT*FROM productos ORDER BY precio ASC;

--Consulta para seleccionar categorías únicas
SELECT DISTINCT categoria FROM productos;

--Consulta para seleccionar productos con precio mayor a 50 y de categoria eleectronica
SELECT*FROM productos WHERE precio > 50 AND categoria = 'Electronica';

-- Consulta para seleccionar todos los productos cuyo precio esté entre 10 y 100
SELECT*FROM productos WHERE precio BETWEEN 10 AND 100;

--Consulta para seleccionar productos cuyo nombre contanga la palabra camiseta
SELECT*FROM productos WHERE nombre LIKE 'Camiseta';

-- Consulta para seleccionar los productos de categoria electónica o ropa
SELECT*FROM productos WHERE categoria IN ('Electronica', 'Ropa');

--NUEVA TABLA

-- CREAR TABLA LLAMADA CLIENTES 

CREATE TABLE Clientes(
    id INT PRIMARY KEY,
    nombre VARCHAR(50), 
    apellido VARCHAR(50),
    email VARCHAR (50),
    fecha_registro DATE
);

--Insertar al menos 5 registros
INSERT INTO Clientes (id, nombre, apellido, email, fecha_registro) VALUES
(1, 'Juana', 'Fernández', 'juanafernandez@gmail.com', '2022-05-01'),
(2, 'María', 'García', 'mgarcia@gmail.com', '2022-07-03'),
(3, 'Juan', 'García', 'juancito@gmail.com', '2022-07-03'),
(4, 'Pedro', 'Rodriguez', 'peper@gmail.com', '2022-06-25'),
(5, 'Simona', 'Pérez', 'simonchili@gmail.com', '2021-03-10');

--Consulta para seleccionar clientes registrados después del 1 de enero de 2022
SELECT*FROM Clientes WHERE fecha_registro > '2022-01-01';

-- Consulta para seleccionar clientes ordenados por su fecha de registro de manera descendente
SELECT*FROM Clientes ORDER BY fecha_registro DESC;

-- Consulta para seleccionar dominios de correos eleectronicos unicos
SELECT DISTINCT email FROM Clientes;

-- Consulta para seleccionar todos los clientes registrados después del 1 de enero de 2022 cuyo apellido es Garcíapellido
SELECT*FROM Clientes WHERE fecha_registro > '2022-01-01' AND apellido = 'García';

-- Consulta para seleccionar clientes registrados entre el 1 enero de 2022 y el 31 de diciembre de 2022
SELECT*FROM Clientes WHERE fecha_registro BETWEEN '2022-01-01' AND '2022-12-31';

--Consulta para seleccionar clientes cuyo nombre empieza con J
SELECT*FROM Clientes WHERE nombre LIKE 'J%';

--Consulta para seleccionar clientes con apellido García o Fernández
SELECT*FROM Clientes WHERE apellido IN ('Fernández', 'García');

--NUEVA TABLA

--Crear tabla de Ventas
CREATE TABLE Ventas (
    id INT PRIMARY KEY,
    fecha DATE,
    cliente_id INT,
    producto_id INT,
    cantidad INT, 
    total int
); 

--Insertar registros
INSERT INTO Ventas (id, fecha, cliente_id, producto_id, cantidad, total) VALUES
(1, '2023-01-01', 1, 5, 10, 101),
(2, '2023-03-26', 2, 2, 5, 500),
(3, '2022-01-03', 2, 3, 1, 10),
(4, '2024-03-19', 3, 6, 1,25),
(5, '2021-05-06', 3,7, 8, 300);

--Consulta para seleccionar todas las ventas
SELECT*FROM Ventas;

--Consulta para seleccionar las ventas realizadas despues del 1 de enero de 2023
SELECT*FROM Ventas WHERE fecha > '2023-01-01';

--Consulta para seleccionar las ventas ordenadas por su fecha en orden ascendente
SELECT*FROM Ventas ORDER BY fecha ASC;

--Consulta para seleccionar los clientes unicos que han realizado ventas
SELECT DISTINCT cliente_id FROM Ventas;

--Consulta para seleccionar ventas realizadas despues del 1 de enero de 2023 y cuyo total sea mayor a 100
SELECT*FROM Ventas WHERE fecha > '2023-01-01' AND total > 100;

--Consulta para seleccionar las ventas realizadas entre el 1 de enero de 2023 y el 31 de enero de 2023
SELECT*FROM Ventas WHERE fecha BETWEEN '2023-01-01' AND '2023-01-31';

--Consulta para seleccionar ventas cuya fecha contenga '2023-01'
SELECT*FROM Ventas WHERE fecha LIKE '2023-01%';

--Consulta para seleccionar ventas cuyo cliente_id sea 1 o 2
SELECT*FROM Ventas WHERE cliente_id IN ('1', '2');

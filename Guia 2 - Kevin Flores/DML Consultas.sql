USE [Guia 1];

-- 5 consultas (normales) que incluya operadores aritméticos o lógicos, obtención
-- de datos del sistema, así como cálculos aritméticos sobre cualquier tabla de la Base de
-- Datos.

-- Consulta 1: Calculando la edad de los clientes
SELECT nombre, apellido, DATEDIFF(YEAR, fechaNacimiento, GETDATE()) as Edad
FROM Clientes;

-- Consulta 2: Listado de habitaciones con precio mayor a $100
SELECT *
FROM Habitaciones
WHERE precio > 100.00;

-- Consulta 3: Listado de clientes y sus reservaciones:
SELECT C.nombre, C.apellido, 
       (SELECT COUNT(*) 
        FROM Reservaciones R 
        WHERE R.IDCliente = C.IDCliente) as Total_reservaciones
FROM Clientes C;

-- Consulta 4: Listado de empleados cuyo salario sea mayor a $3000
SELECT nombre, apellido, salario
FROM Empleados
WHERE salario > 3000.00;

-- Consulta 5: Salario promedio de los empleados por puesto
SELECT puesto, AVG(salario) as Salario_promedio
FROM Empleados
GROUP BY puesto;


-- 5 Consultas de tipo Multitabla, Subconsulta y Joins sobre la Base de Datos.


-- Consulta 1: Listado de empleados con el total de ingresos generados por sus reservaciones
SELECT E.nombre, E.apellido, SUM(H.precio) as Total_ingresos
FROM Empleados E
JOIN Reservaciones R ON E.IDEmpleado = R.IDEmpleado
JOIN Habitaciones H ON R.IDHabitacion = H.IDHabitacion
GROUP BY E.nombre, E.apellido;

-- Consulta 2: Listado de clientes que no han utilizado ningún servicio adicional
SELECT C.nombre, C.apellido
FROM Clientes C
WHERE NOT EXISTS (
    SELECT 1
    FROM Reservaciones R
    JOIN UsoServicio US ON R.IDReservacion = US.IDReservacion
    WHERE R.IDCliente = C.IDCliente
);

-- Consulta 3: Listado de habitaciones con el número de veces que han sido reservadas
SELECT H.numeroHabitacion, COUNT(R.IDReservacion) as Veces_reservada
FROM Habitaciones H
LEFT JOIN Reservaciones R ON H.IDHabitacion = R.IDHabitacion
GROUP BY H.numeroHabitacion;

-- Consulta 4: Listado de clientes que han reservado habitaciones de tipo 'Suite'
SELECT C.nombre, C.apellido
FROM Clientes C
JOIN Reservaciones R ON C.IDCliente = R.IDCliente
JOIN Habitaciones H ON R.IDHabitacion = H.IDHabitacion
WHERE H.tipoHabitacion = 'Suite';

-- Consulta 5: Listado de empleados y el número de clientes que han atendido
SELECT E.nombre, E.apellido, COUNT(DISTINCT R.IDCliente) as Clientes_atendidos
FROM Empleados E
JOIN Reservaciones R ON E.IDEmpleado = R.IDEmpleado
GROUP BY E.nombre, E.apellido;





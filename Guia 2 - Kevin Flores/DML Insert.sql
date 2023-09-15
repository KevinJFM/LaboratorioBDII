USE [Guia 1];

INSERT INTO Clientes (nombre,apellido,correo,telefono,fechaNacimiento) 
VALUES  ('Juan', 'Pérez', 'juan.perez@email.com', '555-123-4567', '1990-05-15'),
        ('María', 'Gómez', 'maria.gomez@email.com', '555-987-6543', '1985-08-20'),
        ('Carlos', 'Rodríguez', 'carlos.rodriguez@email.com', '555-234-5678', '1992-02-10'),
        ('Laura', 'Martínez', 'laura.martinez@email.com', '555-876-5432', '1988-11-25'),
        ('Pedro', 'López', 'pedro.lopez@email.com', '555-345-6789', '1995-04-30');

INSERT INTO Empleados (nombre,apellido,puesto,salario,fechaContratacion) 
VALUES ('Ana', 'García', 'Gerente de Ventas', '60000', '2022-03-15'),
      ('Javier', 'López', 'Analista de Datos', '45000', '2022-05-20'),
      ('María', 'Martínez', 'Desarrollador de Software', '55000', '2022-04-10'),
      ('Carlos', 'Rodríguez', 'Asistente de Recursos Humanos', '38000', '2022-06-02'),
      ('Laura', 'Sánchez', 'Especialista en Marketing', '50000', '2022-03-01');

INSERT INTO Reservaciones(IDCliente,IDHabitacion,IDEmpleado,fechaEntrada,fechaSalida) 
VALUES ('1', '1', '1', '2023-09-10', '2023-09-15'),
       ('2', '2', '2', '2023-09-12', '2023-09-17'),
       ('3', '3', '3', '2023-09-14', '2023-09-19'),
       ('4', '4', '4', '2023-09-16', '2023-09-21'),
       ('5', '5', '5', '2023-09-18', '2023-09-23');

INSERT INTO	Habitaciones(numeroHabitacion,tipoHabitacion,precio,descripcion)
VALUES ('101', 'Individual', '100', 'Habitación individual con cama queen-size'),
       ('102', 'Doble', '150', 'Habitación doble con dos camas individuales'),
       ('103', 'Suite', '250', 'Suite de lujo con vista al mar y jacuzzi'),
       ('104', 'Familiar', '200', 'Habitación familiar con tres camas individuales'),
       ('105', 'Individual', '110', 'Habitación individual estándar con cama twin')



INSERT INTO	ServicioAdicional(nombre,descripcion,precio)
VALUES ('Lavandería', 'Servicio de lavandería para la ropa de los huéspedes', '20.00'),
       ('Desayuno buffet', 'Desayuno buffet con variedad de opciones', '15.00'),
       ('Estacionamiento', 'Estacionamiento seguro para vehículos', '10.00'),
       ('Servicio de habitaciones', 'Servicio de entrega de comida y bebida en la habitación', '25.00'),
       ('Piscina', 'Acceso a la piscina al aire libre', '5.00');

	   
INSERT INTO	UsoServicio(IDReservacion,IDServicio,cantidad,fechaUso)
VALUES ('6', '1', '2', '2023-09-15'),
       ('7', '2', '1', '2023-09-16'),
       ('8', '3', '3', '2023-09-17'),
       ('9', '4', '2', '2023-09-18'),
       ('10', '5', '1', '2023-09-19');

	   
INSERT INTO	Servicios_Reservaciones(IDServicio,IDReservacion)
VALUES ('1', '6'),
       ('2', '7'),
       ('3', '8'),
       ('4', '9'),
       ('5', '10');
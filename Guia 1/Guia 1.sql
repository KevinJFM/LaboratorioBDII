-- Definición de la estructura de la base de datos para un sistema de hotel
-- Tabla para almacenar información de los clientes
CREATE TABLE Clientes (
    IDCliente INT PRIMARY KEY IDENTITY(1, 1),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    correo VARCHAR(100),
    telefono VARCHAR(15),
    fechaNacimiento DATE
);
-- Tabla para almacenar información de las habitaciones
CREATE TABLE Habitaciones (
    IDHabitacion INT PRIMARY KEY IDENTITY(1, 1),
    numeroHabitacion VARCHAR(10),
    tipoHabitacion VARCHAR(50),
    precio DECIMAL(10, 2),
    descripcion TEXT
);

-- Tabla para almacenar información de los empleados
CREATE TABLE Empleados (
    IDEmpleado INT PRIMARY KEY IDENTITY(1, 1),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    puesto VARCHAR(50),
    salario DECIMAL(10, 2),
    fechaContratacion DATE
);

-- Tabla para almacenar información de las reservaciones
CREATE TABLE Reservaciones (
    IDReservacion INT PRIMARY KEY IDENTITY(1, 1),
    IDCliente INT,
    IDHabitacion INT,
	IDEmpleado INT,
    fechaEntrada DATE,
    fechaSalida DATE,
    FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente),
    FOREIGN KEY (IDHabitacion) REFERENCES Habitaciones(IDHabitacion),
	FOREIGN KEY (IDEmpleado) REFERENCES Empleados(IDEmpleado)
);


-- Tabla para almacenar información de los servicios adicionales
CREATE TABLE ServicioAdicional (
    IDServicio INT PRIMARY KEY IDENTITY(1, 1),
    nombre VARCHAR(50),
    descripcion TEXT,
    precio DECIMAL(10, 2)
);

-- Tabla para almacenar información de los servicios utilizados por los clientes durante su estadía
CREATE TABLE UsoServicio (
    IDUsoServicio INT PRIMARY KEY IDENTITY(1, 1),
    IDReservacion INT,
    IDServicio INT,
    cantidad INT,
    fechaUso DATE,
    FOREIGN KEY (IDReservacion) REFERENCES Reservaciones(IDReservacion),
    FOREIGN KEY (IDServicio) REFERENCES ServicioAdicional(IDServicio)
);

-- Tabla de servicios_reservaciones
CREATE TABLE Servicios_Reservaciones (
  ID INT PRIMARY KEY IDENTITY(1, 1),
  IDServicio INT NOT NULL,
  IDReservacion INT NOT NULL,
  FOREIGN KEY (IDServicio) REFERENCES servicioAdicional (IDServicio),
  FOREIGN KEY (IDreservacion) REFERENCES reservaciones (IDReservacion)
);
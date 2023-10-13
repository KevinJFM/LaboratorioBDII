-- Definición de la estructura de la base de datos para un sistema de hotel
-- Tabla para almacenar información de los clientes
create database Hotel;
go
use Hotel;
-- TABLAS
-- DIRECCIONES
go
create table Departamentos(
	ID_Departamento char(2) primary key,
	Departamento varchar(60) not null,
	Pais varchar(60)
);
go
create table Municipios(
	ID_Municipio char(3) primary key,
	Municipio varchar(60) not null,
	ID_Departamento char(2) not null
);
go
create table Distritos(
	ID_Distrito varchar(5) primary key,
	Distrito varchar(60) not null,
	ID_Municipio char(3) not null
);
go
create table Direcciones(
	ID_Direccion int primary key identity(1, 1),
    Linea1 varchar(100) not null,
    Linea2 varchar(100) not null,
    ID_Distrito varchar(5) not null,
    CodigoPostal int,
);

-- EMPLEADOS
go
create table Cargos(
	ID_Cargo int primary key identity(1, 1),
    Cargo varchar(45) not null
);
go
create table Empleados(
	ID_Empleado int primary key identity(1, 1),
    DUI_Empleado varchar(10) not null,
    ISSS_Empleado int not null,
    NombresEmpleado varchar(60) not null,
    ApellidosEmpleado varchar(60) not null,
    FechaNacEmpleado date not null,
    Telefono varchar(10) not null,
	Correo varchar(100),
    ID_Cargo int not null,
    ID_Direccion int not null   
);

-- CLIENTES
CREATE TABLE Clientes (
  ID_Cliente int primary key identity(1, 1),
  NombresCliente varchar(60) not null,
  ApellidosCliente varchar(60) not null,
  DUI_Cliente varchar(10) not null,
  FechaNacCliente date not null,
  Telefono varchar(10) not null,
  Correo varchar(100),
  ID_Direccion int not null,
);
-- HABITACIONES
go
CREATE TABLE Tarifas_Habitaciones (
  ID_Tarifa int primary key identity(1, 1),
  FechaEntrada date not null,
  FechaSalida date not null,
  PrecioPorNoche decimal(10,2) not null,
);
go
go
CREATE TABLE Habitaciones (
  Numero_habitacion int primary key identity(1, 1),
  TipoHabitación varchar(255) not null,
  Capacidad int not null,
  Comodidades varchar(255) not null,
  ID_Tarifa int not null,
);

-- MANEJO DE ROLES
go
create table Opciones(
	ID_Opcion int primary key identity(1, 1),
    NombreOpcion varchar(60) not null
);
go
create table Roles(
	ID_Rol int primary key identity(1, 1),
    NombreRol varchar(60) not null
);
go
create table AsignacionRolesOpciones(
	ID_AsignacionRol int primary key identity(1, 1),
    ID_Rol int not null,
    ID_Opcion int not null
);
go
create table Usuarios(
	ID_Usuario int primary key identity(1, 1),	
    ID_Empleado int not null,
	ID_Rol int not null,
    Usuario varchar(60) not null,
    Clave varchar(60) not null,
);
go
--PROVEEDORES
go
create table Proveedores (
ID_Proveedor int primary key identity (1,1 ),
NombreDelProveedor Varchar(100) not null,
Telefono varchar(10) not null,
Correo varchar(100)
);
go
-- PAGOS
create table Pagos (
  ID_Pago int primary key identity(1, 1),
  MetodoPago varchar(255) not null,
  FechaPago date not null,
  ImportePago decimal(10,2) null,
  FechaVencimiento date not null,
  ID_Proveedor int not null
);
-- RESERVACIONES
go
create table Reservaciones(
    ID_Reservacion int primary key  identity(1, 1),
    ID_Cliente int not null,
    Numero_Habitacion int not null,
	ID_Empleado int not null,
    FechaEntrada date not null,
    FechaSalida date not null,
	ID_Pago int not null,
);
go
create table Tipos_de_Servicios (
ID_TipoServicio int primary key  identity(1, 1),
TipoDeServicio varchar(100) not null,
);
go
-- Tabla para almacenar información de los servicios adicionales
create table Servicios_Adicionales (
    ID_Servicio int primary key  identity(1, 1),
    ID_TipoServicio int not null,
    Precio decimal(10, 2) not null
);
go
-- Tabla para almacenar información de los servicios utilizados por los clientes durante su estadía
create table Uso_Servicios (
    ID_UsoServicio int primary key  identity(1, 1),
    ID_Reservacion int not null,
    ID_Servicio int not null,
	Numero_Habitacion int not null,
    cantidad int not null,
    FechaUso date not null,
);
go
-- EVENTOS
create table Eventos (
  ID_Evento int primary key identity(1, 1),
  Nombre varchar(255) not null,
  Fecha date not null,
  HoraInicio time not null,
  HoraFin time not null,
  Descripcion varchar(1000) not null,
  NumeroInvitados int not null,
  ID_Habitacion int not null,
  ID_Cliente int not null,
  ID_Empleado int not null
);

-- CONEXIONES CON LLAVES FOREANEAS


ALTER TABLE Municipios ADD  FOREIGN KEY (ID_Departamento) REFERENCES Departamentos(ID_Departamento);
ALTER TABLE Distritos ADD  FOREIGN KEY (ID_Municipio) REFERENCES Municipios(ID_Municipio);
ALTER TABLE Direcciones ADD  FOREIGN KEY (ID_Distrito) REFERENCES Distritos(ID_Distrito);
ALTER TABLE Empleados ADD  FOREIGN KEY (ID_Cargo) REFERENCES Cargos(ID_Cargo);
ALTER TABLE Empleados ADD FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion);
ALTER TABLE Clientes ADD  FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion);
ALTER TABLE Habitaciones ADD  FOREIGN KEY (ID_Tarifa) REFERENCES Tarifas_Habitaciones(ID_Tarifa);
ALTER TABLE Usuarios ADD  FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado);
ALTER TABLE Usuarios ADD  FOREIGN KEY (ID_Rol) REFERENCES Roles(ID_Rol);
ALTER TABLE AsignacionRolesOpciones ADD FOREIGN KEY (ID_Rol)  REFERENCES  Roles(ID_Rol);
ALTER TABLE AsignacionRolesOpciones ADD FOREIGN KEY (ID_Opcion) REFERENCES  Opciones(ID_Opcion);
ALTER TABLE Reservaciones ADD  FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente);
ALTER TABLE Reservaciones ADD FOREIGN KEY (Numero_Habitacion) REFERENCES Habitaciones(Numero_habitacion);
ALTER TABLE Reservaciones ADD FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado);
ALTER TABLE Reservaciones ADD  FOREIGN KEY (ID_Pago) REFERENCES Pagos(ID_Pago);
ALTER TABLE Servicios_Adicionales ADD  FOREIGN KEY (ID_TipoServicio) REFERENCES Tipos_de_Servicios(ID_TipoServicio);
ALTER TABLE Uso_Servicios ADD  FOREIGN KEY (ID_Reservacion) REFERENCES Reservaciones(ID_Reservacion);
ALTER TABLE Uso_Servicios ADD  FOREIGN KEY (ID_Servicio) REFERENCES Servicios_Adicionales(ID_Servicio);
ALTER TABLE Pagos ADD  FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor);
ALTER TABLE Eventos ADD  FOREIGN KEY (ID_Habitacion) REFERENCES Habitaciones(Numero_habitacion) 
ALTER TABLE Eventos ADD  FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente);
ALTER TABLE Eventos ADD  FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado);



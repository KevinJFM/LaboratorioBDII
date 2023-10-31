-- Guia 7: Triggers
-- use Hotel;

-- Crear trigger para la tabla Empleados
create trigger AgregarEmpleados
on Empleados
after insert
as
begin
    -- Variables para almacenar la información
    declare @ID_Empleado int
    declare @FechaInsercion datetime
    declare @DUI_Empleado varchar(10)
    declare @ISSS_Empleado int
    declare @NombresEmpleado varchar(60)
    declare @ApellidosEmpleado varchar(60)
    declare @FechaNacEmpleado date
    declare @Telefono varchar(10)
    declare @Correo varchar(100)
    declare @ID_Cargo int
    declare @ID_Direccion int

    -- Obtiene la información de la inserción
    select top 1 
        @ID_Empleado = ID_Empleado,
        @FechaInsercion = getdate(),
        @DUI_Empleado = DUI_Empleado,
        @ISSS_Empleado = ISSS_Empleado,
        @NombresEmpleado = NombresEmpleado,
        @ApellidosEmpleado = ApellidosEmpleado,
        @FechaNacEmpleado = FechaNacEmpleado,
        @Telefono = Telefono,
        @Correo = Correo,
        @ID_Cargo = ID_Cargo,
        @ID_Direccion = ID_Direccion
    from inserted

    -- Inserta la información en la tabla ReporteEmpleados
    insert into ReporteEmpleados values
      (@ID_Empleado, @FechaInsercion,
	   @DUI_Empleado, @ISSS_Empleado,
	   @NombresEmpleado, @ApellidosEmpleado,
	   @FechaNacEmpleado,
	   @Telefono,
	   @Correo,
	   @ID_Cargo,
	   @ID_Direccion)

    print 'Se ha insertado un nuevo empleado con Fecha y Hora: ' + cast(@FechaInsercion as varchar(100)) +
        ', ID: ' + cast(@ID_Empleado as varchar(10)) + ', Nombres: ' + @NombresEmpleado + ', Apellidos: ' + @ApellidosEmpleado
end;

-- Creación de la tabla para el reporte de empleados
create table ReporteEmpleados(
    ID_ReporteEmpleado int primary key identity(1, 1),
    ID_Empleado int,
    FechaInsercion datetime,
    DUI_Empleado varchar(10),
    ISSS_Empleado int,
    NombresEmpleado varchar(60),
    ApellidosEmpleado varchar(60),
    FechaNacEmpleado date,
    Telefono varchar(10),
    Correo varchar(100),
    ID_Cargo int,
    ID_Direccion int
);

-- Insertar un empleado de ejemplo para probar el trigger
insert into Empleados values
      ('87523695-7',
	  '436325642',
	  'John',
	  'Doe',
	  '1990-01-01',
	  '7424-8034',
	  'johndoe@gmail.com',
	  '3',
	  '3');


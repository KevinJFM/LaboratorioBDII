--Guia 6 BD II
USE Hotel
GO
CREATE PROCEDURE AgregarCliente
    @NombresCliente varchar(60),
    @ApellidosCliente varchar(60),
    @DUI_Cliente varchar(10),
    @FechaNacCliente date,
    @Telefono varchar(10),
    @Correo varchar(100),
    @ID_Direccion int
AS
BEGIN
    INSERT INTO Clientes (
        NombresCliente,
        ApellidosCliente,
        DUI_Cliente,
        FechaNacCliente,
        Telefono,
        Correo,
        ID_Direccion
    )
    VALUES (
        @NombresCliente,
        @ApellidosCliente,
        @DUI_Cliente,
        @FechaNacCliente,
        @Telefono,
        @Correo,
        @ID_Direccion);

    SELECT * FROM Clientes;
END;

EXECUTE AgregarCliente
    @NombresCliente = 'Valeria Alexia',
    @ApellidosCliente = 'Shente Colmo',
    @DUI_Cliente = '12345678-9',
    @FechaNacCliente = '1997-06-26',
    @Telefono = '7777-7777',
    @Correo = 'valeria@dominio.com',
    @ID_Direccion = '1'; -- ID de la dirección


-- Esta consulta selecciona información de empleados y sus cargos, 
-- y ordena los resultados por el ID del cargo
CREATE PROCEDURE MostrarOtraPlanilla
AS
BEGIN
    -- Cuerpo del procedimiento
    SELECT 
        EMP.DUI_Empleado, 
        EMP.ISSS_Empleado, 
        EMP.NombresEmpleado, 
        EMP.ApellidosEmpleado, 
        CAR.Cargo 
    FROM 
        Empleados EMP, 
        Cargos CAR
    WHERE 
        CAR.ID_Cargo = EMP.ID_Cargo
    ORDER BY 
        EMP.ID_Cargo;
END;

EXECUTE MostrarOtraPlanilla;

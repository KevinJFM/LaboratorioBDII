USE Hotel;
GO
-- Crear la vista para mostrar empleados con su dirección
CREATE VIEW VistaEmpleadosConDireccion AS
SELECT
    E.ID_Empleado,
    E.DUI_Empleado,
    E.ISSS_Empleado,
    E.NombresEmpleado,
    E.ApellidosEmpleado,
    E.FechaNacEmpleado,
    E.TelefonoEmpleado,
    E.Correo,
    C.Cargo,
    D.Linea1 AS DireccionLinea1,
    D.Linea2 AS DireccionLinea2,
    D.CodigoPostal
FROM
    Empleados E
    INNER JOIN Cargos C ON E.ID_Cargo = C.ID_Cargo
    INNER JOIN Direcciones D ON E.ID_Direccion = D.ID_Direccion;
GO
-- Consulta para obtener empleados con su dirección
SELECT *
FROM VistaEmpleadosConDireccion;
GO
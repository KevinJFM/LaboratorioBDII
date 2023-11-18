USE Hotel;
GO
-- Crear una secuencia para la columna ID_Empleado en la tabla Empleados
CREATE SEQUENCE ID_Empleado
    AS INT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000000
    CYCLE;

-- Modificar la tabla Empleados para utilizar la secuencia en la columna ID_Empleado
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'Empleados') AND name = 'ID_Empleado')
BEGIN
    ALTER TABLE Empleados
    ADD ID_Empleado INT PRIMARY KEY DEFAULT (NEXT VALUE FOR ID_Empleado);
END;
GO
-- Cómo insertar datos en la tabla Empleados utilizando la secuencia
INSERT INTO Empleados (DUI_Empleado, 
                       ISSS_Empleado, 
					   NombresEmpleado, 
					   ApellidosEmpleado, 
					   FechaNacEmpleado, 
					   TelefonoEmpleado, 
					   Correo, 
					   ID_Cargo, 
					   ID_Direccion)
VALUES ('06421098-3',
        '763852745', 
		'Juan', 
		'Perez', 
		'2000-01-01', 
		'5665-2537',
		'juanperez@yahoo.com',
		'2',
		'6');
GOselect * from sys.sequences;
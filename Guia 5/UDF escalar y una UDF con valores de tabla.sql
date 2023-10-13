--Guia 5 BD II
--  UDF escalar
USE Hotel;
 -- UDF escalar calcula la edad de un cliente en función de su fecha de nacimiento:
CREATE FUNCTION dbo.CalcularEdadCliente (
  @FechaNacCliente date
)
RETURNS int
AS
BEGIN
  DECLARE @EdadCliente int

  SET @EdadCliente = DATEDIFF(year, @FechaNacCliente, GETDATE())

  RETURN @EdadCliente
END
GO

--La siguiente consulta selecciona todos los clientes con una edad mayor o igual a 27 años:
SELECT *
FROM Clientes
WHERE dbo.CalcularEdadCliente(FechaNacCliente) >=27


-- UDF con valores de tabla

-- Función que calcula el precio total de una reservación basado
-- en el número de habitación y las fechas de entrada y salida.

CREATE FUNCTION dbo.CalcularPrecioTotalReservacion (
    @Numero_Habitacion int,
    @FechaEntrada date,
    @FechaSalida date
)
RETURNS decimal(10, 2)
AS
BEGIN
    DECLARE @PrecioPorNoche decimal(10, 2)
    DECLARE @Total decimal(10, 2)

    SELECT @PrecioPorNoche = TH.PrecioPorNoche
    FROM Habitaciones H
    INNER JOIN Tarifas_Habitaciones TH ON H.ID_Tarifa = TH.ID_Tarifa
    WHERE H.Numero_habitacion = @Numero_Habitacion

    SET @Total = DATEDIFF(day, @FechaEntrada, @FechaSalida) * @PrecioPorNoche

    RETURN @Total
END;

-- Para usar esta función
DECLARE @Numero_Habitacion int = 1
DECLARE @FechaEntrada date = '2023-10-01'
DECLARE @FechaSalida date = '2023-11-03'
DECLARE @PrecioTotal decimal(10, 2)

SELECT @PrecioTotal = dbo.CalcularPrecioTotalReservacion(@Numero_Habitacion, @FechaEntrada, @FechaSalida);

PRINT 'El precio total de la reservación es: $' + CAST(@PrecioTotal as varchar(20));




-- Guía 4 - Lab BDII
use Hotel;

declare @NombresEmpleado varchar(60)
declare @ApellidosEmpleado varchar(60)
declare @NombresCliente varchar(60)
declare @ApellidosCliente varchar(60)

declare CursorKeyset cursor keyset for
select ENC.NombresEmpleado, ENC.ApellidosEmpleado, EST.NombresCliente, EST.ApellidosCliente
from Empleados ENC, Clientes EST
where ENC.ID_Empleado = EST.ID_Cliente
order by ENC.ID_Empleado

open CursorKeyset

-- Recorrido hacia adelante
-- Obtener el primer registro

fetch first from CursorKeyset into @NombresEmpleado, @ApellidosEmpleado, @NombresCliente, @ApellidosCliente
print 'Empleado - Cliente'

while @@FETCH_STATUS = 0
begin
    print @NombresEmpleado + ' ' + @ApellidosEmpleado + ' - ' + @NombresCliente + ' ' + @ApellidosCliente

	-- Obtener el siguiente registro hacia adelante
	fetch next from CursorKeyset into @NombresEmpleado, @ApellidosEmpleado, @NombresCliente, @ApellidosCliente
end

-- Recorrido hacia atrás
-- Obtener el ultimo registro
fetch last from CursorKeyset into @NombresEmpleado, @ApellidosEmpleado, @NombresCliente, @ApellidosCliente
print 'Empleado - Cliente'

while @@FETCH_STATUS = 0
begin
    print @NombresEmpleado + ' ' + @ApellidosEmpleado + ' - ' + @NombresCliente + ' ' + @ApellidosCliente

    -- Obtener el registro anterior hacia atrás
    fetch prior from CursorKeyset into @NombresEmpleado, @ApellidosEmpleado, @NombresCliente, @ApellidosCliente
end

close CursorKeyset

deallocate CursorKeyset
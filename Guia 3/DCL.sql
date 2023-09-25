USE [Guia 1];
-- Crear un Login:
create login administrator with password = 'root'; 
create login Empleado with password = '123'; 
create login Recepcionista with password = '246'; 
create login Gerente with password = '369'; 

-- Crear usuarios asociados a los logins
create user adminuser for login administrator;
create user empleadouser  for login Empleado;
create user  recepcionistauser for login Recepcionista;
create user  Gerenteuser for login Gerente;


-- Agregar usuarios a los roles:
alter role Administrador add member adminuser;
alter role Empleado add member empleadouser;
alter role Recepcionista add member recepcionistauser;
alter role Gerente add member Gerenteuser;

-- Otorgamiento de privilegios 
grant control on database:: [Guia 1] to adminuser;

-- Asignar permisos específicos 
grant select, update, insert on database:: [Guia 1] to
empleadouser;
grant select, update, insert on database::[Guia 1]to
recepcionistauser;
grant select, update, insert ,delete on database::[Guia 1] to
Gerenteuser;




-- Base de Datos Hotel
-- DCL
use Hotel;

-- ROLES
go
create role Administrador;
create role Gerente;
create role Recepcionista;
create role RRHH;

-- LOGINS
go
create login login_admin_kevinrodas
with password = 'root';
go
create login login_ger_diegosanchez
with password = 'Sanchez1234';
go
create login login_rec_rauldvalle
with password = 'Valle1234';
go
create login login_rrhh_maryperez
with password = 'Perez1234';

-- USUARIOS
go
create user admin_kevinrodas
for login login_admin_kevinrodas;
go
create user ger_diegosanchez
for login login_ger_diegosanchez;

create user rec_rauldvalle
for login login_rec_rauldvalle;
go
create user rrhh_maryperez
for login login_rrhh_maryperez;

-- AGREGAR USUARIOS A ROLES
go
alter role Administrador add member admin_kevinrodas;
alter role Gerente add member ger_diegosanchez;
alter role Recepcionista add member rec_rauldvalle;
alter role RRHH add member rrhh_maryperez;

-- OTORGAR PERMISOS (En base a las opciones)
go
-- Administrador
grant control on database::Hotel to Administrador;
-- Director
grant select, insert, update, delete on dbo.Direcciones to Gerente;
grant select, insert, update, delete on dbo.Empleados to Gerente;
grant select, insert, update, delete on dbo.Clientes to Gerente;
grant select, insert, update, delete on dbo.Habitaciones to Gerente;
grant select, insert, update, delete on dbo.Reservaciones to Gerente;
grant select, insert, update, delete on dbo.Tipos_de_Servicios to Gerente;
grant select, insert, update, delete on dbo.Uso_Servicios to Gerente;
grant select, insert, update, delete on dbo.Pagos to Gerente;
grant select, insert, update, delete on dbo.Proveedores to Gerente;
grant select, insert, update, delete on dbo.Eventos to Gerente;
grant select on dbo.Departamentos to Gerente;
grant select on dbo.Municipios to Gerente;
grant select on dbo.Distritos to Gerente;

-- Recepcionista
grant select, insert, update, delete on dbo.Direcciones to Recepcionista;
grant select, insert, update, delete on dbo.Clientes to Recepcionista;
grant select, insert, update, delete on dbo.Tarifas_Habitaciones to Recepcionista;
grant select, insert, update, delete on dbo.Habitaciones to Recepcionista;
grant select, insert, update, delete on dbo.Reservaciones to Recepcionista;
grant select on dbo.Departamentos to Recepcionista;
grant select on dbo.Municipios to Recepcionista;
grant select on dbo.Distritos to Recepcionista;
-- RRHH
grant select, insert, update, delete on dbo.Direcciones to RRHH;
grant select, insert, update, delete on dbo.Cargos to RRHH;
grant select, insert, update, delete on dbo.Empleados to RRHH;
grant select, insert, update, delete on dbo.Clientes to RRHH;
grant select on dbo.Departamentos to RRHH;
grant select on dbo.Municipios to RRHH;
grant select on dbo.Distritos to RRHH;
-- CONSULTAS
go
-- Consulta para obtener una lista de logins en la instancia de SQL Server
select name from sys.server_principals where type_desc = 'SQL_LOGIN';
go
-- Consulta para obtener una lista de usuarios en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'SQL_USER';
go
-- Consulta para obtener una lista de roles en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'DATABASE_ROLE';




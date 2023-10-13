-- Base de Datos Escuela
-- DML
use Hotel;
go
-- DIRECCIONES
-- Departamentos
insert into Departamentos values
--	ID_Departamento, Departamento, Pais 
	('AH', 'Ahuachapán', 'El Salvador'),
	('CA', 'Cabañas', 'El Salvador'),
	('CH', 'Chalatenango', 'El Salvador'),
	('CU', 'Cuscatlán', 'El Salvador'),
	('LL', 'La Libertad', 'El Salvador'),
	('LP', 'La Paz', 'El Salvador'),
	('LU', 'La Unión', 'El Salvador'),
	('MO', 'Morazán', 'El Salvador'),
	('SA', 'Santa Ana', 'El Salvador'),
	('SM', 'San Miguel', 'El Salvador'),
	('SS', 'San Salvador', 'El Salvador'),
	('SV', 'San Vicente', 'El Salvador'),
	('SO', 'Sonsonate', 'El Salvador'),
	('US', 'Usulután', 'El Salvador');
go
select * from Departamentos;

go
-- Municipios
insert into Municipios values
--	ID_Municipio, Municipio, ID_Departamento
	('AHN', 'Ahuachapán Norte', 'AH'),
	('AHC', 'Ahuachapán Centro', 'AH'),
	('AHS', 'Ahuachapán Sur', 'AH'),
	('CAE', 'Cabañas Este', 'CA'),
	('CAO', 'Cabañas Oeste', 'CA'),
	('CHN', 'Chalatenango Norte', 'CH'),
	('CHC', 'Chalatenango Centro', 'CH'),
	('CHS', 'Chalatenango Sur', 'CH'),
	('CUN', 'Cuscatlán Norte', 'CU'),
	('CUS', 'Cuscatlán Sur', 'CU'),
	('LLN', 'La Libertad Norte', 'LL'),
	('LLC', 'La Libertad Centro', 'LL'),
	('LLO', 'La Libertad Oeste', 'LL'),
	('LLE', 'La Libertad Este', 'LL'),
	('LLS', 'La Libertad Sur', 'LL'),
	('LLT', 'La Libertad Costa', 'LL'),
	('LPO', 'La Paz Oeste', 'LP'),
	('LPC', 'La Paz Centro', 'LP'),
	('LPE', 'La Paz Este', 'LP'),
	('LUN', 'La Unión Norte', 'LU'),
	('LUS', 'La Unión Sur', 'LU'),
	('MON', 'Morazán Norte', 'MO'),
	('MOS', 'Morazán Sur', 'MO'),
	('SAN', 'Santa Ana Norte', 'SA'),
	('SAC', 'Santa Ana Centro', 'SA'),
	('SAE', 'Santa Ana Este', 'SA'),
	('SAO', 'Santa Ana Oeste', 'SA'),
	('SMN', 'San Miguel Norte', 'SM'),
	('SMC', 'San Miguel Centro', 'SM'),
	('SMO', 'San Miguel Oeste', 'SM'),
	('SSN', 'San Salvador Norte', 'SS'),
	('SSO', 'San Salvador Oeste', 'SS'),
	('SSE', 'San Salvador Este', 'SS'),
	('SSC', 'San Salvador Centro', 'SS'),
	('SSS', 'San Salvador Sur', 'SS'),
	('SVN', 'San Vicente Norte', 'SV'),
	('SVS', 'San Vicente Sur', 'SV'),
	('SON', 'Sonsonate Norte', 'SO'),
	('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO'),
	('USN', 'Usulután Norte', 'US'),
	('USE', 'Usulután Este', 'US'),
	('USO', 'Usulután Oeste', 'US');
go
select * from Municipios;

go
-- Distritos
insert into Distritos values
-- ID_Distrito, Distrito, ID_Municipio
-- Ahuachapan
	('AHN01', 'Atiquizaya', 'AHN'),
	('AHN02', 'El Refugio', 'AHN'),
	('AHN03', 'San Lorenzo', 'AHN'),
	('AHN04', 'Turín', 'AHN'),
	('AHC01', 'Ahuachapán', 'AHC'),
	('AHC02', 'Apaneca', 'AHC'),
	('AHC03', 'Concepción de Ataco', 'AHC'),
	('AHC04', 'Tacuba', 'AHC'),
	('AHS01', 'Guaymango', 'AHS'),
	('AHS02', 'Jujutla', 'AHS'),
	('AHS03', 'San Francisco Menéndez', 'AHS'),
	('AHS04', 'San Pedro Puxtla', 'AHS'),
-- Cabañas
	('CAE01', 'Sensuntepeque', 'CAE'),
	('CAE02', 'Victoria', 'CAE'),
	('CAE03', 'Dolores', 'CAE'),
	('CAE04', 'Guacotecti', 'CAE'),
	('CAE05', 'San Isidro', 'CAE'),
	('CAO01', 'Ilobasco', 'CAO'),
	('CAO02', 'Tejutepeque', 'CAO'),
	('CAO03', 'Jutiapa', 'CAO'),
	('CAO04', 'Cinquera', 'CAO'),
-- Chalatenango
	('CHN01', 'La Palma', 'CHN'),
	('CHN02', 'Citalá', 'CHN'),
	('CHN03', 'San Ignacio', 'CHN'),
	('CHC01', 'Nueva Concepción', 'CHC'),
	('CHC02', 'Tejutla', 'CHC'),
	('CHC03', 'La Reina', 'CHC'),
	('CHC04', 'Agua Caliente', 'CHC'),
	('CHC05', 'Dulce Nombre de María', 'CHC'),
	('CHC06', 'El Paraíso', 'CHC'),
	('CHC07', 'San Fernando', 'CHC'),
	('CHC08', 'San Francisco Morazán', 'CHC'),
	('CHC09', 'San Rafael', 'CHC'),
	('CHC10', 'Santa Rita', 'CHC'),
	('CHS01', 'Chalatenango', 'CHS'),
	('CHS02', 'Arcatao', 'CHS'),
	('CHS03', 'Azacualpa', 'CHS'),
	('CHS04', 'Comalapa', 'CHS'),
	('CHS05', 'Concepción Quezaltepeque', 'CHS'),
	('CHS06', 'El Carrizal', 'CHS'),
	('CHS07', 'La Laguna', 'CHS'),
	('CHS08', 'Las Vueltas', 'CHS'),
	('CHS09', 'Nombre de Jesús', 'CHS'),
	('CHS10', 'Nueva Trinidad', 'CHS'),
	('CHS11', 'Ojos de Agua', 'CHS'),
	('CHS12', 'Potonico', 'CHS'),
	('CHS13', 'San Antonio de La Cruz', 'CHS'),
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),
	('CHS15', 'San Francisco Lempa', 'CHS'),
	('CHS16', 'San Isidro Labrador', 'CHS'),
	('CHS17', 'San José Cancasque', 'CHS'),
	('CHS18', 'San Miguel de Mercedes', 'CHS'),
	('CHS19', 'San José Las Flores', 'CHS'),
	('CHS20', 'San Luis del Carmen', 'CHS'),
-- Cuscatlán
	('CUN01', 'Suchitoto', 'CUN'),
	('CUN02', 'San José Guayabal', 'CUN'),
	('CUN03', 'Oratorio de Concepción', 'CUN'),
	('CUN04', 'San Bartolomé Perulapía', 'CUN'),
	('CUN05', 'San Pedro Perulapán', 'CUN'),
	('CUS01', 'Cojutepeque', 'CUS'),
	('CUS02', 'San Rafael Cedros', 'CUS'),
	('CUS03', 'Candelaria', 'CUS'),
	('CUS04', 'Monte San Juan', 'CUS'),
	('CUS05', 'El Carmen', 'CUS'),
	('CUS06', 'San Cristobal', 'CUS'),
	('CUS07', 'Santa Cruz Michapa', 'CUS'),
	('CUS08', 'San Ramón', 'CUS'),
	('CUS09', 'El Rosario', 'CUS'),
	('CUS10', 'Santa Cruz Analquito', 'CUS'),
	('CUS11', 'Tenancingo', 'CUS'),
-- La Libertad
	('LLN01', 'Quezaltepeque', 'LLN'),
	('LLN02', 'San Matías', 'LLN'),
	('LLN03', 'San Pablo Tacachico', 'LLN'),
	('LLC01', 'San Juan Opico', 'LLC'),
	('LLC02', 'Ciudad Arce', 'LLC'),
	('LLO01', 'Colón', 'LLO'),
	('LLO02', 'Jayaque', 'LLO'),
	('LLO03', 'Sacacoyo', 'LLO'),
	('LLO04', 'Tepecoyo', 'LLO'),
	('LLO05', 'Talnique', 'LLO'),
	('LLE01', 'Antiguo Cuscatlán', 'LLE'),
	('LLE02', 'Huizúcar', 'LLE'),
	('LLE03', 'Nuevo Cuscatlán', 'LLE'),
	('LLE04', 'San José Villanueva', 'LLE'),
	('LLE05', 'Zaragoza', 'LLE'),
	('LLS01', 'Comasagua', 'LLS'),
	('LLS02', 'Santa Tecla', 'LLS'),
	('LLT01', 'Chiltiupán', 'LLT'),
	('LLT02', 'Jicalapa', 'LLT'),
	('LLT03', 'La Libertad', 'LLT'),
	('LLT04', 'Tamanique', 'LLT'),
	('LLT05', 'Teotepeque', 'LLT'),
-- La Paz
	('LPO01', 'Cuyultitan', 'LPO'),
	('LPO02', 'Olocuilta', 'LPO'),
	('LPO03', 'San Juan Talpa', 'LPO'),
	('LPO04', 'San Luis Talpa', 'LPO'),
	('LPO05', 'San Pedro Masahuat', 'LPO'),
	('LPO06', 'Tapalhuaca', 'LPO'),
	('LPO07', 'San Francisco Chinameca', 'LPO'),
	('LPC01', 'El Rosario', 'LPC'),
	('LPC02', 'Jerusalén', 'LPC'),
	('LPC03', 'Mercedes La Ceiba', 'LPC'),
	('LPC04', 'Paraíso de Osorio', 'LPC'),
	('LPC05', 'San Antonio Masahuat', 'LPC'),
	('LPC06', 'San Emigdio', 'LPC'),
	('LPC07', 'San Juan Tepezontes', 'LPC'),
	('LPC08', 'San Luís La Herradura', 'LPC'),
	('LPC09', 'San Miguel Tepezontes', 'LPC'),
	('LPC10', 'San Pedro Nonualco', 'LPC'),
	('LPC11', 'Santa María Ostuma', 'LPC'),
	('LPC12', 'Santiago Nonualco', 'LPC'),
	('LPE01', 'San Juan Nonualco', 'LPE'),
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),
	('LPE03', 'Zacatecoluca', 'LPE'),
-- La Unión
	('LUN01', 'Anamorós', 'LUN'),
	('LUN02', 'Bolivar', 'LUN'),
	('LUN03', 'Concepción de Oriente', 'LUN'),
	('LUN04', 'El Sauce', 'LUN'),
	('LUN05', 'Lislique', 'LUN'),
	('LUN06', 'Nueva Esparta', 'LUN'),
	('LUN07', 'Pasaquina', 'LUN'),
	('LUN08', 'Polorós', 'LUN'),
	('LUN09', 'San José La Fuente', 'LUN'),
	('LUN10', 'Santa Rosa de Lima', 'LUN'),
	('LUS01', 'Conchagua', 'LUS'),
	('LUS02', 'El Carmen', 'LUS'),
	('LUS03', 'Intipucá', 'LUS'),
	('LUS04', 'La Unión', 'LUS'),
	('LUS05', 'Meanguera del Golfo', 'LUS'),
	('LUS06', 'San Alejo', 'LUS'),
	('LUS07', 'Yayantique', 'LUS'),
	('LUS08', 'Yucuaiquín', 'LUS'),
-- Morazán
	('MON01', 'Arambala', 'MON'),
	('MON02', 'Cacaopera', 'MON'),
	('MON03', 'Corinto', 'MON'),
	('MON04', 'El Rosario', 'MON'),
	('MON05', 'Joateca', 'MON'),
	('MON06', 'Jocoaitique', 'MON'),
	('MON07', 'Meanguera', 'MON'),
	('MON08', 'Perquín', 'MON'),
	('MON09', 'San Fernando', 'MON'),
	('MON10', 'San Isidro', 'MON'),
	('MON11', 'Torola', 'MON'),
	('MOS01', 'Chilanga', 'MOS'),
	('MOS02', 'Delicias de Concepción', 'MOS'),
	('MOS03', 'El Divisadero', 'MOS'),
	('MOS04', 'Gualococti', 'MOS'),
	('MOS05', 'Guatajiagua', 'MOS'),
	('MOS06', 'Jocoro', 'MOS'),
	('MOS07', 'Lolotiquillo', 'MOS'),
	('MOS08', 'Osicala', 'MOS'),
	('MOS09', 'San Carlos', 'MOS'),
	('MOS10', 'San Francisco Gotera', 'MOS'),
	('MOS11', 'San Simón', 'MOS'),
	('MOS12', 'Sensembra', 'MOS'),
	('MOS13', 'Sociedad', 'MOS'),
	('MOS14', 'Yamabal', 'MOS'),
	('MOS15', 'Yoloaiquín', 'MOS'),
-- Santa Ana
	('SAN01', 'Masahuat', 'SAN'),
	('SAN02', 'Metapán', 'SAN'),
	('SAN03', 'Santa Rosa Guachipilín', 'SAN'),
	('SAN04', 'Texistepeque', 'SAN'),
	('SAC01', 'Santa Ana', 'SAC'),
	('SAE01', 'Coatepeque', 'SAE'),
	('SAE02', 'El Congo', 'SAE'),
	('SAO01', 'Candelaria de la Frontera', 'SAO'),
	('SAO02', 'Chalchuapa', 'SAO'),
	('SAO03', 'El Porvenir', 'SAO'),
	('SAO04', 'San Antonio Pajonal', 'SAO'),
	('SAO05', 'San Sebastián Salitrillo', 'SAO'),
	('SAO06', 'Santiago de La Frontera', 'SAO'),
-- San Miguel
	('SMN01', 'Ciudad Barrios', 'SMN'),
	('SMN02', 'Sesori', 'SMN'),
	('SMN03', 'Nuevo Edén de San Juan', 'SMN'),
	('SMN04', 'San Gerardo', 'SMN'),
	('SMN05', 'San Luis de La Reina', 'SMN'),
	('SMN06', 'Carolina', 'SMN'),
	('SMN07', 'San Antonio del Mosco', 'SMN'),
	('SMN08', 'Chapeltique', 'SMN'),
	('SMC01', 'San Miguel', 'SMC'),
	('SMC02', 'Comacarán', 'SMC'),
	('SMC03', 'Uluazapa', 'SMC'),
	('SMC04', 'Moncagua', 'SMC'),
	('SMC05', 'Quelepa', 'SMC'),
	('SMC06', 'Chirilagua', 'SMC'),
	('SMO01', 'Chinameca', 'SMO'),
	('SMO02', 'Nueva Guadalupe', 'SMO'),
	('SMO03', 'Lolotique', 'SMO'),
	('SMO04', 'San Jorge', 'SMO'),
	('SMO05', 'San Rafael Oriente', 'SMO'),
	('SMO06', 'El Tránsito', 'SMO'),
-- San Salvador
	('SSN01', 'Aguilares', 'SSN'),
	('SSN02', 'El Paisnal', 'SSN'),
	('SSN03', 'Guazapa', 'SSN'),
	('SSO01', 'Apopa', 'SSO'),
	('SSO02', 'Nejapa', 'SSO'),
	('SSE01', 'Ilopango', 'SSE'),
	('SSE02', 'San Martín', 'SSE'),
	('SSE03', 'Soyapango', 'SSE'),
	('SSE04', 'Tonacatepeque', 'SSE'),
	('SSC01', 'Ayutuxtepeque', 'SSC'),
	('SSC02', 'Mejicanos', 'SSC'),
	('SSC03', 'San Salvador', 'SSC'),
	('SSC04', 'Cuscatancingo', 'SSC'),
	('SSC05', 'Ciudad Delgado', 'SSC'),
	('SSS01', 'Panchimalco', 'SSS'),
	('SSS02', 'Rosario de Mora', 'SSS'),
	('SSS03', 'San Marcos', 'SSS'),
	('SSS04', 'Santo Tomás', 'SSS'),
	('SSS05', 'Santiago Texacuangos', 'SSS'),
-- San Vicente
	('SVN01', 'Apastepeque', 'SVN'),
	('SVN02', 'Santa Clara', 'SVN'),
	('SVN03', 'San Ildefonso', 'SVN'),
	('SVN04', 'San Esteban Catarina', 'SVN'),
	('SVN05', 'San Sebastián', 'SVN'),
	('SVN06', 'San Lorenzo', 'SVN'),
	('SVN07', 'Santo Domingo', 'SVN'),
	('SVS01', 'San Vicente', 'SVS'),
	('SVS02', 'Guadalupe', 'SVS'),
	('SVS03', 'Verapaz', 'SVS'),
	('SVS04', 'Tepetitán', 'SVS'),
	('SVS05', 'Tecoluca', 'SVS'),
	('SVS06', 'San Cayetano Istepeque', 'SVS'),
-- Sonsonate
	('SON01', 'Juayúa', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatitán', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzmán', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Julián', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuatán', 'SOE'),
	('SOO01', 'Acajutla', 'SOO'),
-- Usulután
	('USN01', 'Santiago de María', 'USN'),
	('USN02', 'Alegría', 'USN'),
	('USN03', 'Berlín', 'USN'),
	('USN04', 'Mercedes Umaña', 'USN'),
	('USN05', 'Jucuapa', 'USN'),
	('USN06', 'El triunfo', 'USN'),
	('USN07', 'Estanzuelas', 'USN'),
	('USN08', 'San Buenaventura', 'USN'),
	('USN09', 'Nueva Granada', 'USN'),
	('USE01', 'Usulután', 'USE'),
	('USE02', 'Jucuarán', 'USE'),
	('USE03', 'San Dionisio', 'USE'),
	('USE04', 'Concepción Batres', 'USE'),
	('USE05', 'Santa María', 'USE'),
	('USE06', 'Ozatlán', 'USE'),
	('USE07', 'Tecapán', 'USE'),
	('USE08', 'Santa Elena', 'USE'),
	('USE09', 'California', 'USE'),
	('USE10', 'Ereguayquín', 'USE'),
	('USO01', 'Jiquilisco', 'USO'),
	('USO02', 'Puerto El Triunfo', 'USO'),
	('USO03', 'San Agustín', 'USO'),
	('USO04', 'San Francisco Javier', 'USO');
go
select * from Distritos;
go
-- Direcciones 
insert into Direcciones values
-- Linea1, Linea2, ID_Distrito, CodigoPostal
	('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),  -- 1					
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'), -- 2
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'), -- 3
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'), -- 4
	('Col La Frontera, Calle 5, #5G', 'Km 10', 'AHS03', '02113'), -- 5
	('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 6
	('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SSC03', '01101'), -- 7
	('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'AHS01', '02114'),-- 8
	('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'LLO01', '01115'),-- 9
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305');-- 10
go
select * from Direcciones;

-- EMPLEADOS
-- Cargos
go
insert into Cargos values
-- Cargo
	('SysAdmin'),
	('Gerente'), -- Responsable del funcionamiento general del hotel y de la calidad del servicio
    ('Recepcionista'), -- Es la persona que representa al hotel ante los huéspedes
	('RRHH'); -- Recursos Humanos
go
select * from Cargos;
go
-- Empleados
insert into Empleados values
-- DUI_Empleado, ISSS, Nombres, Apellidos, FechaNac, Telefono, Correo, ID_Cargo, ID_Direccion
	('04523695-5', '906325698', 'Kevin Javier', 'Rodas Gonzalez', '01-01-1995', '6532-4526', 'kevin@hotmail.com', '1', '1'),
	('04321098-7', '963852741', 'Diego Franciso', 'Sanchez Castro', '02-02-1990', '7895-5698', 'diego@gmail.com', '2', '2'),
	('03210987-4', '321654987', 'Raul Edgardo', 'Del Valle Garcia', '03-03-1980', '6598-2548', 'raul@outlook.com', '3', '3'),
	('06789012-1', '951753258', 'Mary Carmen', 'Perez de Hernandez', '04-04-1985', '7965-2526', 'may@yahoo.com', '4', '4');
go
select * from Empleados;
go
insert into Clientes values
--  NombresClientes, ApellidosCliente, DUI_Cliente, FechaNacCliente, Telefono, Correo, ID_Direccion
	('Juan Antonio', 'Martinez Saavedra', '07654321-3', '1995-06-06', '6245-1231' ,'Juan@yahoo.com', '1'),
	('Maria del Carmen', 'Rodriguez de Torres', '06789012-7','1996-05-05', '7242-9034', 'Maria@gmail.com', '2'),
	('Ana Laura', 'Gonzalez Fernandez', '02345678-4', '1997-04-04', '7848-1888', 'ana@hotmail.com', '3'),
	('Jose David', 'Perez Torres', '08901234-2', '1998-03-03', '6206-6872', 'jose@outlook.com', '4'),
	('Laura Helena', 'Diaz de Nochez', '05432109-5', '1999-02-02', '6424-8037', 'laura@gmail.com', '5'),
	('Carlos Andres', 'Ramirez Martinez', '02109876-6', '2000-01-01', '7424-7820', 'carlos@yahoo.com', '6');
go
select * from Clientes;
go
insert into Tarifas_Habitaciones values
-- FechaEntrada, FechaSalida, PrecioPorNoche
('2023-07-20', '2023-07-22', '100.00'),
('2023-08-01', '2023-08-03', '150.00'),
('2023-09-01', '2023-09-03', '200.00'),
('2023-10-01', '2023-10-03', '250.00'),
('2023-11-01', '2023-11-03', '300.00');
go
insert into Habitaciones values
-- TipoHabitación,	Capacidad,	Comodidades, ID_Tarifa
('Habitación Individual', '1', 'TV,aire acondicionado',	'1'),
('Doble', '2',	'TV, aire acondicionado, baño privado',	'2'),
('Suite', '3',	'TV, aire acondicionado, baño privado, jacuzzi', '3'),
('Habitación Familiar',	'4', 'TV, aire acondicionado, baño privado, cocina', '4'),
('Habitación Deluxe',	'5', 'TV, aire acondicionado, baño privado, jacuzzi, terraza', '5');
go
select * from Habitaciones;
go
-- MANEJO DE ROLES
-- Opciones
insert into Opciones values
-- NombreOpcion
	('Gestionar Cuentas'), -- 1
	('Gestionar Departamentos'),  -- 2
	('Gestionar Municipios'), -- 3
	('Gestionar Distritos'), -- 4
	('Gestionar Direcciones'), -- 5
	('Gestionar Cargos'),-- 6
	('Gestionar Empleados'), -- 7
	('Gestionar Clientes'), -- 8
	('Gestionar Tarifas_Habitaciones'), -- 9
	('Gestionar Habitaciones'), -- 10
	('Gestionar Opciones'), -- 11
	('Gestionar Roles'), -- 12
	('Gestionar AsignacionRolesOpciones'), -- 13
	('Gestionar Usuarios'), -- 14
	('Gestionar Reservaciones'), -- 15
	('Gestionar Tipos_de_Servicios'), -- 16
	('Gestionar Servicios_Adicionales'), -- 17
	('Gestionar Uso_Servicios'), -- 18
	('Gestionar Pagos'), -- 19
	('Gestionar Proveedores'), -- 20
	('Gestionar Eventos'); -- 21
go
select * from Opciones;

-- Roles
go
insert into Roles values
-- NombreRol
	('SysAdmin'), -- 1
	('Gerente'), -- 2
	('Recepcionista'),  -- 3
	('RRHH');  -- 4
go
select * from Roles;

-- AsignacionesRolesOpciones
go
insert into AsignacionRolesOpciones values
-- ID_Rol, ID_Opcion
	-- SysAdmin: Todos los permisos
	('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), 
	('1', '5'), ('1', '6'), ('1', '7'), ('1', '8'),
	('1', '9'), ('1', '10'), ('1', '11'), ('1', '12'),
	('1', '13'), ('1', '14'), ('1', '15'), ('1', '16'),
	('1', '17'), ('1', '18'), ('1', '19'), ('1', '20'), ('1', '21'),
	-- Gerente: 
	('2', '5'),  -- Direcciones
	('2', '7'), -- Empleados
	('2', '8'), -- Clientes
	('2', '10'), -- Habitaciones
	('2', '15'), -- Reservaciones
	('2', '16'), -- Tipos_de_Servicios
	('2', '17'), -- Servicios_Adicionales
	('2', '18'), -- Uso_Servicios
	('2', '19'), -- Pagos
	('2', '20'), -- Proveedores
	('2', '21'), -- Eventos
	-- Recepcionista:
	('3', '5'),  -- Direcciones
	('3', '8'), -- Clientes
	('3', '8'), -- Tarifas_Habitaciones
	('3', '9'), -- Habitaciones
	('3', '15'),-- Reservaciones
	-- RRHH:
	('4', '5'),  -- Direcciones
	('4', '6'),  -- Cargos
	('4', '7'),  -- Empleados
	('4', '8');  -- Clientes
go
select * from AsignacionRolesOpciones;
go
insert into Usuarios values
	-- ID_Empleado, ID_Rol, Usuario, Clave
	-- Administrador
	('1', '1', 'admin_kevinrodas', 'root'),
	-- Gerente
	('2', '2', 'ger_diegosanchez', 'Sanchez1234'),
	-- Recepcionista
	('2', '3', 'reç_rauldvalle', 'Valle1234'),
	-- RRHH
	('4', '4', 'rrhh_maryperez', 'Perez1234');
go
select * from Usuarios;
go
insert into Proveedores values
-- NombreDelProveedor, Telefono, Correo
('Empresa de Limpieza', '1234-6789', 'limpieza@empresa.com'),
('Empresa de Alimentos', '2345-7890', 'alimentos@empresa.com'),
('Empresa de Mantenimiento', '3456-8901', 'mantenimiento@empresa.com'),
('Empresa de Eventos', '4567-8012', 'eventos@empresa.com'),
('Empresa de Viajes', '5678-9023', 'viajes@empresa.com');
go
select * from  Proveedores;
go
insert into Pagos values
-- MetodoPago, FechaPago, ImportePago, FechaVencimiento, ID_Proveedor
('Tarjeta de Crédito', '2023-07-31', '1000', '2023-08-15', '1'),
('Efectivo', '2023-08-02', '2000', '2023-08-17', '2'),
('Transferencia Bancaria', '2023-08-05', '3000', '2023-08-19', '3'),
('Cheque', '2023-08-08', '4000', '2023-08-21', '4'),
('Paypal', '2023-08-11', '5000', '2023-08-23', '5');
go
select * from  Pagos;
go
insert into Reservaciones values
-- ID_Cliente, Numero_Habitacion, ID_Empleado, FechaEntrada, FechaSalida, ID_Pago
('1', '1', '1', '2023-08-01', '2023-08-03', '1'),
('2', '2', '2', '2023-08-04', '2023-08-06','2'),
('3', '3', '3', '2023-08-07', '2023-08-09', '3'),
('4', '4', '4', '2023-08-10', '2023-08-12', '4'),
('5', '5', '3', '2023-08-13', '2023-08-15', '5');
go
select * from Reservaciones;
go
insert into Tipos_de_Servicios values
-- TipoDeServicio
('Desayuno'),
('Comida'),
('Cena'),
('Limpieza de Habitación'),
('Servicio de Habitaciones');
go
select * from Tipos_de_Servicios;
go
insert into Servicios_Adicionales values
-- ID_TipoServicio, Precio
('1', '20'),
('2', '30'),
('3', '40'),
('4', '50'),
('5', '60');
go
select * from Servicios_Adicionales;
go
insert into Uso_servicios values 
-- ID_Reservacion, ID_Servicio, Numero_Habitacion, cantidad, FechaUso
('1', '1', '1', '1', '2023-08-01'),
('2', '2', '2', '2', '2023-08-04'),
('3', '3', '3', '3', '2023-08-07'),
('4', '4', '4', '4', '2023-08-10'),
('5', '5', '5', '5', '2023-08-13');
go
select * from Uso_servicios;
go
insert into Eventos values
--Nombre, Fecha, HoraInicio, HoraFin, Descripcion, NumeroInvitados, ID_Habitacion, ID_Cliente, ID_Empleado
('Fiesta de Cumpleaños', '2023-08-01', '19:00', '23:00', 'Fiesta de cumpleaños para un niño de 10 años', '20', '1', '1', '1'),
('Conferencia de Negocios', '2023-08-04', '09:00', '18:00', 'Conferencia sobre el futuro de la tecnología', '100', '2', '2', '2'),
('Reunión Familiar', '2023-08-07', '12:00', '16:00', 'Reunión familiar para celebrar un aniversario', '50', '3', '3', '3'),
('Boda', '2023-08-10', '17:00', '22:00', 'Boda de una pareja joven', '100', '4', '4', '4'),
('Concierto', '2023-08-13', '20:00', '23:00', 'Concierto de una banda de rock', '200', '5', '5', '2');
go
select * from  Eventos;
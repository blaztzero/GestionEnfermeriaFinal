CREATE DATABASE GestionEnfermeria;
GO
USE [GestionEnfermeria]
GO
/****** Object:  Table [dbo].[ArriendoVehiculos]    Script Date: 7/13/2022 7:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArriendoVehiculos](
	[RutCliente] [char](10) NOT NULL,
	[NombreCliente] [char](50) NULL,
	[TipoVehiculo] [char](20) NULL,
	[DiasArriendo] [char](5) NULL,
	[TotalNominal] [char](10) NULL,
	[Descuentos] [char](10) NULL,
	[Interes] [char](10) NULL,
	[MetodoDePago] [char](15) NULL,
 CONSTRAINT [PK_ArriendoVehiculos] PRIMARY KEY CLUSTERED 
(
	[RutCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BonosFonasa]    Script Date: 7/13/2022 7:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BonosFonasa](
	[idBonoFonasa] [numeric](18, 0) IDENTITY(789,1) NOT NULL,
	[rutBeneficiario] [varchar](50) NULL,
	[nombreBeneficiario] [varchar](50) NULL,
	[rutTitular] [varchar](50) NULL,
	[nombreTitular] [varchar](50) NULL,
	[rutPrestador] [varchar](50) NULL,
	[nombrePrestador] [varchar](50) NULL,
	[prestacionMedica] [varchar](50) NULL,
	[valorTotal] [varchar](50) NULL,
	[nivel] [varchar](50) NULL,
	[folio] [varchar](50) NULL,
	[fechaHoraIngreso] [varchar](50) NULL,
 CONSTRAINT [PK_BonosFonasa] PRIMARY KEY CLUSTERED 
(
	[idBonoFonasa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pacientes]    Script Date: 7/13/2022 7:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pacientes](
	[Rut] [char](12) NOT NULL,
	[Nombre] [char](30) NOT NULL,
	[Direccion] [char](30) NULL,
	[Ciudad] [char](20) NULL,
	[Fono] [numeric](9, 0) NULL,
	[Afiliacion] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 7/13/2022 7:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [numeric](18, 0) IDENTITY(221,1) NOT NULL,
	[NombreUsuario] [nvarchar](50) NULL,
	[Clave] [varchar](50) NULL,
	[TipoUsuario] [nvarchar](50) NULL,
	[Nombres] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitasEnfermeria]    Script Date: 7/13/2022 7:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitasEnfermeria](
	[IdVisita] [numeric](10, 0) IDENTITY(558,1) NOT NULL,
	[RutPaciente] [char](11) NULL,
	[NombrePaciente] [char](50) NULL,
	[DireccionVisita] [char](60) NULL,
	[Afiliacion] [char](30) NULL,
	[FonoCliente] [char](20) NULL,
	[NombreProfesional] [char](40) NULL,
	[FechaVisita] [char](15) NULL,
	[Procedimientos] [char](200) NULL,
	[Medicamentos] [char](200) NULL,
	[Insumos] [char](200) NULL,
	[Tratamientos] [char](200) NULL,
 CONSTRAINT [PK_VisitasEnfermeria] PRIMARY KEY CLUSTERED 
(
	[IdVisita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'111555-8  ', N'Guillermo                                         ', N'Automovil           ', N'60   ', N'959400    ', N'191880    ', N'95940     ', N'Transferencia  ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'11222333-4', N'Daniela Gonzales                                  ', N'Camioneta           ', N'15   ', N'146250    ', N'14625     ', N'0         ', N'Efectivo       ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'11222333-5', N'El Jordan 23                                      ', N'Camioneta           ', N'40   ', N'759600    ', N'151920    ', N'151920    ', N'Credito        ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'11222333-6', N'Francisco Pérez                                   ', N'Camioneta           ', N'38   ', N'607620    ', N'121524    ', N'60762     ', N'Transferencia  ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'21234654  ', N'Benjamin                                          ', N'Automovil           ', N'60   ', N'585000    ', N'117000    ', N'117000    ', N'Credito        ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'2123465-6 ', N'Benjamin                                          ', N'Automovil           ', N'60   ', N'1139400   ', N'227880    ', N'227880    ', N'Credito        ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'21234657  ', N'Victor Cerda                                      ', N'Camioneta           ', N'75   ', N'900000    ', N'180000    ', N'0         ', N'Efectivo       ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'2123467-6 ', N'Juan Huachipoco                                   ', N'Automovil           ', N'60   ', N'1139400   ', N'227880    ', N'113940    ', N'Transferencia  ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'21234787-6', N'Marcos Terreros                                   ', N'Camioneta           ', N'75   ', N'2088750   ', N'417750    ', N'0         ', N'Efectivo       ')
INSERT [dbo].[ArriendoVehiculos] ([RutCliente], [NombreCliente], [TipoVehiculo], [DiasArriendo], [TotalNominal], [Descuentos], [Interes], [MetodoDePago]) VALUES (N'80104579-6', N'Victor Cerda                                      ', N'Camion              ', N'22   ', N'2088750   ', N'417750    ', N'208875    ', N'Transferencia  ')
GO
SET IDENTITY_INSERT [dbo].[BonosFonasa] ON 

INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(789 AS Numeric(18, 0)), N'11222333-4', N'victor peres gonzales', N'11222333-5', N'victor peres gongalez', N'78526785-5', N'NiursingMedical curaciones LDTA', N'VisitaEnfermeria nivel 1', N'20058', N'1', N'85785458985854', N'10/06/2022 13:14:16')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(790 AS Numeric(18, 0)), N'qwerf', N'ewqrtg', N'qwrtgfdbwq', N'hola', N'hola', N'hola', N'hola', N'2132412', N'Nivel 1', N'fsdfds', N'hola')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(791 AS Numeric(18, 0)), N'hola', N'andrea gonzales gutierres', N'gdsahb', N'fdtfd', N'hola', N'hola', N'hola', N'20341', N'Nivel 1', N'fsdfds', N'hola')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(792 AS Numeric(18, 0)), N'1245454-5', N'andrea gonzales gutierres', N'gdsahb', N'fdtfd', N'hola', N'hola', N'hola', N'20341', N'Nivel 1', N'fsdfds', N'hola')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(793 AS Numeric(18, 0)), N'1245454-5', N'andrea gonzales gutierres', N'1544785-5', N'andrea gonzales gutierres', N'hola', N'hola', N'hola', N'20341', N'Nivel 1', N'fsdfds', N'hola')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(794 AS Numeric(18, 0)), N'1245454-5', N'andrea gonzales gutierres', N'7894546546', N'andrea gonzales gutierres', N'hola', N'NiursingHome Servicios LDTA', N'hola', N'20341', N'Nivel 1', N'fsdfds', N'hola')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(795 AS Numeric(18, 0)), N'1245454-5', N'andrea gonzales gutierres', N'7894546546', N'andrea gonzales gutierres', N'hola', N'NiursingHome Servicios LDTA', N'Fg10-CirujiaMenor', N'20341', N'Nivel 1', N'fsdfds', N'hola')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(796 AS Numeric(18, 0)), N'17456852-8', N'Jose luis rordrigres', N'17465852-8', N'Jose luis rordrigres', N'hola', N'NiursingHome Servicios LDTA', N'Fg10-CirujiaMenor', N'20341', N'Nivel 1', N'fsdfds', N'7/12/2022 10:48:48 AM')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(797 AS Numeric(18, 0)), N'19785412-5', N'javiera araneda penalief', N'8010456-7', N'nolverto araneda giliperes', N'hola', N'NiursingHome Servicios LDTA', N'Fg10-CirujiaMenor', N'20341', N'Nivel 1', N'78945678945648', N'7/12/2022 10:54:40 AM')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(798 AS Numeric(18, 0)), N'22055555-5', N'Maylok alonoso huenlachusp', N'16462785-9', N'Natalia ahumada gutieeres', N'7854584-8', N'NiursingHome Servicios LDTA', N'Fg10-CirujiaMenor', N'2132412', N'Nivel 1', N'898554584567889', N'7/12/2022 10:57:49 AM')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(799 AS Numeric(18, 0)), N'7521453-9', N'guillermina hortelniales jara', N'6521453-9', N'Jose alfaro peres', N'7854584-8', N'NiursingHome Servicios LDTA', N'Fg75-CirujiaMenor-Escaras', N'60000', N'True', N'51649816785455', N'7/12/2022 11:02:20 AM')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(800 AS Numeric(18, 0)), N'678546-9', N'Jose luis rordrigres', N'8010456-7', N'Jose luis rordrigres', N'7854584-8', N'NiursingHome Servicios LDTA', N'Fg75-CirujiaMenor-Escaras', N'58962', N'Nivel 3', N'51649816785455', N'7/12/2022 11:04:36 AM')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(801 AS Numeric(18, 0)), N'1245454-5', N'javiera araneda penalief', N'8010456-7', N'andrea gonzales gutierres', N'7854584-8', N'NiursingHome Servicios LDTA', N'Fg75-CirujiaMenor-Escaras', N'20341', N'Nivel 2', N'51649816785455', N'7/12/2022 7:33:53 PM')
INSERT [dbo].[BonosFonasa] ([idBonoFonasa], [rutBeneficiario], [nombreBeneficiario], [rutTitular], [nombreTitular], [rutPrestador], [nombrePrestador], [prestacionMedica], [valorTotal], [nivel], [folio], [fechaHoraIngreso]) VALUES (CAST(802 AS Numeric(18, 0)), N'', N'', N'', N'', N'', N'', N'', N'', N'Nivel 1', N'', N'7/13/2022 9:27:56 AM')
SET IDENTITY_INSERT [dbo].[BonosFonasa] OFF
GO
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'11155541-8  ', N'andres peres                  ', N'pjs seadfsd 12546             ', N'Temuco              ', CAST(125465879 AS Numeric(9, 0)), N'Fonasa A  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'11155542-8  ', N'Benjamin peres henriquez      ', N'faites dejesne                ', N'Curico              ', CAST(98785487 AS Numeric(9, 0)), N'Fonasa D  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'11155545-8  ', N'Andrea Melo                   ', N'Av. Marín #014                ', N'Santiago            ', CAST(461545878 AS Numeric(9, 0)), N'Fonasa C  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'11222333-5  ', N'El Jordan 23                  ', N'pje Papelucho 4567            ', N'Concepcion          ', CAST(45879554 AS Numeric(9, 0)), N'Fonasa B  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'889874558   ', N'Cesar san Martin              ', N'psj huensenlao 12545          ', N'Concepcion          ', CAST(65154987 AS Numeric(9, 0)), N'Fonasa B  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'166973195   ', N'jose peres                    ', N'pje andres bello 4567         ', N'Coquinbo            ', CAST(45879554 AS Numeric(9, 0)), N'Fonasa D  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'5156491     ', N'Josefa Beltrán                ', N'calle central 4521            ', N'Pucon               ', CAST(985654521 AS Numeric(9, 0)), N'Fonasa A  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'5156492     ', N'Ernesto Alvear                ', N'AV Ernesto Alvear     123     ', N'talca               ', CAST(78545895 AS Numeric(9, 0)), N'Particular')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'21234654    ', N'Angel Henriquez               ', N'pje cerro chicharras    5878  ', N'Curico              ', CAST(65154987 AS Numeric(9, 0)), N'Fonasa A  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'11222333-9  ', N'Juan Peres                    ', N'faites dejesne                ', N'Seleccione          ', CAST(65154987 AS Numeric(9, 0)), N'Fonasa A  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'44555666-8  ', N'karina ramires                ', N'pje andres bello              ', N'Seleccione          ', CAST(45879554 AS Numeric(9, 0)), N'0         ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'55666222-7  ', N'karina ortis                  ', N'pje andres bello              ', N'Seleccione          ', CAST(45879554 AS Numeric(9, 0)), N'          ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'22416879-3  ', N'Marcos Terreros               ', N'AV Vic Mackenna 1202          ', N'Santiago            ', CAST(65154987 AS Numeric(9, 0)), N'Isapre    ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'11222333-4  ', N'Francisco Pérez               ', N'calle Altamirano 7130         ', N'Villarica           ', CAST(97854563 AS Numeric(9, 0)), N'Fonasa C  ')
INSERT [dbo].[pacientes] ([Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion]) VALUES (N'111111111-9 ', N'marcos                        ', N'direccion1                    ', N'Santiago            ', CAST(5552222 AS Numeric(9, 0)), N'Isapre    ')
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsuario], [Clave], [TipoUsuario], [Nombres], [Apellidos]) VALUES (CAST(221 AS Numeric(18, 0)), N'Camilo', N'inacap2022', N'Administrador', N'Camilo Max', N'Henriquez Naranjo')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsuario], [Clave], [TipoUsuario], [Nombres], [Apellidos]) VALUES (CAST(222 AS Numeric(18, 0)), N'Inacap', N'inacap2022', N'Usuario', N'Inacap', N'Centro de Formacion Tecnica')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsuario], [Clave], [TipoUsuario], [Nombres], [Apellidos]) VALUES (CAST(223 AS Numeric(18, 0)), N'carce', N'inacap2022', N'Administrador', N'Cesar', N'Arce Jara')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsuario], [Clave], [TipoUsuario], [Nombres], [Apellidos]) VALUES (CAST(224 AS Numeric(18, 0)), N'mterreros', N'inacap2022', N'Administrador', N'Marcos', N'Terreros Suazo')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[VisitasEnfermeria] ON 

INSERT [dbo].[VisitasEnfermeria] ([IdVisita], [RutPaciente], [NombrePaciente], [DireccionVisita], [Afiliacion], [FonoCliente], [NombreProfesional], [FechaVisita], [Procedimientos], [Medicamentos], [Insumos], [Tratamientos]) VALUES (CAST(558 AS Numeric(10, 0)), N'16697319-8 ', N'Camilo Henriquez                                  ', N'Pje Cerro Chicharras 04585                                  ', N'Fonasa D                      ', N'98547512            ', N'Natalia Quinteros                       ', N'27/06/2022     ', N'Extraccion de herida escara , curacion de zona afectada primera fase                                                                                                                                    ', N'paracetamol 50 gb                                                                                                                                                                                       ', N'bisturi                                                                                                                                                                                                 ', N'curar todos los dias                                                                                                                                                                                    ')
INSERT [dbo].[VisitasEnfermeria] ([IdVisita], [RutPaciente], [NombrePaciente], [DireccionVisita], [Afiliacion], [FonoCliente], [NombreProfesional], [FechaVisita], [Procedimientos], [Medicamentos], [Insumos], [Tratamientos]) VALUES (CAST(559 AS Numeric(10, 0)), N'11155545-8 ', N'Andrea Melo                                       ', N'pjs seadfsd 12546                                           ', N'Fonasa C                      ', N'125465879           ', N'Tens Nicolas Martines                   ', N'27/06/2022     ', N'Curacion Escara Nivel 1
Control de signos Vitales
Extraccion de ematoma
Limpieza y desinfeccion                                                                                                      ', N'tramadol 50gb
Paracetamol 500mg
Penicilina intravenosa 20mg                                                                                                                                           ', N'1 jeringa 10ml
1 jeringa 20ml
1 jelone
4 bisturi
4 gasas
cinta
parche cicatizante                                                                                                                 ', N'tratamiento en etapa 1 de 6 segun indicacion profesional.
cambiar gasas y parches en cada secion
quitar piel muerta segun tolerancia del paciente                                                     ')
INSERT [dbo].[VisitasEnfermeria] ([IdVisita], [RutPaciente], [NombrePaciente], [DireccionVisita], [Afiliacion], [FonoCliente], [NombreProfesional], [FechaVisita], [Procedimientos], [Medicamentos], [Insumos], [Tratamientos]) VALUES (CAST(560 AS Numeric(10, 0)), N'11155542-8 ', N'Benjamin peres henriquez                          ', N'faites dejesne                                              ', N'Fonasa D                      ', N'98785487            ', N'Tens Angi Vasquez                       ', N'27/06/2022     ', N'Curación herida plantar Nivel 2
Control de signos Vitales
Extracción de hematoma
Limpieza y desinfección                                                                                             ', N'tramadol 50gb
Paracetamol 500mg
Penicilina intravenosa 20mg                                                                                                                                           ', N'1 jeringa 10ml
1 jeringa 20ml
1 jelone
4 bisturi
4 gasas
cinta
parche cicatizante                                                                                                                 ', N'tratamiento en etapa 1 de 3 según indicación profesional.
cambiar gasas y parches en cada sesión
quitar piel muerta según tolerancia del paciente                                                     ')
INSERT [dbo].[VisitasEnfermeria] ([IdVisita], [RutPaciente], [NombrePaciente], [DireccionVisita], [Afiliacion], [FonoCliente], [NombreProfesional], [FechaVisita], [Procedimientos], [Medicamentos], [Insumos], [Tratamientos]) VALUES (CAST(561 AS Numeric(10, 0)), N'11155541-8 ', N'andres peres                                      ', N'pjs seadfsd 12546                                           ', N'Fonasa C                      ', N'125465879           ', N'Enfermera Natalia Quinteros             ', N'27/06/2022     ', N'Curación herida plantar Nivel 2
Control de signos Vitales
Extracción de hematoma
Limpieza y desinfección                                                                                             ', N'tramadol 50gb
Paracetamol 500mg
Penicilina intravenosa 20mg                                                                                                                                           ', N'1 jeringa 10ml
1 jeringa 20ml
1 jelone
4 bisturi
4 gasas
cinta
parche cicatizante                                                                                                                 ', N'tratamiento en etapa 1 de 3 según indicación profesional.
cambiar gasas y parches en cada sesión
quitar piel muerta según tolerancia del paciente                                                     ')
INSERT [dbo].[VisitasEnfermeria] ([IdVisita], [RutPaciente], [NombrePaciente], [DireccionVisita], [Afiliacion], [FonoCliente], [NombreProfesional], [FechaVisita], [Procedimientos], [Medicamentos], [Insumos], [Tratamientos]) VALUES (CAST(562 AS Numeric(10, 0)), N'889874558  ', N'Cesar san Martin                                  ', N'psj huensenlao 12545                                        ', N'Fonasa B                      ', N'65154987            ', N'Tens Rodolfo Cabezas                    ', N'27/06/2022     ', N'Curación herida plantar Nivel 2
Control de signos Vitales
Extracción de hematoma
Limpieza y desinfección                                                                                             ', N'tramadol 50gb
Paracetamol 500mg
Penicilina intravenosa 20mg                                                                                                                                           ', N'1 jeringa 10ml
1 jeringa 20ml
1 jaloné
4 bisturí
4 gasas
cinta
parche cicatrizante                                                                                                                ', N'tratamiento en etapa 1 de 3 según indicación profesional.
cambiar gasas y parches en cada sesión
quitar piel muerta según tolerancia del paciente                                                     ')
INSERT [dbo].[VisitasEnfermeria] ([IdVisita], [RutPaciente], [NombrePaciente], [DireccionVisita], [Afiliacion], [FonoCliente], [NombreProfesional], [FechaVisita], [Procedimientos], [Medicamentos], [Insumos], [Tratamientos]) VALUES (CAST(563 AS Numeric(10, 0)), N'11222333-5 ', N'El Jordan 23                                      ', N'pje Papelucho 4567                                          ', N'Fonasa A                      ', N'45879554            ', N'Tens Rodolfo Cabezas                    ', N'27/06/2022     ', N'Extracción de herida escara , curación de zona afectada primera fase                                                                                                                                    ', N'tramadol 50gb
Paracetamol 500mg
Penicilina intravenosa 20mg                                                                                                                                           ', N'1 jeringa 10ml
1 jeringa 20ml
1 jelone
4 bisturí
4 gasas
cinta
parche cicatrizante                                                                                                                ', N'tratamiento en etapa 1 de 6 según indicación profesional.
cambiar gasas y parches en cada sección
quitar piel muerta según tolerancia del paciente                                                    ')
SET IDENTITY_INSERT [dbo].[VisitasEnfermeria] OFF
GO

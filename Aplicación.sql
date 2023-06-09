USE [master]
GO
/****** Object:  Database [Aplicacion]    Script Date: 22/03/2023 11:16:22 a. m. ******/
CREATE DATABASE [Aplicacion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aplicacion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\aplicacion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aplicacion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\aplicacion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Aplicacion] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Aplicacion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Aplicacion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Aplicacion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Aplicacion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Aplicacion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Aplicacion] SET ARITHABORT OFF 
GO
ALTER DATABASE [Aplicacion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Aplicacion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Aplicacion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Aplicacion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Aplicacion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Aplicacion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Aplicacion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Aplicacion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Aplicacion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Aplicacion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Aplicacion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Aplicacion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Aplicacion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Aplicacion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Aplicacion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Aplicacion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Aplicacion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Aplicacion] SET RECOVERY FULL 
GO
ALTER DATABASE [Aplicacion] SET  MULTI_USER 
GO
ALTER DATABASE [Aplicacion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Aplicacion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Aplicacion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Aplicacion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Aplicacion] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Aplicacion] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Aplicacion', N'ON'
GO
ALTER DATABASE [Aplicacion] SET QUERY_STORE = OFF
GO
USE [Aplicacion]
GO
/****** Object:  Table [dbo].[Anamnesis]    Script Date: 22/03/2023 11:16:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anamnesis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumDoc1] [nchar](20) NULL,
	[MotivoConsulta] [nchar](500) NULL,
	[EstadActual] [nchar](400) NULL,
	[AntecedFamil] [nchar](400) NULL,
	[AntecedPesonal] [nchar](400) NULL,
	[Habitos] [nchar](300) NULL,
	[Peso] [nchar](10) NULL,
	[Talla] [nchar](10) NULL,
	[Pulso] [nchar](10) NULL,
	[Respiracion] [nchar](10) NULL,
	[PArterial] [nchar](10) NULL,
	[Evolucion] [nchar](10) NULL,
	[Estado] [nchar](10) NULL,
 CONSTRAINT [PK_Anamnesis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 22/03/2023 11:16:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nchar](10) NULL,
	[Nombre] [nchar](100) NULL,
	[Apellido] [nchar](100) NULL,
	[Medico] [nchar](30) NULL,
	[Turno] [nchar](10) NULL,
	[Fecha] [nchar](10) NULL,
	[Hora] [nchar](10) NULL,
 CONSTRAINT [PK_Citas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 22/03/2023 11:16:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nchar](10) NULL,
	[Contraseña] [nchar](10) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosPaciente]    Script Date: 22/03/2023 11:16:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosPaciente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NULL,
	[Apellido] [nchar](50) NULL,
	[TipoDoc] [nchar](64) NULL,
	[NumDoc] [nchar](20) NULL,
	[FechaNac] [nchar](30) NULL,
	[Telefono] [nchar](10) NULL,
	[Departamento] [nchar](30) NULL,
	[Ciudad] [nchar](30) NULL,
	[Sexo] [nchar](10) NULL,
	[Ocupacion] [nchar](40) NULL,
	[EstadCiv] [nchar](30) NULL,
	[Direccion] [nchar](50) NULL,
	[EPS] [nchar](50) NULL,
	[IPS] [nchar](50) NULL,
	[Regimen] [nchar](30) NULL,
	[Escolaridad] [nchar](30) NULL,
 CONSTRAINT [PK_DatosPaciente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Form_Medica]    Script Date: 22/03/2023 11:16:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form_Medica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [nchar](15) NULL,
	[Documento] [nchar](15) NULL,
	[Medico] [nchar](30) NULL,
	[Med_Recet] [nchar](100) NULL,
	[ModoUso] [nchar](500) NULL,
	[Recomendaciones] [nchar](500) NULL,
 CONSTRAINT [PK_Form_Medica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hora]    Script Date: 22/03/2023 11:16:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hora](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hora] [nchar](7) NULL,
 CONSTRAINT [PK_Hora] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 22/03/2023 11:16:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreMedic] [nchar](30) NULL,
	[TipoMedic] [nchar](50) NULL,
	[Componentes] [nchar](30) NULL,
	[ModoUso] [nchar](30) NULL,
	[EfectosSecund] [nchar](100) NULL,
	[Precauciones] [nchar](100) NULL,
	[Cantidad] [nchar](10) NULL,
 CONSTRAINT [PK_Medicamentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 22/03/2023 11:16:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Medico] [nchar](30) NULL,
 CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anamnesis] ON 

INSERT [dbo].[Anamnesis] ([Id], [NumDoc1], [MotivoConsulta], [EstadActual], [AntecedFamil], [AntecedPesonal], [Habitos], [Peso], [Talla], [Pulso], [Respiracion], [PArterial], [Evolucion], [Estado]) VALUES (1, N'1047595143          ', N'Amanezco con la cara hinchada                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', N'Paciente femenina de 27 años de edad primigestante (G1P0C0A0) quien acude a consulta por manifestar edema facial 
bilateral matutino de carácter leve que cede con las horas.
La paciente tambien refiere edema de miembro inferiores grado 2 de carácter vespertino y cuadros de cefaleas de aproximadamente dos horas 
que ceden al reposo y a la hidratacion                                              ', N' Padre: (vive) hiperuricemia
Madre: (vive)                                                                                                                                                                                                                                                                                                                                                                     ', N'Hábitos Tóxicos:
 Alcohol: niega
Tabaco: niega 
Drogas: niega
Infusiones: niega  
Fisiológicos:                                                                                                                                                                                                                                                                                                            ', N'Alimentación: 4 comidas al día, de preparacion en casa
Desayuno: 1 taza de café con leche, 1 vaso de jugo de naranja, media porcion de papaya y una arepa de quinoa y linaza                                                                                                                               ', N'56        ', N'159       ', N'70        ', N'19        ', N'121/79    ', N'N/A       ', N'Alta      ')
INSERT [dbo].[Anamnesis] ([Id], [NumDoc1], [MotivoConsulta], [EstadActual], [AntecedFamil], [AntecedPesonal], [Habitos], [Peso], [Talla], [Pulso], [Respiracion], [PArterial], [Evolucion], [Estado]) VALUES (2, N'1047595142          ', N'Mareos expontaneos                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'Posible caso de diabetes                                                                                                                                                                                                                                                                                                                                                                                        ', N'N/A                                                                                                                                                                                                                                                                                                                                                                                                             ', N'N/A                                                                                                                                                                                                                                                                                                                                                                                                             ', N'Alimentación en horarios inhabituales                                                                                                                                                                                                                                                                       ', N'60        ', N'165       ', N'65        ', N'15        ', N'115/28    ', N'N/A       ', N'En proceso')
INSERT [dbo].[Anamnesis] ([Id], [NumDoc1], [MotivoConsulta], [EstadActual], [AntecedFamil], [AntecedPesonal], [Habitos], [Peso], [Talla], [Pulso], [Respiracion], [PArterial], [Evolucion], [Estado]) VALUES (3, N'123234              ', N'dw                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'wd                                                                                                                                                                                                                                                                                                                                                                                                              ', N'14                                                                                                                                                                                                                                                                                                                                                                                                              ', N'46                                                                                                                                                                                                                                                                                                                                                                                                              ', N'afs                                                                                                                                                                                                                                                                                                         ', N'12        ', N'3         ', N'5         ', N'325       ', N'47        ', N'NINGUNA   ', N'En proceso')
SET IDENTITY_INSERT [dbo].[Anamnesis] OFF
GO
SET IDENTITY_INSERT [dbo].[Citas] ON 

INSERT [dbo].[Citas] ([Id], [Documento], [Nombre], [Apellido], [Medico], [Turno], [Fecha], [Hora]) VALUES (1, N'1047595143', N'Irene del Mar                                                                                       ', N'Cruz Char                                                                                           ', N'Nelia Palacio Valencia        ', N'Mañana    ', N'27/03/2023', N'7:00      ')
INSERT [dbo].[Citas] ([Id], [Documento], [Nombre], [Apellido], [Medico], [Turno], [Fecha], [Hora]) VALUES (2, N'1047595143', N'Irene del Mar                                                                                       ', N'Cruz Char                                                                                           ', N'Nelia Palacio Valencia        ', N'          ', N'          ', N'7:00      ')
INSERT [dbo].[Citas] ([Id], [Documento], [Nombre], [Apellido], [Medico], [Turno], [Fecha], [Hora]) VALUES (3, N'1047595143', N'Irene del Mar                                                                                       ', N'Cruz Char                                                                                           ', N'Nelia Palacio Valencia        ', N'Tarde     ', N'22/07/2023', N'9:40      ')
INSERT [dbo].[Citas] ([Id], [Documento], [Nombre], [Apellido], [Medico], [Turno], [Fecha], [Hora]) VALUES (4, N'1047595143', N'Irene del Mar                                                                                       ', N'Cruz Char                                                                                           ', N'Nelia Palacio Valencia        ', N'Mañana    ', N'27/03/2023', N'7:40      ')
SET IDENTITY_INSERT [dbo].[Citas] OFF
GO
SET IDENTITY_INSERT [dbo].[Cuenta] ON 

INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contraseña]) VALUES (1, N'User1     ', N'123456789 ')
SET IDENTITY_INSERT [dbo].[Cuenta] OFF
GO
SET IDENTITY_INSERT [dbo].[DatosPaciente] ON 

INSERT [dbo].[DatosPaciente] ([Id], [Nombre], [Apellido], [TipoDoc], [NumDoc], [FechaNac], [Telefono], [Departamento], [Ciudad], [Sexo], [Ocupacion], [EstadCiv], [Direccion], [EPS], [IPS], [Regimen], [Escolaridad]) VALUES (1, N'Irene del Mar                                     ', N'Cruz Char                                         ', N'CC                                                              ', N'1047595143          ', N'7/03/1990                     ', N'71239     ', N'Bolivar                       ', N'Cartagena                     ', N'Femenino  ', N'Estudiante                              ', N'Casada                        ', N'Crespo avenida segunda #75 - 40                   ', N'Colsanitas EPS                                    ', N'Colsanitas                                        ', N'Subsidiado                    ', N'Universitaria                 ')
INSERT [dbo].[DatosPaciente] ([Id], [Nombre], [Apellido], [TipoDoc], [NumDoc], [FechaNac], [Telefono], [Departamento], [Ciudad], [Sexo], [Ocupacion], [EstadCiv], [Direccion], [EPS], [IPS], [Regimen], [Escolaridad]) VALUES (6, N'Nombre                                            ', N'Apellido                                          ', N'Sin identificación del exterior o para uso definido por la DIAN ', N'8163821             ', N'D/M/A                         ', N'135312    ', N'Antioquia                     ', N'Medellin                      ', N'Masculino ', N'Estudiante                              ', N'Soltero                       ', N'Cra 23 #24-52                                     ', N'EPS                                               ', N'IPS                                               ', N'Contributivo                  ', N'Superior                      ')
SET IDENTITY_INSERT [dbo].[DatosPaciente] OFF
GO
SET IDENTITY_INSERT [dbo].[Form_Medica] ON 

INSERT [dbo].[Form_Medica] ([Id], [Fecha], [Documento], [Medico], [Med_Recet], [ModoUso], [Recomendaciones]) VALUES (1, N'18/03/2023     ', N'1047595143     ', N'Nelia Palacio Valencia        ', N'N/A                                                                                                 ', N'N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', N'N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Form_Medica] ([Id], [Fecha], [Documento], [Medico], [Med_Recet], [ModoUso], [Recomendaciones]) VALUES (3, N'27/03/2023     ', N'1047595143     ', N'Nelia Palacio Valencia        ', N'                                                                                                    ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Form_Medica] ([Id], [Fecha], [Documento], [Medico], [Med_Recet], [ModoUso], [Recomendaciones]) VALUES (4, N'27/03/2023     ', N'1047595143     ', N'Nelia Palacio Valencia        ', N'                                                                                                    ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Form_Medica] ([Id], [Fecha], [Documento], [Medico], [Med_Recet], [ModoUso], [Recomendaciones]) VALUES (5, N'18/03/2023     ', N'1047595143     ', N'                              ', N'                                                                                                    ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Form_Medica] ([Id], [Fecha], [Documento], [Medico], [Med_Recet], [ModoUso], [Recomendaciones]) VALUES (6, N'18/03/2023     ', N'1047595143     ', N'Nelia Palacio Valencia        ', N'                                                                                                    ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
SET IDENTITY_INSERT [dbo].[Form_Medica] OFF
GO
SET IDENTITY_INSERT [dbo].[Hora] ON 

INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (1, N'7:00   ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (2, N'7:40   ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (3, N'8:20   ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (4, N'9:00   ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (5, N'9:40   ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (6, N'10:20  ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (7, N'11:00  ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (8, N'13:00  ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (9, N'13:40  ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (10, N'14.20  ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (11, N'15:00  ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (12, N'15:40  ')
INSERT [dbo].[Hora] ([Id], [Hora]) VALUES (13, N'16:20  ')
SET IDENTITY_INSERT [dbo].[Hora] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicamentos] ON 

INSERT [dbo].[Medicamentos] ([Id], [NombreMedic], [TipoMedic], [Componentes], [ModoUso], [EfectosSecund], [Precauciones], [Cantidad]) VALUES (1, N'Acetaminofen                  ', N'Analgésico                                        ', N'Principio Activo              ', N'Vía Oral                      ', N'N/A                                                                                                 ', N'N/A                                                                                                 ', N'23        ')
INSERT [dbo].[Medicamentos] ([Id], [NombreMedic], [TipoMedic], [Componentes], [ModoUso], [EfectosSecund], [Precauciones], [Cantidad]) VALUES (2, N'Ibuprofeno                    ', N'Analgésico                                        ', N'Principio Activo              ', N'Vía Oral                      ', N'Ninguno                                                                                             ', N'Ninguna                                                                                             ', N'12        ')
SET IDENTITY_INSERT [dbo].[Medicamentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicos] ON 

INSERT [dbo].[Medicos] ([Id], [Medico]) VALUES (1, N'Nelia Palacio Valencia        ')
INSERT [dbo].[Medicos] ([Id], [Medico]) VALUES (2, N'Leandra Jaramillo Lopez       ')
INSERT [dbo].[Medicos] ([Id], [Medico]) VALUES (3, N'Yesid Murillo Romero          ')
INSERT [dbo].[Medicos] ([Id], [Medico]) VALUES (4, N'Salome Martínez Acevedo       ')
SET IDENTITY_INSERT [dbo].[Medicos] OFF
GO
USE [master]
GO
ALTER DATABASE [Aplicacion] SET  READ_WRITE 
GO

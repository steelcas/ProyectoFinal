USE [master]
GO
/****** Object:  Database [ProyectoAvance]    Script Date: 17/03/2017 13:39:01 ******/
CREATE DATABASE [ProyectoAvance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoAvance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ProyectoAvance.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProyectoAvance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ProyectoAvance_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProyectoAvance] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoAvance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoAvance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoAvance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoAvance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoAvance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoAvance] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoAvance] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProyectoAvance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoAvance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoAvance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoAvance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoAvance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoAvance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoAvance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoAvance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoAvance] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyectoAvance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoAvance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoAvance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoAvance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoAvance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoAvance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoAvance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoAvance] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoAvance] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoAvance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoAvance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoAvance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoAvance] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProyectoAvance] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProyectoAvance]
GO
/****** Object:  Table [dbo].[AulaHora]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AulaHora](
	[IDAula] [int] NOT NULL,
	[NumAula] [int] NOT NULL,
	[IDHorario] [int] NOT NULL,
	[Capacidad] [int] NOT NULL,
	[Disponible] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Canton]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Canton](
	[IDCanton] [smallint] NOT NULL,
	[IDProvincia] [tinyint] NOT NULL,
	[Canton] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Canton] PRIMARY KEY CLUSTERED 
(
	[IDCanton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[SiglaCarrera] [varchar](10) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SiglaCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactoDireccion]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactoDireccion](
	[IDDireccion] [int] NOT NULL,
	[IDDistrito] [int] NOT NULL,
	[IDCanton] [smallint] NOT NULL,
	[IDProvincia] [tinyint] NOT NULL,
	[Carnet] [varchar](10) NOT NULL,
	[DireccionExacta] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactoEmail]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactoEmail](
	[IDEmail] [int] NOT NULL,
	[IDTipoEmail] [tinyint] NOT NULL,
	[Carnet] [varchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactoTelefono]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactoTelefono](
	[IDTelefono] [int] NOT NULL,
	[IDTipoTelefono] [tinyint] NOT NULL,
	[Carnet] [varchar](10) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso](
	[SiglaCurso] [varchar](10) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Creditos] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SiglaCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CursosEstudiante]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CursosEstudiante](
	[IDCurso] [int] NOT NULL,
	[SiglaCurso] [varchar](10) NOT NULL,
	[Carnet] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dia]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dia](
	[IDDia] [tinyint] NOT NULL,
	[Dia] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Distrito]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Distrito](
	[IDDistrito] [int] NOT NULL,
	[IDCanton] [smallint] NOT NULL,
	[IDProvincia] [tinyint] NOT NULL,
	[Distrito] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estudiante](
	[Carnet] [varchar](10) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Cedula] [varchar](10) NOT NULL,
	[Apellido1] [varchar](15) NOT NULL,
	[Apellido2] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Expediente](
	[Consecutivo] [int] NOT NULL,
	[SiglaCurso] [varchar](10) NOT NULL,
	[Carnet] [varchar](10) NOT NULL,
	[Nota] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[IDGrupo] [int] NOT NULL,
	[SiglaCurso] [varchar](10) NOT NULL,
	[IDAula] [int] NOT NULL,
	[Matriculados] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HorarioAula]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioAula](
	[IDHorario] [int] NOT NULL,
	[IDDia] [tinyint] NOT NULL,
	[HoraEntrada] [time](7) NOT NULL,
	[HoraSalida] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ListaCarreras]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ListaCarreras](
	[Codigo] [int] NOT NULL,
	[SiglaCarrera] [varchar](10) NOT NULL,
	[Carnet] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfil](
	[Carnet] [varchar](10) NOT NULL,
	[Pass] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlanEstudio]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanEstudio](
	[Codigo] [int] NOT NULL,
	[SiglaCurso] [varchar](10) NOT NULL,
	[SiglaCarrera] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincia](
	[IDProvincia] [tinyint] NOT NULL,
	[Provincia] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Requisitos]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Requisitos](
	[Consecutivos] [int] NOT NULL,
	[SiglaCurso] [varchar](10) NOT NULL,
	[Requisitos] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Consecutivos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoEmail]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoEmail](
	[IDTipoEmail] [tinyint] NOT NULL,
	[Tipo] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTipoEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoTelefono]    Script Date: 17/03/2017 13:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoTelefono](
	[IDTipoTelefono] [tinyint] NOT NULL,
	[Tipo] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTipoTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AulaHora]  WITH CHECK ADD  CONSTRAINT [FK_AulaHora_HorarioAula] FOREIGN KEY([IDHorario])
REFERENCES [dbo].[HorarioAula] ([IDHorario])
GO
ALTER TABLE [dbo].[AulaHora] CHECK CONSTRAINT [FK_AulaHora_HorarioAula]
GO
ALTER TABLE [dbo].[Canton]  WITH CHECK ADD  CONSTRAINT [FK_Canton_Provincia] FOREIGN KEY([IDProvincia])
REFERENCES [dbo].[Provincia] ([IDProvincia])
GO
ALTER TABLE [dbo].[Canton] CHECK CONSTRAINT [FK_Canton_Provincia]
GO
ALTER TABLE [dbo].[ContactoDireccion]  WITH CHECK ADD  CONSTRAINT [FK_ContactoDireccion_Distrito] FOREIGN KEY([IDDistrito])
REFERENCES [dbo].[Distrito] ([IDDistrito])
GO
ALTER TABLE [dbo].[ContactoDireccion] CHECK CONSTRAINT [FK_ContactoDireccion_Distrito]
GO
ALTER TABLE [dbo].[ContactoDireccion]  WITH CHECK ADD  CONSTRAINT [FK_ContactoDireccion_Estudiante] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Estudiante] ([Carnet])
GO
ALTER TABLE [dbo].[ContactoDireccion] CHECK CONSTRAINT [FK_ContactoDireccion_Estudiante]
GO
ALTER TABLE [dbo].[ContactoEmail]  WITH CHECK ADD  CONSTRAINT [FK_ContactoEmail_Estudiante] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Estudiante] ([Carnet])
GO
ALTER TABLE [dbo].[ContactoEmail] CHECK CONSTRAINT [FK_ContactoEmail_Estudiante]
GO
ALTER TABLE [dbo].[ContactoEmail]  WITH CHECK ADD  CONSTRAINT [FK_ContactoEmail_TipoEmail] FOREIGN KEY([IDTipoEmail])
REFERENCES [dbo].[TipoEmail] ([IDTipoEmail])
GO
ALTER TABLE [dbo].[ContactoEmail] CHECK CONSTRAINT [FK_ContactoEmail_TipoEmail]
GO
ALTER TABLE [dbo].[ContactoTelefono]  WITH CHECK ADD  CONSTRAINT [FK_ContactoTelefono_Estudiante] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Estudiante] ([Carnet])
GO
ALTER TABLE [dbo].[ContactoTelefono] CHECK CONSTRAINT [FK_ContactoTelefono_Estudiante]
GO
ALTER TABLE [dbo].[ContactoTelefono]  WITH CHECK ADD  CONSTRAINT [FK_ContactoTelefono_TipoTelefono] FOREIGN KEY([IDTipoTelefono])
REFERENCES [dbo].[TipoTelefono] ([IDTipoTelefono])
GO
ALTER TABLE [dbo].[ContactoTelefono] CHECK CONSTRAINT [FK_ContactoTelefono_TipoTelefono]
GO
ALTER TABLE [dbo].[CursosEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_CursosEstudiante_Curso] FOREIGN KEY([SiglaCurso])
REFERENCES [dbo].[Curso] ([SiglaCurso])
GO
ALTER TABLE [dbo].[CursosEstudiante] CHECK CONSTRAINT [FK_CursosEstudiante_Curso]
GO
ALTER TABLE [dbo].[CursosEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_CursosEstudiante_Estudiante] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Estudiante] ([Carnet])
GO
ALTER TABLE [dbo].[CursosEstudiante] CHECK CONSTRAINT [FK_CursosEstudiante_Estudiante]
GO
ALTER TABLE [dbo].[Distrito]  WITH CHECK ADD  CONSTRAINT [FK_Distrito_Canton] FOREIGN KEY([IDCanton])
REFERENCES [dbo].[Canton] ([IDCanton])
GO
ALTER TABLE [dbo].[Distrito] CHECK CONSTRAINT [FK_Distrito_Canton]
GO
ALTER TABLE [dbo].[Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Curso] FOREIGN KEY([SiglaCurso])
REFERENCES [dbo].[Curso] ([SiglaCurso])
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_Expediente_Curso]
GO
ALTER TABLE [dbo].[Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Estudiante] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Estudiante] ([Carnet])
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_Expediente_Estudiante]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_AulaHora] FOREIGN KEY([IDAula])
REFERENCES [dbo].[AulaHora] ([IDAula])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_AulaHora]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Curso] FOREIGN KEY([SiglaCurso])
REFERENCES [dbo].[Curso] ([SiglaCurso])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Curso]
GO
ALTER TABLE [dbo].[HorarioAula]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAula_Dia] FOREIGN KEY([IDDia])
REFERENCES [dbo].[Dia] ([IDDia])
GO
ALTER TABLE [dbo].[HorarioAula] CHECK CONSTRAINT [FK_HorarioAula_Dia]
GO
ALTER TABLE [dbo].[ListaCarreras]  WITH CHECK ADD  CONSTRAINT [FK_ListaCarreras_Carrera] FOREIGN KEY([SiglaCarrera])
REFERENCES [dbo].[Carrera] ([SiglaCarrera])
GO
ALTER TABLE [dbo].[ListaCarreras] CHECK CONSTRAINT [FK_ListaCarreras_Carrera]
GO
ALTER TABLE [dbo].[ListaCarreras]  WITH CHECK ADD  CONSTRAINT [FK_ListaCarreras_Estudiante] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Estudiante] ([Carnet])
GO
ALTER TABLE [dbo].[ListaCarreras] CHECK CONSTRAINT [FK_ListaCarreras_Estudiante]
GO
ALTER TABLE [dbo].[Perfil]  WITH CHECK ADD  CONSTRAINT [FK_Perfil_Estudiante] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Estudiante] ([Carnet])
GO
ALTER TABLE [dbo].[Perfil] CHECK CONSTRAINT [FK_Perfil_Estudiante]
GO
ALTER TABLE [dbo].[PlanEstudio]  WITH CHECK ADD  CONSTRAINT [FK_PlanEstudio_Carrera] FOREIGN KEY([SiglaCarrera])
REFERENCES [dbo].[Carrera] ([SiglaCarrera])
GO
ALTER TABLE [dbo].[PlanEstudio] CHECK CONSTRAINT [FK_PlanEstudio_Carrera]
GO
ALTER TABLE [dbo].[PlanEstudio]  WITH CHECK ADD  CONSTRAINT [FK_PlanEstudio_Curso] FOREIGN KEY([SiglaCurso])
REFERENCES [dbo].[Curso] ([SiglaCurso])
GO
ALTER TABLE [dbo].[PlanEstudio] CHECK CONSTRAINT [FK_PlanEstudio_Curso]
GO
ALTER TABLE [dbo].[Requisitos]  WITH CHECK ADD  CONSTRAINT [FK_Requisitos_Curso] FOREIGN KEY([SiglaCurso])
REFERENCES [dbo].[Curso] ([SiglaCurso])
GO
ALTER TABLE [dbo].[Requisitos] CHECK CONSTRAINT [FK_Requisitos_Curso]
GO
ALTER TABLE [dbo].[Requisitos]  WITH CHECK ADD  CONSTRAINT [FK_Requisitos_Curso1] FOREIGN KEY([Requisitos])
REFERENCES [dbo].[Curso] ([SiglaCurso])
GO
ALTER TABLE [dbo].[Requisitos] CHECK CONSTRAINT [FK_Requisitos_Curso1]
GO
USE [master]
GO
ALTER DATABASE [ProyectoAvance] SET  READ_WRITE 
GO

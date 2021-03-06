USE [master]
GO
CREATE DATABASE [ProyectoAvance]
GO
USE [ProyectoAvance]
GO
/****** Object:  Table [dbo].[AulaHora]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[Canton]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[Carrera]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[ContactoDireccion]    Script Date: 04/04/2017 12:07:11 ******/
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
	[Carnet] [int] NOT NULL,
	[DireccionExacta] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Contacto__2BA9D384FED9A773] PRIMARY KEY CLUSTERED 
(
	[IDDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactoEmail]    Script Date: 04/04/2017 12:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactoEmail](
	[IDEmail] [int] NOT NULL,
	[IDTipoEmail] [tinyint] NOT NULL,
	[Carnet] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Contacto__AACC2A938B8C3750] PRIMARY KEY CLUSTERED 
(
	[IDEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactoTelefono]    Script Date: 04/04/2017 12:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactoTelefono](
	[IDTelefono] [int] NOT NULL,
	[IDTipoTelefono] [tinyint] NOT NULL,
	[Carnet] [int] NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Contacto__5B9BDE2B18FE9B53] PRIMARY KEY CLUSTERED 
(
	[IDTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[CursosEstudiante]    Script Date: 04/04/2017 12:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CursosEstudiante](
	[IDCurso] [int] NOT NULL,
	[SiglaCurso] [varchar](10) NOT NULL,
	[Carnet] [int] NOT NULL,
 CONSTRAINT [PK__CursosEs__9437DBA59261FFD0] PRIMARY KEY CLUSTERED 
(
	[IDCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dia]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[Distrito]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[Estudiante]    Script Date: 04/04/2017 12:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estudiante](
	[Carnet] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Cedula] [varchar](10) NOT NULL,
	[Apellido1] [varchar](15) NOT NULL,
	[Apellido2] [varchar](15) NOT NULL,
 CONSTRAINT [PK__Estudian__5E387B4C8623A9B5] PRIMARY KEY CLUSTERED 
(
	[Carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 04/04/2017 12:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Expediente](
	[Consecutivo] [int] NOT NULL,
	[SiglaCurso] [varchar](10) NOT NULL,
	[Carnet] [int] NOT NULL,
	[Nota] [tinyint] NOT NULL,
 CONSTRAINT [PK__Expedien__AB810F6741148275] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[HorarioAula]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[ListaCarreras]    Script Date: 04/04/2017 12:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ListaCarreras](
	[Codigo] [int] NOT NULL,
	[SiglaCarrera] [varchar](10) NOT NULL,
	[Carnet] [int] NOT NULL,
 CONSTRAINT [PK__ListaCar__06370DAD9532B3EA] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 04/04/2017 12:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfil](
	[Carnet] [int] NOT NULL,
	[Pass] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Perfil__5E387B4C88A3A834] PRIMARY KEY CLUSTERED 
(
	[Carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlanEstudio]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[Provincia]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[Requisitos]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[TipoEmail]    Script Date: 04/04/2017 12:07:11 ******/
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
/****** Object:  Table [dbo].[TipoTelefono]    Script Date: 04/04/2017 12:07:11 ******/
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

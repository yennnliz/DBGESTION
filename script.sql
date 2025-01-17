USE [Gestionsistema]
GO
/****** Object:  Table [dbo].[asignatura]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asignatura](
	[idAsig] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[creditos] [int] NULL,
	[programa] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_asignatura] PRIMARY KEY CLUSTERED 
(
	[idAsig] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[docente]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[docente](
	[id] [int] NOT NULL,
	[nombres] [varchar](100) NULL,
	[priapellido] [varchar](100) NULL,
	[segapelliedo] [varchar](100) NULL,
	[telefono] [int] NULL,
	[email] [varchar](100) NULL,
	[direccion] [varchar](100) NULL,
	[jornada] [int] NULL,
	[fechaIngre] [datetime] NULL,
	[fechaNaci] [datetime] NULL,
	[genero] [int] NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado](
	[idEstado] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estudiante]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estudiante](
	[id] [int] NOT NULL,
	[idEstudiante] [int] NULL,
	[nombre] [varchar](100) NULL,
	[priapellido] [varchar](100) NULL,
	[segapellido] [varchar](100) NULL,
	[telefono] [int] NULL,
	[email] [varchar](100) NULL,
	[direccion] [varchar](50) NULL,
	[Programa] [int] NULL,
	[jornada] [int] NULL,
	[fechaNaci] [datetime] NULL,
	[genero] [int] NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genero]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genero](
	[idGenero] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_genero] PRIMARY KEY CLUSTERED 
(
	[idGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jornada]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jornada](
	[idJornada] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_jornada] PRIMARY KEY CLUSTERED 
(
	[idJornada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id] [int] NOT NULL,
	[idPersona] [int] NULL,
	[telefono1] [int] NULL,
	[telefono2] [int] NULL,
	[email] [varchar](100) NULL,
	[direccion] [varchar](50) NULL,
	[ciudad] [varchar](50) NULL,
	[barrio] [varchar](50) NULL,
	[genero] [int] NULL,
	[tipoSangre] [int] NULL,
	[fechaNaci] [datetime] NULL,
	[fechaCrea] [datetime] NULL,
	[estado] [int] NULL,
	[rol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[programa]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programa](
	[idPrograma] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_programa] PRIMARY KEY CLUSTERED 
(
	[idPrograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[idRol] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoPrograma]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoPrograma](
	[idTipoProg] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_tipoPrograma] PRIMARY KEY CLUSTERED 
(
	[idTipoProg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoSangre]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoSangre](
	[idTipoSangre] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_tipoSangre] PRIMARY KEY CLUSTERED 
(
	[idTipoSangre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 11/05/2024 10:43:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idUsuario] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
	[rol] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[docente]  WITH CHECK ADD  CONSTRAINT [FK_docente_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idEstado])
GO
ALTER TABLE [dbo].[docente] CHECK CONSTRAINT [FK_docente_estado]
GO
ALTER TABLE [dbo].[docente]  WITH CHECK ADD  CONSTRAINT [FK_docente_genero] FOREIGN KEY([genero])
REFERENCES [dbo].[genero] ([idGenero])
GO
ALTER TABLE [dbo].[docente] CHECK CONSTRAINT [FK_docente_genero]
GO
ALTER TABLE [dbo].[docente]  WITH CHECK ADD  CONSTRAINT [FK_docente_jornada] FOREIGN KEY([jornada])
REFERENCES [dbo].[jornada] ([idJornada])
GO
ALTER TABLE [dbo].[docente] CHECK CONSTRAINT [FK_docente_jornada]
GO
ALTER TABLE [dbo].[estudiante]  WITH CHECK ADD  CONSTRAINT [FK_estudiante_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idEstado])
GO
ALTER TABLE [dbo].[estudiante] CHECK CONSTRAINT [FK_estudiante_estado]
GO
ALTER TABLE [dbo].[estudiante]  WITH CHECK ADD  CONSTRAINT [FK_estudiante_genero] FOREIGN KEY([genero])
REFERENCES [dbo].[genero] ([idGenero])
GO
ALTER TABLE [dbo].[estudiante] CHECK CONSTRAINT [FK_estudiante_genero]
GO
ALTER TABLE [dbo].[estudiante]  WITH CHECK ADD  CONSTRAINT [FK_estudiante_jornada] FOREIGN KEY([jornada])
REFERENCES [dbo].[jornada] ([idJornada])
GO
ALTER TABLE [dbo].[estudiante] CHECK CONSTRAINT [FK_estudiante_jornada]
GO
ALTER TABLE [dbo].[estudiante]  WITH CHECK ADD  CONSTRAINT [FK_estudiante_programa] FOREIGN KEY([Programa])
REFERENCES [dbo].[programa] ([idPrograma])
GO
ALTER TABLE [dbo].[estudiante] CHECK CONSTRAINT [FK_estudiante_programa]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_docente] FOREIGN KEY([id])
REFERENCES [dbo].[docente] ([id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_docente]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idEstado])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_estado]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_estudiante] FOREIGN KEY([id])
REFERENCES [dbo].[estudiante] ([id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_estudiante]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_genero] FOREIGN KEY([genero])
REFERENCES [dbo].[genero] ([idGenero])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_genero]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_rol] FOREIGN KEY([rol])
REFERENCES [dbo].[rol] ([idRol])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_rol]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_tipoSangre] FOREIGN KEY([tipoSangre])
REFERENCES [dbo].[tipoSangre] ([idTipoSangre])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_tipoSangre]
GO
ALTER TABLE [dbo].[programa]  WITH CHECK ADD  CONSTRAINT [FK_programa_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idEstado])
GO
ALTER TABLE [dbo].[programa] CHECK CONSTRAINT [FK_programa_estado]
GO
ALTER TABLE [dbo].[rol]  WITH CHECK ADD  CONSTRAINT [FK_rol_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idEstado])
GO
ALTER TABLE [dbo].[rol] CHECK CONSTRAINT [FK_rol_estado]
GO
ALTER TABLE [dbo].[tipoPrograma]  WITH CHECK ADD  CONSTRAINT [FK_tipoPrograma_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idEstado])
GO
ALTER TABLE [dbo].[tipoPrograma] CHECK CONSTRAINT [FK_tipoPrograma_estado]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idEstado])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_estado]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol] FOREIGN KEY([rol])
REFERENCES [dbo].[rol] ([idRol])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_rol]
GO

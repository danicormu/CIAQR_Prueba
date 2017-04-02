create database DBcolegio;
USE [DBcolegio]
GO
/****** Object:  Table [dbo].[administrador]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[administrador](
	[idAdmin] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](45) NOT NULL,
	[password] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cronograma]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cronograma](
	[idCronograma] [int] IDENTITY(1,1) NOT NULL,
	[horaInicio] [varchar](45) NOT NULL,
	[horaFin] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[idCronograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[evento]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[evento](
	[idEvento] [int] IDENTITY(1,1) NOT NULL,
	[nombreEvento] [varchar](100) NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[fecha] [varchar](50) NOT NULL,
	[tipoEvento] [varchar](255) NOT NULL,
	[cronograma_idCronograma] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[idEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[galeria]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[galeria](
	[idFoto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[descripcion] [varchar](max) NOT NULL,
	[foto] [varchar](max) NOT NULL,
	[fecha] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[idFoto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grupo]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grupo](
	[idGrupo] [varchar](45) NOT NULL,
	[nivel_idNivel] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[idGrupo] ASC,
	[nivel_idNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[horario]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[horario](
	[dia] [varchar](45) NOT NULL,
	[horaInicio] [varchar](45) NOT NULL,
	[horaFinal] [varchar](45) NOT NULL,
	[grupo_idGrupo] [varchar](45) NOT NULL,
	[grupo_nivel_idNivel] [int] NOT NULL,
	[idHorario] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[dia] ASC,
	[grupo_idGrupo] ASC,
	[grupo_nivel_idNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[materia]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[materia](
	[idMateria] [int] IDENTITY(1,1) NOT NULL,
	[nombreMateria] [varchar](50) NOT NULL,
	[horario_dia] [varchar](45) NOT NULL,
	[profesor] [varchar](50) NOT NULL,
	[horario_grupo_idGrupo] [varchar](45) NOT NULL,
	[horario_grupo_nivel_idNivel] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[idMateria] ASC,
	[horario_grupo_idGrupo] ASC,
	[horario_grupo_nivel_idNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nivel]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nivel](
	[idNivel] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[idNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[personal]    Script Date: 05/04/2016 09:32:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[personal](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[rol] [varchar](50) NOT NULL,
	[foto] [varbinary](max) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[idPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[evento]  WITH CHECK ADD FOREIGN KEY([cronograma_idCronograma])
REFERENCES [dbo].[cronograma] ([idCronograma])
GO
ALTER TABLE [dbo].[grupo]  WITH CHECK ADD FOREIGN KEY([nivel_idNivel])
REFERENCES [dbo].[nivel] ([idNivel])
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD FOREIGN KEY([grupo_idGrupo], [grupo_nivel_idNivel])
REFERENCES [dbo].[grupo] ([idGrupo], [nivel_idNivel])
GO
ALTER TABLE [dbo].[materia]  WITH CHECK ADD FOREIGN KEY([horario_dia], [horario_grupo_idGrupo], [horario_grupo_nivel_idNivel])
REFERENCES [dbo].[horario] ([dia], [grupo_idGrupo], [grupo_nivel_idNivel])
GO
USE [master]
GO
ALTER DATABASE [DBcolegio] SET  READ_WRITE
GO

/* Queries for virtual campus*/

/* table user for campus */
/* It can be a teacher or Student */
Create Table DBcolegio.dbo.UserHS (
	Id INT NOT NULL,
	Code INT NOT NULL,
	Name VARCHAR(20) NOT NULL,
	FirstSurName VARCHAR(25) NOT NULL,
	SecondSurName VARCHAR(25) NOT NULL,
	Username VARCHAR(20) NOT NULL,
	Role VARCHAR(15) NOT NULL,
	BirthDate datetime NOT NULL,
	Gender VARCHAR(15) NOT NULL,
	Phone1 INT NOT NULL,
	Phone2 INT NULL,
	Email VARCHAR NOT NULL,
	CONSTRAINT PK_UserHS PRIMARY KEY CLUSTERED (Id),
	CONSTRAINT UQ_UserHS UNIQUE (Code)
)

/* This a table for temporal user if the Role is teacher, So the high school administrador should first verify if is a really teacher */
/* If is a really teacher so he approve the role */
/* RequestTeacher */

Create Table DBcolegio.dbo.RequestTeacher)
	[Id] [INT] NOT NULL,
	[Code] [INT] NOT NULL,
	[Name] [VARCHAR] (20) NOT NULL,
	[FirstSurName] [VARCHAR] (25) NOT NULL,
	[SecondSurName] [VARCHAR] (25) NOT NULL,
	[Username] [VARCHAR] (20) NOT NULL,
	[Role] [VARCHAR] (15) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[Gender] [VARCHAR] (15) NOT NULL,
	[Phone1] [INT] NOT NULL,
	[Phone2] [INT] NULL,
	[Email] [VARCHAR] NOT NULL,
	CONSTRAINT PK_RequestTeacher PRIMARY KEY CLUSTERED (Id),
	CONSTRAINT UQ_RequestTeacher UNIQUE (Code)
)

/* This is a table for sessions */
/* for login and count the session I mean if the teacher logged some time in a week */
/*  session */

Create Table DBcolegio.dbo.SessionTeacher(
[Id] [INT] NOT NULL,
[QuantitySession] [INT] NOT NULL,
[TeacherId] [INT] NOT NULL,
[Name] [VARCHAR] (20) NOT NULL,
[Username] [VARCHAR] (20) NOT NULL,
[Password] [VARCHAR] (25) NOT NULL,
primary key(Id),
CONSTRAINT FK_SessionTeacher FOREIGN KEY (TeacherId) REFERENCES [dbo].[UserHS]([Id])
)

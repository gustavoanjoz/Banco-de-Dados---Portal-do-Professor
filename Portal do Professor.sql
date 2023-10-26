/****** Object:  Database [PortalProfessor]    Script Date: 26/10/2023 09:49:36 ******/
CREATE DATABASE [PortalProfessor]
GO
ALTER DATABASE [PortalProfessor] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PortalProfessor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PortalProfessor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PortalProfessor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PortalProfessor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PortalProfessor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PortalProfessor] SET ARITHABORT OFF 
GO
ALTER DATABASE [PortalProfessor] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PortalProfessor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PortalProfessor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PortalProfessor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PortalProfessor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PortalProfessor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PortalProfessor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PortalProfessor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PortalProfessor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PortalProfessor] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PortalProfessor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PortalProfessor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PortalProfessor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PortalProfessor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PortalProfessor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PortalProfessor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PortalProfessor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PortalProfessor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PortalProfessor] SET  MULTI_USER 
GO
ALTER DATABASE [PortalProfessor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PortalProfessor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PortalProfessor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PortalProfessor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PortalProfessor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PortalProfessor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PortalProfessor', N'ON'
GO
ALTER DATABASE [PortalProfessor] SET QUERY_STORE = ON
GO
ALTER DATABASE [PortalProfessor] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PortalProfessor]
GO
/****** Object:  User [sql]    Script Date: 26/10/2023 09:49:37 ******/
CREATE USER [sql] FOR LOGIN [sql] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblAlunosEmail]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAlunosEmail](
	[alunosEmailId] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[dataultimoemail] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[alunosEmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAlunosNotas]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAlunosNotas](
	[notasId] [int] IDENTITY(1,1) NOT NULL,
	[A1] [decimal](4, 2) NULL,
	[A2] [decimal](4, 2) NULL,
	[A3] [decimal](4, 2) NULL,
	[A4] [decimal](4, 2) NULL,
	[A5] [decimal](4, 2) NULL,
	[A6] [decimal](4, 2) NULL,
	[N1] [decimal](4, 2) NULL,
	[N2] [decimal](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[notasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAlunosPresenca]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAlunosPresenca](
	[presencaId] [int] IDENTITY(1,1) NOT NULL,
	[dataaula] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[presencaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDisciplina]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDisciplina](
	[disciplinaId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](max) NOT NULL,
	[aulaId] [int] NOT NULL,
	[provasId] [int] NOT NULL,
	[modalidadeId] [int] NOT NULL,
	[gradehorariaId] [int] NOT NULL,
	[alunosId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[disciplinaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDisciplinaAlunos]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDisciplinaAlunos](
	[alunosId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](max) NOT NULL,
	[ra] [varchar](7) NOT NULL,
	[alunosEmailId] [int] NOT NULL,
	[presencaId] [int] NOT NULL,
	[notasId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[alunosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDisciplinaAula]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDisciplinaAula](
	[aulaId] [int] IDENTITY(1,1) NOT NULL,
	[dataaula] [date] NOT NULL,
	[descricao] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[aulaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDisciplinaEndereco]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDisciplinaEndereco](
	[disciplinaenderecoId] [int] IDENTITY(1,1) NOT NULL,
	[cep] [varchar](8) NOT NULL,
	[logradouro] [varchar](max) NOT NULL,
	[numero] [varchar](5) NULL,
	[complemento] [varchar](50) NULL,
	[bairro] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[uf] [varchar](2) NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[dataultimoend] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[disciplinaenderecoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDisciplinaGradeHoraria]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDisciplinaGradeHoraria](
	[gradehorariaId] [int] IDENTITY(1,1) NOT NULL,
	[datainicioaula] [date] NOT NULL,
	[dataterminoaula] [date] NOT NULL,
	[dia] [varchar](13) NULL,
	[horarioinicio] [time](7) NOT NULL,
	[horariotermino] [time](7) NOT NULL,
	[disciplinaenderecoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gradehorariaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDisciplinaModalidade]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDisciplinaModalidade](
	[modalidadeId] [int] IDENTITY(1,1) NOT NULL,
	[modalidade] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[modalidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDisciplinaProvas]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDisciplinaProvas](
	[provasId] [int] IDENTITY(1,1) NOT NULL,
	[dataprovaN1] [date] NOT NULL,
	[dataprovaN2] [date] NOT NULL,
	[dataprovaSUB] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[provasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessor]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessor](
	[professorId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](max) NOT NULL,
	[cpf] [varchar](11) NOT NULL,
	[rg] [varchar](9) NOT NULL,
	[registro] [varchar](7) NOT NULL,
	[enderecoId] [int] NOT NULL,
	[telefoneId] [int] NOT NULL,
	[emailId] [int] NOT NULL,
	[vencimentosId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[professorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorAbatimentos]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorAbatimentos](
	[abatimentosId] [int] IDENTITY(1,1) NOT NULL,
	[valorSeguros] [decimal](10, 2) NOT NULL,
	[valorFGTS] [decimal](10, 2) NOT NULL,
	[vaId] [int] NULL,
	[vtId] [int] NULL,
	[vrId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[abatimentosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorCargaHoraria]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorCargaHoraria](
	[cargaHorariaId] [int] IDENTITY(1,1) NOT NULL,
	[horaEntrada] [time](7) NOT NULL,
	[horaSaida] [time](7) NOT NULL,
	[data] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cargaHorariaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorDadosBancarios]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorDadosBancarios](
	[dadosBancariosId] [int] IDENTITY(1,1) NOT NULL,
	[agencia] [varchar](20) NOT NULL,
	[conta] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dadosBancariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorEmail]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorEmail](
	[emailId] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[dataultimoemail] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[emailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorEndereco]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorEndereco](
	[enderecoId] [int] IDENTITY(1,1) NOT NULL,
	[cep] [varchar](8) NOT NULL,
	[logradouro] [varchar](max) NOT NULL,
	[numero] [varchar](5) NULL,
	[complemento] [varchar](50) NULL,
	[bairro] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[uf] [varchar](2) NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[dataultimoend] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[enderecoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorFerias]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorFerias](
	[feriasId] [int] IDENTITY(1,1) NOT NULL,
	[datarecesso] [date] NOT NULL,
	[dataretorno] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feriasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorSalario]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorSalario](
	[salarioId] [int] IDENTITY(1,1) NOT NULL,
	[datadeposito] [date] NOT NULL,
	[valor] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorTelefone]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorTelefone](
	[telefoneId] [int] IDENTITY(1,1) NOT NULL,
	[fixo] [varchar](11) NULL,
	[celular] [varchar](9) NOT NULL,
	[dataultimotelfixo] [date] NULL,
	[dataultimotelcelular] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[telefoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorVA]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorVA](
	[vaId] [int] IDENTITY(1,1) NOT NULL,
	[datadeposito] [date] NOT NULL,
	[valor] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorVencimentos]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorVencimentos](
	[vencimentosId] [int] IDENTITY(1,1) NOT NULL,
	[bonificacoes] [decimal](10, 2) NOT NULL,
	[salarioId] [int] NOT NULL,
	[dadosBancariosId] [int] NOT NULL,
	[feriasId] [int] NOT NULL,
	[abatimentosId] [int] NOT NULL,
	[cargahorariaId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vencimentosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorVR]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorVR](
	[vrId] [int] IDENTITY(1,1) NOT NULL,
	[datadeposito] [date] NOT NULL,
	[valor] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProfessorVT]    Script Date: 26/10/2023 09:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProfessorVT](
	[vtId] [int] IDENTITY(1,1) NOT NULL,
	[datadeposito] [date] NOT NULL,
	[valor] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblDisciplina]  WITH CHECK ADD  CONSTRAINT [fkAlunosDisciplina] FOREIGN KEY([alunosId])
REFERENCES [dbo].[tblDisciplinaAlunos] ([alunosId])
GO
ALTER TABLE [dbo].[tblDisciplina] CHECK CONSTRAINT [fkAlunosDisciplina]
GO
ALTER TABLE [dbo].[tblDisciplina]  WITH CHECK ADD  CONSTRAINT [fkAulaDisciplina] FOREIGN KEY([aulaId])
REFERENCES [dbo].[tblDisciplinaAula] ([aulaId])
GO
ALTER TABLE [dbo].[tblDisciplina] CHECK CONSTRAINT [fkAulaDisciplina]
GO
ALTER TABLE [dbo].[tblDisciplina]  WITH CHECK ADD  CONSTRAINT [fkGradeHorariaDisciplina] FOREIGN KEY([gradehorariaId])
REFERENCES [dbo].[tblDisciplinaGradeHoraria] ([gradehorariaId])
GO
ALTER TABLE [dbo].[tblDisciplina] CHECK CONSTRAINT [fkGradeHorariaDisciplina]
GO
ALTER TABLE [dbo].[tblDisciplina]  WITH CHECK ADD  CONSTRAINT [fkModalidadeDisciplina] FOREIGN KEY([modalidadeId])
REFERENCES [dbo].[tblDisciplinaModalidade] ([modalidadeId])
GO
ALTER TABLE [dbo].[tblDisciplina] CHECK CONSTRAINT [fkModalidadeDisciplina]
GO
ALTER TABLE [dbo].[tblDisciplina]  WITH CHECK ADD  CONSTRAINT [fkProvasDisciplina] FOREIGN KEY([provasId])
REFERENCES [dbo].[tblDisciplinaProvas] ([provasId])
GO
ALTER TABLE [dbo].[tblDisciplina] CHECK CONSTRAINT [fkProvasDisciplina]
GO
ALTER TABLE [dbo].[tblDisciplinaAlunos]  WITH CHECK ADD  CONSTRAINT [fkAlunoEmailAlunos] FOREIGN KEY([alunosEmailId])
REFERENCES [dbo].[tblAlunosEmail] ([alunosEmailId])
GO
ALTER TABLE [dbo].[tblDisciplinaAlunos] CHECK CONSTRAINT [fkAlunoEmailAlunos]
GO
ALTER TABLE [dbo].[tblDisciplinaAlunos]  WITH CHECK ADD  CONSTRAINT [fkNotasAlunos] FOREIGN KEY([notasId])
REFERENCES [dbo].[tblAlunosNotas] ([notasId])
GO
ALTER TABLE [dbo].[tblDisciplinaAlunos] CHECK CONSTRAINT [fkNotasAlunos]
GO
ALTER TABLE [dbo].[tblDisciplinaAlunos]  WITH CHECK ADD  CONSTRAINT [fkPresencaAlunos] FOREIGN KEY([presencaId])
REFERENCES [dbo].[tblAlunosPresenca] ([presencaId])
GO
ALTER TABLE [dbo].[tblDisciplinaAlunos] CHECK CONSTRAINT [fkPresencaAlunos]
GO
ALTER TABLE [dbo].[tblDisciplinaGradeHoraria]  WITH CHECK ADD  CONSTRAINT [fkEnderecoGradeHoraria] FOREIGN KEY([disciplinaenderecoId])
REFERENCES [dbo].[tblDisciplinaEndereco] ([disciplinaenderecoId])
GO
ALTER TABLE [dbo].[tblDisciplinaGradeHoraria] CHECK CONSTRAINT [fkEnderecoGradeHoraria]
GO
ALTER TABLE [dbo].[tblProfessor]  WITH CHECK ADD  CONSTRAINT [fkEmailProfessor] FOREIGN KEY([emailId])
REFERENCES [dbo].[tblProfessorEmail] ([emailId])
GO
ALTER TABLE [dbo].[tblProfessor] CHECK CONSTRAINT [fkEmailProfessor]
GO
ALTER TABLE [dbo].[tblProfessor]  WITH CHECK ADD  CONSTRAINT [fkEnderecoProfessor] FOREIGN KEY([enderecoId])
REFERENCES [dbo].[tblProfessorEndereco] ([enderecoId])
GO
ALTER TABLE [dbo].[tblProfessor] CHECK CONSTRAINT [fkEnderecoProfessor]
GO
ALTER TABLE [dbo].[tblProfessor]  WITH CHECK ADD  CONSTRAINT [fkTelefoneProfessor] FOREIGN KEY([telefoneId])
REFERENCES [dbo].[tblProfessorTelefone] ([telefoneId])
GO
ALTER TABLE [dbo].[tblProfessor] CHECK CONSTRAINT [fkTelefoneProfessor]
GO
ALTER TABLE [dbo].[tblProfessor]  WITH CHECK ADD  CONSTRAINT [fkVencimentosProfessor] FOREIGN KEY([vencimentosId])
REFERENCES [dbo].[tblProfessorVencimentos] ([vencimentosId])
GO
ALTER TABLE [dbo].[tblProfessor] CHECK CONSTRAINT [fkVencimentosProfessor]
GO
ALTER TABLE [dbo].[tblProfessorAbatimentos]  WITH CHECK ADD  CONSTRAINT [fkVAAbatimentos] FOREIGN KEY([vaId])
REFERENCES [dbo].[tblProfessorVA] ([vaId])
GO
ALTER TABLE [dbo].[tblProfessorAbatimentos] CHECK CONSTRAINT [fkVAAbatimentos]
GO
ALTER TABLE [dbo].[tblProfessorAbatimentos]  WITH CHECK ADD  CONSTRAINT [fkVRAbatimentos] FOREIGN KEY([vrId])
REFERENCES [dbo].[tblProfessorVR] ([vrId])
GO
ALTER TABLE [dbo].[tblProfessorAbatimentos] CHECK CONSTRAINT [fkVRAbatimentos]
GO
ALTER TABLE [dbo].[tblProfessorAbatimentos]  WITH CHECK ADD  CONSTRAINT [fkVTAbatimentos] FOREIGN KEY([vtId])
REFERENCES [dbo].[tblProfessorVT] ([vtId])
GO
ALTER TABLE [dbo].[tblProfessorAbatimentos] CHECK CONSTRAINT [fkVTAbatimentos]
GO
ALTER TABLE [dbo].[tblProfessorVencimentos]  WITH CHECK ADD  CONSTRAINT [fkAbatimentosVencimentos] FOREIGN KEY([abatimentosId])
REFERENCES [dbo].[tblProfessorAbatimentos] ([abatimentosId])
GO
ALTER TABLE [dbo].[tblProfessorVencimentos] CHECK CONSTRAINT [fkAbatimentosVencimentos]
GO
ALTER TABLE [dbo].[tblProfessorVencimentos]  WITH CHECK ADD  CONSTRAINT [fkCargaHorariaVencimentos] FOREIGN KEY([cargahorariaId])
REFERENCES [dbo].[tblProfessorCargaHoraria] ([cargaHorariaId])
GO
ALTER TABLE [dbo].[tblProfessorVencimentos] CHECK CONSTRAINT [fkCargaHorariaVencimentos]
GO
ALTER TABLE [dbo].[tblProfessorVencimentos]  WITH CHECK ADD  CONSTRAINT [fkDadosBancariosVencimentos] FOREIGN KEY([dadosBancariosId])
REFERENCES [dbo].[tblProfessorDadosBancarios] ([dadosBancariosId])
GO
ALTER TABLE [dbo].[tblProfessorVencimentos] CHECK CONSTRAINT [fkDadosBancariosVencimentos]
GO
ALTER TABLE [dbo].[tblProfessorVencimentos]  WITH CHECK ADD  CONSTRAINT [fkFeriasVencimentos] FOREIGN KEY([feriasId])
REFERENCES [dbo].[tblProfessorFerias] ([feriasId])
GO
ALTER TABLE [dbo].[tblProfessorVencimentos] CHECK CONSTRAINT [fkFeriasVencimentos]
GO
ALTER TABLE [dbo].[tblProfessorVencimentos]  WITH CHECK ADD  CONSTRAINT [fkSalarioVencimentos] FOREIGN KEY([salarioId])
REFERENCES [dbo].[tblProfessorSalario] ([salarioId])
GO
ALTER TABLE [dbo].[tblProfessorVencimentos] CHECK CONSTRAINT [fkSalarioVencimentos]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de e-mail do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosEmail', @level2type=N'COLUMN',@level2name=N'alunosEmailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E-mail do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosEmail', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do último e-mail do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosEmail', @level2type=N'COLUMN',@level2name=N'dataultimoemail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de notas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'notasId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da A1.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'A1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da A2.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'A2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da A3.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'A3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da A4.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'A4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da A5.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'A5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da A6.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'A6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da N1.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'N1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nota da N2.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosNotas', @level2type=N'COLUMN',@level2name=N'N2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de presença.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosPresenca', @level2type=N'COLUMN',@level2name=N'presencaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAlunosPresenca', @level2type=N'COLUMN',@level2name=N'dataaula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID da disciplina.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplina', @level2type=N'COLUMN',@level2name=N'disciplinaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome da disciplina.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplina', @level2type=N'COLUMN',@level2name=N'nome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplina', @level2type=N'COLUMN',@level2name=N'aulaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de provas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplina', @level2type=N'COLUMN',@level2name=N'provasId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de modalidades.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplina', @level2type=N'COLUMN',@level2name=N'modalidadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID da grade horária.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplina', @level2type=N'COLUMN',@level2name=N'gradehorariaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de alunos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplina', @level2type=N'COLUMN',@level2name=N'alunosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de alunos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAlunos', @level2type=N'COLUMN',@level2name=N'alunosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAlunos', @level2type=N'COLUMN',@level2name=N'nome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RA do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAlunos', @level2type=N'COLUMN',@level2name=N'ra'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de e-mail do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAlunos', @level2type=N'COLUMN',@level2name=N'alunosEmailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de presença do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAlunos', @level2type=N'COLUMN',@level2name=N'presencaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de notas do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAlunos', @level2type=N'COLUMN',@level2name=N'notasId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAula', @level2type=N'COLUMN',@level2name=N'aulaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data da aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAula', @level2type=N'COLUMN',@level2name=N'dataaula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição da aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaAula', @level2type=N'COLUMN',@level2name=N'descricao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endereço do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'disciplinaenderecoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CEP do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'cep'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logradouro do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'logradouro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número de residência do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'numero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complemento do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'complemento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bairro do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'bairro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cidade do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'cidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UF do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'uf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'País do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'pais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do último endereço do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaEndereco', @level2type=N'COLUMN',@level2name=N'dataultimoend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de grade horária.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaGradeHoraria', @level2type=N'COLUMN',@level2name=N'gradehorariaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de início da aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaGradeHoraria', @level2type=N'COLUMN',@level2name=N'datainicioaula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de término da aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaGradeHoraria', @level2type=N'COLUMN',@level2name=N'dataterminoaula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dia de aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaGradeHoraria', @level2type=N'COLUMN',@level2name=N'dia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora inicial da aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaGradeHoraria', @level2type=N'COLUMN',@level2name=N'horarioinicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fim da aula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaGradeHoraria', @level2type=N'COLUMN',@level2name=N'horariotermino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID endereço de disciplinas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaGradeHoraria', @level2type=N'COLUMN',@level2name=N'disciplinaenderecoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de modalidade.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaModalidade', @level2type=N'COLUMN',@level2name=N'modalidadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Modalidade de disciplinas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaModalidade', @level2type=N'COLUMN',@level2name=N'modalidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de provas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaProvas', @level2type=N'COLUMN',@level2name=N'provasId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de provas N1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaProvas', @level2type=N'COLUMN',@level2name=N'dataprovaN1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de provas N2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaProvas', @level2type=N'COLUMN',@level2name=N'dataprovaN2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de provas SUB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblDisciplinaProvas', @level2type=N'COLUMN',@level2name=N'dataprovaSUB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID do professor.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'professorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome do professor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'nome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPF do professor ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'cpf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RG do professor ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'rg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro (tipo RA) do professor ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'registro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID do endereço do professor ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'enderecoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefone do professor ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'telefoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email do professor ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'emailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vencimento do professor ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessor', @level2type=N'COLUMN',@level2name=N'vencimentosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de abatimentos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorAbatimentos', @level2type=N'COLUMN',@level2name=N'abatimentosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor de seguros.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorAbatimentos', @level2type=N'COLUMN',@level2name=N'valorSeguros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor de FGTS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorAbatimentos', @level2type=N'COLUMN',@level2name=N'valorFGTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID do VA (Vale Alimentação).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorAbatimentos', @level2type=N'COLUMN',@level2name=N'vaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID do VT (Vale Transporte).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorAbatimentos', @level2type=N'COLUMN',@level2name=N'vtId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID do VR (Vale Refeição).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorAbatimentos', @level2type=N'COLUMN',@level2name=N'vrId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de carga horária.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorCargaHoraria', @level2type=N'COLUMN',@level2name=N'cargaHorariaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora de entrada.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorCargaHoraria', @level2type=N'COLUMN',@level2name=N'horaEntrada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora de saída.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorCargaHoraria', @level2type=N'COLUMN',@level2name=N'horaSaida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data da carga horária.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorCargaHoraria', @level2type=N'COLUMN',@level2name=N'data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de dados bancários.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorDadosBancarios', @level2type=N'COLUMN',@level2name=N'dadosBancariosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número da agência bancária.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorDadosBancarios', @level2type=N'COLUMN',@level2name=N'agencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número da conta bancária.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorDadosBancarios', @level2type=N'COLUMN',@level2name=N'conta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de e-mail.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEmail', @level2type=N'COLUMN',@level2name=N'emailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endereço de e-mail.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEmail', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do último e-mail.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEmail', @level2type=N'COLUMN',@level2name=N'dataultimoemail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'enderecoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CEP do endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'cep'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logradouro do endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'logradouro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número do endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'numero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complemento do endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'complemento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bairro do endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'bairro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cidade do endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'cidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UF do endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'uf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'País do endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'pais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do último endereço.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorEndereco', @level2type=N'COLUMN',@level2name=N'dataultimoend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de férias.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorFerias', @level2type=N'COLUMN',@level2name=N'feriasId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de início do recesso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorFerias', @level2type=N'COLUMN',@level2name=N'datarecesso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de retorno das férias.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorFerias', @level2type=N'COLUMN',@level2name=N'dataretorno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de salário.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorSalario', @level2type=N'COLUMN',@level2name=N'salarioId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do depósito do salário.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorSalario', @level2type=N'COLUMN',@level2name=N'datadeposito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor do salário.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorSalario', @level2type=N'COLUMN',@level2name=N'valor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de telefone.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorTelefone', @level2type=N'COLUMN',@level2name=N'telefoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefone fixo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorTelefone', @level2type=N'COLUMN',@level2name=N'fixo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefone celular.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorTelefone', @level2type=N'COLUMN',@level2name=N'celular'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do último telefone fixo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorTelefone', @level2type=N'COLUMN',@level2name=N'dataultimotelfixo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do último telefone celular.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorTelefone', @level2type=N'COLUMN',@level2name=N'dataultimotelcelular'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de VA (Vale Alimentação).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVA', @level2type=N'COLUMN',@level2name=N'vaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do depósito do VA.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVA', @level2type=N'COLUMN',@level2name=N'datadeposito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor do VA.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVA', @level2type=N'COLUMN',@level2name=N'valor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de vencimentos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVencimentos', @level2type=N'COLUMN',@level2name=N'vencimentosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bonificações.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVencimentos', @level2type=N'COLUMN',@level2name=N'bonificacoes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de salário associado aos vencimentos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVencimentos', @level2type=N'COLUMN',@level2name=N'salarioId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de dados bancários associado aos vencimentos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVencimentos', @level2type=N'COLUMN',@level2name=N'dadosBancariosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de férias associado aos vencimentos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVencimentos', @level2type=N'COLUMN',@level2name=N'feriasId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de abatimentos associado aos vencimentos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVencimentos', @level2type=N'COLUMN',@level2name=N'abatimentosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de carga horária associado aos vencimentos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVencimentos', @level2type=N'COLUMN',@level2name=N'cargahorariaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de VR (Vale Refeição).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVR', @level2type=N'COLUMN',@level2name=N'vrId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do depósito do VR.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVR', @level2type=N'COLUMN',@level2name=N'datadeposito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor do VR.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVR', @level2type=N'COLUMN',@level2name=N'valor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de VT (Vale Transporte).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVT', @level2type=N'COLUMN',@level2name=N'vtId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data do depósito do VT.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVT', @level2type=N'COLUMN',@level2name=N'datadeposito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor do VT.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProfessorVT', @level2type=N'COLUMN',@level2name=N'valor'
GO
USE [master]
GO
ALTER DATABASE [PortalProfessor] SET  READ_WRITE 
GO

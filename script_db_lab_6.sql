USE [master]
GO
/****** Object:  Database [Учебная_БД_Сафарянс]    Script Date: 10.05.2025 12:00:58 ******/
CREATE DATABASE [Учебная_БД_Сафарянс]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Учебная_БД_Сафарянс', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Учебная_БД_Сафарянс.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Учебная_БД_Сафарянс_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Учебная_БД_Сафарянс_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Учебная_БД_Сафарянс].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET ARITHABORT OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET  MULTI_USER 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET QUERY_STORE = ON
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Учебная_БД_Сафарянс]
GO
/****** Object:  Table [dbo].[Академики]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Академики](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](255) NOT NULL,
	[Имя] [nvarchar](255) NOT NULL,
	[Отчество] [nvarchar](255) NOT NULL,
	[Дата_рождения] [date] NOT NULL,
	[Специализация] [nvarchar](255) NOT NULL,
	[Год_присвоения_звания] [int] NOT NULL,
 CONSTRAINT [PK_Академики] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Дисциплина]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Дисциплина](
	[Код] [int] NOT NULL,
	[Объем] [int] NOT NULL,
	[Название] [nvarchar](255) NOT NULL,
	[Исполнитель] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Дисциплина] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Зав_кафедрой]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Зав_кафедрой](
	[Таб_номер] [float] NULL,
	[Стаж] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявка]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявка](
	[Код] [int] NOT NULL,
	[Номер] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Заявка] PRIMARY KEY CLUSTERED 
(
	[Код] ASC,
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Инженер]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Инженер](
	[Таб_номер] [float] NULL,
	[Специальность] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Кафедра]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Кафедра](
	[Шифр] [nvarchar](2) NOT NULL,
	[Название] [nvarchar](255) NOT NULL,
	[Факультет] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Кафедра] PRIMARY KEY CLUSTERED 
(
	[Шифр] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Преподаватель]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Преподаватель](
	[Таб_номер] [int] NOT NULL,
	[Звание] [nvarchar](255) NOT NULL,
	[Степень] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Преподаватель] PRIMARY KEY CLUSTERED 
(
	[Таб_номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудник](
	[Таб_номер] [float] NULL,
	[Шифр] [nvarchar](255) NULL,
	[Фамилия] [nvarchar](255) NULL,
	[Должность] [nvarchar](255) NULL,
	[Зарплата] [float] NULL,
	[Шеф] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Специальность]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Специальность](
	[Номер] [nvarchar](255) NOT NULL,
	[Направление] [nvarchar](255) NOT NULL,
	[Шифр] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Специальность] PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Страны]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Страны](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](255) NOT NULL,
	[Столица] [nvarchar](255) NOT NULL,
	[Площадь] [bigint] NOT NULL,
	[Население] [bigint] NOT NULL,
	[Континент] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Страны] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Студент]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Студент](
	[Рег_номер] [int] NOT NULL,
	[Номер] [nvarchar](255) NOT NULL,
	[Фамилия] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Студент] PRIMARY KEY CLUSTERED 
(
	[Рег_номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Факультет]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Факультет](
	[Аббревиатура] [nvarchar](2) NOT NULL,
	[Название] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Факультет] PRIMARY KEY CLUSTERED 
(
	[Аббревиатура] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Экзамен]    Script Date: 10.05.2025 12:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Экзамен](
	[Код_экзамена] [int] IDENTITY(1,1) NOT NULL,
	[Дата] [date] NOT NULL,
	[Код] [int] NOT NULL,
	[Рег_номер] [int] NOT NULL,
	[Таб_номер] [int] NOT NULL,
	[Аудитория] [nvarchar](4) NOT NULL,
	[Оценка] [int] NOT NULL,
 CONSTRAINT [PK_Экзамен] PRIMARY KEY CLUSTERED 
(
	[Код_экзамена] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Академики] ON 

INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (1, N'Аничков', N'Николай', N'Николаевич', CAST(N'1885-11-03' AS Date), N'медицина', 1939)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (2, N'Бартольд', N'Василий', N'Владимирович', CAST(N'1869-11-15' AS Date), N'историк', 1913)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (3, N'Белопольский', N'Аристарх', N'Аполлонович', CAST(N'1854-07-13' AS Date), N'астрофизик', 1903)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (4, N'Бородин', N'Иван', N'Парфеньевич', CAST(N'1847-01-30' AS Date), N'ботаник', 1902)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (5, N'Вальден', N'Павел', N'Иванович', CAST(N'1863-07-26' AS Date), N'химик-технолог', 1910)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (6, N'Вернадский', N'Владимир', N'Иванович', CAST(N'1863-03-12' AS Date), N'геохимик', 1908)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (7, N'Виноградов', N'Павел', N'Гаврилович', CAST(N'1854-11-30' AS Date), N'историк', 1914)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (8, N'Ипатьев', N'Владимир', N'Николаевич', CAST(N'1867-11-21' AS Date), N'химик', 1916)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (9, N'Истрин', N'Василий', N'Михайлович', CAST(N'1865-02-22' AS Date), N'филолог', 1907)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (10, N'Карпинский', N'Александр', N'Петрович', CAST(N'1847-01-07' AS Date), N'геолог', 1889)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (11, N'Коковцов', N'Павел', N'Константинович', CAST(N'1861-07-01' AS Date), N'историк', 1906)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (12, N'Курнаков', N'Николай', N'Семёнович', CAST(N'1860-12-06' AS Date), N'химик', 1913)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (13, N'Марр', N'Николай', N'Яковлевич', CAST(N'1865-01-06' AS Date), N'лингвист', 1912)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (14, N'Насонов', N'Николай', N'Викторович', CAST(N'1855-02-26' AS Date), N'зоолог', 1906)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (15, N'Ольденбург', N'Сергей', N'Фёдорович', CAST(N'1863-09-26' AS Date), N'историк', 1903)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (16, N'Павлов', N'Иван', N'Петрович', CAST(N'1849-09-26' AS Date), N'физиолог', 1907)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (17, N'Перетц', N'Владимир', N'Николаевич', CAST(N'1870-01-31' AS Date), N'филолог', 1914)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (18, N'Соболевский', N'Алексей', N'Иванович', CAST(N'1857-01-07' AS Date), N'лингвист', 1900)
INSERT [dbo].[Академики] ([Код], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (19, N'Стеклов', N'Владимир', N'Андреевич', CAST(N'1864-01-09' AS Date), N'математик', 1912)
SET IDENTITY_INSERT [dbo].[Академики] OFF
GO
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (101, 320, N'Математика', N'вм')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (102, 160, N'Информатика', N'пи')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (103, 160, N'Физика', N'оф')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (202, 120, N'Базы данных', N'ис')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (204, 160, N'Электроника', N'эф')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (205, 80, N'Программирование', N'пи')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (209, 80, N'Моделирование', N'мм')
GO
INSERT [dbo].[Зав_кафедрой] ([Таб_номер], [Стаж]) VALUES (101, 15)
INSERT [dbo].[Зав_кафедрой] ([Таб_номер], [Стаж]) VALUES (201, 18)
INSERT [dbo].[Зав_кафедрой] ([Таб_номер], [Стаж]) VALUES (301, 20)
INSERT [dbo].[Зав_кафедрой] ([Таб_номер], [Стаж]) VALUES (401, 10)
INSERT [dbo].[Зав_кафедрой] ([Таб_номер], [Стаж]) VALUES (501, 18)
INSERT [dbo].[Зав_кафедрой] ([Таб_номер], [Стаж]) VALUES (601, 8)
GO
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (101, N'01.03.04')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (101, N'09.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (101, N'09.03.03')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (101, N'14.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (101, N'38.03.05')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (102, N'09.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (102, N'09.03.03')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (103, N'09.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (103, N'09.03.03')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (103, N'14.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (103, N'38.03.05')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (202, N'09.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (202, N'09.03.03')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (202, N'38.03.05')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (204, N'14.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (205, N'01.03.04')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (205, N'09.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (205, N'09.03.03')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (209, N'01.03.04')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (209, N'09.03.02')
INSERT [dbo].[Заявка] ([Код], [Номер]) VALUES (209, N'38.03.05')
GO
INSERT [dbo].[Инженер] ([Таб_номер], [Специальность]) VALUES (153, N'электроник')
INSERT [dbo].[Инженер] ([Таб_номер], [Специальность]) VALUES (241, N'электроник')
INSERT [dbo].[Инженер] ([Таб_номер], [Специальность]) VALUES (242, N'программист')
INSERT [dbo].[Инженер] ([Таб_номер], [Специальность]) VALUES (435, N'электроник')
INSERT [dbo].[Инженер] ([Таб_номер], [Специальность]) VALUES (614, N'программист')
GO
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'вм', N'Высшая математика', N'ен')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'ис', N'Информационные системы', N'ит')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'мм', N'Математическое моделирование', N'фм')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'оф', N'Общая физика', N'ен')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'пи', N'Прикладная информатика', N'ит')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'эф', N'Экспериментальная физика', N'фм')
GO
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (101, N'профессор', N'д.т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (102, N'доцент', N'к. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (105, N'доцент', N'к. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (201, N'профессор', N'д. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (202, N'доцент', N'к. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (301, N'профессор', N'д. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (302, N'доцент', N'к. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (401, N'профессор', N'д. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (402, N'доцент', N'к. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (403, N'ассистент', N'–')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (501, N'профессор', N'д. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (502, N'профессор', N'д. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (503, N'доцент', N'к. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (601, N'профессор', N'д. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (602, N'доцент', N'к. ф.-м. н.')
GO
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (101, N'пи', N'Прохоров П.П.', N'зав. кафедрой', 35000, 101)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (102, N'пи', N'Семенов С.С.', N'преподаватель', 25000, 101)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (105, N'пи', N'Петров П.П.', N'преподаватель', 25000, 101)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (153, N'пи', N'Сидорова С.С.', N'инженер', 15000, 102)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (201, N'ис', N'Андреев А.А.', N'зав. кафедрой', 35000, 201)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (202, N'ис', N'Борисов Б.Б.', N'преподаватель', 25000, 201)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (241, N'ис', N'Глухов Г.Г.', N'инженер', 20000, 201)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (242, N'ис', N'Чернов Ч.Ч.', N'инженер', 15000, 202)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (301, N'мм', N'Басов Б.Б.', N'зав. кафедрой', 35000, 301)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (302, N'мм', N'Сергеева С.С.', N'преподаватель', 25000, 301)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (401, N'оф', N'Волков В.В.', N'зав. кафедрой', 35000, 401)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (402, N'оф', N'Зайцев З.З.', N'преподаватель', 25000, 401)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (403, N'оф', N'Смирнов С.С.', N'преподаватель', 15000, 401)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (435, N'оф', N'Лисин Л.Л.', N'инженер', 20000, 402)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (501, N'вм', N'Кузнецов К.К.', N'зав. кафедрой', 35000, 501)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (502, N'вм', N'Романцев Р.Р.', N'преподаватель', 25000, 501)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (503, N'вм', N'Соловьев С.С.', N'преподаватель', 25000, 501)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (601, N'эф', N'Зверев З.З.', N'зав. кафедрой', 35000, 601)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (602, N'эф', N'Сорокина С.С.', N'преподаватель', 25000, 601)
INSERT [dbo].[Сотрудник] ([Таб_номер], [Шифр], [Фамилия], [Должность], [Зарплата], [Шеф]) VALUES (614, N'эф', N'Григорьев Г.Г.', N'инженер', 20000, 602)
GO
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'01.03.04', N'Прикладная математика', N'мм')
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'09.03.02', N'Информационные системы и технологии', N'ис')
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'09.03.03', N'Прикладная информатика', N'пи')
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'14.03.02', N'Ядерные физика и технологии', N'эф')
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'38.03.05', N'Бизнес-информатика', N'ис')
GO
SET IDENTITY_INSERT [dbo].[Страны] ON 

INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (1, N'Австрия', N'Вена', 83858, 8741753, N'Европа')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (2, N'Азербайджан', N'Баку', 86600, 9705600, N'Азия')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (3, N'Албания', N'Тирана', 28748, 2866026, N'Европа')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (4, N'Алжир', N'Алжир', 2381740, 39813722, N'Африка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (5, N'Ангола', N'Луанда', 1246700, 25831000, N'Африка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (6, N'Аргентина', N'Буэнос-Айрес', 2766890, 43847000, N'Южная Америка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (7, N'Афганистан', N'Кабул', 647500, 29822848, N'Азия')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (8, N'Бангладеш', N'Дакка', 144000, 160221000, N'Азия')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (9, N'Бахрейн', N'Манама', 701, 1397000, N'Азия')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (10, N'Белиз', N'Бельмопан', 22966, 377968, N'Северная Америка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (11, N'Белоруссия', N'Минск', 207595, 9498400, N'Европа')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (12, N'Бельгия', N'Брюссель', 30528, 11250585, N'Европа')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (13, N'Бенин', N'Порто-Ново', 112620, 11167000, N'Африка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (14, N'Болгария', N'София', 110910, 7153784, N'Европа')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (15, N'Боливия', N'Сукре', 1098580, 10985059, N'Южная Америка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (16, N'Ботсвана', N'Габороне', 600370, 2209208, N'Африка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (17, N'Бразилия', N'Бразилиа', 8511965, 206081432, N'Южная Америка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (18, N'Буркина-Фасо', N'Уагадугу', 274200, 19034397, N'Африка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (19, N'Бутан', N'Тхимпху', 47000, 784000, N'Азия')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (20, N'Великобритания', N'Лондон', 244820, 65341183, N'Европа')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (21, N'Венгрия', N'Будапешт', 93030, 9830485, N'Европа')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (22, N'Венесуэла', N'Каракас', 912050, 31028637, N'Южная Америка')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (23, N'Восточный Тимор', N'Дили', 14874, 1167242, N'Азия')
INSERT [dbo].[Страны] ([Код], [Название], [Столица], [Площадь], [Население], [Континент]) VALUES (24, N'Вьетнам', N'Ханой', 329560, 91713300, N'Азия')
SET IDENTITY_INSERT [dbo].[Страны] OFF
GO
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (10101, N'09.03.03', N'Николаева Н. Н.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (10102, N'09.03.03', N'Иванов И. И.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (10103, N'09.03.03', N'Крюков К. К.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (20101, N'09.03.02', N'Андреев А. А.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (20102, N'09.03.02', N'Федоров Ф. Ф.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (30101, N'14.03.02', N'Бондаренко Б. Б.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (30102, N'14.03.02', N'Цветков К. К.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (30103, N'14.03.02', N'Петров П. П.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (50101, N'01.03.04', N'Сергеев С. С.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (50102, N'01.03.04', N'Кудрявцев К. К.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (80101, N'38.03.05', N'Макаров М. М.')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (80102, N'38.03.05', N'Яковлев Я. Я.')
GO
INSERT [dbo].[Факультет] ([Аббревиатура], [Название]) VALUES (N'Гн', N'Гуманитарные науки')
INSERT [dbo].[Факультет] ([Аббревиатура], [Название]) VALUES (N'Ен', N'Естественные науки')
INSERT [dbo].[Факультет] ([Аббревиатура], [Название]) VALUES (N'Ит', N'Информационные технологии')
INSERT [dbo].[Факультет] ([Аббревиатура], [Название]) VALUES (N'Фм', N'Физико-математический')
GO
SET IDENTITY_INSERT [dbo].[Экзамен] ON 

INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (1, CAST(N'2015-06-05' AS Date), 102, 10101, 102, N'т505', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (2, CAST(N'2015-06-05' AS Date), 102, 10102, 102, N'т505', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (3, CAST(N'2015-06-05' AS Date), 202, 20101, 202, N'т506', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (4, CAST(N'2015-06-05' AS Date), 202, 20102, 202, N'т506', 3)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (5, CAST(N'2015-06-07' AS Date), 102, 30101, 105, N'ф419', 3)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (6, CAST(N'2015-06-07' AS Date), 102, 30102, 101, N'т506', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (7, CAST(N'2015-06-07' AS Date), 102, 80101, 102, N'м425', 5)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (8, CAST(N'2015-06-09' AS Date), 205, 80102, 402, N'м424', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (9, CAST(N'2015-06-09' AS Date), 209, 20101, 302, N'ф333', 3)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (10, CAST(N'2015-06-10' AS Date), 101, 10101, 501, N'т506', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (11, CAST(N'2015-06-10' AS Date), 101, 10102, 501, N'т506', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (12, CAST(N'2015-06-10' AS Date), 204, 30102, 601, N'ф349', 5)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (13, CAST(N'2015-06-10' AS Date), 209, 80101, 301, N'э105', 5)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (14, CAST(N'2015-06-10' AS Date), 209, 80102, 301, N'э105', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (15, CAST(N'2015-06-12' AS Date), 101, 80101, 502, N'с324', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (16, CAST(N'2015-06-15' AS Date), 101, 30101, 503, N'ф417', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (17, CAST(N'2015-06-15' AS Date), 101, 50101, 501, N'ф201', 5)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (18, CAST(N'2015-06-15' AS Date), 101, 50102, 501, N'ф201', 3)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (19, CAST(N'2015-06-15' AS Date), 103, 10101, 403, N'ф414', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Дата], [Код], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (20, CAST(N'2015-06-17' AS Date), 102, 10101, 102, N'т505', 5)
SET IDENTITY_INSERT [dbo].[Экзамен] OFF
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Дисциплина] FOREIGN KEY([Код])
REFERENCES [dbo].[Дисциплина] ([Код])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Дисциплина]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Специальность] FOREIGN KEY([Номер])
REFERENCES [dbo].[Специальность] ([Номер])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Специальность]
GO
ALTER TABLE [dbo].[Кафедра]  WITH CHECK ADD  CONSTRAINT [FK_Кафедра_Факультет] FOREIGN KEY([Факультет])
REFERENCES [dbo].[Факультет] ([Аббревиатура])
GO
ALTER TABLE [dbo].[Кафедра] CHECK CONSTRAINT [FK_Кафедра_Факультет]
GO
ALTER TABLE [dbo].[Специальность]  WITH CHECK ADD  CONSTRAINT [FK_Специальность_Кафедра] FOREIGN KEY([Шифр])
REFERENCES [dbo].[Кафедра] ([Шифр])
GO
ALTER TABLE [dbo].[Специальность] CHECK CONSTRAINT [FK_Специальность_Кафедра]
GO
ALTER TABLE [dbo].[Экзамен]  WITH CHECK ADD  CONSTRAINT [FK_Экзамен_Дисциплина] FOREIGN KEY([Код])
REFERENCES [dbo].[Дисциплина] ([Код])
GO
ALTER TABLE [dbo].[Экзамен] CHECK CONSTRAINT [FK_Экзамен_Дисциплина]
GO
ALTER TABLE [dbo].[Экзамен]  WITH CHECK ADD  CONSTRAINT [FK_Экзамен_Преподаватель] FOREIGN KEY([Таб_номер])
REFERENCES [dbo].[Преподаватель] ([Таб_номер])
GO
ALTER TABLE [dbo].[Экзамен] CHECK CONSTRAINT [FK_Экзамен_Преподаватель]
GO
ALTER TABLE [dbo].[Экзамен]  WITH CHECK ADD  CONSTRAINT [FK_Экзамен_Студент] FOREIGN KEY([Рег_номер])
REFERENCES [dbo].[Студент] ([Рег_номер])
GO
ALTER TABLE [dbo].[Экзамен] CHECK CONSTRAINT [FK_Экзамен_Студент]
GO
USE [master]
GO
ALTER DATABASE [Учебная_БД_Сафарянс] SET  READ_WRITE 
GO

USE [University]
GO
/****** Object:  User [Ivanov_Dek]    Script Date: 13.05.2025 15:59:33 ******/
CREATE USER [Ivanov_Dek] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Ivanov_Dek]
GO
/****** Object:  User [Petrov_Stud]    Script Date: 13.05.2025 15:59:33 ******/
CREATE USER [Petrov_Stud] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Petrov_Stud]
GO
/****** Object:  User [Proba]    Script Date: 13.05.2025 15:59:33 ******/
CREATE USER [Proba] FOR LOGIN [Proba] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [DEKAN]    Script Date: 13.05.2025 15:59:33 ******/
CREATE ROLE [DEKAN]
GO
/****** Object:  DatabaseRole [STUDENT]    Script Date: 13.05.2025 15:59:33 ******/
CREATE ROLE [STUDENT]
GO
ALTER ROLE [DEKAN] ADD MEMBER [Ivanov_Dek]
GO
ALTER ROLE [STUDENT] ADD MEMBER [Petrov_Stud]
GO
ALTER ROLE [db_owner] ADD MEMBER [Proba]
GO
/****** Object:  Schema [DEKAN]    Script Date: 13.05.2025 15:59:34 ******/
CREATE SCHEMA [DEKAN]
GO
/****** Object:  Schema [Ivanov_Dek]    Script Date: 13.05.2025 15:59:34 ******/
CREATE SCHEMA [Ivanov_Dek]
GO
/****** Object:  Schema [Petrov_Stud]    Script Date: 13.05.2025 15:59:34 ******/
CREATE SCHEMA [Petrov_Stud]
GO
/****** Object:  Schema [STUDENT]    Script Date: 13.05.2025 15:59:34 ******/
CREATE SCHEMA [STUDENT]
GO
/****** Object:  Table [dbo].[Discuplinu]    Script Date: 13.05.2025 15:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discuplinu](
	[Kod_Discuplinu] [int] NOT NULL,
	[name_Discuplinun] [char](30) NULL,
	[kol_chasov] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Kod_Discuplinu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

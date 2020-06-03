USE [master]
GO
/****** Object:  Database [DanceAcademy]    Script Date: 3/06/2020 11:10:47 PM ******/
CREATE DATABASE [DanceAcademy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DanceAcademy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DanceAcademy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DanceAcademy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DanceAcademy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DanceAcademy] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DanceAcademy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DanceAcademy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DanceAcademy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DanceAcademy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DanceAcademy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DanceAcademy] SET ARITHABORT OFF 
GO
ALTER DATABASE [DanceAcademy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DanceAcademy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DanceAcademy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DanceAcademy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DanceAcademy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DanceAcademy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DanceAcademy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DanceAcademy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DanceAcademy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DanceAcademy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DanceAcademy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DanceAcademy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DanceAcademy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DanceAcademy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DanceAcademy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DanceAcademy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DanceAcademy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DanceAcademy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DanceAcademy] SET  MULTI_USER 
GO
ALTER DATABASE [DanceAcademy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DanceAcademy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DanceAcademy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DanceAcademy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DanceAcademy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DanceAcademy] SET QUERY_STORE = OFF
GO
USE [DanceAcademy]
GO
/****** Object:  Table [dbo].[AdminTable]    Script Date: 3/06/2020 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTable](
	[UserID] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactTable]    Script Date: 3/06/2020 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_ContactTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffTable]    Script Date: 3/06/2020 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Dob] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_StaffTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentTable]    Script Date: 3/06/2020 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Dob] [varchar](50) NULL,
	[Course] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
 CONSTRAINT [PK_StudentTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AdminTable] ([UserID], [Password]) VALUES (N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[StudentTable] ON 

INSERT [dbo].[StudentTable] ([id], [Name], [FatherName], [Address], [Dob], [Course], [ContactNo]) VALUES (1, N'Nirmal', N'Singh', N'ABC', N'25/01/2000', N'Chi Chi', N'2589632587')
SET IDENTITY_INSERT [dbo].[StudentTable] OFF
USE [master]
GO
ALTER DATABASE [DanceAcademy] SET  READ_WRITE 
GO

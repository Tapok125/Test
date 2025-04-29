USE [master]
GO

/****** Object:  Database [�������� ���]    Script Date: 29.04.2025 14:22:55 ******/
CREATE DATABASE [�������� ���]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'�������� ���', FILENAME = N'C:\Users\st310-05\�������� ���.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'�������� ���_log', FILENAME = N'C:\Users\st310-05\�������� ���_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [�������� ���].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [�������� ���] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [�������� ���] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [�������� ���] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [�������� ���] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [�������� ���] SET ARITHABORT OFF 
GO

ALTER DATABASE [�������� ���] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [�������� ���] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [�������� ���] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [�������� ���] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [�������� ���] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [�������� ���] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [�������� ���] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [�������� ���] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [�������� ���] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [�������� ���] SET  DISABLE_BROKER 
GO

ALTER DATABASE [�������� ���] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [�������� ���] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [�������� ���] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [�������� ���] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [�������� ���] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [�������� ���] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [�������� ���] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [�������� ���] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [�������� ���] SET  MULTI_USER 
GO

ALTER DATABASE [�������� ���] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [�������� ���] SET DB_CHAINING OFF 
GO

ALTER DATABASE [�������� ���] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [�������� ���] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [�������� ���] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [�������� ���] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [�������� ���] SET QUERY_STORE = OFF
GO

ALTER DATABASE [�������� ���] SET  READ_WRITE 
GO

USE [�������� ���]
GO

/****** Object:  Table [dbo].[Material_type_import]    Script Date: 29.04.2025 14:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Material_type_import](
	[ID] [int] NOT NULL,
	[���_���������] [nvarchar](50) NOT NULL,
	[�������_�����_���������] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Material_type_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Partner_products_import]    Script Date: 29.04.2025 14:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Partner_products_import](
	[ID] [int] NOT NULL,
	[���������] [int] NOT NULL,
	[���] [int] NOT NULL,
	[������������_��������] [int] NOT NULL,
	[����������_���������] [int] NOT NULL,
	[����_�������] [date] NOT NULL,
 CONSTRAINT [PK_Partner_products_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Partners_import]    Script Date: 29.04.2025 14:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Partners_import](
	[ID] [int] NOT NULL,
	[���_��������] [nvarchar](50) NOT NULL,
	[������������_��������] [nvarchar](50) NOT NULL,
	[��������] [nvarchar](50) NOT NULL,
	[�����������_�����_��������] [nvarchar](50) NOT NULL,
	[�������_��������] [nvarchar](50) NOT NULL,
	[�����������_�����_��������] [nvarchar](100) NOT NULL,
	[���] [nvarchar](50) NOT NULL,
	[�������] [int] NOT NULL,
 CONSTRAINT [PK_Partners_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Product_type_import]    Script Date: 29.04.2025 14:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product_type_import](
	[ID] [int] NOT NULL,
	[���_���������] [nvarchar](50) NOT NULL,
	[�����������_����_���������] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Product_type_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Products_import]    Script Date: 29.04.2025 14:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products_import](
	[ID] [int] NOT NULL,
	[���_���������] [int] NOT NULL,
	[������������_���������] [nvarchar](50) NOT NULL,
	[�������] [int] NOT NULL,
	[�����������_���������_���_��������] [decimal](18, 2) NOT NULL,
	[��������] [int] NOT NULL,
 CONSTRAINT [PK_Products_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Partners_import] FOREIGN KEY([������������_��������])
REFERENCES [dbo].[Partners_import] ([ID])
GO

ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Partners_import]
GO

ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Products_import] FOREIGN KEY([���������])
REFERENCES [dbo].[Products_import] ([ID])
GO

ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Products_import]
GO

ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Material_type_import] FOREIGN KEY([��������])
REFERENCES [dbo].[Material_type_import] ([ID])
GO

ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Material_type_import]
GO

ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Product_type_import] FOREIGN KEY([���_���������])
REFERENCES [dbo].[Product_type_import] ([ID])
GO

ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Product_type_import]
GO


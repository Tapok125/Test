USE [master]
GO

/****** Object:  Database [Школьный мир]    Script Date: 29.04.2025 14:22:55 ******/
CREATE DATABASE [Школьный мир]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Школьный мир', FILENAME = N'C:\Users\st310-05\Школьный мир.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Школьный мир_log', FILENAME = N'C:\Users\st310-05\Школьный мир_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Школьный мир].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Школьный мир] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Школьный мир] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Школьный мир] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Школьный мир] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Школьный мир] SET ARITHABORT OFF 
GO

ALTER DATABASE [Школьный мир] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Школьный мир] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Школьный мир] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Школьный мир] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Школьный мир] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Школьный мир] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Школьный мир] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Школьный мир] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Школьный мир] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Школьный мир] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Школьный мир] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Школьный мир] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Школьный мир] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Школьный мир] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Школьный мир] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Школьный мир] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Школьный мир] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Школьный мир] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Школьный мир] SET  MULTI_USER 
GO

ALTER DATABASE [Школьный мир] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Школьный мир] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Школьный мир] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Школьный мир] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Школьный мир] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Школьный мир] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Школьный мир] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Школьный мир] SET  READ_WRITE 
GO

USE [Школьный мир]
GO

/****** Object:  Table [dbo].[Material_type_import]    Script Date: 29.04.2025 14:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Material_type_import](
	[ID] [int] NOT NULL,
	[Тип_материала] [nvarchar](50) NOT NULL,
	[Процент_брака_материала] [decimal](18, 2) NOT NULL,
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
	[Продукция] [int] NOT NULL,
	[Тип] [int] NOT NULL,
	[Наименование_партнера] [int] NOT NULL,
	[Количество_продукции] [int] NOT NULL,
	[Дата_продажи] [date] NOT NULL,
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
	[Тип_партнера] [nvarchar](50) NOT NULL,
	[Наименование_партнера] [nvarchar](50) NOT NULL,
	[Директор] [nvarchar](50) NOT NULL,
	[Электронная_почта_партнера] [nvarchar](50) NOT NULL,
	[Телефон_партнера] [nvarchar](50) NOT NULL,
	[Юридический_адрес_партнера] [nvarchar](100) NOT NULL,
	[ИНН] [nvarchar](50) NOT NULL,
	[Рейтинг] [int] NOT NULL,
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
	[Тип_продукции] [nvarchar](50) NOT NULL,
	[Коэффициент_типа_продукции] [decimal](18, 2) NOT NULL,
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
	[Тип_продукции] [int] NOT NULL,
	[Наименование_продукции] [nvarchar](50) NOT NULL,
	[Артикул] [int] NOT NULL,
	[Минимальная_стоимость_для_партнера] [decimal](18, 2) NOT NULL,
	[Материал] [int] NOT NULL,
 CONSTRAINT [PK_Products_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Partners_import] FOREIGN KEY([Наименование_партнера])
REFERENCES [dbo].[Partners_import] ([ID])
GO

ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Partners_import]
GO

ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Products_import] FOREIGN KEY([Продукция])
REFERENCES [dbo].[Products_import] ([ID])
GO

ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Products_import]
GO

ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Material_type_import] FOREIGN KEY([Материал])
REFERENCES [dbo].[Material_type_import] ([ID])
GO

ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Material_type_import]
GO

ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Product_type_import] FOREIGN KEY([Тип_продукции])
REFERENCES [dbo].[Product_type_import] ([ID])
GO

ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Product_type_import]
GO


USE [master]
GO
/****** Object:  Database [TechPhucDnShopDB]    Script Date: 8/16/2021 9:19:07 PM ******/
CREATE DATABASE [TechPhucDnShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechPhucDnShopDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TechPhucDnShopDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechPhucDnShopDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TechPhucDnShopDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TechPhucDnShopDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechPhucDnShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechPhucDnShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechPhucDnShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechPhucDnShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TechPhucDnShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechPhucDnShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TechPhucDnShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [TechPhucDnShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechPhucDnShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechPhucDnShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechPhucDnShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechPhucDnShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechPhucDnShopDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TechPhucDnShopDB] SET QUERY_STORE = OFF
GO
USE [TechPhucDnShopDB]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 8/16/2021 9:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catagories]    Script Date: 8/16/2021 9:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catagories](
	[category_id] [bigint] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 8/16/2021 9:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[phone] [varchar](20) NULL,
	[registered_date] [date] NULL,
	[status] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 8/16/2021 9:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[unit_price] [float] NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 8/16/2021 9:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [float] NOT NULL,
	[order_date] [date] NULL,
	[status] [smallint] NOT NULL,
	[customer_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 8/16/2021 9:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[discount] [float] NOT NULL,
	[entered_date] [date] NULL,
	[image] [varchar](200) NULL,
	[name] [nvarchar](100) NOT NULL,
	[quantity] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[unit_price] [float] NOT NULL,
	[category_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[catagories] ON 

INSERT [dbo].[catagories] ([category_id], [category_name]) VALUES (1, N'Dien Tu')
INSERT [dbo].[catagories] ([category_id], [category_name]) VALUES (2, N'Dien Lanh')
INSERT [dbo].[catagories] ([category_id], [category_name]) VALUES (3, N'Gia Dung')
INSERT [dbo].[catagories] ([category_id], [category_name]) VALUES (4, N'Dung cu bep')
INSERT [dbo].[catagories] ([category_id], [category_name]) VALUES (5, N'Co khi')
INSERT [dbo].[catagories] ([category_id], [category_name]) VALUES (6, N'Quan Ao')
INSERT [dbo].[catagories] ([category_id], [category_name]) VALUES (7, N'Do Trang Tri')
INSERT [dbo].[catagories] ([category_id], [category_name]) VALUES (8, N'Van Phong Pham')
SET IDENTITY_INSERT [dbo].[catagories] OFF
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FK92im1bt9gndrexccag7x5oq92] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FK92im1bt9gndrexccag7x5oq92]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKhnsosbuy7bhpqpnt3bjr7sh8x] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKhnsosbuy7bhpqpnt3bjr7sh8x]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKpxtb8awmi0dk6smoh2vp1litg] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKpxtb8awmi0dk6smoh2vp1litg]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK8fk1fdin0t5m07pafkqhj4rxk] FOREIGN KEY([category_id])
REFERENCES [dbo].[catagories] ([category_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK8fk1fdin0t5m07pafkqhj4rxk]
GO
USE [master]
GO
ALTER DATABASE [TechPhucDnShopDB] SET  READ_WRITE 
GO

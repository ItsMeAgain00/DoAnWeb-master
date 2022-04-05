create database QLThoiTrang
go
USE QLThoiTrang
GO
/****** Object:  Database [QLThoiTrang]    Script Date: 07/08/2021 2:35:50 SA ******/
CREATE DATABASE [QLThoiTrang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLThoiTrang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCAL\MSSQL\DATA\QLThoiTrang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLThoiTrang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCAL\MSSQL\DATA\QLThoiTrang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLThoiTrang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLThoiTrang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLThoiTrang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLThoiTrang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLThoiTrang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLThoiTrang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLThoiTrang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLThoiTrang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLThoiTrang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLThoiTrang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLThoiTrang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLThoiTrang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLThoiTrang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLThoiTrang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLThoiTrang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLThoiTrang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLThoiTrang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLThoiTrang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLThoiTrang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLThoiTrang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLThoiTrang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLThoiTrang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLThoiTrang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLThoiTrang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLThoiTrang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLThoiTrang] SET  MULTI_USER 
GO
ALTER DATABASE [QLThoiTrang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLThoiTrang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLThoiTrang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLThoiTrang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLThoiTrang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLThoiTrang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLThoiTrang] SET QUERY_STORE = OFF
GO
USE [QLThoiTrang]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](10) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hedieuhanh]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hedieuhanh](
	[Mahdh] [int] IDENTITY(1,1) NOT NULL,
	[Tenhdh] [nchar](10) NULL,
 CONSTRAINT [PK_Hedieuhanh] PRIMARY KEY CLUSTERED 
(
	[Mahdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,	
	[Anhbia] [nvarchar](10) NULL,
	[Mahang] [int] NULL,
	[Mahdh] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 2, 2, CAST(2000000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 10, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (14, 14, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (14, 16, 1, CAST(200000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (15, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (13, CAST(N'2021-07-28T00:10:53.090' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (14, CAST(N'2021-07-28T00:11:27.207' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (15, CAST(N'2021-07-29T09:34:27.573' AS DateTime), NULL, 16)
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'Chaneo  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'Hermec    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'Gucchi    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Dioro    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Pradala    ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[Hedieuhanh] ON 

INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (1, N'Qu?n  ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (2, N'Áo       ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (3, N'Hoodie      ')
SET IDENTITY_INSERT [dbo].[Hedieuhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'HuynhBaoTuan', N'Admin@gmail.com', N'0123456789', N'12345678', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Huynh Bao Tuan', N'cuongtest@gmail.com', N'0123456789', N'12345678', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Tuan 123', N'Khach@gmail.com', N'123456789', N'12345678', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (2, N'Aó 1', CAST(2000000 AS Decimal(18, 0)), 9, N'ip3.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (5, N'Áo 2', CAST(2000000 AS Decimal(18, 0)), 10, N'ip4.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (6, N'Áo 3', CAST(2000000 AS Decimal(18, 0)), 10, N'ip5.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (7, N'Áo 4', CAST(2000000 AS Decimal(18, 0)), 2, N'ip6.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (8, N' Qu?n dài 1', CAST(1000000 AS Decimal(18, 0)), 1, N'ss1.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (9, N' Qu?n dài 2', CAST(1000000 AS Decimal(18, 0)), 1, N'ss2.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (10, N' Qu?n ng?n 1', CAST(2000000 AS Decimal(18, 0)), 1, N'ss3.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (11, N' Qu?n ng?n 2', CAST(2000000 AS Decimal(18, 0)), 2, N'ss4.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (13, N'Hoodie 1', CAST(200000 AS Decimal(18, 0)), 10, N'mi4.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (14, N'Hoodie 2', CAST(2000000 AS Decimal(18, 0)), 10, N'mi5.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (15, N'Hoodie 3', CAST(20000 AS Decimal(18, 0)), 10, N'mi6.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Anhbia], [Mahang], [Mahdh]) VALUES (16, N'Hoodie 4', CAST(200000 AS Decimal(18, 0)), 10, N'mi7.jpg', 3, 1)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hedieuhanh] FOREIGN KEY([Mahdh])
REFERENCES [dbo].[Hedieuhanh] ([Mahdh])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hedieuhanh]
GO
USE [master]
GO
ALTER DATABASE [QLThoiTrang] SET  READ_WRITE 
GO

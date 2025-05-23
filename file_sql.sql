USE [master]
GO
/****** Object:  Database [timgiasu]    Script Date: 23/04/2025 10:45:26 SA ******/
CREATE DATABASE [timgiasu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'timgiasu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.TUANANH28070809\MSSQL\DATA\timgiasu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'timgiasu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.TUANANH28070809\MSSQL\DATA\timgiasu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [timgiasu] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [timgiasu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [timgiasu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [timgiasu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [timgiasu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [timgiasu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [timgiasu] SET ARITHABORT OFF 
GO
ALTER DATABASE [timgiasu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [timgiasu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [timgiasu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [timgiasu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [timgiasu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [timgiasu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [timgiasu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [timgiasu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [timgiasu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [timgiasu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [timgiasu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [timgiasu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [timgiasu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [timgiasu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [timgiasu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [timgiasu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [timgiasu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [timgiasu] SET RECOVERY FULL 
GO
ALTER DATABASE [timgiasu] SET  MULTI_USER 
GO
ALTER DATABASE [timgiasu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [timgiasu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [timgiasu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [timgiasu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [timgiasu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [timgiasu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'timgiasu', N'ON'
GO
ALTER DATABASE [timgiasu] SET QUERY_STORE = ON
GO
ALTER DATABASE [timgiasu] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [timgiasu]
GO
/****** Object:  Table [dbo].[BuoiHoc]    Script Date: 23/04/2025 10:45:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuoiHoc](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MaLich] [int] NOT NULL,
	[Ngay] [date] NOT NULL,
	[GioBatDau] [time](7) NOT NULL,
	[GioKetThuc] [time](7) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKyMonHoc]    Script Date: 23/04/2025 10:45:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyMonHoc](
	[MaDK] [int] NOT NULL,
	[MaSV] [varchar](10) NOT NULL,
	[MaMon] [varchar](10) NOT NULL,
	[NgayDangKy] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 23/04/2025 10:45:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDanhGia] [int] NOT NULL,
	[MaLich] [int] NOT NULL,
	[MaSV] [varchar](10) NOT NULL,
	[MaGS] [varchar](10) NOT NULL,
	[NoiDung] [nvarchar](500) NULL,
	[Diem] [int] NULL,
	[NgayDanhGia] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaSu]    Script Date: 23/04/2025 10:45:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaSu](
	[MaGS] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[SoDienThoai] [varchar](15) NULL,
	[KinhNghiem] [nvarchar](200) NULL,
	[TieuSu] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichHoc]    Script Date: 23/04/2025 10:45:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichHoc](
	[MaLich] [int] NOT NULL,
	[MaYeuCau] [int] NOT NULL,
	[MaGS] [varchar](10) NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NULL,
	[HinhThuc] [nvarchar](100) NULL,
	[HocPhi] [decimal](10, 2) NULL,
	[HinhThucThanhToan] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 23/04/2025 10:45:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [varchar](10) NOT NULL,
	[TenMon] [nvarchar](100) NOT NULL,
	[MaxStudents] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 23/04/2025 10:45:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[SoDienThoai] [varchar](15) NULL,
	[Lop] [varchar](20) NULL,
	[NganhHoc] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuCauGiaSu]    Script Date: 23/04/2025 10:45:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCauGiaSu](
	[MaYeuCau] [int] NOT NULL,
	[MaSV] [varchar](10) NOT NULL,
	[MaMon] [varchar](10) NOT NULL,
	[NoiDung] [nvarchar](500) NULL,
	[NgayYeuCau] [date] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaYeuCau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BuoiHoc]  WITH CHECK ADD FOREIGN KEY([MaLich])
REFERENCES [dbo].[LichHoc] ([MaLich])
GO
ALTER TABLE [dbo].[DangKyMonHoc]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[DangKyMonHoc]  WITH CHECK ADD FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaGS])
REFERENCES [dbo].[GiaSu] ([MaGS])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaLich])
REFERENCES [dbo].[LichHoc] ([MaLich])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD FOREIGN KEY([MaGS])
REFERENCES [dbo].[GiaSu] ([MaGS])
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD FOREIGN KEY([MaYeuCau])
REFERENCES [dbo].[YeuCauGiaSu] ([MaYeuCau])
GO
ALTER TABLE [dbo].[YeuCauGiaSu]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[YeuCauGiaSu]  WITH CHECK ADD FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD CHECK  (([Diem]>=(1) AND [Diem]<=(5)))
GO
USE [master]
GO
ALTER DATABASE [timgiasu] SET  READ_WRITE 
GO

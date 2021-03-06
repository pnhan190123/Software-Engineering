USE [master]
GO
/****** Object:  Database [Product_Managerment]    Script Date: 1/15/2022 3:55:13 PM ******/
CREATE DATABASE [Product_Managerment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product_Managerment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Product_Managerment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_Managerment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Product_Managerment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Product_Managerment] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product_Managerment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product_Managerment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Product_Managerment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Product_Managerment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Product_Managerment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Product_Managerment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Product_Managerment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Product_Managerment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Product_Managerment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Product_Managerment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Product_Managerment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Product_Managerment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Product_Managerment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Product_Managerment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Product_Managerment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Product_Managerment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Product_Managerment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Product_Managerment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Product_Managerment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Product_Managerment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Product_Managerment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Product_Managerment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Product_Managerment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Product_Managerment] SET RECOVERY FULL 
GO
ALTER DATABASE [Product_Managerment] SET  MULTI_USER 
GO
ALTER DATABASE [Product_Managerment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Product_Managerment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Product_Managerment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Product_Managerment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Product_Managerment] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Product_Managerment', N'ON'
GO
ALTER DATABASE [Product_Managerment] SET QUERY_STORE = OFF
GO
USE [Product_Managerment]
GO
/****** Object:  Table [dbo].[FinancialPaperDetail]    Script Date: 1/15/2022 3:55:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialPaperDetail](
	[KeyDetail] [uniqueidentifier] NOT NULL,
	[KeyFinace] [uniqueidentifier] NULL,
	[BARCODE] [nvarchar](200) NULL,
	[Quantily] [int] NULL,
	[Discount] [int] NULL,
	[Price] [float] NULL,
	[Date] [datetime] NULL,
	[No] [int] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_FinancialPaperDetail] PRIMARY KEY CLUSTERED 
(
	[KeyDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialPaper]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialPaper](
	[KeyFinance] [uniqueidentifier] NOT NULL,
	[NoFP] [nvarchar](50) NULL,
	[Category] [int] NULL,
	[Discount] [int] NULL,
	[Date] [datetime] NULL,
	[NoFP2] [nvarchar](50) NULL,
	[DAY2] [datetime] NULL,
	[Quantily] [int] NULL,
	[Sum] [float] NULL,
	[Note] [nvarchar](500) NULL,
	[IdCompany] [nvarchar](50) NULL,
	[IdDepartment] [nvarchar](50) NULL,
	[IdDepartment2] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATE_DATE] [datetime] NULL,
	[DELETE_DATE] [datetime] NULL,
 CONSTRAINT [PK_FinancialPaper] PRIMARY KEY CLUSTERED 
(
	[KeyFinance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[BARCODE] [nvarchar](100) NOT NULL,
	[NameProduct] [nvarchar](300) NULL,
	[NameAT] [nvarchar](200) NULL,
	[Unit] [nvarchar](100) NULL,
	[Price] [float] NULL,
	[IdSupplier] [nvarchar](50) NULL,
	[IdSource] [int] NULL,
	[IdGroupProduct] [int] NULL,
	[Note] [nvarchar](500) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [int] NULL,
	[DISABLED] [bit] NULL,
	[Image] [nvarchar](500) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[BARCODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupProduct]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupProduct](
	[IdGroupProduct] [int] IDENTITY(1,1) NOT NULL,
	[NameGProduct] [nvarchar](300) NULL,
	[Note] [nvarchar](600) NULL,
	[DISABLED] [bit] NULL,
 CONSTRAINT [PK_GroupProduct] PRIMARY KEY CLUSTERED 
(
	[IdGroupProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_TURNOVER_MONTHLY]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_TURNOVER_MONTHLY](
@DATE1 DATETIME,
@DATE2 DATETIME

)
RETURNS TABLE AS RETURN
SELECT C.IdGroupProduct,D.NameGProduct, SUM(A.Amount) AS Amount FROM FinancialPaperDetail A, FinancialPaper B, Product C, GroupProduct D
WHERE A.KeyFinace = B.KeyFinance
AND A.BARCODE = C.BARCODE
AND C.IdGroupProduct = D.IdGroupProduct
AND B.Category in(3,4)
and B.Date >= CONVERT(DATETIME,@DATE1, 103)
and B.Date < CONVERT(DATETIME, @DATE2, 103)
GROUP BY C.IdGroupProduct, D.NameGProduct
GO
/****** Object:  Table [dbo].[Company]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[IdCompany] [nvarchar](100) NOT NULL,
	[NameCompany] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NULL,
	[DISABLED] [bit] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[IdCompany] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[idCustom] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[MST] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[idCustom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[IdDepartment] [nvarchar](50) NOT NULL,
	[NameDepartment] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[IdCompany] [nvarchar](50) NULL,
	[DISABLED] [bit] NULL,
	[Syntax] [nvarchar](50) NULL,
	[STOCK] [bit] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[IdDepartment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idOrder] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](100) NULL,
	[Status] [bit] NULL,
	[CreateOrder] [datetime] NULL,
	[idCus] [nvarchar](50) NULL,
	[pay] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[idDetail] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[idDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Source]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Source](
	[IdSource] [int] IDENTITY(1,1) NOT NULL,
	[NameSource] [nvarchar](500) NULL,
	[DISABLED] [bit] NULL,
 CONSTRAINT [PK_Source] PRIMARY KEY CLUSTERED 
(
	[IdSource] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[IdSupplier] [nvarchar](50) NOT NULL,
	[NameSupplier] [nvarchar](501) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[CREATED_DATE] [datetime] NULL,
	[DISABLED] [bit] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[IdSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_FUNC]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_FUNC](
	[FUNC_CODE] [nvarchar](200) NOT NULL,
	[SORT] [int] NULL,
	[DESCRIPTION] [nvarchar](500) NULL,
	[ISGROUP] [bit] NULL,
	[PARENT] [nvarchar](500) NULL,
	[MENU] [bit] NULL,
	[TIPS] [nvarchar](50) NULL,
 CONSTRAINT [PK_SYS_FUNC] PRIMARY KEY CLUSTERED 
(
	[FUNC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_SEQUENCE]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SEQUENCE](
	[SEQNAME] [nvarchar](50) NOT NULL,
	[SEQVALUE] [int] NULL,
 CONSTRAINT [PK_SYS_SEQUENCE] PRIMARY KEY CLUSTERED 
(
	[SEQNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 1/15/2022 3:55:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[IdUnit] [int] NOT NULL,
	[NameUnit] [nvarchar](100) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[IdUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Company] ([IdCompany], [NameCompany], [Phone], [Fax], [Address], [Email], [DISABLED]) VALUES (N'COPC', N'Chi Nhánh Miền Trung', N'', N'', N'', N'', 0)
INSERT [dbo].[Company] ([IdCompany], [NameCompany], [Phone], [Fax], [Address], [Email], [DISABLED]) VALUES (N'EOPC', N'Chi Nhánh Miền Đông', N'', N'', N'', N'', 0)
INSERT [dbo].[Company] ([IdCompany], [NameCompany], [Phone], [Fax], [Address], [Email], [DISABLED]) VALUES (N'NOPC', N'Chi Nhánh Miền Bắc', N'', N'', N'', N'', 0)
INSERT [dbo].[Company] ([IdCompany], [NameCompany], [Phone], [Fax], [Address], [Email], [DISABLED]) VALUES (N'SOPC', N'Chi Nhánh Miền Nam', N'', N'', N'', N'', 0)
INSERT [dbo].[Company] ([IdCompany], [NameCompany], [Phone], [Fax], [Address], [Email], [DISABLED]) VALUES (N'WOPC', N'Chi Nhánh Miền Tây', N'', N'', N'', N'', 0)
INSERT [dbo].[Customer] ([idCustom], [FullName], [Phone], [Email], [Address], [MST], [username], [password]) VALUES (N'@24h8hm8wfjjx1cd94n', N'Nguyễn Thị Admin', N'0398155218151', N'admin@gmail.com', N'cái tàu hạ', N'55152625', N'admin', N'c8c605999f3d8352d7bb792cf3fdb25b')
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'CTOPC', N'CHI NHÁNH CẦN THƠ', N'0292.3837999', N'', N'', N'172 Khu đô thị Hai bên đường Nguyễn Văn Cừ Khu vực 8, Phường An Bình, Quận Ninh Kiều, Thành phố Cần Thơ', N'WOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'FACOPC', N'NHÀ MÁY DƯỢC PHẨM OPC - CÔNG TY CỔ PHẦN DƯỢC PHẨM OPC', N'(0274) 3632732', N'', N'', N'Số 09/ĐX04-TH Tổ 7, Khu phố Tân Hóa, Phường Tân Vĩnh Hiệp, Thị xã Tân Uyên, Bình Dương', N'EOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'HNOPC', N'CHI NHÁNH HÀ NỘI', N'024.37875336 ', N'024.37875338', N'', N'348 phố Ngô Quyền, Phường La Khê, Quận Hà Đông, Thành phố Hà Nội', N'NOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'MTVOPC', N'CTY TNHH MTV DƯỢC PHẨM OPC BÌNH DƯƠNG', N'0274.3631830', N'0274.3631831 ', N'opcbinhduong@opcpharma.com', N'Số 09/ĐX04-TH Tổ 7, Khu phố Tân Hóa, Phường Tân Vĩnh Hiệp, Thị xã Tân Uyên, Bình Dương', N'EOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'NAOPC', N'CHI NHÁNH NGHỆ AN', N'0238.3585239', N'0238.3585238', N'', N'99B Nguyễn Thái Học, Phường Lê Lợi, Thành phố Vinh, Tỉnh Nghệ An', N'NOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'OPCDN', N'CHI NHÁNH ĐÀ NẴNG', N'0236.3697888', N'0236.3697973', N'', N'612 Nguyễn Hữu Thọ, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', N'COPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'OPCNT', N'CHI NHÁNH NHA TRANG', N'0258.246.5886', N'0258.246.5885', N'', N'STH03A.01-06, Đường số 6, Khu đô thị mới Lê Hồng Phong II, Phường Phước Hải, Thành phố Nha Trang, Khánh Hòa', N'COPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'OPCST1', N'CỬA HÀNG SỐ 1', N'028.38756619', N'', N'', N'1017 Hồng Bàng, Phường 12, Quận 6, Thành phố Hồ Chí Minh', N'SOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'OPCST2', N'CỬA HÀNG SỐ 2', N'028.38667227', N'', N'', N'Quầy D7 Công Ty CP TM-DV Tổng Hợp 10 - 134/1 Tô Hiến Thành, Phường 15, Quận 10, Thành phố Hồ Chí Minh', N'SOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'OPCST3', N'CỬA HÀNG SỐ 3', N'028.38557910', N'', N'', N'65 -67 Phùng Hưng, Phường 13, Quận 5, Thành phố Hồ Chí Minh', N'SOPC', 0, N'', 0)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'OPCHCM', N'CHI NHÁNH HỒ CHÍ MINH', N'028.38 778 172', N'028.37 511 321', N'', N'1017 Hồng Bàng - Phường 12 - Quận 6 - TP.Hồ Chí Minh', N'SOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'TGOPC', N'CHI NHÁNH TIỀN GIANG', N'0273.3950999', N'0273.3958899', N'', N'297 Nguyễn Thị Thập, Phường 5, Thành phố Mỹ Tho, Tiền Giang', N'WOPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'VTOPC', N'CHI NHÁNH VŨNG TÀU', N'0254.3832364', N'0254.3832364', N'', N'38 Trương Văn Bang, Phường 7, Thành phố Vũng Tàu, Tỉnh Bà Rịa Vũng Tàu', N'COPC', 0, N'', 1)
INSERT [dbo].[Department] ([IdDepartment], [NameDepartment], [Phone], [Fax], [Email], [Address], [IdCompany], [DISABLED], [Syntax], [STOCK]) VALUES (N'WOPC', N'CHI NHÁNH MIỀN ĐÔNG', N'0274.3632178', N'0274.3632177', N'', N'Số 09/ĐX04-TH Tổ 7, Khu phố Tân Hóa, Tân Vĩnh Hiệp, thị xã Tân Uyên, Bình Dương', N'EOPC', 0, N'', 0)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'8314efee-e746-4e7b-9fb2-13fd7c10bcaf', N'000067/22/NHM', 3, 5, CAST(N'2022-01-07T17:30:08.867' AS DateTime), NULL, NULL, 50, 47499952.5, N'', N'COPC', N'OPCDN', N'@3759zgn6rbapl3b2da', 2, CAST(N'2022-01-07T17:30:54.240' AS DateTime), CAST(N'2022-01-07T17:30:54.243' AS DateTime), NULL)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'62f35ac3-c4e5-42dd-ac6b-2956cd4dad34', N'000062/22/NHM', 1, NULL, CAST(N'2022-01-06T00:03:19.597' AS DateTime), NULL, NULL, 7, 5436000, N'tmp', N'COPC', N'VTOPC', N'CO LTD', 1, CAST(N'2022-01-06T00:03:40.043' AS DateTime), CAST(N'2022-01-06T00:03:40.043' AS DateTime), NULL)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'000058/22/NHM', 1, NULL, CAST(N'2022-01-04T22:31:44.703' AS DateTime), NULL, NULL, 3106, 4465521000, N'Đơn hàng tháng 2', N'SOPC', N'OPCST1', N'CO LTD', 1, CAST(N'2022-01-04T22:32:47.423' AS DateTime), CAST(N'2022-01-04T22:32:47.423' AS DateTime), NULL)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'COPC', 3, 5, CAST(N'2022-01-06T23:04:53.897' AS DateTime), NULL, NULL, 213, 224137000, N'Xuất Kho', N'COPC', N'OPCNT', N'@56urpnaixztbvtgtor', 2, CAST(N'2022-01-06T23:06:59.043' AS DateTime), CAST(N'2022-01-06T23:09:25.617' AS DateTime), NULL)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'000066/22/NHM', 1, NULL, CAST(N'2022-01-07T17:27:21.513' AS DateTime), NULL, NULL, 156, 117700000, N'', N'EOPC', N'MTVOPC', N'LiveWell', 1, CAST(N'2022-01-07T17:28:13.067' AS DateTime), CAST(N'2022-01-07T17:28:13.077' AS DateTime), NULL)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'd66a8e1e-c769-4220-bf95-892292af7a34', N'000057/22/NHM', 1, NULL, CAST(N'2022-01-04T20:35:48.987' AS DateTime), NULL, NULL, 7, 4828999, N'Đơn hàng tháng 1', N'COPC', N'OPCNT', N'CO LTD', 1, CAST(N'2022-01-04T20:36:17.913' AS DateTime), CAST(N'2022-01-04T20:36:17.917' AS DateTime), NULL)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'3d32c001-3652-4a40-89a5-993886eedfd3', N'NOPC', 1, NULL, CAST(N'2022-01-06T22:48:36.137' AS DateTime), NULL, NULL, 7514, 7451742000, N'Phiếu nhập tháng 1', N'NOPC', N'NAOPC', N'OTC', 2, CAST(N'2022-01-06T22:52:15.270' AS DateTime), CAST(N'2022-01-06T23:04:45.170' AS DateTime), NULL)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'412a659e-45cd-40d4-b40c-ef6727c35d1c', N'000065/22/NHM', 3, 10, CAST(N'2022-01-06T23:11:17.157' AS DateTime), NULL, NULL, 11000, 10745995500, N'Khách Vjp', N'COPC', N'OPCDN', N'@56urpnaixztbvtgtor', 1, CAST(N'2022-01-06T23:12:15.700' AS DateTime), CAST(N'2022-01-06T23:12:15.700' AS DateTime), NULL)
INSERT [dbo].[FinancialPaper] ([KeyFinance], [NoFP], [Category], [Discount], [Date], [NoFP2], [DAY2], [Quantily], [Sum], [Note], [IdCompany], [IdDepartment], [IdDepartment2], [Status], [CREATED_DATE], [UPDATE_DATE], [DELETE_DATE]) VALUES (N'2582940a-29f2-409e-bce7-fece3186a5fa', N'000061/22/NHM', 3, 6, CAST(N'2022-01-05T00:04:17.237' AS DateTime), NULL, NULL, 11, 9849999, N'aa', N'COPC', N'OPCDN', N'hị tr@42', 1, CAST(N'2022-01-05T00:04:40.497' AS DateTime), CAST(N'2022-01-05T00:04:40.500' AS DateTime), NULL)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b2dfe305-e701-4100-a979-0241f19ef9c7', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000017', 50, NULL, 790000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 13, 39500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'9920596c-97c2-4e29-a177-03dca6a17b3b', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022200000060', 1, 6, 2350000, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 11, 2500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7dc3b137-406f-48f1-9a60-047522978d79', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000079', 5, NULL, 568000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 4, 2840000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'73a57884-dcc1-4828-aa63-048aac5b5fe4', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000013', 1, NULL, 269000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 20, 269000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'df15717f-2f2c-4ed1-9130-058b0a2fc472', N'63c77b91-e436-487a-b49c-4a601cbb688a', N'2022100000023', 50, 50, 224500, CAST(N'2022-01-04T23:58:54.283' AS DateTime), 2, 11225000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'ba3f6d59-741b-4320-a2ff-0ab83fbb4cbe', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022500000043', 1, NULL, 976000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 40, 976000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'35e69286-1343-4488-9d4c-0d70dcea5bea', N'd66a8e1e-c769-4220-bf95-892292af7a34', N'2022000000017', 1, NULL, 790000, CAST(N'2022-01-04T20:35:48.987' AS DateTime), 1, 790000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'aad5db4b-6c12-4b6a-9824-0df03ad8d836', N'63c77b91-e436-487a-b49c-4a601cbb688a', N'2022100000054', 60, 50, 55000, CAST(N'2022-01-04T23:58:54.283' AS DateTime), 3, 3300000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'1d1d801b-8f06-4c1e-a341-0df47fed7755', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022500000029', 100, NULL, 2600000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 10, 260000000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'c3e4c623-7954-41bb-a741-0df68e08142d', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022500000029', 1, 5, 2470000, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 4, 2600000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'1aff13e4-27d1-4c54-bb33-12c8ea420b0f', N'62f35ac3-c4e5-42dd-ac6b-2956cd4dad34', N'2022100000047', 1, NULL, 490000, CAST(N'2022-01-06T00:03:19.597' AS DateTime), 5, 490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'6de6af51-0e0b-4fd9-b674-13c2015416c4', N'63c77b91-e436-487a-b49c-4a601cbb688a', N'2022200000053', 15, 50, 1250000, CAST(N'2022-01-04T23:58:54.283' AS DateTime), 6, 18750000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'ac85d332-776c-421b-854e-16c60670fb27', N'63c77b91-e436-487a-b49c-4a601cbb688a', N'2022200000039', 31, 50, 495000, CAST(N'2022-01-04T23:58:54.283' AS DateTime), 5, 15345000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'2a350fd9-dd13-4cae-9fc6-16f0fefc2621', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000039', 51, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 7, 50490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'a7006f68-4452-475c-8c95-178547b0cbf8', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022500000043', 50, 5, 927200, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 7, 46360000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'cdb41155-7bf4-4977-b7ea-17902c6faf10', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022300000038', 1, NULL, 373000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 2, 373000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'0c3b401d-f6a0-40c3-90ff-1ac1047e6108', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022500000043', 1, NULL, 976000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 11, 976000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'78da3a9f-66d0-4055-b683-1bdd94b52b94', N'63c77b91-e436-487a-b49c-4a601cbb688a', N'2022200000015', 1, 50, 495000, CAST(N'2022-01-04T23:58:54.283' AS DateTime), 4, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7129e0e6-bf32-4363-9d0d-1c7df0ff150c', N'd66a8e1e-c769-4220-bf95-892292af7a34', N'2022000000031', 1, NULL, 550000, CAST(N'2022-01-04T20:35:48.987' AS DateTime), 3, 550000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'9f1284d7-a795-42d4-85b7-1e8d3e8e6c71', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022100000054', 1, 6, 103400, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 7, 110000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7a160fd9-0270-4ff4-b75c-207a4feac2a3', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000079', 5, NULL, 568000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 4, 2840000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'faa8aee3-789f-4211-888c-218b111227ea', N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'2022000000086', 1, NULL, 550000, CAST(N'2022-01-07T17:27:21.513' AS DateTime), 4, 550000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'6e5f65d1-0030-47e7-9e6e-21d3999ffdff', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000055', 60, NULL, 690000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 13, 41400000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'e540a3eb-f2be-4929-950d-221208b21cf7', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000024', 500, NULL, 699000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 7, 349500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7b9cb3b5-f0f2-4877-9c42-240628759973', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022400000044', 1, NULL, 209000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 7, 209000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'34dbe6d5-6a1e-4cb1-8903-241eae8c13b9', N'd66a8e1e-c769-4220-bf95-892292af7a34', N'2022000000024', 1, NULL, 699000, CAST(N'2022-01-04T20:35:48.987' AS DateTime), 2, 699000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'dd8b87e6-2793-41c9-83c8-2442edf26fb5', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000055', 60, NULL, 690000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 33, 41400000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b736a62d-e5a0-4042-9ded-253f260f0843', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022400000037', 500, NULL, 1180000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 6, 590000000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b55d9781-0541-4c26-bf41-29dff998dbc4', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000079', 5, NULL, 568000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 2, 2840000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'24f9b9c5-8da1-4550-aa3e-312829163115', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000079', 5, NULL, 568000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 7, 2840000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'53ddab9d-fdcf-4d81-b644-31be61aae398', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000079', 5, NULL, 568000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 3, 2840000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'd42f10cf-8112-44ae-ae5f-31d9948de32a', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000039', 51, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 2, 50490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'5f7df8e8-c71e-44ae-bc48-381a2bdca157', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000037', 1213, NULL, 1180000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 14, 1431340000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'91ae6849-b055-40a9-bc4d-3888d3a0f158', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022100000047', 11, NULL, 490000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 12, 5390000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'9fa15537-8f88-410b-9555-389f534596fb', N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'2022200000022', 1, NULL, 960000, CAST(N'2022-01-07T17:27:21.513' AS DateTime), 8, 960000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'68432a8f-ecda-4a20-a883-39518394f162', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000039', 51, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 2, 50490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b6b8d05d-0a72-43d7-8255-3c6e7c5e7592', N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'2022000000055', 1, NULL, 690000, CAST(N'2022-01-07T17:27:21.513' AS DateTime), 3, 690000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'3f193112-2bc4-455e-b1c6-3d5dabd4fd16', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 16, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'19a0c249-acdd-4046-aae8-3f162ea75a12', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000017', 50, NULL, 790000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 1, 39500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'c255dd85-ca89-44ab-a1de-407c9e5652b1', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000055', 60, NULL, 690000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 3, 41400000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'fded5855-8d39-4ed3-aa0c-468e8216dd16', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022100000030', 1, 6, 104340, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 5, 111000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'ab041fb5-b859-4ef1-b9d9-485a8dca0258', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022500000043', 1, NULL, 976000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 39, 976000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'ad951fee-bc89-40d3-9fe7-492f6cd6526b', N'd66a8e1e-c769-4220-bf95-892292af7a34', N'2022100000054', 1, NULL, 110000, CAST(N'2022-01-04T20:35:48.987' AS DateTime), 6, 110000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'3d108718-b01d-4ed7-8d72-4d261a15f296', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000024', 500, NULL, 699000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 2, 349500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'784f9903-76e6-4e8a-a343-4f512bb1a9bc', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000039', 51, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 18, 50490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'375146ca-0613-4369-9d42-53ada4823e55', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022600000011', 1, 5, 313500, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 7, 330000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'15faacee-e643-4335-9e4b-545945a860d3', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000037', 1213, NULL, 1180000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 9, 1431340000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'042e2d49-86fd-410e-9530-54eae1b84dd5', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000013', 1, NULL, 269000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 1, 269000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'40ab80a5-e6fd-4def-9dab-580172c5d343', N'd66a8e1e-c769-4220-bf95-892292af7a34', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-04T20:35:48.987' AS DateTime), 7, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'ef02651e-9bb5-40f6-a6a9-59be069189fd', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022500000036', 500, NULL, 2700000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 11, 1350000000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'757ed099-cd89-4cbc-af30-5b386a607d4d', N'62f35ac3-c4e5-42dd-ac6b-2956cd4dad34', N'2022000000079', 1, NULL, 568000, CAST(N'2022-01-06T00:03:19.597' AS DateTime), 3, 568000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b0bd9b73-4b49-4f46-8419-5c2924535989', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000039', 51, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 6, 50490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'58e35f29-9ba1-460c-bb09-5c625e04b0a9', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022500000043', 1, NULL, 976000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 10, 976000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'1f0a0f16-7f2f-48a4-bcc2-5d8a6f331353', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022300000021', 111, NULL, 250000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 35, 27750000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'6c8e4d50-c3cb-4bd3-8a76-5e2ab766e7fe', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000017', 50, NULL, 790000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 21, 39500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'4dd0a45a-fe18-4457-8615-6182c31c323b', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 31, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'1f172285-a2fc-4048-b972-668becc069f0', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000013', 1, NULL, 269000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 9, 269000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'3c1ffe8a-00e9-4168-b871-66e5fae44e6a', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000079', 5, NULL, 568000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 29, 2840000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'1aa7c34d-cb2a-468d-b61b-68bebf02af69', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022400000051', 1, NULL, 367000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 8, 367000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'fd6230bb-77a6-4bcd-86b2-6a731b2b1a3a', N'62f35ac3-c4e5-42dd-ac6b-2956cd4dad34', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T00:03:19.597' AS DateTime), 6, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'49b2dff0-8381-474b-b5d8-6b219dd630d3', N'63c77b91-e436-487a-b49c-4a601cbb688a', N'2022000000048', 50, 50, 499999.5, CAST(N'2022-01-04T23:58:54.283' AS DateTime), 1, 24999975)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b2a9ce5c-f463-4012-bd4d-6be8cad6438e', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022500000050', 1, 5, 1425475, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 6, 1500500)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'974877aa-6813-439a-b41d-6ca2fff41d34', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022400000051', 60, 5, 348650, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 2, 20919000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'5f2b7991-5ef0-4744-8133-6e1287b5636f', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022500000050', 1, 5, 1425475, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 4, 1500500)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'337c108a-1963-4e75-adf9-6f30d15d768d', N'62f35ac3-c4e5-42dd-ac6b-2956cd4dad34', N'2022200000039', 1, NULL, 990000, CAST(N'2022-01-06T00:03:19.597' AS DateTime), 7, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'41a1abed-f8b4-4f46-998a-6f72ebdb6064', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000017', 50, NULL, 790000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 15, 39500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'3836e376-0f6d-4895-b08b-7046823b65b0', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000017', 50, NULL, 790000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 41, 39500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'd4fb38bd-6c58-4a0a-bd21-709ebd6cba25', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022500000029', 1, 5, 2470000, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 2, 2600000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'fdf97987-e3fe-4ac8-b59b-71752f3f2c4f', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022600000035', 700, NULL, 125000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 13, 87500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'1d4676d8-85cc-4ffd-937f-71d6fed0d91c', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000037', 1213, NULL, 1180000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 1, 1431340000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'fd92d447-69b1-47aa-a8ba-733734c0a344', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000024', 500, NULL, 699000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 36, 349500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'9156db53-99ca-4cb0-acee-74d215eab4e4', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022100000047', 11, NULL, 490000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 5, 5390000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'75b9e566-e77e-4421-a255-7924c1db400f', N'62f35ac3-c4e5-42dd-ac6b-2956cd4dad34', N'2022100000023', 1, NULL, 449000, CAST(N'2022-01-06T00:03:19.597' AS DateTime), 4, 449000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'4983c4fc-afb2-444c-8b3f-7a2407b91a3b', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022600000011', 1, 5, 313500, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 3, 330000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'914d667f-a8d2-46e3-9d09-7a9994bd703c', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000055', 60, NULL, 690000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 4, 41400000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'3f7266ee-8287-40e4-a2b3-7b93a7c7cc0c', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022100000047', 11, NULL, 490000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 38, 5390000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'2dd7ab03-d89a-4cc8-a883-7bbdad418b82', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022300000021', 111, NULL, 250000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 32, 27750000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'0d1599f3-67ed-4b67-b055-7cd436299a8d', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022100000047', 11, NULL, 490000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 11, 5390000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b789d9d1-589a-44fa-8c8a-7f5f68e558b5', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000037', 1213, NULL, 1180000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 6, 1431340000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'5f87d3bc-e04d-4783-b976-805cdc60c4a7', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022400000044', 50, 5, 198550, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 6, 9927500)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'ea6409c7-ec03-4680-ba5b-831a83a0ed1d', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022200000015', 1, 6, 930600, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 8, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'de93f6c0-89bf-42ba-a7f1-85b19ffc607e', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 12, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'339630f1-a998-4e08-b452-8838088f754a', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000017', 50, NULL, 790000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 3, 39500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'4cb1b0b3-7648-4a73-852f-8a45d96b50b5', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 26, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'62fdd89b-633b-4a9d-9729-8cffd9e53273', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022000000048', 1, 6, 939999.06, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 2, 999999)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7b6d99a5-c1ca-43d6-a7e6-8e225687d394', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 17, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'3cc9aa0e-b5c9-4f8a-9615-8fbed9497031', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022500000043', 1, NULL, 976000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 19, 976000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'508aa270-6392-4e48-bc06-9198b9e757bf', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022300000021', 111, NULL, 250000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 18, 27750000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b00801bb-8094-406a-b6a2-9240e53b85d7', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 11, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'66a05a4d-ebe0-4614-9de3-9370868270d0', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000079', 5, NULL, 568000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 4, 2840000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'51271853-e613-4697-b7db-938329402cf0', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022200000022', 1, 6, 902400, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 9, 960000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'c6db9fac-8831-419f-a0d7-93b50ca057f3', N'8314efee-e746-4e7b-9fb2-13fd7c10bcaf', N'2022000000048', 50, 5, 949999.05, CAST(N'2022-01-07T17:30:08.867' AS DateTime), 1, 47499952.5)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b05303d9-976e-48fe-9521-94a0e839d01f', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000013', 1, NULL, 269000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 17, 269000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'0cc1c62c-1f3d-47da-abec-95b74f630e61', N'd66a8e1e-c769-4220-bf95-892292af7a34', N'2022000000048', 1, NULL, 999999, CAST(N'2022-01-04T20:35:48.987' AS DateTime), 4, 999999)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'c821acf1-4e0d-44b3-beed-96a1537645da', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000037', 1213, NULL, 1180000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 16, 1431340000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'0fe1b652-46a2-4b21-a396-979ee62bf479', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022000000062', 1, 6, 1175000, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 3, 1250000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'eead2368-62d8-4d1f-b0cb-986f2a7a9fcb', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000037', 1213, NULL, 1180000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 10, 1431340000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'8a08c9e2-4f26-4fcb-a33e-9967de7d6ba3', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000039', 51, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 10, 50490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'e66ba04d-1d7b-4e51-99de-9bd4ef1bc32d', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 10, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'12e979e7-2588-4d66-ae64-9dd93db810b1', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022300000021', 111, NULL, 250000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 34, 27750000)
GO
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'513f945d-d64e-4936-a1e2-9e2910a0e5fd', N'62f35ac3-c4e5-42dd-ac6b-2956cd4dad34', N'2022000000024', 1, NULL, 699000, CAST(N'2022-01-06T00:03:19.597' AS DateTime), 1, 699000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'07293624-cde1-4490-b540-9ed1a51544f7', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022300000045', 1, NULL, 782000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 3, 782000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'30be8a9c-9cb0-4d10-9e14-a05446fec312', N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'2022100000023', 1, NULL, 449000, CAST(N'2022-01-07T17:27:21.513' AS DateTime), 5, 449000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b27825da-bd23-4097-ba6d-a315d6df74d1', N'412a659e-45cd-40d4-b40c-ef6727c35d1c', N'2022000000055', 1000, 10, 621000, CAST(N'2022-01-06T23:11:17.157' AS DateTime), 2, 621000000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'51a690fd-b2a0-45cd-848f-a374670c1b14', N'62f35ac3-c4e5-42dd-ac6b-2956cd4dad34', N'2022000000062', 1, NULL, 1250000, CAST(N'2022-01-06T00:03:19.597' AS DateTime), 2, 1250000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'3579fa75-c742-4859-bb1c-a447b182d321', N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'2022100000030', 1, NULL, 111000, CAST(N'2022-01-07T17:27:21.513' AS DateTime), 6, 111000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7cb4ad0d-d9a0-4767-9d3d-a64dfa18bf89', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 28, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'19614ce1-36b5-4d8f-b04f-a6ed173f3bcb', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022500000012', 50, 5, 2850000, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 1, 142500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'c551793d-43fa-4da6-b3e1-a83519de4bf2', N'412a659e-45cd-40d4-b40c-ef6727c35d1c', N'2022000000048', 5000, 10, 899999.1, CAST(N'2022-01-06T23:11:17.157' AS DateTime), 1, 4499995500)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'84d422b1-d510-4095-9bf9-a9feb95772ef', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022300000021', 111, NULL, 250000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 7, 27750000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'ae4d7ba9-5fcc-48cb-a0ad-ac486d266119', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022100000047', 1, 6, 460600, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 6, 490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'57cb915c-0235-4705-b089-accbad4e7acb', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000055', 60, NULL, 690000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 23, 41400000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'e2b2de64-032e-4c04-be87-ad7f7149c117', N'd66a8e1e-c769-4220-bf95-892292af7a34', N'2022000000055', 1, NULL, 690000, CAST(N'2022-01-04T20:35:48.987' AS DateTime), 5, 690000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'fff0f305-5ff9-4a58-b3e4-ae3b1ba552a5', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000055', 60, NULL, 690000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 6, 41400000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'58994a4c-6948-4338-9573-afcddd73904a', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000039', 51, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 9, 50490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'b9d6e447-b29a-49a6-b27e-b2b255bdd8bf', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022500000043', 600, NULL, 976000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 12, 585600000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'07db4238-9285-4723-b412-b6be65cc2173', N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'2022000000024', 50, NULL, 699000, CAST(N'2022-01-07T17:27:21.513' AS DateTime), 2, 34950000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'c2e055b5-4a2e-4175-99c6-b7a1f46a2486', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022300000021', 111, NULL, 250000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 11, 27750000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'de566760-d9df-4aef-8496-b7a313b51f26', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000024', 500, NULL, 699000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 6, 349500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'6ecde074-d542-4066-b80c-b808653f0d98', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022300000021', 111, NULL, 250000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 19, 27750000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'fb2beda9-f274-42ed-90d0-b928b8e1f2ad', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022200000046', 1, 6, 1128000, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 10, 1200000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'91a953d9-f4ea-4492-9be5-bcadb8e24351', N'412a659e-45cd-40d4-b40c-ef6727c35d1c', N'2022000000062', 5000, 10, 1125000, CAST(N'2022-01-06T23:11:17.157' AS DateTime), 3, 5625000000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'9431ddb2-7fce-4055-9fdc-c0124262bafd', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000055', 60, NULL, 690000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 5, 41400000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7f22e7f6-d7e7-40a3-9295-c0337f4a6621', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022400000044', 50, 5, 198550, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 1, 9927500)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'61b48106-6ff0-427e-89dc-c03bab2b2cbc', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022400000013', 100, NULL, 269000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 4, 26900000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'3be211d4-8b8c-4953-8544-c18212fc3c6e', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022100000047', 11, NULL, 490000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 22, 5390000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7d9ec5fc-1941-44f6-9c26-c409f4717f68', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000024', 500, NULL, 699000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 15, 349500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'c8111e79-3368-4512-bd3b-c4d74cacce94', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000024', 500, NULL, 699000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 1, 349500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'6e15d726-b57d-42a3-9dcb-c4d9c62fc197', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000079', 5, NULL, 568000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 8, 2840000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'045830b0-21e2-43f6-b0b2-c51fbe9ace91', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000017', 50, NULL, 790000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 25, 39500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'7272c567-6df8-4366-b012-c5c4b632f03e', N'8ef6063a-a048-4ffb-94bb-e1ff4e19cda9', N'2022000000055', 50, 50, 345000, CAST(N'2022-01-04T23:06:35.973' AS DateTime), 1, 17250000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'14565e51-6ac3-4664-a1c1-c9008582f3e7', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000055', 60, NULL, 690000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 14, 41400000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'a4b07fc8-8314-413e-a546-c99c834e02fc', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022000000017', 1, NULL, 790000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 1, 790000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'fe97ef42-5d05-4592-a236-ca1ea1a4aa35', N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'2022000000017', 100, NULL, 790000, CAST(N'2022-01-07T17:27:21.513' AS DateTime), 1, 79000000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'1577d3a2-f70e-4cd7-870d-cb076f9fbba0', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022100000047', 11, NULL, 490000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 9, 5390000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'c440ff8b-92c6-4901-aa62-cdf30a74f642', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022100000023', 1, 6, 422060, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 4, 449000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'bbaa0592-e41e-4c4c-9d60-cf6f6feba378', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022100000047', 11, NULL, 490000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 20, 5390000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'80d51cb3-ab7a-4799-8ced-cfcc389d832f', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022500000043', 1, NULL, 976000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 21, 976000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'915ae723-9e14-4b3c-8874-d5c0f9c73c9a', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022500000043', 1, NULL, 976000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 8, 976000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'15335d42-f8ca-4a96-bfd4-d72d4d488849', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022500000043', 1, NULL, 976000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 3, 976000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'41616d0f-6882-4bad-87f3-dc3994749b1e', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022300000021', 111, NULL, 250000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 27, 27750000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'16578316-7900-4cb4-9453-ddf1caa6dd44', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022200000039', 51, NULL, 990000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 30, 50490000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'1e820b90-2f9b-4bb9-9445-e9b8945f23ff', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022100000047', 11, NULL, 490000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 37, 5390000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'f8eb75ef-3f6c-43ae-b853-f4839a22d94f', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022500000043', 50, 5, 927200, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 5, 46360000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'00a83c63-5fde-43dc-b482-f484b0274fbf', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022500000012', 1, NULL, 3000000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 9, 3000000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'5f800856-ea52-4777-b200-f6ddac87b4e5', N'4b3ae0e0-9423-4e4f-a35f-712c3318b0e6', N'2022200000015', 1, NULL, 990000, CAST(N'2022-01-07T17:27:21.513' AS DateTime), 7, 990000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'6072f245-e03b-412e-9714-f8ec14d71542', N'2582940a-29f2-409e-bce7-fece3186a5fa', N'2022000000017', 1, 6, 742600, CAST(N'2022-01-05T00:04:17.237' AS DateTime), 1, 790000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'bffe2834-fd94-44d9-a3c8-fca815a340b8', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022000000017', 50, NULL, 790000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 5, 39500000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'97e0bd2d-b75f-4f58-8a05-fe5b54ac3531', N'72a68184-cb1f-4b00-b38a-53c7642aa907', N'2022400000020', 600, NULL, 2600000, CAST(N'2022-01-04T22:31:44.703' AS DateTime), 5, 1560000000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'66fe30b1-2d11-4269-91e0-feb9511cbccf', N'3d32c001-3652-4a40-89a5-993886eedfd3', N'2022400000037', 1213, NULL, 1180000, CAST(N'2022-01-06T22:48:36.137' AS DateTime), 24, 1431340000)
INSERT [dbo].[FinancialPaperDetail] ([KeyDetail], [KeyFinace], [BARCODE], [Quantily], [Discount], [Price], [Date], [No], [Amount]) VALUES (N'd8b9c493-f8ea-4a9f-86ba-fec4fe7a73de', N'bda0f7a1-8dab-4cdd-b58a-61d06103faf4', N'2022400000051', 60, 5, 348650, CAST(N'2022-01-06T23:04:53.897' AS DateTime), 5, 20919000)
SET IDENTITY_INSERT [dbo].[GroupProduct] ON 

INSERT [dbo].[GroupProduct] ([IdGroupProduct], [NameGProduct], [Note], [DISABLED]) VALUES (0, N'Thực phẩm chức năng bổ sung vitamin', N'Vitamin là các vi chất dinh dưỡng đóng vai trò quan trọng trong quá trình trao đổi chất. Do đó, vitamin hay vitamin tổng hợp là những loại chất thường thấy trong các loại thực phẩm chức năng.

Các loại vitamin có mặt phổ biến trong thực phẩm chức năng là: vitamin A, vitamin B (bao gồm thiamine B1,', 0)
INSERT [dbo].[GroupProduct] ([IdGroupProduct], [NameGProduct], [Note], [DISABLED]) VALUES (1, N'Thực phẩm chức năng bổ sung khoáng chất', N'Khoáng chất là các yếu tố hóa học mà cơ thể cần nhưng lại không tự sản xuất được. Chẳng hạn như kẽm, canxi, sắt, kali, đồng, magie, mangan,… là những khoáng chất thiết yếu và có mặt trong hầu hết các loại thực phẩm ăn uống hằng ngày. Ngoài ra, lưu huỳnh cũng là một khoáng chất thiết yếu khác cần thiết cho cơ thể. Do đó, thông thường, bạn chỉ cần bổ sung các khoáng chất trên qua những bữa ăn dinh dưỡng hằng ngày là đủ.', 0)
INSERT [dbo].[GroupProduct] ([IdGroupProduct], [NameGProduct], [Note], [DISABLED]) VALUES (2, N'Thực phẩm chức năng bổ sung protein và axit amin', N'Protein là chuỗi các axit amin thực hiện chức năng cấu tạo nên tế bào, enzym, hormone,… Nhờ đó, cơ thể người bệnh hay bị chấn thương có thể tự hồi phục. Ngoài ra, protein còn được dùng để kiểm soát năng lượng, giảm cân.
Cơ thể người cần hơn 20 loại acid amin khác nhau, và mỗi nguồn thực phẩm lại chỉ chứa vài acid amin nhất định. Vì vậy, nếu dinh dưỡng kém cân bằng (ăn kiêng, ăn chay, thói quen chỉ ăn một vài loại thực phẩm…) hay người cần lượng protein lớn như người tập gym cũng lựa chọn bổ sung acid amin từ thực phẩm chức năng', 0)
INSERT [dbo].[GroupProduct] ([IdGroupProduct], [NameGProduct], [Note], [DISABLED]) VALUES (3, N'Thực phẩm chức năng bổ sung axit béo', N'Các loại axit béo đóng một vai trò vô cùng quan trọng đối với sự sống và sức khỏe. Trong đó, nhóm axit béo cần thiết bao gồm: omega-3, omega-6, omega-9. Riêng omega-9 cơ thể con người có thể tự sản xuất được.
Do đó, một số loại thực phẩm chức năng thường thấy bổ sung omega-3 (axit alpha-linolenic) và omega-6 (axit linoleic) bởi vì các loại axit béo này không thể tự tổng hợp bởi cơ thể, bạn cần bổ sung chúng trực tiếp từ bên ngoài.', 0)
INSERT [dbo].[GroupProduct] ([IdGroupProduct], [NameGProduct], [Note], [DISABLED]) VALUES (4, N'Thực phẩm chức năng bổ sung lợi khuẩn probiotic', N'Probiotic bao gồm hệ vi sinh vật đường ruột, hỗ trợ tiêu hóa và sức khỏe của đường tiêu hóa. Chúng làm giảm nguy cơ bệnh táo bón, cải thiện sức khỏe miễn dịch.
Một số loại thực phẩm chức năng thường thấy: probiotic hoặc prebiotic.', 0)
INSERT [dbo].[GroupProduct] ([IdGroupProduct], [NameGProduct], [Note], [DISABLED]) VALUES (5, N'Thực phẩm chức năng bổ sung cho người tập luyện thể thao', N'Thực phẩm chức năng cho người tập thể thao được dùng để hỗ trợ quá trình tập luyện thể hình, cử tạ, điền kinh, vì chúng giúp làm tăng khối lượng cơ nạc, giảm mỡ thừa.
Một số sản phẩm bổ sung thường thấy: Đồ uống giàu protein, BCAA, glutamine, arginine, axit béo thiết yếu, creatine, HMB…', 0)
INSERT [dbo].[GroupProduct] ([IdGroupProduct], [NameGProduct], [Note], [DISABLED]) VALUES (6, N'Thực phẩm chức năng chiết xuất, cô đặc từ thiên nhiên', N'Các loại cây thuốc, thảo dược chính là chiết xuất chính có trong các loại thực phẩm này. Thông thường chúng sẽ giúp hỗ trợ điều trị các vấn đề như: Đẹp da, chống lão hóa, điều hòa, cân bằng nội tiết, giải độc gan, nhuận tràng, hỗ trợ tiêu hóa, hỗ trợ trí não…
Một số sản phẩm bổ sung thường thấy: tinh dầu hoa anh thảo, tinh dầu oải hương, tía tô, collagen thực vật…', 0)
SET IDENTITY_INSERT [dbo].[GroupProduct] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([idOrder], [NameProduct], [Status], [CreateOrder], [idCus], [pay]) VALUES (73, N'Đon hàng202201072704', 1, CAST(N'2022-01-07T17:27:04.960' AS DateTime), N'@8m60pinhcop5vo9iy', N'Tiền Mặt')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([idDetail], [OrderId], [ProductId], [Quantity]) VALUES (60, 73, N'2022000000024', 2)
INSERT [dbo].[OrderDetail] ([idDetail], [OrderId], [ProductId], [Quantity]) VALUES (61, 73, N'2022000000055', 11)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022000000017', N'Thực phẩm bảo vệ sức khỏe – Viên uống hỗ trợ bổ gan Liver Tonic 33000', N'Thực phẩm bảo vệ sức khỏe – Viên uống hỗ trợ bổ gan Liver Tonic', N'Box', 790000, N'LiveWell', 4, 0, N'Có tác dụng hỗ trợ giải độc gan, Thực phẩm bảo vệ sức khỏe – Viên uống hỗ trợ bổ gan Liver Tonic 33000 còn tăng cường chức năng gan.
', CAST(N'2022-01-02T17:49:14.623' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022000000024', N'Nước keo ong cao cấp YHL', N'Nước keo ong cao cấp', N'Box', 699000, N'CO LTD', 4, 0, N'Ngoài công dụng tăng cường sức khỏe, nâng cao sức đề kháng, Nước keo ong cao cấp YHL còn hỗ trợ làm sạch họng, giảm nguy cơ viêm họng, hỗ trợ giảm ho.', CAST(N'2022-01-02T17:50:21.907' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022000000031', N'Thực phẩm bảo vệ sức khỏe – Viên uống chống nắng YHL', N'Thực phẩm bảo vệ sức khỏe – Viên uống chống nắng', N'Box', 550000, N'OTC', 4, 0, N'Ngoài việc giúp da sáng khỏe, hỗ trợ hạn chế lão hóa da, Thực phẩm bảo vệ sức khỏe – Viên uống chống nắng YHL còn hỗ trợ việc bảo vệ làn da trước tia UV, …', CAST(N'2022-01-02T17:51:10.330' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022000000048', N'Viên uống nhau thai cừu YHL – Phiên bản mới', N'Viên uống nhau thai cừu YHL', N'Box', 999999, N'THANHNGHI', 4, 0, N'Là viên nang uống được sản xuất trực tiếp tại Úc, Viên uống nhau thai cừu YHL – Phiên bản mới giúp tăng cường sức khỏe, hỗ trợ chống lão hóa, làm đẹp da.', CAST(N'2022-01-02T17:51:35.027' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022000000055', N'One A Day Men’s Complete Multivitamin', N'One A Day Men’s Complete Multivitamin', N'Box', 690000, N'CO LTD', 2, 0, N'Viên Bổ Sung Vitamin Toàn Diện Cho Nam Giới One A Day Men’s Complete Multivitamin là viên uống tổng hợp vitamin hoàn chỉnh với công thức đặc biệt cung cấp hơn 20 loại vitamin + khoáng chất cần thiết giúp hỗ trợ vấn đề sức khỏe của nam giới, tăng năng lượng, tăng cường sinh lực, tăng đề kháng giúp cơ thể khỏe mạnh cường tráng, sẵn sàng cho một ngày làm việc tích cực và hiệu quả.', CAST(N'2022-01-04T13:54:02.580' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022000000062', N'Nước hồng sâm Won cao cấp KGC sâm Chính phủ Hàn Quốc Cheon KwanJang hộp 30 gói', N'Nước hồng sâm Won cao cấp KGC sâm Chính phủ Hàn Quốc Cheon KwanJang', N'Box', 1250000, N'CO LTD', 2, 0, N'Có tác dụng hỗ trợ tăng cường sức đề kháng cho cơ thể, hỗ trợ điều hòa quá trình trao đổi chất, thanh lọc cơ thể, hỗ trợ cải thiện hoạt động của các tế bào hệ thần kinh, cải thiện trí nhớ, hỗ trợ cải thiện chức năng hô hấp và tăng khả năng miễn dịch, hỗ trợ tăng sản xuất hồng cầu, làm đẹp da, cải thiện sự thèm ăn cho người lớn tuổi.', CAST(N'2022-01-04T13:54:51.443' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022000000079', N'Kirkland Glucosamine HCL 1500mg With MSM 1500mg Hộp 375 Viên, Nắp Đỏ', N'Kirkland Glucosamine', N'Box', 568000, N'CO LTD', 3, 0, N'Trong mỗi viên uống Kirkland Glucosamine của Mỹ có chứa 1500mg Glucosamine và 1500mg hoạt chất MSN là những thành phần tốt cho của xương, khớp. Sản phẩm Kirkland Glucosamine phù hợp hỗ trợ bổ xương khớp cho người trên 18 tuổi, người vận động nhiều, người bị đau nhức do xương khớp và đặc biệt tốt cho sức khoẻ, người cao tuổi.', CAST(N'2022-01-04T13:56:22.330' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022000000086', N'a', N'a', N'Box', 550000, N'OTC', 4, 0, N'a', CAST(N'2022-01-07T17:25:18.540' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022100000023', N'Viên Uống Bổ Sung Vitamin Và Khoáng Chất Multivit Daglig Pharmatech 180 Viên', N'Viên Uống Bổ Sung Vitamin Và Khoáng Chất Multivit Daglig Pharmatech ', N'Box', 449000, N'CO LTD', 0, 1, N'Viên uống Multivit Daglig Pharmatech giúp bổ sung vitamin và khoáng chất, giúp cơ thể khỏe mạnh.', CAST(N'2022-01-04T13:46:13.950' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022100000030', N'Lốc 3 hộp thực phẩm dinh dưỡng Fomeal Basic Soup 250ml/hộp - Bữa ăn thay thế, giúp người bệnh phục hồi nhanh chóng', N'Lốc 3 hộp thực phẩm dinh dưỡng Fomeal Basic Soup ', N'Box', 111000, N'LiveWell', 0, 1, N'Thực phẩm dinh dưỡng Fomeal Basic Soup là bữa ăn cung cấp năng lượng chuẩn và đầy đủ dinh dưỡng thiết yếu, dễ hấp thu từ các nguyên liệu tự nhiên lành mạnh, hỗ trợ người bệnh phục hồi nhanh chóng. 
Sản phẩm được cấp bằng độc quyền sáng chế bởi Cơ quan Sáng chế và Nhãn hiệu Hoa Kỳ (USPTO) và Cục Sở hữu trí tuệ Việt Nam (NOIP).
Sản phẩm được sản xuất, kiểm soát bởi hệ thống quản lý chất lượng an toàn thực phẩm theo tiêu chuẩn Châu Âu FSSC 22000 và HACCP codex. ', CAST(N'2022-01-04T13:47:10.757' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022100000047', N'Bổ Sung Khoáng Chất MUTANT ZM8+ Hộp 90 viên', N'Bổ Sung Khoáng Chất MUTANT ZM8', N'Box', 490000, N'LiveWell', 0, 1, N'Mutant ZM8+ tăng cường sinh lý, tăng sức mạnh, hỗ trợ tổng hợp Protein', CAST(N'2022-01-04T13:47:48.160' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022100000054', N'Viên Uống DHC Bổ Sung Vitamin Tổng Hợp 30 Ngày 30 Viên', N'Viên Uống DHC Bổ Sung Vitamin Tổng Hợp ', N'Box', 110000, N'LiveWell', 3, 1, N'Viên Uống DHC Bổ Sung Vitamin Tổng Hợp là sản phẩm thuộc thương hiệu DHC Nhật Bản nổi tiếng với các dòng thực phẩm chức năng bổ sung dinh dưỡng, khoáng chất cho cơ thể khỏe mạnh. Viên Uống DHC Multi Vitamin chứa 12 loại dưỡng chất cần thiết cho cơ thể mỗi ngày với hàm lượng phù hợp, giúp tăng cường sức đề kháng tự nhiên, góp phần ngăn ngừa nguy cơ mắc các bệnh vặt cũng như các loại bệnh như tim mạch, xương khớp, tiêu hóa,... và hỗ trợ nuôi dưỡng, làm đẹp da.', CAST(N'2022-01-04T13:49:28.963' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022100000061', N'Viên Kẽm Tự Nhiên Blackmores Bio Zinc Của Úc, 84 viên', N'Viên Kẽm Tự Nhiên Blackmores Bio Zinc Của Úc', N'Box', 253000, N'LiveWell', 3, 1, N'Kẽm (ZinC) là nguyên tố vi lượng quan trọng với hệ miễn dịch, kích thích tế bào Lympho B phát triển, tạo một "hệ thống phòng thủ" giúp cơ thể chống lại các tác nhân gây bệnh. Đặc biệt, kẽm có tính chống viêm giúp làm giảm tình trạng viêm da, mẩn đỏ, kích ứng da, hỗ trợ điều ', CAST(N'2022-01-04T13:50:17.677' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022100000078', N'Viên Uống Maca 500mg Now Foods Của Mỹ', N'Viên Uống Maca 500mg Now Foods Của Mỹ', N'Box', 450000, N'LiveWell', 3, 1, N'Viên uống Maca Now Foods 500mg của Mỹ chiết xuất từ thảo mộc giúp tăng cường sức khỏe sinh sản, hỗ trợ tăng cường sinh lý, cân bằng nội tiết tố dành cho cả nam và nữ.', CAST(N'2022-01-04T13:51:33.603' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022200000015', N'Thùng 30 hộp thực phẩm dinh dưỡng Fomeal Care 250ml/hộp – Bữa ăn dinh dưỡng, không đường, tăng cường sức khỏe.', N'Thùng 30 hộp thực phẩm dinh dưỡng Fomeal Car', N'Box', 990000, N'CO LTD', 3, 2, N'Fomeal Care là giải pháp dinh dưỡng hoàn chỉnh và khoa học, giúp người trung niên và người  cao tuổi có một sức khỏe bền vững để tận hưởng cuộc sống trọn vẹn; nhờ hê dưỡng chất Orgalife 5 Sao Orgalife với 5 nhóm thực phẩm lành mạnh theo khuyến nghị của Đại học Havard – Hoa Kỳ, Cung cấp năng lượng 100% từ các nguyên liệu tự nhiên, và vitamin khoáng chất , tốt cho sức khỏe của 5 hệ: Miễn dịch – Tim mạch – Cơ – Xương – Tiêu Hóa.', CAST(N'2022-01-04T13:58:20.357' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022200000022', N'Thực phẩm chức năng bổ sung protein COMBAT-Whey Protein 2lbs', N'COMBAT-Whey Protein 2lbs', N'Box', 960000, N'CO LTD', 0, 2, N'Whey protein chiếm gần 20% protein trong sữa. Nó có giá trị dinh dưỡng cao và rất dễ tiêu hóa. Whey proteinnhanh chóng đi vào cơ thể để cung cấp các thiết yếu, các axit amin quan trọng cần thiết để nuôi dưỡng cơ và các mô. Whey protein có giá trị dinh dưỡng rất cao. Thành phần amino axit được xem là thành phần tối ưu trong sinh học. Những sản phẩm có nguồn gốc whey protein được sử dụng rộng rãi trong công nghiệp thực phẩm.', CAST(N'2022-01-04T14:05:27.340' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022200000039', N'Thực Phẩm Bổ Sung Protein Pure Whey Protein Của Mỹ', N'Thực Phẩm Bổ Sung Protein Pure Whey Protein Của Mỹ', N'Box', 990000, N'CO LTD', 4, 2, N'Fomeal Care là giải pháp dinh dưỡng hoàn chỉnh và khoa học, giúp người trung niên và người  cao tuổi có một sức khỏe bền vững để tận hưởng cuộc sống trọn vẹn; nhờ hê dưỡng chất Orgalife 5 Sao Orgalife với 5 nhóm thực phẩm lành mạnh theo khuyến nghị của Đại học Havard – Hoa Kỳ, Cung cấp năng lượng 100% từ các nguyên liệu tự nhiên, và vitamin khoáng chất , tốt cho sức khỏe của 5 hệ: Miễn dịch – Tim mạch – Cơ – Xương – Tiêu Hóa.', CAST(N'2022-01-04T14:09:48.830' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022200000046', N'Thực Phẩm Bổ Sung Protein Hấp Thu Đa Giai Đoạn Rule 1 R1 Pro6 Protein 4lbs (1.8kg)', N'Thực Phẩm Bổ Sung Protein', N'Box', 1200000, N'TPCN247', 3, 2, N'R1 Pro6 Protein cung cấp 25g protein từ 6 nguồn protein hấp thụ nhanh, trung bình và chậm. Hỗn hợp từ các nguồn protein khác nhau đảm bảo cung cấp đầy đủ các amino acid thiết yếu và cần thiết để phục hồi. Đa dạng các nguồn whey, casein và trứng là bí quyết giúp R1 Pro6 Protein sử dụng tuyệt vời khi tập luyện, giữa các bữa ăn và trước khi đi ngủ. Xây dựng cơ bắp đẳng cấp Pro6.', CAST(N'2022-01-04T14:10:43.543' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022200000053', N'Thực phẩm bảo vệ sức khỏe NUTRILITE Protein Powder Amway vị Trà xanh', N'Thực phẩm bảo vệ sức khỏe NUTRILITE Protein Powder Amway ', N'Box', 2500000, N'TPCN247', 3, 2, N'Thực phẩm bảo vệ sức khỏe NUTRILITE Protein Powder Amway vị Trà xanh là một trong những sản phẩm nằm trong chuỗi các sản phẩm protein thực vật của Công ty TNHH Amway Việt Nam. Nối tiếp thành công của NUTRILITE Protein Powder Amway vị Sô-Cô-La, công ty đã cho ra mắt  sản phẩm với hương vị trà xanh.', CAST(N'2022-01-04T14:12:39.600' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022200000060', N'Garden of Life, RAW Organic Protein, Organic Plant Formula, Unflavored, 19.75 oz (560 g)', N'Garden of Life', N'Box', 2500000, N'TPCN247', 4, 2, N'Raw Organic Protein is smooth, creamy and delicious. Every sip rewards your taste buds while it helps build and repair muscles. We use the cleanest proteins, including organic peas, plus 13 organic sprouted grains, seeds and legumes, with probiotics and enzymes added to promote comfortable and efficient digestion.', CAST(N'2022-01-04T14:15:00.500' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022200000077', N'Ngũ Cốc Tập GYM Tăng Cân Tăng Cơ', N'Ngũ Cốc Tập GYM Tăng Cân Tăng Cơ', N'Box', 150000, N'TPCN247', 4, 2, N'🔻 Tăng cân tăng cơ an toàn tự nhiên cho người tập GYM

🔻 Dùng được cho người không đi tập

🔻 Cách sử dụng đơn giản, mùi vị dễ dùng', CAST(N'2022-01-04T14:17:31.387' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022300000014', N'Viên Uống Bổ Sung Omega-3 NOW Hộp 200 Viên', N'Viên Uống Bổ Sung Omega-3 NOW Hộp 200 Viên', N'Box', 400000, N'CO LTD', 3, 3, N'Omega 3 là loại axit béo không bão hòa, chất béo tốt có lợi cho cơ thể , gồm 2 loại chủ yếu: EPA (Axut eicosapentaenoic) and DHA (Axit docosahexaenoic) thuộc loại axit béo chuỗi ngắn. Khi kết hợp với nhau, EPA và DHA giúp tim hoạt động bình thường. Ngoài ra DHA còn giúp giu trì chứng năng của não và thị lực. Những lợi ích này sẽ được cung cấp đầy đủ với định lượng 250mg EPA và DHA mỗi ngày. Mỗi 2 viên Omega 3 softgels cung cấp 360mg EPA và 240mg DHA.', CAST(N'2022-01-04T14:22:58.723' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022300000021', N' Omega 369, bổ sung axit béo dầu lanh flaxseed, dầu cá và dầu olive | TPCN USA 02', N' Omega 369, bổ sung axit béo dầu lanh flaxseed', N'Box', 250000, N'OTC', 3, 3, N'Bổ sung Omega 3,6,9 tốt cho cơ thể
Ngăn ngừa các bệnh về tim mạch, tốt cho da, mắt, não, chống lão hóa cơ thể.', CAST(N'2022-01-04T14:24:37.223' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022300000038', N'Dầu Cá Omega 3 Healthy Care Fish Oil 1000mg Của Úc, 400 viên', N'Dầu Cá Omega 3 Healthy Care Fish Oil 1000mg Của Úc', N'Box', 373000, N'OTC', 3, 3, N' Dầu cá Healthy Care Fish Oil 1000mg Omega-3 được điều chế từ nguồn cá sống ở vùng biển sạch, không nhiễm hóa chất, bên cạnh đó, quy trình sản xuất hiện đại,  không chứa chất độc hại, thủy ngân ảnh hưởng đến sức khỏe.
Sản phẩm Fish Oil với hàm lượng 1000mg được chứng minh là có hiệu quả hỗ trợ sức khỏe, hỗ trợ tăng cường miễn dịch, hỗ trợ xương khớp, hỗ trợ mắt và thần kinh. Sản phẩm được kiểm chứng nghiêm ngặt tại Úc, và hiện tại đã được sử dụng rộng rãi trên thị trường quốc tế.', CAST(N'2022-01-04T14:26:04.653' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022300000045', N'[60 Viên/Lọ] Viên Uống Hỗ Trợ Giảm Cholesterol Trong Máu Blackmores Heart Health Cholesterol Health', N'[60 Viên/Lọ] Viên Uống Hỗ Trợ Giảm Cholesterol Trong Máu ', N'Box', 782000, N'CO LTD', 0, 3, N'Viên Uống Hỗ Trợ Giảm Cholesterol Trong Máu Blackmores Heart Health Cholesterol Health là thực phẩm chức năng hỗ trợ giảm sự hấp thu Cholesterol thuộc thương hiệu Blackmores nhãn hiệu đến từ Úc. Sản phẩm cung cấp thành phần Sterols thực vật nhằm làm giảm sự hấp thu Cholesterol ở ruột từ các nguồn thực phẩm, từ đó duy trì lượng Cholesterol khỏe mạnh, giảm các nguy cơ về bệnh tim mạch ở người lớn', CAST(N'2022-01-04T14:28:06.727' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022400000013', N'Viên Uống Bổ Sung Lợi Khuẩn Puritan''S Pride Probiotic Acidophilus', N'Viên Uống Bổ Sung Lợi Khuẩn Puritan''S Pride Probiotic Acidophilus', N'Box', 269000, N'LiveWell', 0, 4, N'Cơ thể không hấp thu được dinh dưỡng từ thức ăn sẽ trở nên gầy gò, sức đề kháng yếu ớt. Bổ sung lợi khuẩn với probiotic acidophilus puritan’s pride lọ 100 viên ngăn ngừa rối loạn tiêu hóa hiệu quả.
Khi tăng cường số lượng lợi khuẩn trong đường ruột, hệ tiêu hóa sẽ tự động khỏe lên.', CAST(N'2022-01-04T14:33:30.690' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022400000020', N'BIFINA NHẬT BẢN ', N'BIFINA NHẬT BẢN ', N'Box', 2600000, N'LiveWell', 2, 4, N'VIÊM ĐẠI TRÀNG
	RỐI LOẠN TIÊU HÓA
	HỘI CHỨNG RUỘT KÍCH THÍCH (viêm đại tràng co thắt)
	TRƯỚNG BỤNG, ĐẦY HƠI
	DÙNG KHÁNG SINH KÉO DÀI', CAST(N'2022-01-04T14:34:52.497' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022400000037', N'Viên uống Health Plus Probiotic Fiber  ', N'Viên uống Health Plus Probiotic Fiber', N'Box', 1180000, N'LiveWell', 2, 4, N'20 tỷ lợi khuẩn được làm từ sợi Prebiotic
Probiotic fiber là sự phối hợp đặc biệt của các loại thảo mộc
Chất dinh dưỡng giúp cân bằng hệ vi sinh đường ruột.
Probiotic, chất xơ và thảo dược phối hợp với nhau
Hỗ trợ hệ tiêu hóa và hệ thống miễn dịch.', CAST(N'2022-01-04T14:36:04.027' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022400000044', N'Men Vi Sinh Probiotic Acidophilus Puritan''s Pride, 100 viên', N'Men Vi Sinh Probiotic Acidophilus Puritan''s Pride', N'Box', 209000, N'LiveWell', 2, 4, N'Men Vi Sinh Probiotic Acidophilus Puritan''s Pride  bổ sung hơn 100 triệu hoạt khuẩn Lactobacillus Acidophulus hỗ trợ cân bằng hệ vi sinh đường ruột. Sản phẩm thích hợp với trẻ em và người lớn gặp vấn đề về tiêu hóa, người đang dùng kháng sinh dài ngày, khó tiêu, trướng bụng...', CAST(N'2022-01-04T14:37:42.067' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022400000051', N'Men Vi Sinh Puritan’s Pride PROBIOTIC ACIDOPHILUS 100 viên – Lợi khuẩn hỗ trợ tiêu hóa', N'Men Vi Sinh Puritan’s Pride PROBIOTIC ACIDOPHILUS', N'Box', 367000, N'LiveWell', 1, 4, N'Thực phẩm bảo vệ sức khỏe men vi sinh Puritan’s Pride Probiotic Acidophilus bổ sung hơn 100 triệu lợi khuẩn cho đường ruột, giúp cân bằng hệ vi sinh đường ruột cho cơ thể. Vậy lợi khuẩn là gì, nó có tác dụng như thế nào đối với hệ tiêu hóa. Viên uống Puritan’s Pride Probiotic Acidophilus có thật sự tốt không? Hãy cùng H&H Nutrition tìm hiểu qua bài viết sau đây bạn nhé!', CAST(N'2022-01-04T14:38:25.927' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022500000012', N'Thực phẩm chức năng tập gym ISOJECT Premium EVOGEN', N'Thực phẩm chức năng tập gym ISOJECT Premium EVOGEN', N'Box', 3000000, N'CO LTD', 3, 5, N'Isoject Premium Evogen được sản xuất theo phương pháp lọc lạnh. Thành phần thực phẩm chức năng Isoject chứa hệ Ignitor enzyme cắt nhỏ. Nhờ thế cơ thể nhanh chóng có thể hấp thụ dễ dàng hơn. Đây là thực phẩm chức năng đến từ thương hiệu Evogen Nutrition của Mỹ và được đánh giá cao về chất lượng nhờ công nghệ sản xuất hiện đại.', CAST(N'2022-01-04T14:42:24.517' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022500000029', N' Now Sports Amino Complete cho gymer', N' Now Sports Amino Complete cho gymer', N'Box', 2600000, N'TPCN247', 3, 5, N'Now Sports Amino Complete được thiết kế dành riêng cho người chơi thể thao và tập thể hình. Sản phẩm được nhập khẩu từ Mỹ và là sự pha trộn giữa protein và acid amin tự do. Amio hỗ trợ quá trình bồi đắp cơ, tổng hợp protein và xây dựng mô cơ.', CAST(N'2022-01-04T14:42:50.517' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022500000036', N'Thực phẩm chức năng cho dân gym Ostrovit Vitamin', N'Thực phẩm chức năng cho dân gym Ostrovit Vitamin', N'Box', 2700000, N'CO LTD', 3, 5, N'Với người tập thể hình, việc bổ sung đủ vitamin là vô cùng quan trọng. Sử dụng Ostrovit Vitamin được đánh giá là giải pháp tối ưu để đảm bảo sức khỏe của người tập gym. Công thức kết hợp hài hòa nhiều vitamin đảm bảo tính khả dụng sinh hoạt. Sản phẩm còn được chứng nhận an toàn từ FDA Hoa Kỳ.', CAST(N'2022-01-04T14:43:16.187' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022500000043', N'Thực phẩm chức năng tập gym Vitabolic', N'Thực phẩm chức năng tập gym Vitabolic', N'Box', 976000, N'CO LTD', 3, 5, N'Vitabolic là thực phẩm chức năng vitamin tổng hợp phù hợp cho người tập gym. Với xuất xứ từ Canada, đây là sản phẩm được nhiều vận động viên, người tập thể hình trên thế giới lựa chọn. Các dưỡng chất trong Vitabolic được kết hợp hài hòa, mang hàm lượng tối ưu dễ hấp thu và mang lại hiệu quả nhanh chóng.', CAST(N'2022-01-04T14:43:44.270' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022500000050', N' Sữa tăng cơ On Pro Gainer cho gymer', N' Sữa tăng cơ On Pro Gainer cho gymer', N'Box', 1500500, N'CO LTD', 3, 5, N'On Pro Gainer là sữa tăng cân tăng cơ nạc được khuyên dùng bởi nhiều chuyên gia dinh dưỡng thế giới. Với thành phần thiên nhiên, On Pro Gainer đảm bảo tính an toàn cho người dùng. Nguồn protein và dưỡng chất của On Pro Gainer dễ hấp thụ cho cơ thể, phù hợp với nhiều đối tượng, đặc biệt là người tập luyện cường độ cao.', CAST(N'2022-01-04T14:44:15.467' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022600000011', N'Tpbvsk FITOBIMBI ISILAX', N'Tpbvsk FITOBIMBI ISILAX', N'Box', 330000, N'CO LTD', 2, 6, N'Chiết xuất cây Manna (Fraxinus ornus) 15g, chiết xuất quả Mận (Prunus domestica) 7,5g, chiết xuất quả Táo tây (Malus domestica) 5g, chiết xuất cây Cẩm quỳ (Malva sylvestric) 5g, Inulin 3g, Pectin Táo 0,75g.
Nước khử khoáng, fructose, potassium sorbate, citric acid vừa đủ 100ml.
Không Gluten, không lactose.', CAST(N'2022-01-04T14:59:31.807' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022600000028', N'CORDYCEPS 950mg 90 viên - ĐTHT chiết xuất từ thiên nhiên của Mỹ (USA) - GG', N'CORDYCEPS 950mg 90 viên', N'Box', 1265000, N'CO LTD', 3, 6, N'ĐTHT là một thảo dược rất quý, một dạng kí sinh giữa một loài nấm túi có tên khoa học là Cordyceps Sinensis với sâu non (ấu trùng) của một loài côn trùng thuộc chi Thitarodes.', CAST(N'2022-01-04T15:00:40.753' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022600000035', N'DHC Rau Củ Quả Tổng Hợp Premium 15 Ngày 60 Viên', N'DHC Rau Củ Quả Tổng Hợp Premium', N'Box', 125000, N'CO LTD', 4, 6, N'Viên Uống Rau Củ Quả Tổng Hợp DHC Perfect Vegetable - Premium Japanese Harvest từ thương hiệu DHC là dòng thực phẩm chức năng hỗ trợ sức khỏe nổi tiếng của Nhật Bản.', CAST(N'2022-01-04T15:03:05.903' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022600000042', N'Thực Phẩm Bảo Vệ Sức Khỏe Giúp Dạ Dày Khỏe, Da Sáng Đẹp Blossomy Curcumin & Collagen Drink', N'Thực Phẩm Bảo Vệ Sức Khỏe Giúp Dạ Dày Khỏe', N'Box', 329000, N'CO LTD', 3, 6, N'Thực Phẩm Bảo Vệ Sức Khỏe Giúp Dạ Dày Khỏe, Da Sáng Đẹp Blossomy Curcumin & Collagen Drink là dòng thực phẩm chức năng giúp da sáng đẹp và dạ dày khỏe thuộc thương hiệu Blossomy. Với sự kết hợp của Curcumin, Collagen và Lactium cùng Vitamin B1, B6 giúp chống oxy hóa, dưỡng da sáng khỏe, căng mịn và hỗ trợ làm lành giảm viêm loét dạ dày cho cơ thể khỏe mạnh', CAST(N'2022-01-04T15:04:14.763' AS DateTime), 1, 0, NULL)
INSERT [dbo].[Product] ([BARCODE], [NameProduct], [NameAT], [Unit], [Price], [IdSupplier], [IdSource], [IdGroupProduct], [Note], [CREATE_DATE], [CREATE_BY], [DISABLED], [Image]) VALUES (N'2022600000059', N'Viên Uống Lợi Sữa Fenugreek Natures Aid 500mg Của Anh', N'', N'Box', 329000, N'CO LTD', 2, 6, N'Viên Uống Lợi Sữa Fenugreek Natures là sản phẩm được chiết xuất từ cỏ cari giúp hỗ trợ cải thiện khả năng tiết sữa mẹ, hỗ trợ cho nguồn sữa dồi dào và chất lượng hơn. Fenugreek Natures Aid được rất nhiều bà mẹ trên khắp thế giới tin dùng và luôn lọt top sản phẩm bán chạy của hãng. ', CAST(N'2022-01-04T15:04:58.900' AS DateTime), 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Source] ON 

INSERT [dbo].[Source] ([IdSource], [NameSource], [DISABLED]) VALUES (0, N'Việt Nam', 0)
INSERT [dbo].[Source] ([IdSource], [NameSource], [DISABLED]) VALUES (1, N'Trung Quốc', 0)
INSERT [dbo].[Source] ([IdSource], [NameSource], [DISABLED]) VALUES (2, N'Hàn ', 0)
INSERT [dbo].[Source] ([IdSource], [NameSource], [DISABLED]) VALUES (3, N'Mỹ', 0)
INSERT [dbo].[Source] ([IdSource], [NameSource], [DISABLED]) VALUES (4, N'Anh', 0)
INSERT [dbo].[Source] ([IdSource], [NameSource], [DISABLED]) VALUES (5, N'Singapo', 0)
INSERT [dbo].[Source] ([IdSource], [NameSource], [DISABLED]) VALUES (6, N'Thái Lan', 0)
SET IDENTITY_INSERT [dbo].[Source] OFF
INSERT [dbo].[Supplier] ([IdSupplier], [NameSupplier], [Email], [Phone], [Fax], [Address], [CREATED_DATE], [DISABLED]) VALUES (N'CO LTD', N'SINOPHARM HOLDING CO LTD', N'', N'(852) 2851 1038', N'(852) 3102 0210', N'9/F, The Center, 99 Queen’s Road, Central, Hong Kong', CAST(N'2022-01-02T17:12:18.350' AS DateTime), 0)
INSERT [dbo].[Supplier] ([IdSupplier], [NameSupplier], [Email], [Phone], [Fax], [Address], [CREATED_DATE], [DISABLED]) VALUES (N'LiveWell', N'GNC Live Well', N'', N'0835194495', N'', N'113 Nguyễn Đức Cảnh, P.Tân Phong, Q.7, TPHCM', CAST(N'2022-01-02T17:03:28.997' AS DateTime), 0)
INSERT [dbo].[Supplier] ([IdSupplier], [NameSupplier], [Email], [Phone], [Fax], [Address], [CREATED_DATE], [DISABLED]) VALUES (N'OTC', N'Dược Phẩm OTC', N'Duocphamotc.vn@gmail.com', N'0981847088', N'', N'Số 5 ngõ 217 Trần Phú, Văn Quán, Hà Đông, Hà Nội', CAST(N'2022-01-02T17:08:29.943' AS DateTime), 0)
INSERT [dbo].[Supplier] ([IdSupplier], [NameSupplier], [Email], [Phone], [Fax], [Address], [CREATED_DATE], [DISABLED]) VALUES (N'TPCN247', N'SHOP THỰC PHẨM CHỨC NĂNG 247', N'shopthucphamchucnang247@gmail.com', N'0923.536.248', N'', N'Số 91, Phạm Văn Hai, Tân Bình, TP.HCM', CAST(N'2022-01-02T17:05:12.040' AS DateTime), 0)
INSERT [dbo].[Supplier] ([IdSupplier], [NameSupplier], [Email], [Phone], [Fax], [Address], [CREATED_DATE], [DISABLED]) VALUES (N'THANHNGHI', N'Liên hệ công ty TNHH quốc tế Thanh Nghị', N' caithuocthaynghivn@gmail.com', N'0932.02.09.91', N'', N'Buôn Phơng, xã EaTul, Huyện CưM’gar, Tỉnh Đắk Lắk', CAST(N'2022-01-02T17:06:02.270' AS DateTime), 0)
INSERT [dbo].[Supplier] ([IdSupplier], [NameSupplier], [Email], [Phone], [Fax], [Address], [CREATED_DATE], [DISABLED]) VALUES (N'TRITIN', N' CÔNG TY TNHH MTV TM DV XNK TRÍ TÍN', N'tritincompany@gmail.com', N'0616- 293716', N'0616-293715', N'53/56 khu phố 2, Phường Tân Phong, Biên Hòa, Đồng Nai.', CAST(N'2022-01-02T16:59:22.227' AS DateTime), 0)
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'COMPANY', 101, N'INFORMATION COMPANY', 0, N'MANAGEMENT', 1, N'Information Company')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'CUSTOMER', 201, N'INFORMATION CUSTOMER', 0, N'CUSTOMER MANAGEMENT', 1, N'INFORMATION CUSTOMER')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'CUSTOMER MANAGEMENT', 200, N'CUSTOMER MANAGEMENT', 1, N'CUSTOMER MANAGEMENT', 1, N'CUSTOMER MANAGEMENT')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'DealOrder', 401, N'DealOrder', 0, N'ManagerDeal', 1, N'DealOrder')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'DEPARTMENT', 102, N'INFORMATION DEPARTMENT', 0, N'MANAGEMENT', 1, N'INFORMATION DEPARTMENT')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'FINANCE', 300, N'FINANCE', 1, NULL, 1, N'Information Finance')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'GROUP PRODUCT', 105, N'INFORMATION GROUP PRODUCT', 0, N'MANAGEMENT', 1, N'Information Group Product')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'MANAGEMENT', 100, N'MANAGMENT', 1, NULL, 1, N'Managment ')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'ManagerDeal', 400, N'ManagerDeal', 1, N'null', 1, N'ManagerDeal')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'PRODUCT', 106, N'INFORMATION PRODUCT', 0, N'MANAGEMENT', 1, N'Information Product')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'PURCHASE ENTRY FORM', 301, N'PURCHASE ENTRY FORM', 0, N'FINANCE', 1, N'Purchase Entry Form')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'PURCHASE OUTPUT FORM', 302, N'PURCHASE OUTPUT FORM', 0, N'FINANCE', 1, N'PURCHASE OUTPUT FORM')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'SOURCE', 104, N'INFORMATION SOURCE', 0, N'MANAGEMENT', 1, N'Information Source')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'SUPPLIER', 103, N'INFORMATION SUPPLIER', 0, N'MANAGEMENT', 1, N'Information Supplier')
INSERT [dbo].[SYS_FUNC] ([FUNC_CODE], [SORT], [DESCRIPTION], [ISGROUP], [PARENT], [MENU], [TIPS]) VALUES (N'UNIT', 108, N'INFORMATION UNIT', 0, N'MANAGEMENT', 1, N'Information Unit')
INSERT [dbo].[SYS_SEQUENCE] ([SEQNAME], [SEQVALUE]) VALUES (N'BEAE@2022@0', 9)
INSERT [dbo].[SYS_SEQUENCE] ([SEQNAME], [SEQVALUE]) VALUES (N'BEAE@2022@1', 8)
INSERT [dbo].[SYS_SEQUENCE] ([SEQNAME], [SEQVALUE]) VALUES (N'BEAE@2022@2', 9)
INSERT [dbo].[SYS_SEQUENCE] ([SEQNAME], [SEQVALUE]) VALUES (N'BEAE@2022@3', 5)
INSERT [dbo].[SYS_SEQUENCE] ([SEQNAME], [SEQVALUE]) VALUES (N'BEAE@2022@4', 6)
INSERT [dbo].[SYS_SEQUENCE] ([SEQNAME], [SEQVALUE]) VALUES (N'BEAE@2022@5', 6)
INSERT [dbo].[SYS_SEQUENCE] ([SEQNAME], [SEQVALUE]) VALUES (N'BEAE@2022@6', 6)
INSERT [dbo].[SYS_SEQUENCE] ([SEQNAME], [SEQVALUE]) VALUES (N'NHM@2022@', 68)
INSERT [dbo].[Unit] ([IdUnit], [NameUnit]) VALUES (0, N'Box')
USE [master]
GO
ALTER DATABASE [Product_Managerment] SET  READ_WRITE 
GO

USE [QLBHGIFT]
GO
/****** Object:  Table [dbo].[Aud_CHATLIEU]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aud_CHATLIEU](
	[MaChatLieu] [nvarchar](50) NOT NULL,
	[TenChatLieu] [nvarchar](250) NULL,
	[ThaoTac] [nchar](10) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aud_CTHDBan]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aud_CTHDBan](
	[MaHDBan] [nchar](10) NOT NULL,
	[MaHH] [nchar](10) NULL,
	[SoLuongBan] [float] NULL,
	[DonGia] [float] NULL,
	[GiamGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[ThaoTac] [nchar](10) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aud_HANGHOA]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aud_HANGHOA](
	[MaHH] [nchar](10) NOT NULL,
	[TenHH] [nvarchar](50) NULL,
	[MaChatLieu] [nvarchar](50) NULL,
	[SLCon] [float] NULL,
	[DonGiaNhap] [float] NULL,
	[DonGiaBan] [float] NULL,
	[AnhHH] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[MaUuDai] [nchar](10) NULL,
	[DVT] [nvarchar](20) NULL,
	[ThaoTac] [nchar](10) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aud_HOADONBan]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aud_HOADONBan](
	[MaHDBan] [nchar](10) NOT NULL,
	[NgayBan] [date] NULL,
	[HTTT] [nvarchar](50) NULL,
	[MaNV] [nchar](10) NULL,
	[MaKH] [nchar](10) NULL,
	[TongTien] [float] NULL,
	[ThaoTac] [nchar](10) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aud_KHACHHANG]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aud_KHACHHANG](
	[MaKH] [nchar](10) NOT NULL,
	[HoTenKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](150) NULL,
	[SdtKH] [nchar](10) NULL,
	[STK] [nchar](20) NULL,
	[MST] [nchar](20) NULL,
	[ThaoTac] [nchar](10) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aud_NHANVIEN]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aud_NHANVIEN](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[DiaChiNV] [nvarchar](150) NULL,
	[SDTNV] [nchar](10) NULL,
	[PhanQuyen] [nvarchar](50) NULL,
	[ThaoTac] [nchar](10) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aud_UUDAI]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aud_UUDAI](
	[MaUuDai] [nchar](10) NOT NULL,
	[TenUuDai] [nvarchar](150) NULL,
	[ThaoTac] [nchar](10) NULL,
	[NgayGio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHATLIEU]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHATLIEU](
	[MaChatLieu] [nvarchar](50) NOT NULL,
	[TenChatLieu] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_CHATLIEU] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHDBan]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHDBan](
	[MaHDBan] [nchar](10) NOT NULL,
	[MaHH] [nchar](10) NOT NULL,
	[SoLuongBan] [float] NOT NULL,
	[DonGia] [float] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
 CONSTRAINT [PK_CTHDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHH] [nchar](10) NOT NULL,
	[TenHH] [nvarchar](50) NULL,
	[MaChatLieu] [nvarchar](50) NULL,
	[SLCon] [float] NULL,
	[DonGiaNhap] [float] NULL,
	[DonGiaBan] [float] NULL,
	[AnhHH] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[MaUuDai] [nchar](10) NULL,
	[DVT] [nvarchar](20) NULL,
 CONSTRAINT [PK_HANGHOA] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONBan]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONBan](
	[MaHDBan] [nchar](10) NOT NULL,
	[NgayBan] [date] NULL,
	[HTTT] [nvarchar](50) NULL,
	[MaNV] [nchar](10) NULL,
	[MaKH] [nchar](10) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nchar](10) NOT NULL,
	[HoTenKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](150) NULL,
	[SdtKH] [nchar](10) NULL,
	[STK] [nchar](20) NULL,
	[MST] [nchar](20) NULL,
 CONSTRAINT [PK_KHACHHANG_1] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[DiaChiNV] [nvarchar](150) NULL,
	[SdtNV] [nchar](10) NULL,
	[PhanQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN_1] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nchar](10) NULL,
	[MaNV] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UUDAI]    Script Date: 25/04/2021 12:31:37 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UUDAI](
	[MaUuDai] [nchar](10) NOT NULL,
	[TenUuDai] [nvarchar](150) NULL,
 CONSTRAINT [PK_UUDAI_1] PRIMARY KEY CLUSTERED 
(
	[MaUuDai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hồng đỏ sa', N'Bó Hoa Hồng Sa', N'I         ', CAST(N'2021-04-24T17:21:44.477' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hồng đỏ sa', N'Bó Hoa Hồng Sa', N'U         ', CAST(N'2021-04-24T17:22:57.330' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hongphan', N'Bó Hoa Hồng Phấn', N'I         ', CAST(N'2021-04-24T17:23:11.600' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hoathachthao', N'Bó Hoa Thạch Thảo', N'I         ', CAST(N'2021-04-24T17:24:54.487' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hoahuongduong', N'Bó Hoa Hướng Dương', N'I         ', CAST(N'2021-04-24T17:25:56.983' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hoacamtucau', N'Bó Hoa cẩm Tú Cầu', N'I         ', CAST(N'2021-04-24T17:27:16.790' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hoacamtucau', N'Bó Hoa cẩm Tú Cầu', N'U         ', CAST(N'2021-04-24T17:42:07.577' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hoahuongduong', N'Bó Hoa Hướng Dương', N'U         ', CAST(N'2021-04-24T17:42:15.667' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hoathachthao', N'Bó Hoa Thạch Thảo', N'U         ', CAST(N'2021-04-24T17:42:23.940' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hongdosa', N'Bó Hoa Hồng Sa', N'U         ', CAST(N'2021-04-24T17:42:30.277' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hongphan', N'Bó Hoa Hồng Phấn', N'U         ', CAST(N'2021-04-24T17:42:37.050' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL0001', N'Bó Hoa cẩm Tú Cầu', N'U         ', CAST(N'2021-04-24T17:42:48.020' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'Hoacamtu', N'Bó Hoa cẩm Tú Cầu', N'U         ', CAST(N'2021-04-24T17:43:02.723' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL0002', N'Bó Hoa Hướng Dương', N'U         ', CAST(N'2021-04-24T17:43:09.677' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL000', N'Bó Hoa Hướng Dương', N'U         ', CAST(N'2021-04-24T17:43:15.270' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL', N'Bó Hoa Hồng Phấn', N'U         ', CAST(N'2021-04-24T17:47:15.537' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL0001', N'Bó Hoa cẩm Tú Cầu', N'U         ', CAST(N'2021-04-24T20:13:34.990' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL0002', N'Bó Hoa Hướng Dương', N'U         ', CAST(N'2021-04-24T20:13:38.317' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL0003', N'Bó Hoa Thạch Thảo', N'U         ', CAST(N'2021-04-24T20:13:41.750' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL0004', N'Bó Hoa Hồng Sa', N'U         ', CAST(N'2021-04-24T20:13:47.670' AS DateTime))
INSERT [dbo].[Aud_CHATLIEU] ([MaChatLieu], [TenChatLieu], [ThaoTac], [NgayGio]) VALUES (N'CHL0005', N'Bó Hoa Hồng Phấn', N'U         ', CAST(N'2021-04-24T20:14:50.493' AS DateTime))
GO
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB0001   ', N'HH0001    ', 5, 50000, 0, 250000, N'I         ', CAST(N'2021-04-24T20:09:01.690' AS DateTime))
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB0002   ', N'HH0002    ', 10, 55000, 0, 550000, N'I         ', CAST(N'2021-04-24T20:09:43.090' AS DateTime))
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB001    ', N'HH001     ', 8, 60000, 0, 480000, N'I         ', CAST(N'2021-04-24T20:11:16.460' AS DateTime))
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB004    ', N'HH004     ', 12, 50000, 0, 600000, N'I         ', CAST(N'2021-04-24T20:12:19.210' AS DateTime))
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB001    ', N'HH001     ', 8, 60000, 0, 480000, N'U         ', CAST(N'2021-04-24T20:12:30.947' AS DateTime))
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB0001   ', N'HH0001    ', 5, 50000, 0, 250000, N'U         ', CAST(N'2021-04-24T20:12:40.750' AS DateTime))
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB0002   ', N'HH0002    ', 10, 55000, 0, 550000, N'U         ', CAST(N'2021-04-24T20:12:46.937' AS DateTime))
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB005    ', N'HH005     ', 8, 40000, 0, 320000, N'I         ', CAST(N'2021-04-24T20:14:59.867' AS DateTime))
INSERT [dbo].[Aud_CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien], [ThaoTac], [NgayGio]) VALUES (N'HDB0002   ', N'HH002     ', 10, 55000, 0, 550000, N'U         ', CAST(N'2021-04-24T20:15:04.410' AS DateTime))
GO
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0001    ', N'Bó Hoa Hồng', N'CHL0001', 50, 30000, 40000, NULL, N'Lưu ý: Sản phẩm chỉ có ở Hồ Chí Minh và Hà Nội', N'UD0001    ', N'Bó', N'I         ', CAST(N'2021-04-24T19:00:03.150' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0002    ', N'Cẩm Tú Cầu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'I         ', CAST(N'2021-04-24T19:01:15.697' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0001    ', N'Bó Hoa Hồng', N'CHL0001', 50, 30000, 40000, NULL, N'Lưu ý: Sản phẩm chỉ có ở Hồ Chí Minh và Hà Nội', N'UD0001    ', N'Bó', N'U         ', CAST(N'2021-04-24T19:01:20.557' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0002    ', N'Cẩm Tú Cầu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'U         ', CAST(N'2021-04-24T19:02:46.937' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0003    ', N'Hồng Phấn', N'CHL0003', 30, 40000, 50000, NULL, N'Bó hoa tươi Hồng Tươi gồm các loại hoa:

10 Hồng sen mới

, 5 Đinh lăng

,5 Lá hoàng kim', N'UD0003    ', NULL, N'I         ', CAST(N'2021-04-24T19:07:20.467' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0004    ', N'Hoa Hướng Dương', N'CHL0004', 20, 50000, 60000, NULL, N'5 bông hướng dương kèm salem', N'UD0004    ', NULL, N'I         ', CAST(N'2021-04-24T19:09:52.500' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0003    ', N'Hồng Phấn', N'CHL0003', 30, 40000, 50000, NULL, N'Bó hoa tươi Hồng Tươi gồm các loại hoa:

10 Hồng sen mới

, 5 Đinh lăng

,5 Lá hoàng kim', N'UD0003    ', NULL, N'U         ', CAST(N'2021-04-24T19:09:56.413' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0004    ', N'Hoa Hướng Dương', N'CHL0004', 20, 50000, 60000, NULL, N'5 bông hướng dương kèm salem', N'UD0004    ', NULL, N'U         ', CAST(N'2021-04-24T19:10:02.393' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0005    ', N'Hoa Thạch Thảo', N'CHL0005', 30, 45000, 55000, NULL, N'5 Bông thạch thảo', N'UD0005    ', N'Bó', N'I         ', CAST(N'2021-04-24T20:08:11.553' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0001    ', N'Hoa Hồng', N'CHL0001', 50, 30000, 40000, NULL, N'Lưu ý: Sản phẩm chỉ có ở Hồ Chí Minh và Hà Nội', N'UD0001    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:13:34.990' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0002    ', N'Cẩm Tú Cầu', N'CHL0002', 20, 20000, 30000, NULL, N'10 Cẩm tú cầu xanh

,5 Đinh lăng', N'UD0002    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:13:38.317' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0003    ', N'Hồng Phấn', N'CHL0003', 30, 40000, 50000, NULL, N'Bó hoa tươi Hồng Tươi gồm các loại hoa:

10 Hồng sen mới

, 5 Đinh lăng

,5 Lá hoàng kim', N'UD0003    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:13:41.750' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0004    ', N'Hoa Hướng Dương', N'CHL0004', 20, 50000, 60000, NULL, N'5 bông hướng dương kèm salem', N'UD0004    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:13:47.670' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0005    ', N'Hoa Thạch Thảo', N'CHL0005', 30, 45000, 55000, NULL, N'5 Bông thạch thảo', N'UD0005    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:14:50.493' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0001    ', N'Hoa Hồng', N'CHL001', 50, 30000, 40000, NULL, N'Lưu ý: Sản phẩm chỉ có ở Hồ Chí Minh và Hà Nội', N'UD0001    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:15:33.100' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0002    ', N'Cẩm Tú Cầu', N'CHL002', 20, 20000, 30000, NULL, N'10 Cẩm tú cầu xanh

,5 Đinh lăng', N'UD0002    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:15:49.220' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0003    ', N'Hồng Phấn', N'CHL003', 30, 40000, 50000, NULL, N'Bó hoa tươi Hồng Tươi gồm các loại hoa:

10 Hồng sen mới

, 5 Đinh lăng

,5 Lá hoàng kim', N'UD0003    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:16:00.693' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0004    ', N'Hoa Hướng Dương', N'CHL004', 20, 50000, 60000, NULL, N'5 bông hướng dương kèm salem', N'UD0004    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:16:07.150' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0005    ', N'Hoa Thạch Thảo', N'CHL005', 30, 45000, 55000, NULL, N'5 Bông thạch thảo', N'UD0005    ', N'Bó', N'U         ', CAST(N'2021-04-24T20:16:11.913' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0001    ', N'Hoa Hồng', N'CHL001', 50, 30000, 40000, NULL, N'Lưu ý: Sản phẩm chỉ có ở Hồ Chí Minh và Hà Nội', N'UD001     ', N'Bó', N'U         ', CAST(N'2021-04-24T20:16:26.150' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0002    ', N'Cẩm Tú Cầu', N'CHL002', 20, 20000, 30000, NULL, N'10 Cẩm tú cầu xanh

,5 Đinh lăng', N'UD002     ', N'Bó', N'U         ', CAST(N'2021-04-24T20:16:29.547' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0003    ', N'Hồng Phấn', N'CHL003', 30, 40000, 50000, NULL, N'Bó hoa tươi Hồng Tươi gồm các loại hoa:

10 Hồng sen mới

, 5 Đinh lăng

,5 Lá hoàng kim', N'UD003     ', N'Bó', N'U         ', CAST(N'2021-04-24T20:16:32.480' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0004    ', N'Hoa Hướng Dương', N'CHL004', 20, 50000, 60000, NULL, N'5 bông hướng dương kèm salem', N'UD004     ', N'Bó', N'U         ', CAST(N'2021-04-24T20:16:35.470' AS DateTime))
INSERT [dbo].[Aud_HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT], [ThaoTac], [NgayGio]) VALUES (N'HH0005    ', N'Hoa Thạch Thảo', N'CHL005', 30, 45000, 55000, NULL, N'5 Bông thạch thảo', N'UD005     ', N'Bó', N'U         ', CAST(N'2021-04-24T20:16:41.480' AS DateTime))
GO
INSERT [dbo].[Aud_HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien], [ThaoTac], [NgayGio]) VALUES (N'HDB001    ', CAST(N'2020-05-25' AS Date), N'Tiền Mặt', N'NV001     ', N'KH001     ', NULL, N'I         ', CAST(N'2021-04-24T20:17:42.707' AS DateTime))
INSERT [dbo].[Aud_HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien], [ThaoTac], [NgayGio]) VALUES (N'HDB002    ', CAST(N'2020-05-19' AS Date), N'Chuyển Khoản', N'NV002     ', N'KH002     ', NULL, N'I         ', CAST(N'2021-04-24T20:18:25.873' AS DateTime))
INSERT [dbo].[Aud_HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien], [ThaoTac], [NgayGio]) VALUES (N'HDB003    ', CAST(N'2021-04-17' AS Date), N'Tiền Mặt', N'NV003     ', N'KH003     ', NULL, N'I         ', CAST(N'2021-04-24T20:18:57.400' AS DateTime))
INSERT [dbo].[Aud_HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien], [ThaoTac], [NgayGio]) VALUES (N'HDB004    ', CAST(N'2021-05-15' AS Date), N'Tiền Mặt', N'NV004     ', N'KH004     ', NULL, N'I         ', CAST(N'2021-04-24T20:19:37.553' AS DateTime))
INSERT [dbo].[Aud_HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien], [ThaoTac], [NgayGio]) VALUES (N'HDB005    ', CAST(N'2021-03-17' AS Date), N'Tiền Mặt', N'NV005     ', N'KH005     ', NULL, N'I         ', CAST(N'2021-04-24T20:20:09.153' AS DateTime))
GO
INSERT [dbo].[Aud_KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH001     ', N'Nguyễn Quang Minh', N'37 Tôn Thất Bật,Tp Huế', N'0395660999', N'                    ', NULL, N'I         ', CAST(N'2021-04-24T20:23:48.717' AS DateTime))
INSERT [dbo].[Aud_KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH001     ', N'Nguyễn Quang Minh', N'37 Tôn Thất Bật,Tp Huế', N'0395660999', N'                    ', NULL, N'U         ', CAST(N'2021-04-24T20:24:03.560' AS DateTime))
INSERT [dbo].[Aud_KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH02      ', N'Nguyễn Văn Minh', N'19 Nguyễn Văn Khả, Tp Huế', N'0833319220', N'1234567890123       ', N'7897892555          ', N'I         ', CAST(N'2021-04-24T20:25:17.877' AS DateTime))
INSERT [dbo].[Aud_KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH        ', NULL, NULL, NULL, NULL, NULL, N'I         ', CAST(N'2021-04-24T23:33:24.213' AS DateTime))
INSERT [dbo].[Aud_KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH02      ', N'Nguyễn Văn Minh', N'19 Nguyễn Văn Khả, Tp Huế', N'0833319220', N'1234567890123       ', N'7897892555          ', N'U         ', CAST(N'2021-04-24T23:33:28.807' AS DateTime))
INSERT [dbo].[Aud_KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH        ', NULL, NULL, NULL, NULL, NULL, N'U         ', CAST(N'2021-04-24T23:34:29.253' AS DateTime))
INSERT [dbo].[Aud_KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH004     ', N'Nguyễn Mỹ Ánh', N'44 Tố Hữu Tp Huế', N'0909999666', NULL, N'2224446667          ', N'I         ', CAST(N'2021-04-24T23:37:49.153' AS DateTime))
INSERT [dbo].[Aud_KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST], [ThaoTac], [NgayGio]) VALUES (N'KH005     ', N'Nguyễn Văn Nhơn', N'25 Điện Biên Phủ', N'0909555666', NULL, N'4446668889          ', N'I         ', CAST(N'2021-04-24T23:38:49.970' AS DateTime))
GO
INSERT [dbo].[Aud_NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SDTNV], [PhanQuyen], [ThaoTac], [NgayGio]) VALUES (N'NV001     ', N'Nguyễn Thuỳ Chi', CAST(N'2020-03-27' AS Date), N'Nữ', N'2 Lê Quang Đạo,Tp Huế', N'0909789555', N'User', N'I         ', CAST(N'2021-04-24T20:30:15.800' AS DateTime))
INSERT [dbo].[Aud_NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SDTNV], [PhanQuyen], [ThaoTac], [NgayGio]) VALUES (N'NV002     ', N'Nguyễn Quang Khải', CAST(N'2021-07-25' AS Date), N'Nam', N'37 Tôn Thất Bật Tp Huế', N'0395777888', N'Admin', N'I         ', CAST(N'2021-04-24T20:31:24.047' AS DateTime))
INSERT [dbo].[Aud_NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SDTNV], [PhanQuyen], [ThaoTac], [NgayGio]) VALUES (N'NV003     ', N'Trần Ái Linh', CAST(N'1999-02-25' AS Date), N'Nữ', N'12 Trần Thúc Nhẫn', N'0909555888', NULL, N'I         ', CAST(N'2021-04-24T20:32:33.343' AS DateTime))
INSERT [dbo].[Aud_NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SDTNV], [PhanQuyen], [ThaoTac], [NgayGio]) VALUES (N'NV004     ', N'Nguyễn Văn Bình', CAST(N'2001-03-27' AS Date), N'Nam', N'42 Bà Triệu Tp Huế', N'0833319820', N'User', N'I         ', CAST(N'2021-04-24T21:21:16.810' AS DateTime))
INSERT [dbo].[Aud_NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SDTNV], [PhanQuyen], [ThaoTac], [NgayGio]) VALUES (N'NV003     ', N'Trần Ái Linh', CAST(N'1999-02-25' AS Date), N'Nữ', N'12 Trần Thúc Nhẫn', N'0909555888', NULL, N'U         ', CAST(N'2021-04-24T21:21:23.173' AS DateTime))
INSERT [dbo].[Aud_NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SDTNV], [PhanQuyen], [ThaoTac], [NgayGio]) VALUES (N'N         ', NULL, NULL, NULL, NULL, NULL, NULL, N'I         ', CAST(N'2021-04-24T21:21:27.393' AS DateTime))
INSERT [dbo].[Aud_NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SDTNV], [PhanQuyen], [ThaoTac], [NgayGio]) VALUES (N'N         ', NULL, NULL, NULL, NULL, NULL, NULL, N'U         ', CAST(N'2021-04-24T21:21:37.597' AS DateTime))
INSERT [dbo].[Aud_NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SDTNV], [PhanQuyen], [ThaoTac], [NgayGio]) VALUES (N'          ', NULL, NULL, NULL, NULL, NULL, NULL, N'U         ', CAST(N'2021-04-24T21:23:01.930' AS DateTime))
GO
INSERT [dbo].[Aud_UUDAI] ([MaUuDai], [TenUuDai], [ThaoTac], [NgayGio]) VALUES (N'UD001     ', N'Giảm 10% Nhân Lễ Nhà Giáo Việt Nam', N'I         ', CAST(N'2021-04-24T20:36:56.440' AS DateTime))
INSERT [dbo].[Aud_UUDAI] ([MaUuDai], [TenUuDai], [ThaoTac], [NgayGio]) VALUES (N'UD002     ', N'Giảm 5% Nhân Lễ 20/10', N'I         ', CAST(N'2021-04-24T20:37:29.487' AS DateTime))
INSERT [dbo].[Aud_UUDAI] ([MaUuDai], [TenUuDai], [ThaoTac], [NgayGio]) VALUES (N'UD001     ', N'Giảm 10% Nhân Lễ Nhà Giáo Việt Nam', N'U         ', CAST(N'2021-04-24T20:37:49.817' AS DateTime))
INSERT [dbo].[Aud_UUDAI] ([MaUuDai], [TenUuDai], [ThaoTac], [NgayGio]) VALUES (N'UD003     ', N'Giảm 5% Nhân Lễ Tết', N'I         ', CAST(N'2021-04-24T20:38:09.930' AS DateTime))
INSERT [dbo].[Aud_UUDAI] ([MaUuDai], [TenUuDai], [ThaoTac], [NgayGio]) VALUES (N'UD004     ', N'Giảm 5% Nhân Lễ 8/3', N'I         ', CAST(N'2021-04-24T20:38:33.260' AS DateTime))
INSERT [dbo].[Aud_UUDAI] ([MaUuDai], [TenUuDai], [ThaoTac], [NgayGio]) VALUES (N'UD005     ', N'Giảm 5% valentine', N'I         ', CAST(N'2021-04-24T23:44:22.513' AS DateTime))
GO
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (N'CHL001', N'Bó Hoa cẩm Tú Cầu')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (N'CHL002', N'Bó Hoa Hướng Dương')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (N'CHL003', N'Bó Hoa Thạch Thảo')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (N'CHL004', N'Bó Hoa Hồng Sa')
INSERT [dbo].[CHATLIEU] ([MaChatLieu], [TenChatLieu]) VALUES (N'CHL005', N'Bó Hoa Hồng Phấn')
GO
INSERT [dbo].[CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB001    ', N'HH001     ', 5, 50000, 0, 250000)
INSERT [dbo].[CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB002    ', N'HH002     ', 10, 55000, 0, 550000)
INSERT [dbo].[CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB003    ', N'HH001     ', 8, 60000, 0, 480000)
INSERT [dbo].[CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB004    ', N'HH004     ', 12, 50000, 0, 600000)
INSERT [dbo].[CTHDBan] ([MaHDBan], [MaHH], [SoLuongBan], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB005    ', N'HH005     ', 8, 40000, 0, 320000)
GO
INSERT [dbo].[HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT]) VALUES (N'HH001     ', N'Hoa Hồng', N'CHL001', 50, 30000, 40000, NULL, N'Lưu ý: Sản phẩm chỉ có ở Hồ Chí Minh và Hà Nội', N'UD001     ', N'Bó')
INSERT [dbo].[HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT]) VALUES (N'HH002     ', N'Cẩm Tú Cầu', N'CHL002', 20, 20000, 30000, NULL, N'10 Cẩm tú cầu xanh

,5 Đinh lăng', N'UD002     ', N'Bó')
INSERT [dbo].[HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT]) VALUES (N'HH003     ', N'Hồng Phấn', N'CHL003', 30, 40000, 50000, NULL, N'Bó hoa tươi Hồng Tươi gồm các loại hoa:

10 Hồng sen mới

, 5 Đinh lăng

,5 Lá hoàng kim', N'UD003     ', N'Bó')
INSERT [dbo].[HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT]) VALUES (N'HH004     ', N'Hoa Hướng Dương', N'CHL004', 20, 50000, 60000, NULL, N'5 bông hướng dương kèm salem', N'UD004     ', N'Bó')
INSERT [dbo].[HANGHOA] ([MaHH], [TenHH], [MaChatLieu], [SLCon], [DonGiaNhap], [DonGiaBan], [AnhHH], [GhiChu], [MaUuDai], [DVT]) VALUES (N'HH005     ', N'Hoa Thạch Thảo', N'CHL005', 30, 45000, 55000, NULL, N'5 Bông thạch thảo', N'UD005     ', N'Bó')
GO
INSERT [dbo].[HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien]) VALUES (N'HDB001    ', CAST(N'2020-05-25' AS Date), N'Tiền Mặt', N'NV001     ', N'KH001     ', NULL)
INSERT [dbo].[HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien]) VALUES (N'HDB002    ', CAST(N'2020-05-19' AS Date), N'Chuyển Khoản', N'NV002     ', N'KH002     ', NULL)
INSERT [dbo].[HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien]) VALUES (N'HDB003    ', CAST(N'2021-04-17' AS Date), N'Tiền Mặt', N'NV003     ', N'KH003     ', NULL)
INSERT [dbo].[HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien]) VALUES (N'HDB004    ', CAST(N'2021-05-15' AS Date), N'Tiền Mặt', N'NV004     ', N'KH004     ', NULL)
INSERT [dbo].[HOADONBan] ([MaHDBan], [NgayBan], [HTTT], [MaNV], [MaKH], [TongTien]) VALUES (N'HDB005    ', CAST(N'2021-03-17' AS Date), N'Tiền Mặt', N'NV005     ', N'KH005     ', NULL)
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST]) VALUES (N'KH001     ', N'Nguyễn Quang Minh', N'37 Tôn Thất Bật,Tp Huế', N'0395660999', NULL, N'1234567890          ')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST]) VALUES (N'KH002     ', N'Nguyễn Văn Minh', N'19 Nguyễn Văn Khả, Tp Huế', N'0833319220', N'1234567890123       ', N'7897892555          ')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST]) VALUES (N'KH003     ', N'Nguyễn Bình Sinh', N'20 Tôn Thất Thiệp Tp Huế', N'0909555666', NULL, N'0123456789          ')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST]) VALUES (N'KH004     ', N'Nguyễn Mỹ Ánh', N'44 Tố Hữu Tp Huế', N'0909999666', NULL, N'2224446667          ')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [SdtKH], [STK], [MST]) VALUES (N'KH005     ', N'Nguyễn Văn Nhơn', N'25 Điện Biên Phủ', N'0909555666', NULL, N'4446668889          ')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SdtNV], [PhanQuyen]) VALUES (N'NV001     ', N'Nguyễn Thuỳ Chi', CAST(N'2020-03-27' AS Date), N'Nữ', N'2 Lê Quang Đạo,Tp Huế', N'0909789555', N'User')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SdtNV], [PhanQuyen]) VALUES (N'NV002     ', N'Nguyễn Quang Khải', CAST(N'2021-07-25' AS Date), N'Nam', N'37 Tôn Thất Bật Tp Huế', N'0395777888', N'Admin')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SdtNV], [PhanQuyen]) VALUES (N'NV003     ', N'Trần Ái Linh', CAST(N'1999-02-25' AS Date), N'Nữ', N'12 Trần Thúc Nhẫn', N'0909555888', N'Admin')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SdtNV], [PhanQuyen]) VALUES (N'NV004     ', N'Nguyễn Văn Bình', CAST(N'2001-03-27' AS Date), N'Nam', N'42 Bà Triệu Tp Huế', N'0833319820', N'User')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChiNV], [SdtNV], [PhanQuyen]) VALUES (N'NV005     ', N'Nguyễn Xuân Mẫu', CAST(N'1999-02-27' AS Date), N'Nam', N'42 Nguyễn Khánh Toàn Tp Huế', N'0909888999', N'Admin')
GO
INSERT [dbo].[TAIKHOAN] ([UserName], [PassWord], [MaNV]) VALUES (N'NQK123', N'789789    ', N'NV002     ')
INSERT [dbo].[TAIKHOAN] ([UserName], [PassWord], [MaNV]) VALUES (N'ThuyChi', N'123456    ', N'NV001     ')
GO
INSERT [dbo].[UUDAI] ([MaUuDai], [TenUuDai]) VALUES (N'UD001     ', N'Giảm 10% Nhân Lễ 20/11')
INSERT [dbo].[UUDAI] ([MaUuDai], [TenUuDai]) VALUES (N'UD002     ', N'Giảm 5% Nhân Lễ 20/10')
INSERT [dbo].[UUDAI] ([MaUuDai], [TenUuDai]) VALUES (N'UD003     ', N'Giảm 5% Nhân Lễ Tết')
INSERT [dbo].[UUDAI] ([MaUuDai], [TenUuDai]) VALUES (N'UD004     ', N'Giảm 5% Nhân Lễ 8/3')
INSERT [dbo].[UUDAI] ([MaUuDai], [TenUuDai]) VALUES (N'UD005     ', N'Giảm 5% valentine')
GO
ALTER TABLE [dbo].[CTHDBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDBan_HANGHOA] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HANGHOA] ([MaHH])
GO
ALTER TABLE [dbo].[CTHDBan] CHECK CONSTRAINT [FK_CTHDBan_HANGHOA]
GO
ALTER TABLE [dbo].[CTHDBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDBan_HOADONBan] FOREIGN KEY([MaHDBan])
REFERENCES [dbo].[HOADONBan] ([MaHDBan])
GO
ALTER TABLE [dbo].[CTHDBan] CHECK CONSTRAINT [FK_CTHDBan_HOADONBan]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_CHATLIEU] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[CHATLIEU] ([MaChatLieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_CHATLIEU]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_UUDAI] FOREIGN KEY([MaUuDai])
REFERENCES [dbo].[UUDAI] ([MaUuDai])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_UUDAI]
GO
ALTER TABLE [dbo].[HOADONBan]  WITH CHECK ADD  CONSTRAINT [FK_HOADONBan_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADONBan] CHECK CONSTRAINT [FK_HOADONBan_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADONBan]  WITH CHECK ADD  CONSTRAINT [FK_HOADONBan_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADONBan] CHECK CONSTRAINT [FK_HOADONBan_NHANVIEN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_NHANVIEN]
GO
/****** Object:  StoredProcedure [dbo].[Delete_CHATLIEU]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_CHATLIEU]
	@MaChatLieu nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	Delete from CHATLIEU where MaChatLieu=@MaChatLieu

END
GO
/****** Object:  StoredProcedure [dbo].[Delete_CTHDBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_CTHDBan]
	@MaHDBan nchar(10), @MaHH nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	Delete from CTHDBan where MaHDBan=@MaHDBan and MaHH=@MaHH

END
GO
/****** Object:  StoredProcedure [dbo].[Delete_HANGHOA]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_HANGHOA]
	@MaHH nchar(10), @TenHH nvarchar(50), @MaChatLieu nvarchar(50), @SLCon float, @DonGiaNhap float, @DonGiaBan float, @AnhHH nvarchar(200), @GhiChu nvarchar(200), @MaUuDai nchar(10), @DVT nvarchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	Delete from HANGHOA where MaHH=@MaHH

END
GO
/****** Object:  StoredProcedure [dbo].[Delete_HOADONBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_HOADONBan]
	@MaHDBan nchar(10), @NgayBan date, @HTTT nvarchar(50), @MaNV nchar(10), @MaKH nchar(10), @TongTien float
AS
BEGIN

	SET NOCOUNT ON;
	Delete from HoaDonBan where MaHDBan=@MaHDBan

END
GO
/****** Object:  StoredProcedure [dbo].[Delete_KHACHHANG]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_KHACHHANG]
	@MaKH nchar(10), @HoTenKH nvarchar(50), @DiaChiKH nvarchar(150), @SdtKH nchar(10), @STK nchar(20), @MST nchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	Delete from KHACHHANG where MaKH=@MaKH

END
GO
/****** Object:  StoredProcedure [dbo].[Delete_NHANVIEN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_NHANVIEN]
	@MaNV nchar(10), @TenNV nvarchar(50), @NgaySinh datetime, @GioiTinh bit, @DiaChiNV nvarchar(150), @SdtNV nchar(10), @PhanQuyen nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	Delete from NHANVIEN where MaNV=@MaNV

END
GO
/****** Object:  StoredProcedure [dbo].[Delete_TAIKHOAN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_TAIKHOAN]
	@UserName nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	Delete from TAIKHOAN where UserName=@UserName

END
GO
/****** Object:  StoredProcedure [dbo].[Delete_UUDAI]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_UUDAI]
	@MaUuDai nchar(10), @TenUuDai nvarchar(150)
AS
BEGIN

	SET NOCOUNT ON;
	Delete from UUDAI where MaUuDai=@MaUuDai

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_CHATLIEU]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_CHATLIEU]
	@MaChatLieu nvarchar(50),@TenChatLieu nvarchar(250)
AS
BEGIN

	SET NOCOUNT ON;
	Insert into CHATLIEU(MaChatLieu,TenChatLieu) values (@MaChatLieu,@TenChatLieu)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_CTHDBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_CTHDBan]
	@MaHDBan nchar(10),@MaHH nchar (10),@SoLuongBan float,@DonGia float,@GiamGia float,@ThanhTien float
AS
BEGIN

	SET NOCOUNT ON;
	Insert into CTHDBan(MaHDBan,MaHH,SoLuongBan,DonGia,GiamGia,ThanhTien) values (@MaHDBan,@MaHH,@SoLuongBan,@DonGia,@GiamGia,@ThanhTien)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_HANGHOA]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_HANGHOA]
	@MaHH nchar(10),@TenHH nvarchar(50),@MaChatLieu nvarchar(50),@SLCon float,@DonGiaNhap float,@DonGiaBan float,@AnhHH nvarchar(200),@GhiChu nvarchar(200),@MaUuDai nchar(10),@DVT nvarchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	Insert into HANGHOA(MaHH,TenHH,MaChatLieu,SLCon,DonGiaNhap,DonGiaBan,AnhHH,GhiChu,MaUuDai,DVT) values (@MaHH,@TenHH,@MaChatLieu,@SLCon,@DonGiaNhap,@DonGiaBan,@AnhHH,@GhiChu,@MaUuDai,@DVT)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_HOADONBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_HOADONBan]
	@MaHDBan nchar(10), @NgayBan date, @HTTT nvarchar(50), @MaNV nchar(10), @MaKH nchar(10), @TongTien float
AS
BEGIN

	SET NOCOUNT ON;
	Insert into HOADONBan(MaHDBan,NgayBan,HTTT,MaNV,MaKH,TongTien) values (@MaHDBan,@NgayBan,@HTTT,@MaNV,@MaKH,@TongTien)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_KHACHHANG]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_KHACHHANG]
	@MaKH nchar(10), @HoTenKH nvarchar(50), @DiaChiKH nvarchar(150), @SdtKH nchar(10), @STK nchar(20), @MST nchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	Insert into KHACHHANG(MaKH,HoTenKH,DiaChiKH,SdtKH,STK,MST) values (@MaKH,@HoTenKH,@DiaChiKH,@SdtKH,@STK,@MST)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_NHANVIEN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_NHANVIEN]
	@MaNV nchar(10), @TenNV nvarchar(50), @NgaySinh datetime, @GioiTinh bit, @DiaChiNV nvarchar(150), @SdtNV nchar(10), @PhanQuyen nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	Insert into NHANVIEN(MaNV,TenNV,NgaySinh,GioiTinh,DiaChiNV,SdtNV,PhanQuyen) values (@MaNV,@TenNV,@NgaySinh,@GioiTinh,@DiaChiNV,@SdtNV,@PhanQuyen)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_TAIKHOAN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_TAIKHOAN]
	@UserName nvarchar(50), @Password nchar(10), @MaNV nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	Insert into TAIKHOAN(UserName,PassWord,MaNV) values (@UserName,@Password,@MaNV)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_UUDAI]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_UUDAI]
	@MaUuDai nchar(10), @TenUuDai nvarchar(150)
AS
BEGIN

	SET NOCOUNT ON;
	Insert into UUDAI(MaUuDai,TenUuDai) values (@MaUuDai,@TenUuDai)

END
GO
/****** Object:  StoredProcedure [dbo].[Login_TAIKHOAN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Login_TAIKHOAN] @UserName nvarchar(50), @passWord nchar(10),@MaNV nchar(10)
as
BEGIN
	Select * from TAIKHOAN where UserName = @UserName and PassWord = @passWord
END
GO
/****** Object:  StoredProcedure [dbo].[Select_CHATLIEU]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_CHATLIEU]
	
AS
BEGIN

	SET NOCOUNT ON;
	Select*from CHATLIEU

END
GO
/****** Object:  StoredProcedure [dbo].[Select_CTHDBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_CTHDBan]
	
AS
BEGIN

	SET NOCOUNT ON;
	Select*from CTHDBan

END
GO
/****** Object:  StoredProcedure [dbo].[Select_HANGHOA]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_HANGHOA]
	
AS
BEGIN

	SET NOCOUNT ON;
	Select*from HANGHOA

END
GO
/****** Object:  StoredProcedure [dbo].[Select_HOADONBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_HOADONBan]
	
AS
BEGIN

	SET NOCOUNT ON;
	Select*from HOADONBan

END
GO
/****** Object:  StoredProcedure [dbo].[Select_KHACHHANG]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_KHACHHANG]
	
AS
BEGIN

	SET NOCOUNT ON;
	Select*from KHACHHANG

END
GO
/****** Object:  StoredProcedure [dbo].[Select_NHANVIEN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_NHANVIEN]
	
AS
BEGIN

	SET NOCOUNT ON;
	Select*from NHANVIEN

END
GO
/****** Object:  StoredProcedure [dbo].[Select_TAIKHOAN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_TAIKHOAN]
	
AS
BEGIN

	SET NOCOUNT ON;
	Select*from TAIKHOAN

END
GO
/****** Object:  StoredProcedure [dbo].[Select_UUDAI]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_UUDAI]
	
AS
BEGIN

	SET NOCOUNT ON;
	Select*from UUDAI

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Where_CHATLIEU]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Where_CHATLIEU]
	@MaChatLieu nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	Select * from CHATLIEU  where MaChatLieu=@MaChatLieu

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Where_CTHDBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Where_CTHDBan]
	@MaHDBan nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	Select * from CTHDBan  where MaHDBan=@MaHDBan

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Where_HANGHOA]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Where_HANGHOA]
	@MaHH nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	Select * from HANGHOA  where MaHH=@MaHH

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Where_HOADONBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Where_HOADONBan]
	@MaHDBan nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	Select * from HOADONBan  where MaHDBan=@MaHDBan

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Where_KHACHHANG]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Where_KHACHHANG]
	@MaKH nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	Select * from KHACHHANG  where MaKH=@MaKH

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Where_NHANVIEN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Where_NHANVIEN]
	@MaNV nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	Select * from NHANVIEN  where MaNV=@MaNV

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Where_TAIKHOAN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Where_TAIKHOAN]
	@UserName nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;
	Select * from TAIKHOAN  where UserName=@UserName

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Where_UUDAI]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Where_UUDAI]
	@MaUuDai nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	Select * from UUDAI  where MaUuDai=@MaUuDai

END
GO
/****** Object:  StoredProcedure [dbo].[Update_CHATLIEU]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_CHATLIEU] 
         @MaChatLieu nvarchar(50), @TenChatLieu nvarchar(250)
AS
BEGIN
	Update CHATLIEU set TenChatLieu = @TenChatLieu where MaChatLieu = @MaChatLieu
end
GO
/****** Object:  StoredProcedure [dbo].[Update_CTHDBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_CTHDBan] 
         @MaHDBan nchar(10), @MaHH nchar(10), @SoLuongBan float, @DonGia float, @GiamGia float, @ThanhTien float
AS
BEGIN
	Update CTHDBan set SoLuongBan = @SoLuongBan, DonGia = @DonGia, GiamGia=@GiamGia, ThanhTien=@ThanhTien where MaHDBan = @MaHDBan and MaHH = @MaHH
END
GO
/****** Object:  StoredProcedure [dbo].[Update_HANGHOA]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_HANGHOA] 
         @MaHH nchar(10), @TenHH nvarchar(50), @MaChatLieu nvarchar(50), @SLCon float, @DonGiaNhap float,@DonGiaBan float,@AnhHH nvarchar(200),@GhiChu nvarchar(200), @MaUuDai nchar(10), @DVT nvarchar(20)
AS
BEGIN
	Update HANGHOA set TenHH = @TenHH, MaChatLieu = @MaChatLieu, SLCon=@SLCon, DonGiaNhap=@DonGiaNhap, DonGiaBan=@DonGiaBan, AnhHH=@AnhHH,GhiChu=@GhiChu, MaUuDai=@MaUuDai, DVT=@DVT where MaHH = @MaHH
END
GO
/****** Object:  StoredProcedure [dbo].[Update_HOADONBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_HOADONBan] 
        @MaHDBan nchar(10), @NgayBan date, @HTTT nvarchar(50), @MaNV nchar(10), @MaKH nchar(10), @TongTien float
AS
BEGIN
	Update HOADONBan set NgayBan = @NgayBan, HTTT = @HTTT, MaNV=@MaNV, MaKH=@MaKH, TongTien=@TongTien where MaHDBan = @MaHDBan
END
GO
/****** Object:  StoredProcedure [dbo].[Update_KHACHHANG]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_KHACHHANG] 
        @MaKH nchar(10), @HoTenKH nvarchar(50), @DiaChiKH nvarchar(150), @SdtKH nchar(10), @STK nchar(20), @MST nchar(20)
AS
BEGIN
	Update KHACHHANG set MaKH = @MaKH, HoTenKH = @HoTenKH, DiaChiKH=@DiaChiKH, SdtKH=@SdtKH, STK=@STK, MST=@MST where MaKH = @MaKH
END
GO
/****** Object:  StoredProcedure [dbo].[Update_NHANVIEN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_NHANVIEN] 
        @MaNV nchar(10), @TenNV nvarchar(50), @NgaySinh datetime, @GioiTinh bit, @DiaChiNV nvarchar(150), @SdtNV nchar(10), @PhanQuyen nvarchar(50)
AS
BEGIN
	Update NHANVIEN set MaNV = @MaNV, TenNV = @TenNV, NgaySinh=@NgaySinh, GioiTinh=@GioiTinh, DiaChiNV=@DiaChiNV, SdtNV=@SdtNV, PhanQuyen=@PhanQuyen where MaNV = @MaNV
END
GO
/****** Object:  StoredProcedure [dbo].[Update_TAIKHOAN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_TAIKHOAN] 
        @UserName nvarchar(50), @PassWord nchar(10), @MaNV nchar(10)
AS
BEGIN
	Update TAIKHOAN set PassWord= @PassWord, MaNV=@MaNV where UserName = @UserName
END
GO
/****** Object:  StoredProcedure [dbo].[Update_UUDAI]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_UUDAI] 
        @MaUuDai nchar(10), @TenUuDai nvarchar(150)
AS
BEGIN
	Update UUDAI set TenUuDai= @TenUuDai where MaUuDai = @MaUuDai
END
GO
/****** Object:  Trigger [dbo].[AUDIT_DeleteCHATLIEU]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_DeleteCHATLIEU]
	ON [dbo].[CHATLIEU]
	AFTER Delete
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_CHATLIEU select *,'D',getdate() From deleted

END
GO
ALTER TABLE [dbo].[CHATLIEU] ENABLE TRIGGER [AUDIT_DeleteCHATLIEU]
GO
/****** Object:  Trigger [dbo].[AUDIT_InsertCHATLIEU]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_InsertCHATLIEU]
	ON [dbo].[CHATLIEU]
	AFTER INSERT
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_CHATLIEU select *,'I',getdate() From inserted

END
GO
ALTER TABLE [dbo].[CHATLIEU] ENABLE TRIGGER [AUDIT_InsertCHATLIEU]
GO
/****** Object:  Trigger [dbo].[AUDIT_UpdateCHATLIEU]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_UpdateCHATLIEU]
	ON [dbo].[CHATLIEU]
	AFTER update
AS
BEGIN

	SET NOCOUNT ON;
	

	insert into Aud_CHATLIEU select *,'U',getdate() From deleted
END
GO
ALTER TABLE [dbo].[CHATLIEU] ENABLE TRIGGER [AUDIT_UpdateCHATLIEU]
GO
/****** Object:  Trigger [dbo].[AUDIT_DeleteCTHDBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_DeleteCTHDBan]
	ON [dbo].[CTHDBan]
	AFTER Delete
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_CTHDBan select *,'D',getdate() From deleted

END
GO
ALTER TABLE [dbo].[CTHDBan] ENABLE TRIGGER [AUDIT_DeleteCTHDBan]
GO
/****** Object:  Trigger [dbo].[AUDIT_InsertCTHDBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_InsertCTHDBan]
	ON [dbo].[CTHDBan]
	AFTER INSERT
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_CTHDBan select *,'I',getdate() From inserted

END
GO
ALTER TABLE [dbo].[CTHDBan] ENABLE TRIGGER [AUDIT_InsertCTHDBan]
GO
/****** Object:  Trigger [dbo].[AUDIT_UpdateCTHDBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_UpdateCTHDBan]
	ON [dbo].[CTHDBan]
	AFTER update
AS
BEGIN

	SET NOCOUNT ON;
	

	insert into Aud_CTHDBan select *,'U',getdate() From deleted
END
GO
ALTER TABLE [dbo].[CTHDBan] ENABLE TRIGGER [AUDIT_UpdateCTHDBan]
GO
/****** Object:  Trigger [dbo].[AUDIT_DeleteHANGHOA]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_DeleteHANGHOA]
	ON [dbo].[HANGHOA]
	AFTER Delete
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_HANGHOA select *,'D',getdate() From deleted

END
GO
ALTER TABLE [dbo].[HANGHOA] ENABLE TRIGGER [AUDIT_DeleteHANGHOA]
GO
/****** Object:  Trigger [dbo].[AUDIT_InsertHANGHOA]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_InsertHANGHOA]
	ON [dbo].[HANGHOA]
	AFTER INSERT
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_HANGHOA select *,'I',getdate() From inserted

END
GO
ALTER TABLE [dbo].[HANGHOA] ENABLE TRIGGER [AUDIT_InsertHANGHOA]
GO
/****** Object:  Trigger [dbo].[AUDIT_UpdateHANGHOA]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_UpdateHANGHOA]
	ON [dbo].[HANGHOA]
	AFTER update
AS
BEGIN

	SET NOCOUNT ON;
	

	insert into Aud_HANGHOA select *,'U',getdate() From deleted
END
GO
ALTER TABLE [dbo].[HANGHOA] ENABLE TRIGGER [AUDIT_UpdateHANGHOA]
GO
/****** Object:  Trigger [dbo].[AUDIT_DeleteHOADONBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_DeleteHOADONBan]
	ON [dbo].[HOADONBan]
	AFTER Delete
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_HOADONBan select *,'D',getdate() From deleted

END
GO
ALTER TABLE [dbo].[HOADONBan] ENABLE TRIGGER [AUDIT_DeleteHOADONBan]
GO
/****** Object:  Trigger [dbo].[AUDIT_InsertHOADONBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_InsertHOADONBan]
	ON [dbo].[HOADONBan]
	AFTER INSERT
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_HOADONBan select *,'I',getdate() From inserted

END
GO
ALTER TABLE [dbo].[HOADONBan] ENABLE TRIGGER [AUDIT_InsertHOADONBan]
GO
/****** Object:  Trigger [dbo].[AUDIT_UpdateHOADONBan]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_UpdateHOADONBan]
	ON [dbo].[HOADONBan]
	AFTER update
AS
BEGIN

	SET NOCOUNT ON;
	

	insert into Aud_HOADONBan select *,'U',getdate() From deleted
END
GO
ALTER TABLE [dbo].[HOADONBan] ENABLE TRIGGER [AUDIT_UpdateHOADONBan]
GO
/****** Object:  Trigger [dbo].[AUDIT_DeleteKHACHHANG]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_DeleteKHACHHANG]
	ON [dbo].[KHACHHANG]
	AFTER Delete
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_KHACHHANG select *,'D',getdate() From deleted

END
GO
ALTER TABLE [dbo].[KHACHHANG] ENABLE TRIGGER [AUDIT_DeleteKHACHHANG]
GO
/****** Object:  Trigger [dbo].[AUDIT_InsertKHACHHANG]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_InsertKHACHHANG]
	ON [dbo].[KHACHHANG]
	AFTER INSERT
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_KHACHHANG select *,'I',getdate() From inserted

END
GO
ALTER TABLE [dbo].[KHACHHANG] ENABLE TRIGGER [AUDIT_InsertKHACHHANG]
GO
/****** Object:  Trigger [dbo].[AUDIT_UpdateKHACHHANG]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_UpdateKHACHHANG]
	ON [dbo].[KHACHHANG]
	AFTER update
AS
BEGIN

	SET NOCOUNT ON;
	

	insert into Aud_KHACHHANG select *,'U',getdate() From deleted
END
GO
ALTER TABLE [dbo].[KHACHHANG] ENABLE TRIGGER [AUDIT_UpdateKHACHHANG]
GO
/****** Object:  Trigger [dbo].[AUDIT_DeleteNHANVIEN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_DeleteNHANVIEN]
	ON [dbo].[NHANVIEN]
	AFTER Delete
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_NHANVIEN select *,'D',getdate() From deleted

END
GO
ALTER TABLE [dbo].[NHANVIEN] ENABLE TRIGGER [AUDIT_DeleteNHANVIEN]
GO
/****** Object:  Trigger [dbo].[AUDIT_InsertNHANVIEN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_InsertNHANVIEN]
	ON [dbo].[NHANVIEN]
	AFTER INSERT
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_NHANVIEN select *,'I',getdate() From inserted

END
GO
ALTER TABLE [dbo].[NHANVIEN] ENABLE TRIGGER [AUDIT_InsertNHANVIEN]
GO
/****** Object:  Trigger [dbo].[AUDIT_UpdateNHANVIEN]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_UpdateNHANVIEN]
	ON [dbo].[NHANVIEN]
	AFTER update
AS
BEGIN

	SET NOCOUNT ON;
	

	insert into Aud_NHANVIEN select *,'U',getdate() From deleted
END
GO
ALTER TABLE [dbo].[NHANVIEN] ENABLE TRIGGER [AUDIT_UpdateNHANVIEN]
GO
/****** Object:  Trigger [dbo].[AUDIT_DeleteUUDAI]    Script Date: 25/04/2021 12:31:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_DeleteUUDAI]
	ON [dbo].[UUDAI]
	AFTER Delete
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_UUDAI select *,'D',getdate() From deleted

END
GO
ALTER TABLE [dbo].[UUDAI] ENABLE TRIGGER [AUDIT_DeleteUUDAI]
GO
/****** Object:  Trigger [dbo].[AUDIT_InsertUUDAI]    Script Date: 25/04/2021 12:31:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_InsertUUDAI]
	ON [dbo].[UUDAI]
	AFTER INSERT
AS
BEGIN

	SET NOCOUNT ON;

	insert into Aud_UUDAI select *,'I',getdate() From inserted

END
GO
ALTER TABLE [dbo].[UUDAI] ENABLE TRIGGER [AUDIT_InsertUUDAI]
GO
/****** Object:  Trigger [dbo].[AUDIT_UpdateUUDAI]    Script Date: 25/04/2021 12:31:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AUDIT_UpdateUUDAI]
	ON [dbo].[UUDAI]
	AFTER update
AS
BEGIN

	SET NOCOUNT ON;
	

	insert into Aud_UUDAI select *,'U',getdate() From deleted
END
GO
ALTER TABLE [dbo].[UUDAI] ENABLE TRIGGER [AUDIT_UpdateUUDAI]
GO

Create database BanSachDB
GO
USE [BanSachDB]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 20/03/2025 9:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 20/03/2025 9:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](255) NULL,
	[Dongia] [int] NULL,
	[MaCD] [int] NULL,
	[Hinh] [nvarchar](200) NULL,
	[KhuyenMai] [bit] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (1, N'Công nghệ thông tin')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (2, N'Ngoại ngữ')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (3, N'Kinh tế')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (4, N'Văn học')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (1, N'Programing in C#', 850000, 1, N'pic01.jpg', 1, CAST(0x0000AE1E00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (2, N'C# 4.0', 790000, 1, N'pic02.jpg', 0, CAST(0x0000AF8800000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (3, N'Learn C# in 7 days', 215000, 1, N'pic03.jpg', 1, CAST(0x0000ACAD00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (5, N'Effective C#', 685000, 1, N'pic04.jpg', 1, CAST(0x0000ABF300000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (6, N'C# Programming 2012', 195000, 1, N'pic05.jpg', 0, CAST(0x0000ACCD00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (7, N'Java', 755000, 1, N'pic07.jpg', 0, CAST(0x0000ACD400000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (8, N'OCA Java SE 8', 195000, 1, N'pic08.jpg', 1, CAST(0x0000ACD900000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (9, N'Practice English Usage', 325000, 2, N'pic09.jpg', 1, CAST(0x0000AE6600000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (10, N'Spoken English', 315000, 2, N'pic10.jpg', 0, CAST(0x0000AE5C00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (11, N'Easy Learning', 250000, 2, N'pic11.jpg', 1, CAST(0x0000ACF100000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (12, N'English Grammar', 159000, 2, N'pic12.jpg', 0, CAST(0x0000AE5C00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (13, N'Complete English', 485000, 2, N'pic13.jpg', 0, CAST(0x0000AE9A00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (14, N'Macro Economics', 450000, 3, N'pic14.jpg', 1, CAST(0x0000ACF100000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (15, N'One Lession Economics', 350000, 3, N'pic15.jpg', 0, CAST(0x0000AF5100000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Dongia], [MaCD], [Hinh], [KhuyenMai], [NgayCapNhat]) VALUES (16, N'Advanced Economics Theory', 590000, 3, N'pic16.jpg', 1, CAST(0x0000AF6C00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Sach] OFF
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChuDe] ([MaCD])
GO
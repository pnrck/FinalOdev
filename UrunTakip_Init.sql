USE [UrunTakip]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 18.01.2022 22:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](max) NOT NULL,
	[Kodu] [nvarchar](max) NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
	[Adet] [int] NOT NULL,
	[Mensei] [int] NOT NULL,
	[KdvOrani] [int] NOT NULL,
	[Maliyet] [decimal](18, 2) NOT NULL,
	[Fiyat] [decimal](18, 2) NOT NULL,
	[FotografDosyaYolu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([Id], [Adi], [Kodu], [Aciklama], [Adet], [Mensei], [KdvOrani], [Maliyet], [Fiyat], [FotografDosyaYolu]) VALUES (2, N'Test', N'Test', N'test', 1, 1, 18, CAST(2321.00 AS Decimal(18, 2)), CAST(2132132.00 AS Decimal(18, 2)), N'Upload\test.png')
INSERT [dbo].[Urun] ([Id], [Adi], [Kodu], [Aciklama], [Adet], [Mensei], [KdvOrani], [Maliyet], [Fiyat], [FotografDosyaYolu]) VALUES (3, N'Tes', N'sad', N'sadsa', 231, 1, 18, CAST(21321.00 AS Decimal(18, 2)), CAST(2313.00 AS Decimal(18, 2)), N'Upload\test.png')
INSERT [dbo].[Urun] ([Id], [Adi], [Kodu], [Aciklama], [Adet], [Mensei], [KdvOrani], [Maliyet], [Fiyat], [FotografDosyaYolu]) VALUES (5, N'asdas', N'sadasd', N'sadsad', 123, 1, 18, CAST(23.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), N'Upload\test.png')
INSERT [dbo].[Urun] ([Id], [Adi], [Kodu], [Aciklama], [Adet], [Mensei], [KdvOrani], [Maliyet], [Fiyat], [FotografDosyaYolu]) VALUES (6, N'asdas', N'sadasd', N'sadsad', 123, 2, 18, CAST(23.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), N'Upload\pikachu.jpg')
SET IDENTITY_INSERT [dbo].[Urun] OFF
GO

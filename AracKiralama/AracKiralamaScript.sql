USE [AracKiralama]
GO
/****** Object:  Table [dbo].[Arac_Kayit]    Script Date: 4.11.2022 08:54:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arac_Kayit](
	[Arac_ID] [int] IDENTITY(1,1) NOT NULL,
	[Plaka] [nvarchar](20) NOT NULL,
	[Marka] [nvarchar](30) NOT NULL,
	[Model] [nvarchar](30) NOT NULL,
	[Yil] [char](4) NOT NULL,
	[Renk] [nvarchar](30) NOT NULL,
	[Yakit] [nvarchar](30) NOT NULL,
	[Gunluk_Kira_Ucreti] [money] NOT NULL,
	[Sigorta_Bitis_Tarihi] [datetime] NOT NULL,
	[Muayne_Bitis_Tarihi] [datetime] NOT NULL,
	[Resim] [image] NOT NULL,
 CONSTRAINT [PK_Arac_Kayit] PRIMARY KEY CLUSTERED 
(
	[Arac_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 4.11.2022 08:54:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici_Ad] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri_Ekle]    Script Date: 4.11.2022 08:54:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri_Ekle](
	[Musteri_ID] [int] IDENTITY(1,1) NOT NULL,
	[TC] [char](11) NOT NULL,
	[AdSoyad] [nvarchar](50) NOT NULL,
	[Telefon] [char](11) NOT NULL,
	[Adres] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](35) NOT NULL,
	[DogumTarihi] [datetime] NOT NULL,
	[DogumYeri] [nvarchar](20) NOT NULL,
	[EhliyetNo] [char](5) NOT NULL,
	[AlisTarihi] [datetime] NOT NULL,
	[AlisYeri] [nvarchar](30) NOT NULL,
	[EhGecerlilikTarihi] [datetime] NOT NULL,
	[KrediKartNo] [char](16) NOT NULL,
	[GecerlilikTarihi] [datetime] NOT NULL,
	[CVV] [char](3) NOT NULL,
 CONSTRAINT [PK_Musteri_Ekle] PRIMARY KEY CLUSTERED 
(
	[Musteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sozlesme_Ekle]    Script Date: 4.11.2022 08:54:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sozlesme_Ekle](
	[Sozlesme_ID] [int] IDENTITY(1,1) NOT NULL,
	[Musteri_ID] [int] NOT NULL,
	[Arac_ID] [int] NOT NULL,
	[Odenecek_Fiyat] [money] NOT NULL,
	[Alis_Tarihi] [datetime] NOT NULL,
	[VerisTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_Sozlesme_Ekle] PRIMARY KEY CLUSTERED 
(
	[Sozlesme_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Arac_Kayit] ON 

INSERT [dbo].[Arac_Kayit] ([Arac_ID], [Plaka], [Marka], [Model], [Yil], [Renk], [Yakit], [Gunluk_Kira_Ucreti], [Sigorta_Bitis_Tarihi], [Muayne_Bitis_Tarihi], [Resim]) VALUES (1, N'34 SLH 44', N'BMW', N'520', N'2012', N'Beyaz', N'Benzin', 350.0000, CAST(N'2026-08-07T00:00:00.000' AS DateTime), CAST(N'2026-08-07T00:00:00.000' AS DateTime), 0x433A5C55736572735C627572616B2E6B6172616B7563756B5C4465736B746F705C3231353339375F31396234356534642D333439312D346363622D623038392D3465626163333464616138662E6A7067)
SET IDENTITY_INSERT [dbo].[Arac_Kayit] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([ID], [Kullanici_Ad], [Sifre]) VALUES (1, N'sa', N'123')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[Musteri_Ekle] ON 

INSERT [dbo].[Musteri_Ekle] ([Musteri_ID], [TC], [AdSoyad], [Telefon], [Adres], [Mail], [DogumTarihi], [DogumYeri], [EhliyetNo], [AlisTarihi], [AlisYeri], [EhGecerlilikTarihi], [KrediKartNo], [GecerlilikTarihi], [CVV]) VALUES (1, N'1234       ', N'Ali Ayaz', N'456        ', N'bagcılar', N'ali@mail', CAST(N'1998-05-08T00:00:00.000' AS DateTime), N'beyoglu', N'786  ', CAST(N'2023-10-06T00:00:00.000' AS DateTime), N'maslak', CAST(N'2029-04-07T00:00:00.000' AS DateTime), N'7896            ', CAST(N'2030-01-05T00:00:00.000' AS DateTime), N'455')
SET IDENTITY_INSERT [dbo].[Musteri_Ekle] OFF
SET IDENTITY_INSERT [dbo].[Sozlesme_Ekle] ON 

INSERT [dbo].[Sozlesme_Ekle] ([Sozlesme_ID], [Musteri_ID], [Arac_ID], [Odenecek_Fiyat], [Alis_Tarihi], [VerisTarihi]) VALUES (1, 1, 1, 700.0000, CAST(N'2022-10-12T00:00:00.000' AS DateTime), CAST(N'2022-12-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sozlesme_Ekle] OFF
ALTER TABLE [dbo].[Sozlesme_Ekle]  WITH CHECK ADD  CONSTRAINT [FK_Sozlesme_Ekle_Arac_Kayit] FOREIGN KEY([Arac_ID])
REFERENCES [dbo].[Arac_Kayit] ([Arac_ID])
GO
ALTER TABLE [dbo].[Sozlesme_Ekle] CHECK CONSTRAINT [FK_Sozlesme_Ekle_Arac_Kayit]
GO
ALTER TABLE [dbo].[Sozlesme_Ekle]  WITH CHECK ADD  CONSTRAINT [FK_Sozlesme_Ekle_Musteri_Ekle] FOREIGN KEY([Musteri_ID])
REFERENCES [dbo].[Musteri_Ekle] ([Musteri_ID])
GO
ALTER TABLE [dbo].[Sozlesme_Ekle] CHECK CONSTRAINT [FK_Sozlesme_Ekle_Musteri_Ekle]
GO

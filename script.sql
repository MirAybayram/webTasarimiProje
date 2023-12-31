USE [master]
GO
/****** Object:  Database [Cielo]    Script Date: 1/30/2023 11:21:40 PM ******/
CREATE DATABASE [Cielo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cielo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Cielo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cielo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Cielo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Cielo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cielo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cielo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cielo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cielo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cielo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cielo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cielo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cielo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cielo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cielo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cielo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cielo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cielo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cielo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cielo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cielo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cielo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cielo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cielo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cielo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cielo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cielo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cielo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cielo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cielo] SET  MULTI_USER 
GO
ALTER DATABASE [Cielo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cielo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cielo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cielo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cielo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cielo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Cielo] SET QUERY_STORE = OFF
GO
USE [Cielo]
GO
/****** Object:  Table [dbo].[Adisyon]    Script Date: 1/30/2023 11:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adisyon](
	[AdisyonID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NULL,
	[MasaID] [int] NULL,
	[Tarih] [datetime] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Adisyon] PRIMARY KEY CLUSTERED 
(
	[AdisyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 1/30/2023 11:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](100) NULL,
	[Aciklama] [text] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Masa]    Script Date: 1/30/2023 11:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Masa](
	[MasaID] [int] IDENTITY(1,1) NOT NULL,
	[No] [nvarchar](50) NULL,
	[Adı] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](50) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Masa] PRIMARY KEY CLUSTERED 
(
	[MasaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 1/30/2023 11:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 1/30/2023 11:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[personelID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[parola] [nvarchar](50) NULL,
	[kullaniciAdi] [nvarchar](50) NULL,
	[durum] [bit] NULL,
	[gorev] [nvarchar](50) NULL,
	[aciklama] [nvarchar](50) NULL,
	[gorusOneri] [nvarchar](max) NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[personelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervasyon]    Script Date: 1/30/2023 11:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyon](
	[RezervasyonID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NULL,
	[MasaID] [int] NULL,
	[KisiSayisi] [int] NULL,
	[Tarih] [smalldatetime] NULL,
	[Durum] [bit] NULL,
	[personelID] [int] NULL,
	[kayitTarihi] [smalldatetime] NULL,
 CONSTRAINT [PK_Rezervasyon] PRIMARY KEY CLUSTERED 
(
	[RezervasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 1/30/2023 11:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[SatisID] [int] IDENTITY(1,1) NOT NULL,
	[AdisyonID] [int] NULL,
	[UrunID] [int] NULL,
	[Adet] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[ucret] [money] NULL,
 CONSTRAINT [PK_Satis] PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 1/30/2023 11:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriID] [int] NULL,
	[UrunAdi] [nvarchar](100) NULL,
	[Aciklama] [text] NULL,
	[Fiyat] [money] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Urunn] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adisyon] ON 

INSERT [dbo].[Adisyon] ([AdisyonID], [PersonelID], [MasaID], [Tarih], [Durum]) VALUES (1, 1, 1, CAST(N'2022-05-14T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Adisyon] ([AdisyonID], [PersonelID], [MasaID], [Tarih], [Durum]) VALUES (2, 2, 3, CAST(N'2022-05-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Adisyon] ([AdisyonID], [PersonelID], [MasaID], [Tarih], [Durum]) VALUES (3, 1, 4, CAST(N'2022-05-18T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Adisyon] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi], [Aciklama], [Durum]) VALUES (1, N'Ana Yemek', N'Ana Yemekler', 1)
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi], [Aciklama], [Durum]) VALUES (2, N'İçecek', N'İçecekler', 1)
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi], [Aciklama], [Durum]) VALUES (3, N'Tatlı', N'Tatlılar', 1)
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi], [Aciklama], [Durum]) VALUES (4, N'Salata', N'Salatalar', 1)
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi], [Aciklama], [Durum]) VALUES (5, N'Fast Food', N'Fast Foodlar', 1)
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi], [Aciklama], [Durum]) VALUES (6, N'Çorba', N'Çorbalar', 1)
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi], [Aciklama], [Durum]) VALUES (7, N'Makarna', N'Makarnalar', 1)
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi], [Aciklama], [Durum]) VALUES (8, N'Ara Sıcak', N'Ara Sıcaklar', 1)
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Masa] ON 

INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (1, N'1', N'Pencere1', N'4 Kişilik', 1)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (2, N'2', N'Pencere2', N'6 Kişilik', 0)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (3, N'3', N'Pencere3', N'2 Kişilik', 1)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (4, N'4', N'Pencere4', N'4 Kişilik', 0)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (5, N'5', N'Orta1', N'3 Kişilik', NULL)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (6, N'6', N'Orta2', N'5 Kişilik', NULL)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (7, N'7', N'Orta3', N'4 Kişilik', NULL)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (8, N'8', N'Orta4', N'6 Kişilik', NULL)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (9, N'9', N'Balkon1', N'2 Kişilik', NULL)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (10, N'10', N'Balkon2', N'4 Kişilik', NULL)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (11, N'11', N'Balkon3', N'6 Kişilik', NULL)
INSERT [dbo].[Masa] ([MasaID], [No], [Adı], [Aciklama], [Durum]) VALUES (12, N'12', N'Balkon4', N'2 Kişilik', NULL)
SET IDENTITY_INSERT [dbo].[Masa] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (1, N'', N'', N'', N'', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (2, N'erdi', N'yalçın', N'55555', N'erdi@gmail.com', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (3, N'', N'', N'', N'', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (4, N'', N'', N'', N'', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (5, N'Beyzanur', N'Karagöz', N'5317994628', N'beyzanurkaragoz@gmail.com', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (6, N'Beyzaa', N'karagöz', N'2222526745', N'beyzanur@gmail.com', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (7, N'', N'', N'', N'', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (8, N'Emre', N'bayram', N'5556664412', N'wewe@gmail.com', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (9, N'Emre', N'bayram', N'05550648704', N'dsadsa@gmail.com', NULL)
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Email], [Durum]) VALUES (10, N'Emre', N'bayram', N'0506590785', N'asa@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Musteri] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([personelID], [ad], [soyad], [parola], [kullaniciAdi], [durum], [gorev], [aciklama], [gorusOneri]) VALUES (1, N'Miray', N'Bayram', N'123', N'MirayB', 1, N'Patron', NULL, NULL)
INSERT [dbo].[Personel] ([personelID], [ad], [soyad], [parola], [kullaniciAdi], [durum], [gorev], [aciklama], [gorusOneri]) VALUES (2, N'Beyzanur', N'Karagöz', N'456', N'BeyzaK', 1, N'Yönetici', NULL, NULL)
INSERT [dbo].[Personel] ([personelID], [ad], [soyad], [parola], [kullaniciAdi], [durum], [gorev], [aciklama], [gorusOneri]) VALUES (3, N'Duygu', N'Abanuz', N'122', N'DuyguA', 1, N'Ceo', NULL, NULL)
INSERT [dbo].[Personel] ([personelID], [ad], [soyad], [parola], [kullaniciAdi], [durum], [gorev], [aciklama], [gorusOneri]) VALUES (4, N'Melike', N'Akbaş', N'223', N'MelikeA', 1, N'Supervisor', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([UrunID], [KategoriID], [UrunAdi], [Aciklama], [Fiyat], [Durum]) VALUES (1, 1, N'Kuru Fasulye', N'Güzel Yemek', 5.5000, 0)
INSERT [dbo].[Urun] ([UrunID], [KategoriID], [UrunAdi], [Aciklama], [Fiyat], [Durum]) VALUES (2, 1, N'Pilav', N'Pirinç Pilavı', 4.0000, 0)
INSERT [dbo].[Urun] ([UrunID], [KategoriID], [UrunAdi], [Aciklama], [Fiyat], [Durum]) VALUES (3, 7, N'Penne Arabiata', N'Acılı Domates Sos ', 49.5000, 0)
INSERT [dbo].[Urun] ([UrunID], [KategoriID], [UrunAdi], [Aciklama], [Fiyat], [Durum]) VALUES (4, 2, N'Kola', N'Zero', 8.5000, 0)
INSERT [dbo].[Urun] ([UrunID], [KategoriID], [UrunAdi], [Aciklama], [Fiyat], [Durum]) VALUES (5, 3, N'Mozaik Pasta', N'Çikolatalı Krema, Vanilya Sos', NULL, 0)
INSERT [dbo].[Urun] ([UrunID], [KategoriID], [UrunAdi], [Aciklama], [Fiyat], [Durum]) VALUES (6, NULL, N'', NULL, NULL, 0)
INSERT [dbo].[Urun] ([UrunID], [KategoriID], [UrunAdi], [Aciklama], [Fiyat], [Durum]) VALUES (7, 4, N'Çoban Salata', N'Salata', 12.5000, 0)
INSERT [dbo].[Urun] ([UrunID], [KategoriID], [UrunAdi], [Aciklama], [Fiyat], [Durum]) VALUES (8, 6, N'Ezo Gelin', N'Çorba', 7.5000, 0)
SET IDENTITY_INSERT [dbo].[Urun] OFF
GO
ALTER TABLE [dbo].[Adisyon] ADD  CONSTRAINT [DF_Adisyon_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
ALTER TABLE [dbo].[Adisyon] ADD  CONSTRAINT [DF_Adisyon_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Kategori] ADD  CONSTRAINT [DF_Kategori_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Musteri] ADD  CONSTRAINT [DF_Musteri_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Personel] ADD  CONSTRAINT [DF_Personel_Durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[Rezervasyon] ADD  CONSTRAINT [DF_Rezervasyon_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Satis] ADD  CONSTRAINT [DF_Satis_Durum]  DEFAULT ((0)) FOR [Aciklama]
GO
ALTER TABLE [dbo].[Urun] ADD  CONSTRAINT [DF_Urunn_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Adisyon]  WITH CHECK ADD  CONSTRAINT [FK_Adisyon_Masa] FOREIGN KEY([MasaID])
REFERENCES [dbo].[Masa] ([MasaID])
GO
ALTER TABLE [dbo].[Adisyon] CHECK CONSTRAINT [FK_Adisyon_Masa]
GO
ALTER TABLE [dbo].[Rezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_Rezervasyon_Masa1] FOREIGN KEY([MasaID])
REFERENCES [dbo].[Masa] ([MasaID])
GO
ALTER TABLE [dbo].[Rezervasyon] CHECK CONSTRAINT [FK_Rezervasyon_Masa1]
GO
ALTER TABLE [dbo].[Rezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_Rezervasyon_Musteri] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([MusteriID])
GO
ALTER TABLE [dbo].[Rezervasyon] CHECK CONSTRAINT [FK_Rezervasyon_Musteri]
GO
ALTER TABLE [dbo].[Rezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_Rezervasyon_Personel] FOREIGN KEY([personelID])
REFERENCES [dbo].[Personel] ([personelID])
GO
ALTER TABLE [dbo].[Rezervasyon] CHECK CONSTRAINT [FK_Rezervasyon_Personel]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Adisyon] FOREIGN KEY([AdisyonID])
REFERENCES [dbo].[Adisyon] ([AdisyonID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Adisyon]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([UrunID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Urun]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Urun1] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([UrunID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Urun1]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([KategoriID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori]
GO
USE [master]
GO
ALTER DATABASE [Cielo] SET  READ_WRITE 
GO

USE [Parfumer]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 05.11.2022 12:22:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProducts]    Script Date: 05.11.2022 12:22:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProducts](
	[OrderProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[OrderId] [int] NULL,
	[Count] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 05.11.2022 12:22:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[DateOrder] [datetime] NULL,
	[UserId] [int] NULL,
	[PointIssueId] [int] NULL,
	[StatusOrderId] [int] NULL,
	[Structer] [nvarchar](max) NULL,
	[DateDelivery] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointIssue]    Script Date: 05.11.2022 12:22:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointIssue](
	[PointIssueId] [int] IDENTITY(1,1) NOT NULL,
	[PointIssueCode] [int] NULL,
	[City] [nvarchar](max) NULL,
	[Adress] [nvarchar](max) NULL,
	[House] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[PointIssueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 05.11.2022 12:22:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[CurrentSale] [int] NULL,
	[CountStore] [int] NULL,
	[Descriptions] [nvarchar](max) NULL,
	[Images] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 05.11.2022 12:22:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrder](
	[StatusOrderId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05.11.2022 12:22:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[SurName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 
GO
INSERT [dbo].[Categorys] ([CategoryId], [Name]) VALUES (1, N'Мужской парфюм
')
GO
INSERT [dbo].[Categorys] ([CategoryId], [Name]) VALUES (2, N'Женский парфюм
')
GO
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (22, 1, CAST(N'2022-05-04T00:00:00.000' AS DateTime), 16, 201, 1, N'А112Т4, 2, F893T5, 2', CAST(N'2022-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (23, 2, CAST(N'2022-05-05T00:00:00.000' AS DateTime), NULL, 202, 1, N'E530Y6, 1, F346G5, 2', CAST(N'2022-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (24, 3, CAST(N'2022-05-06T00:00:00.000' AS DateTime), 13, 203, 1, N'J432E4, 1, D344Y7, 2', CAST(N'2022-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (25, 4, CAST(N'2022-05-07T00:00:00.000' AS DateTime), NULL, 204, 1, N'E245R5, 1, D378D3, 2', CAST(N'2022-05-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (26, 5, CAST(N'2022-05-08T00:00:00.000' AS DateTime), 14, 205, 1, N'H732R5, 3, R464G6, 2', CAST(N'2022-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (27, 6, CAST(N'2022-05-09T00:00:00.000' AS DateTime), NULL, 206, 1, N'K535G6, 3, E573G6, 3', CAST(N'2022-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (28, 7, CAST(N'2022-05-10T00:00:00.000' AS DateTime), NULL, 207, 1, N'G532R5, 5, F344S4, 6', CAST(N'2022-05-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (29, 8, CAST(N'2022-05-11T00:00:00.000' AS DateTime), NULL, 208, 1, N'D526R4, 5, S753T5, 4', CAST(N'2022-05-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (30, 9, CAST(N'2022-05-12T00:00:00.000' AS DateTime), 15, 209, 1, N'V472S3, 3, A436H7, 3', CAST(N'2022-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([OrderId], [Number], [DateOrder], [UserId], [PointIssueId], [StatusOrderId], [Structer], [DateDelivery]) VALUES (31, 10, CAST(N'2022-05-13T00:00:00.000' AS DateTime), NULL, 210, 2, N'O875F6, 4, E479G6, 1', CAST(N'2022-05-19T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[PointIssue] ON 
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (1, 344288, N' г. Ангарск', N' ул. Чехова', N'1')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (2, 614164, N' г.Ангарск', N'  ул. Степная', N'30')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (3, 394242, N' г. Ангарск', N' ул. Коммунистическая', N'43')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (4, 660540, N' г. Ангарск', N' ул. Солнечная', N'25')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (5, 125837, N' г. Ангарск', N' ул. Шоссейная', N'40')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (6, 125703, N' г. Ангарск', N' ул. Партизанская', N'49')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (7, 625283, N' г. Ангарск', N' ул. Победы', N'46')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (8, 614611, N' г. Ангарск', N' ул. Молодежная', N'50')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (9, 454311, N' г.Ангарск', N' ул. Новая', N'19')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (10, 660007, N' г.Ангарск', N' ул. Октябрьская', N'19')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (11, 603036, N' г. Ангарск', N' ул. Садовая', N'4')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (12, 450983, N' г.Ангарск', N' ул. Комсомольская', N'26')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (13, 394782, N' г. Ангарск', N' ул. Чехова', N'3')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (14, 603002, N' г. Ангарск', N' ул. Дзержинского', N'28')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (15, 450558, N' г. Ангарск', N' ул. Набережная', N'30')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (16, 394060, N' г.Ангарск', N' ул. Фрунзе', N'43')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (17, 410661, N' г. Ангарск', N' ул. Школьная', N'50')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (18, 625590, N' г. Ангарск', N' ул. Коммунистическая', N'20')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (19, 625683, N' г. Ангарск', N' ул. 8 Марта', N'')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (20, 400562, N' г. Ангарск', N' ул. Зеленая', N'32')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (21, 614510, N' г. Ангарск', N' ул. Маяковского', N'47')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (22, 410542, N' г. Ангарск', N' ул. Светлая', N'46')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (23, 620839, N' г. Ангарск', N' ул. Цветочная', N'8')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (24, 443890, N' г. Ангарск', N' ул. Коммунистическая', N'1')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (25, 603379, N' г. Ангарск', N' ул. Спортивная', N'46')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (26, 603721, N' г. Ангарск', N' ул. Гоголя', N'41')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (27, 410172, N' г. Ангарск', N' ул. Северная', N'13')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (28, 420151, N' г. Ангарск', N' ул. Вишневая', N'32')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (29, 125061, N' г. Ангарск', N' ул. Подгорная', N'8')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (30, 630370, N' г. Ангарск', N' ул. Шоссейная', N'24')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (31, 614753, N' г. Ангарск', N' ул. Полевая', N'35')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (32, 426030, N' г. Ангарск', N' ул. Маяковского', N'44')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (33, 450375, N' г. Ангарск ул. Клубная', N'44', N'')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (34, 625560, N' г. Ангарск', N' ул. Некрасова', N'12')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (35, 630201, N' г. Ангарск', N' ул. Комсомольская', N'17')
GO
INSERT [dbo].[PointIssue] ([PointIssueId], [PointIssueCode], [City], [Adress], [House]) VALUES (36, 190949, N' г. Ангарск', N' ул. Мичурина', N'26')
GO
SET IDENTITY_INSERT [dbo].[PointIssue] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (1, 2, 2, 14, N'Туалетная вода Paris Line Parfums Cosa Nostra Platinum, 100 мл', N'F893T5.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (2, 2, 4, 7, N'Туалетная вода Paris Line Parfums Vodka Extreme, 100 мл', N'G832G6.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (3, 2, 3, 9, N'Парфюмерная вода Parfums Constantine Mademoiselle 5, 50 мл', N'E530Y6.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (4, 2, 3, 18, N'Туалетная вода Today Parfum G-Club Egoist, 100 мл', N'F346G5.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (5, 2, 2, 4, N'Туалетная вода Paris Line Parfums Dollar, 100 мл', N'J432E4.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (6, 2, 5, 16, N'Парфюмерная вода Today Parfum Prestige №6 Eclat, 17 мл', N'D344Y7.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (7, 2, 3, 5, N'Парфюмерная вода Parfums Constantine Mademoiselle 7, 50 мл', N'V324R5.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (8, 2, 5, 2, N'Туалетная вода Dilis Parfum Mila, 100 мл', N'E245R5.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (9, 2, 3, 16, N'Духи Dilis Parfum Classic Collection №18, 30 мл', N'D378D3.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (10, 2, 5, 7, N'Туалетная вода Paris Line Parfums Cosa Nostra, 100 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (11, 2, 2, 11, N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (12, 2, 2, 5, N'Парфюмерная вода Yves de Sistelle Incidence pour Femme, 65 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (13, 2, 5, 13, N'Духи Dilis Parfum Classic Collection №34, 30 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (14, 2, 4, 6, N'Туалетная вода Parfums Constantine Gentleman №3, 100 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (15, 2, 2, 9, N'Туалетная вода Today Parfum Cola Cherry, 50 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (16, 2, 3, 6, N'Парфюмерная вода DOLCE & GABBANA Dolce&Gabbana pour', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (17, 2, 4, 3, N'Парфюмерная вода DOLCE & GABBANA Dolce Shine, 75 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (18, 2, 2, 8, N'Туалетная вода DOLCE & GABBANA 3 L''Imperatrice, 50 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (19, 1, 5, 6, N'Одеколон Dragon Parfums Dragon Noir, 100 мл', N'А112Т4.jpg')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (20, 1, 4, 8, N'Парфюмерная вода TRUSSARDI Donna Trussardi (2011), 50 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (21, 1, 4, 12, N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (22, 1, 3, 16, N'Парфюмерная вода Parfums Constantine New York Perfume Six, 50 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (23, 1, 4, 6, N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (24, 1, 4, 9, N'Туалетная вода Today Parfum G-Club Millioner, 100 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (25, 1, 4, 15, N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (26, 1, 2, 14, N'Туалетная вода Paris Line Parfums Dollar Diamond, 100 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (27, 1, 4, 7, N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (28, 1, 4, 12, N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (29, 1, 2, 5, N'Dilis Parfum Мужской Walker Breeze', N'')
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [CurrentSale], [CountStore], [Descriptions], [Images]) VALUES (30, 1, 5, 3, N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл', N'')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusOrder] ON 
GO
INSERT [dbo].[StatusOrder] ([StatusOrderId], [Name]) VALUES (1, N'Новый')
GO
INSERT [dbo].[StatusOrder] ([StatusOrderId], [Name]) VALUES (2, N'Завершен')
GO
SET IDENTITY_INSERT [dbo].[StatusOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (1, N'Администратор', N'Федоров', N'Глеб', N'Михайлович', N'o@outlook.com
', N'2L6KZG
')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (3, N'Администратор', N'Семенова', N'Софья', N'Дмитриевна', N'hr6zdl@yandex.ru', N'uzWC67')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (4, N'Администратор', N'Васильев', N'Егор', N'Германович', N'kaft93x@outlook.com', N'8ntwUp')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (5, N'Менеджер', N'Смирнова', N'Ирина', N'Александровна', N'dcu@yandex.ru', N'YOyhfR')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (6, N'Менеджер', N'Петров', N'Андрей', N'Владимирович', N'19dn@outlook.com', N'RSbvHv')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (7, N'Менеджер', N'Егоров', N'Максим', N'Андреевич', N'pa5h@mail.ru', N'rwVDh9')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (8, N'Клиент', N'Никитин', N'Артур', N'Алексеевич', N'281av0@gmail.com', N'LdNyos')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (9, N'Клиент', N'Киселев', N'Максим', N'Сергеевич', N'8edmfh@outlook.com', N'gynQMT')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (10, N'Клиент', N'Борисов', N'Тимур', N'Егорович', N'sfn13i@mail.ru', N'AtnDjr')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (11, N'Клиент', N'Климов', N'Арсений', N'Тимурович', N'g0orc3x1@outlook.com', N'JlFRCZ')
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (12, N'Клиент', N'Новиков', N'Матвей', N'Маркович', NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (13, N'Клиент', N'Соловьев', N'Петр', N'Никитич', NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (14, N'Клиент', N'Васильева', N'Софья', N'Глебовна', NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (15, N'Клиент', N'Львов', N'Роман', N'Павлович', NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Role], [FirstName], [SurName], [MiddleName], [Login], [Password]) VALUES (16, N'', N'', N'', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([StatusOrderId])
REFERENCES [dbo].[StatusOrder] ([StatusOrderId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categorys] ([CategoryId])
GO

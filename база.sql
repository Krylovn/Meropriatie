USE [lekarstva1]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 12.10.2023 9:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[surname] [nvarchar](max) NOT NULL,
	[patronymic] [nvarchar](max) NULL,
	[profession] [nvarchar](max) NOT NULL,
	[DoctorID] [int] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicoment]    Script Date: 12.10.2023 9:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicoment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[count] [nvarchar](max) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_medicoment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 12.10.2023 9:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[surname] [nvarchar](max) NOT NULL,
	[patronymic] [nvarchar](max) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Telephone] [decimal](11, 0) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[DoctorID] [int] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[priemLekarstva]    Script Date: 12.10.2023 9:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[priemLekarstva](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MedicomentID] [int] NOT NULL,
	[data] [date] NOT NULL,
	[count] [nvarchar](50) NOT NULL,
	[PatientID] [int] NOT NULL,
 CONSTRAINT [PK_priemLekarstva] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 12.10.2023 9:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([ID], [name], [surname], [patronymic], [profession], [DoctorID]) VALUES (0, N'Кирилл', N'Марушкин', N'Денисович', N'гинеколог', 4)
INSERT [dbo].[Doctor] ([ID], [name], [surname], [patronymic], [profession], [DoctorID]) VALUES (2, N'Никита', N'Александрович', N'КрылоB', N'уролог', 2)
INSERT [dbo].[Doctor] ([ID], [name], [surname], [patronymic], [profession], [DoctorID]) VALUES (11, N'Максим', N'Федорчук', N'Александрович', N'хирург', 3)
INSERT [dbo].[Doctor] ([ID], [name], [surname], [patronymic], [profession], [DoctorID]) VALUES (12, N'Влдимир', N'Перевезенцев', N'Павлович', N'терапевт', 5)
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[medicoment] ON 

INSERT [dbo].[medicoment] ([ID], [name], [count], [date]) VALUES (0, N'ss', N'1', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[medicoment] ([ID], [name], [count], [date]) VALUES (1, N'парацетамол', N'50', CAST(N'2004-01-25' AS Date))
INSERT [dbo].[medicoment] ([ID], [name], [count], [date]) VALUES (2, N'асперин', N'30', CAST(N'2004-01-26' AS Date))
INSERT [dbo].[medicoment] ([ID], [name], [count], [date]) VALUES (3, N'нурафен экстра', N'40', CAST(N'2004-01-27' AS Date))
SET IDENTITY_INSERT [dbo].[medicoment] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (1, N'Дарья', N'Журавлева', N'Эдуардовна', CAST(N'2001-09-08' AS Date), CAST(88885553535 AS Decimal(11, 0)), N'695619, Томская область, город Раменское, въезд Ленина, 50', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (3, N'Павел ', N'Васильев', N'Ярославович', CAST(N'2001-09-03' AS Date), CAST(86648763679 AS Decimal(11, 0)), N'Калужская область, город Солнечногорск, бульвар Ломоносова, 28', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (5, N'Владислав', N'Сыроегин', N'Владимирович', CAST(N'2001-04-02' AS Date), CAST(89543619352 AS Decimal(11, 0)), N'Свердловская область, город Волоколамск, ул. Гагарина, 72', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (9, N'Кирилл', N'Марушкин', N'Денисович', CAST(N'2004-01-01' AS Date), CAST(87656787656 AS Decimal(11, 0)), N'Нижегородская область г. Лукоянов улица ленина д 115', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (10, N'Алексей', N'Шаповалов ', N'Тихонович', CAST(N'1998-04-09' AS Date), CAST(89765432456 AS Decimal(11, 0)), N'Ивановская область, город Зарайск, проезд Космонавтов, 52', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (11, N'Леонид', N'Филатов ', N'Максимович', CAST(N'1995-08-05' AS Date), CAST(89767876569 AS Decimal(11, 0)), N'Амурская область, город Чехов, бульвар Косиора, 74', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (14, N'Тимофей ', N'Емельянов ', N'Миронович', CAST(N'2008-02-01' AS Date), CAST(8800555353 AS Decimal(11, 0)), N'Ивановская область, город Клин, проезд Сталина, 82', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (1007, N'Алина', N'Ларина', N'Мирославовна', CAST(N'1998-05-09' AS Date), CAST(89876546478 AS Decimal(11, 0)), N'Ростовская область, город Люберцы, шоссе Косиора, 99', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (1008, N'Виктория', N'Королева', N'Борисовна', CAST(N'2008-05-01' AS Date), CAST(86758674890 AS Decimal(11, 0)), N'Курганская область, город Воскресенск, пр. Гагарина, 05', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (1009, N'Амелия', N'Шестакова', N'Тимофеевна', CAST(N'2001-09-01' AS Date), CAST(84756374657 AS Decimal(11, 0)), N'Смоленская область, город Ступино, шоссе Ладыгина, 19', 2)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (2009, N'fff', N'ff', N'fff', CAST(N'0001-01-01' AS Date), CAST(88005553535 AS Decimal(11, 0)), N'rfe', 0)
INSERT [dbo].[Patient] ([ID], [name], [surname], [patronymic], [Birthday], [Telephone], [Address], [DoctorID]) VALUES (2010, N'ttt', N'tt', N'tt', CAST(N'0001-01-01' AS Date), CAST(98765432123 AS Decimal(11, 0)), N'gf', 2)
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[priemLekarstva] ON 

INSERT [dbo].[priemLekarstva] ([id], [MedicomentID], [data], [count], [PatientID]) VALUES (1, 1, CAST(N'2023-02-22' AS Date), N'5', 1)
INSERT [dbo].[priemLekarstva] ([id], [MedicomentID], [data], [count], [PatientID]) VALUES (5, 1, CAST(N'0001-01-01' AS Date), N'60', 3)
SET IDENTITY_INSERT [dbo].[priemLekarstva] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([user_id], [name], [email], [password]) VALUES (1, N'tana', N'tana@gmail.com', N'123')
INSERT [dbo].[user] ([user_id], [name], [email], [password]) VALUES (2, N'Виктор', N'admin', N'123')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Doctor]
GO
ALTER TABLE [dbo].[priemLekarstva]  WITH CHECK ADD  CONSTRAINT [FK_priemLekarstva_medicoment] FOREIGN KEY([MedicomentID])
REFERENCES [dbo].[medicoment] ([ID])
GO
ALTER TABLE [dbo].[priemLekarstva] CHECK CONSTRAINT [FK_priemLekarstva_medicoment]
GO
ALTER TABLE [dbo].[priemLekarstva]  WITH CHECK ADD  CONSTRAINT [FK_priemLekarstva_Patient1] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([ID])
GO
ALTER TABLE [dbo].[priemLekarstva] CHECK CONSTRAINT [FK_priemLekarstva_Patient1]
GO

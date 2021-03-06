USE [Rentals]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[Description] [varchar](max) NULL,
	[PurchuseDate] [datetime] NULL,
	[RentalDuration] [tinyint] NOT NULL,
	[RentalPrice] [decimal](4, 2) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
 CONSTRAINT [PK__Item__727E838B1CF15040] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON
INSERT [dbo].[Item] ([ItemId], [Title], [Description], [PurchuseDate], [RentalDuration], [RentalPrice], [Price]) VALUES (10, N'Ford Focus', N'1.6 tdci', NULL, 4, CAST(33.00 AS Decimal(4, 2)), CAST(19.00 AS Decimal(10, 2)))
INSERT [dbo].[Item] ([ItemId], [Title], [Description], [PurchuseDate], [RentalDuration], [RentalPrice], [Price]) VALUES (11, N'Mazda 323', N'banzin', NULL, 1, CAST(54.00 AS Decimal(4, 2)), CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[Item] ([ItemId], [Title], [Description], [PurchuseDate], [RentalDuration], [RentalPrice], [Price]) VALUES (12, N'aaa', N'445', CAST(0x0000A2A600000000 AS DateTime), 2, CAST(12.00 AS Decimal(4, 2)), CAST(444.00 AS Decimal(10, 2)))
INSERT [dbo].[Item] ([ItemId], [Title], [Description], [PurchuseDate], [RentalDuration], [RentalPrice], [Price]) VALUES (13, N'test', N'lalal', CAST(0x0000A2D600000000 AS DateTime), 2, CAST(52.00 AS Decimal(4, 2)), CAST(5555.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Item] OFF
/****** Object:  Table [dbo].[City]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([CityId], [Name]) VALUES (1, N'Sarajevo')
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (1, N'RentACar')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (2, N'testCategory')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[JobRole]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobRole](
	[JobRoleId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[JobRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JobRole] ON
INSERT [dbo].[JobRole] ([JobRoleId], [Title]) VALUES (2, N'Manager')
INSERT [dbo].[JobRole] ([JobRoleId], [Title]) VALUES (3, N'Referent1')
INSERT [dbo].[JobRole] ([JobRoleId], [Title]) VALUES (4, N'Majstor')
INSERT [dbo].[JobRole] ([JobRoleId], [Title]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[JobRole] OFF
/****** Object:  Table [dbo].[ItemCategory]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[CategoryId] [tinyint] NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
 CONSTRAINT [PK__ItemCate__D3EE102B25869641] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ItemCategory] ON
INSERT [dbo].[ItemCategory] ([Id], [ItemId], [CategoryId]) VALUES (1, 10, 1)
INSERT [dbo].[ItemCategory] ([Id], [ItemId], [CategoryId]) VALUES (2, 11, 2)
SET IDENTITY_INSERT [dbo].[ItemCategory] OFF
/****** Object:  Table [dbo].[Address]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [smallint] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[CityId] [smallint] NOT NULL,
	[PoBOX] [varchar](10) NULL,
	[Phone] [varchar](20) NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON
INSERT [dbo].[Address] ([AddressId], [Address], [Address2], [CityId], [PoBOX], [Phone]) VALUES (3, N'Ibrahima Ljubovica', NULL, 1, N'71210', N'061277317')
SET IDENTITY_INSERT [dbo].[Address] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [smallint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](45) NOT NULL,
	[LastName] [varchar](45) NOT NULL,
	[Email] [varchar](50) NULL,
	[AddressId] [smallint] NOT NULL,
	[Active] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffId] [tinyint] IDENTITY(1,1) NOT NULL,
	[JobRoleId] [tinyint] NOT NULL,
	[ManagerId] [tinyint] NULL,
	[FirstName] [varchar](45) NOT NULL,
	[LastName] [varchar](45) NOT NULL,
	[AddressID] [smallint] NOT NULL,
	[Picture] [image] NULL,
	[Email] [varchar](50) NULL,
	[Active] [bit] NOT NULL,
	[Username] [varchar](16) NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
 CONSTRAINT [PK__Staff__96D4AB173E52440B] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON
INSERT [dbo].[Staff] ([StaffId], [JobRoleId], [ManagerId], [FirstName], [LastName], [AddressID], [Picture], [Email], [Active], [Username]) VALUES (3, 3, NULL, N'Muhamed', N'Alibegovic', 3, NULL, NULL, 1, N'muhameda')
SET IDENTITY_INSERT [dbo].[Staff] OFF
/****** Object:  Table [dbo].[Rental]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[RentalId] [int] IDENTITY(1,1) NOT NULL,
	[RentalDate] [datetime] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CutomerId] [smallint] NOT NULL,
	[ReturnDate] [datetime] NULL,
	[StaffId] [tinyint] NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RentalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Rental] UNIQUE NONCLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RentalDate] ASC,
	[ItemId] ASC,
	[CutomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 04/22/2014 12:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [smallint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [smallint] NOT NULL,
	[StaffId] [tinyint] NOT NULL,
	[RentalId] [int] NULL,
	[Amount] [decimal](5, 2) NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[LastUpdate] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF__Address__Address__014935CB]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Address] ADD  DEFAULT (NULL) FOR [Address2]
GO
/****** Object:  Default [DF__Address__PoBOX__023D5A04]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Address] ADD  DEFAULT (NULL) FOR [PoBOX]
GO
/****** Object:  Default [DF__Customer__Email__182C9B23]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (NULL) FOR [Email]
GO
/****** Object:  Default [DF__Customer__Active__1920BF5C]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF__Item__Descriptio__1ED998B2]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF__Item__Descriptio__1ED998B2]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF__Item__PurchuseDa__1FCDBCEB]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF__Item__PurchuseDa__1FCDBCEB]  DEFAULT (getdate()) FOR [PurchuseDate]
GO
/****** Object:  Default [DF__Item__RentalDura__20C1E124]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF__Item__RentalDura__20C1E124]  DEFAULT ((3)) FOR [RentalDuration]
GO
/****** Object:  Default [DF__Item__RentalPric__21B6055D]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF__Item__RentalPric__21B6055D]  DEFAULT ((4.99)) FOR [RentalPrice]
GO
/****** Object:  Default [DF__Item__Price__22AA2996]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF__Item__Price__22AA2996]  DEFAULT ((19.99)) FOR [Price]
GO
/****** Object:  Default [DF__Payment__RentalI__07F6335A]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Payment] ADD  DEFAULT (NULL) FOR [RentalId]
GO
/****** Object:  Default [DF__Rental__ReturnDa__36B12243]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Rental] ADD  DEFAULT (NULL) FOR [ReturnDate]
GO
/****** Object:  Default [DF__Staff__Picture__403A8C7D]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__Picture__403A8C7D]  DEFAULT (NULL) FOR [Picture]
GO
/****** Object:  Default [DF__Staff__Email__412EB0B6]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__Email__412EB0B6]  DEFAULT (NULL) FOR [Email]
GO
/****** Object:  Default [DF__Staff__Active__4222D4EF]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__Active__4222D4EF]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  ForeignKey [Address_City]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [Address_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [Address_City]
GO
/****** Object:  ForeignKey [Customer_Address]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [Customer_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([AddressId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [Customer_Address]
GO
/****** Object:  ForeignKey [ItemCategory_Category]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[ItemCategory]  WITH CHECK ADD  CONSTRAINT [ItemCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[ItemCategory] CHECK CONSTRAINT [ItemCategory_Category]
GO
/****** Object:  ForeignKey [ItemCategory_Item]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[ItemCategory]  WITH CHECK ADD  CONSTRAINT [ItemCategory_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ItemId])
GO
ALTER TABLE [dbo].[ItemCategory] CHECK CONSTRAINT [ItemCategory_Item]
GO
/****** Object:  ForeignKey [FK_Payment_Customer]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Customer]
GO
/****** Object:  ForeignKey [FK_Payment_Rental]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Rental] FOREIGN KEY([RentalId])
REFERENCES [dbo].[Rental] ([RentalId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Rental]
GO
/****** Object:  ForeignKey [Payment_Staff]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [Payment_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [Payment_Staff]
GO
/****** Object:  ForeignKey [FK_Rental_Customer]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Customer] FOREIGN KEY([CutomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Customer]
GO
/****** Object:  ForeignKey [FK_Rental_Item]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ItemId])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Item]
GO
/****** Object:  ForeignKey [Rental_Staff]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [Rental_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [Rental_Staff]
GO
/****** Object:  ForeignKey [FK_Staff_Address]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Address]
GO
/****** Object:  ForeignKey [FK_Staff_JobRole]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_JobRole] FOREIGN KEY([JobRoleId])
REFERENCES [dbo].[JobRole] ([JobRoleId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_JobRole]
GO
/****** Object:  ForeignKey [FK_Staff_Staff]    Script Date: 04/22/2014 12:17:05 ******/
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Staff]
GO

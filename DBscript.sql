USE [WareHouses]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21.02.2022 09:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 21.02.2022 09:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[lat] [varchar](500) NULL,
	[long] [varchar](500) NULL,
	[name] [nvarchar](200) NULL,
 CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehicle]    Script Date: 21.02.2022 09:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicle](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[make] [nvarchar](150) NULL,
	[model] [nvarchar](150) NULL,
	[year_model] [int] NULL,
	[price] [decimal](12, 6) NULL,
	[licensed] [bit] NULL,
	[date_added] [nvarchar](200) NULL,
	[warehouses_id] [int] NOT NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[warehouse]    Script Date: 21.02.2022 09:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warehouse](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[location_id] [int] NULL,
 CONSTRAINT [PK_warehouses] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[location] ON 

INSERT [dbo].[location] ([_id], [lat], [long], [name]) VALUES (1, N'47.13111', N'-61.54801', N'West wing')
INSERT [dbo].[location] ([_id], [lat], [long], [name]) VALUES (2, N'15.95386', N'7.06246', N'East wing')
INSERT [dbo].[location] ([_id], [lat], [long], [name]) VALUES (3, N'39.12788', N'-2.71398', N'Suid wing')
INSERT [dbo].[location] ([_id], [lat], [long], [name]) VALUES (4, N'-70.84354', N'132.22345', N'Suid wing')
SET IDENTITY_INSERT [dbo].[location] OFF
GO
SET IDENTITY_INSERT [dbo].[vehicle] ON 

INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (1, N'Volkswagen', N'Jetta III', 1995, CAST(12947.520000 AS Decimal(12, 6)), 1, N'2018-09-18', 1)
INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (2, N'Chevrolet', N'Corvette', 2004, CAST(20019.640000 AS Decimal(12, 6)), 1, N'2018-01-27', 1)
INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (3, N'Ford', N'Expedition EL', 2008, CAST(27323.420000 AS Decimal(12, 6)), 0, N'2018-07-03', 1)
INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (1003, N'Infiniti', N'FX', 2010, CAST(854162.000000 AS Decimal(12, 6)), 1, N'2018-03-23', 1)
INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (1005, N'GMC', N'Safari', 1998, CAST(147725.000000 AS Decimal(12, 6)), 0, N'2018-07-04', 1)
INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (1013, N'Plymouth', N'Colt Vista', 1994, CAST(664245.000000 AS Decimal(12, 6)), 1, N'2018-07-11', 1)
INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (1022, N'Maserati', N'Coupe', 2005, CAST(19957.710000 AS Decimal(12, 6)), 0, N'2017-11-14', 2)
INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (1023, N'Cadillac', N'Escalade', 2005, CAST(7429.180000 AS Decimal(12, 6)), 1, N'2018-09-26', 3)
INSERT [dbo].[vehicle] ([_id], [make], [model], [year_model], [price], [licensed], [date_added], [warehouses_id]) VALUES (1024, N'Saab', N'900', 1987, CAST(8771.000000 AS Decimal(12, 6)), 0, N'2017-12-01', 4)
SET IDENTITY_INSERT [dbo].[vehicle] OFF
GO
SET IDENTITY_INSERT [dbo].[warehouse] ON 

INSERT [dbo].[warehouse] ([_id], [name], [location_id]) VALUES (1, N'Warehouse A', 1)
INSERT [dbo].[warehouse] ([_id], [name], [location_id]) VALUES (2, N'Warehouse B', 2)
INSERT [dbo].[warehouse] ([_id], [name], [location_id]) VALUES (3, N'Warehouse C', 3)
INSERT [dbo].[warehouse] ([_id], [name], [location_id]) VALUES (4, N'Warehouse D', 4)
SET IDENTITY_INSERT [dbo].[warehouse] OFF
GO
ALTER TABLE [dbo].[vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_warehouses] FOREIGN KEY([warehouses_id])
REFERENCES [dbo].[warehouse] ([_id])
GO
ALTER TABLE [dbo].[vehicle] CHECK CONSTRAINT [FK_Vehicle_warehouses]
GO

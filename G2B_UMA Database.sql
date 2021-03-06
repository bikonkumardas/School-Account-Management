USE [studentdetails]
GO
/****** Object:  User [Group2]    Script Date: 12/10/2018 12:00:03 AM ******/
CREATE USER [Group2] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Fees]    Script Date: 12/10/2018 12:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[Fee_Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Fees] PRIMARY KEY CLUSTERED 
(
	[Fee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Months]    Script Date: 12/10/2018 12:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Months](
	[M_Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Months] PRIMARY KEY CLUSTERED 
(
	[M_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 12/10/2018 12:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Std_Id] [nvarchar](50) NOT NULL,
	[Fee_Id] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[M_Id] [int] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 12/10/2018 12:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Std_Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Birth_Date] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Contact] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Father_Name] [nvarchar](50) NOT NULL,
	[Mother_Name] [nvarchar](50) NOT NULL,
	[Class] [int] NOT NULL,
	[M_Id] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Std_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 12/10/2018 12:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[username] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Fees] ([Fee_Id], [Name]) VALUES (1, N'Admission')
INSERT [dbo].[Fees] ([Fee_Id], [Name]) VALUES (2, N'Monthly')
INSERT [dbo].[Fees] ([Fee_Id], [Name]) VALUES (3, N'Due')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (1, N'January')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (2, N'February')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (3, N'March')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (4, N'April')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (5, N'May')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (6, N'June')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (7, N'July')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (8, N'August')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (9, N'September')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (10, N'October')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (11, N'November')
INSERT [dbo].[Months] ([M_Id], [Name]) VALUES (12, N'December')
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id], [Std_Id], [Fee_Id], [Amount], [M_Id]) VALUES (21, N'17103041', 1, 4000, 1)
INSERT [dbo].[Payment] ([id], [Std_Id], [Fee_Id], [Amount], [M_Id]) VALUES (22, N'17103041', 2, 500, 2)
INSERT [dbo].[Payment] ([id], [Std_Id], [Fee_Id], [Amount], [M_Id]) VALUES (23, N'17103043', 1, 4000, 1)
INSERT [dbo].[Payment] ([id], [Std_Id], [Fee_Id], [Amount], [M_Id]) VALUES (24, N'17103043', 2, 500, 1)
INSERT [dbo].[Payment] ([id], [Std_Id], [Fee_Id], [Amount], [M_Id]) VALUES (25, N'17103019', 1, 5000, 3)
INSERT [dbo].[Payment] ([id], [Std_Id], [Fee_Id], [Amount], [M_Id]) VALUES (26, N'17103019', 2, 800, 3)
SET IDENTITY_INSERT [dbo].[Payment] OFF
INSERT [dbo].[Students] ([Std_Id], [Name], [Birth_Date], [Gender], [Contact], [Address], [Father_Name], [Mother_Name], [Class], [M_Id]) VALUES (N'17103019', N'Abir', N'21/12/2004', N'Male', N'0177846568', N'Sector,Uttara', N'aaaa', N'aaaa', 11, 3)
INSERT [dbo].[Students] ([Std_Id], [Name], [Birth_Date], [Gender], [Contact], [Address], [Father_Name], [Mother_Name], [Class], [M_Id]) VALUES (N'17103041', N'Saidur Rahman Akash', N'25/11/1997', N'Male', N'01794591853', N'Uttara,Dhaka', N'aaa', N'aaa', 10, 1)
INSERT [dbo].[Students] ([Std_Id], [Name], [Birth_Date], [Gender], [Contact], [Address], [Father_Name], [Mother_Name], [Class], [M_Id]) VALUES (N'17103043', N'Abdullah Al Zayed Reza', N'22/11/2002', N'Male', N'01953352881', N'Savar', N'aaa', N'aaa', 10, 1)
INSERT [dbo].[user] ([username], [pass], [type]) VALUES (N'17103019', N'a', N'Student')
INSERT [dbo].[user] ([username], [pass], [type]) VALUES (N'17103041', N'a', N'Student')
INSERT [dbo].[user] ([username], [pass], [type]) VALUES (N'17103043', N'a', N'Student')
INSERT [dbo].[user] ([username], [pass], [type]) VALUES (N'accounts', N'a', N'Accounts')
INSERT [dbo].[user] ([username], [pass], [type]) VALUES (N'admin', N'a', N'Admin')

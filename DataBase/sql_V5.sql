USE [WorkTrackingSystem]
GO
/****** Object:  Table [dbo].[ANALYSIS]    Script Date: 3/8/2025 5:56:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANALYSIS](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [bigint] NULL,
	[Total] [float] NULL,
	[Ontime] [int] NULL,
	[Late] [int] NULL,
	[Overdue] [int] NULL,
	[Processing] [int] NULL,
	[Time] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BASELINEASSESSMENT]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASELINEASSESSMENT](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [bigint] NULL,
	[VolumeAssessment] [float] NULL,
	[ProgressAssessment] [float] NULL,
	[QualityAssessment] [float] NULL,
	[SummaryOfReviews] [float] NULL,
	[Time] [datetime] NULL,
	[Evaluate] [bit] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Id_Parent] [bigint] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Department_Id] [bigint] NULL,
	[Position_Id] [bigint] NULL,
	[Code] [nvarchar](50) NOT NULL,
	[First_Name] [nvarchar](255) NULL,
	[Last_Name] [nvarchar](255) NULL,
	[Gender] [nvarchar](10) NULL,
	[Birthday] [date] NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](255) NULL,
	[Hire_Date] [date] NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [bigint] NULL,
	[Category_Id] [bigint] NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Deadline1] [date] NULL,
	[Deadline2] [date] NULL,
	[Deadline3] [date] NULL,
	[CompletionDate] [date] NULL,
	[Status] [tinyint] NULL,
	[VolumeAssessment] [float] NULL,
	[ProgressAssessment] [float] NULL,
	[QualityAssessment] [float] NULL,
	[SummaryOfReviews] [float] NULL,
	[progress] [float] NULL,
	[Time] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSITION]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSITION](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYSTEMSW]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSTEMSW](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](255) NOT NULL,
	[Password] [varchar](max) NULL,
	[Employee_Id] [bigint] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [nvarchar](100) NULL,
	[Update_By] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ANALYSIS] ON 

INSERT [dbo].[ANALYSIS] ([Id], [Employee_Id], [Total], [Ontime], [Late], [Overdue], [Processing], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (36, 2, 2, 0, 0, 1, 1, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'2025-03-07T23:23:27.023' AS DateTime), CAST(N'2025-03-07T23:27:32.977' AS DateTime), NULL, NULL)
INSERT [dbo].[ANALYSIS] ([Id], [Employee_Id], [Total], [Ontime], [Late], [Overdue], [Processing], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (37, 3, 2, 0, 0, 1, 1, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'2025-03-07T23:23:27.033' AS DateTime), CAST(N'2025-03-07T23:34:56.643' AS DateTime), NULL, NULL)
INSERT [dbo].[ANALYSIS] ([Id], [Employee_Id], [Total], [Ontime], [Late], [Overdue], [Processing], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (38, 5, 3, 2, 0, 1, 0, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'2025-03-07T23:23:27.043' AS DateTime), CAST(N'2025-03-08T17:43:00.383' AS DateTime), NULL, NULL)
INSERT [dbo].[ANALYSIS] ([Id], [Employee_Id], [Total], [Ontime], [Late], [Overdue], [Processing], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (39, 6, 2, 1, 0, 0, 1, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'2025-03-07T23:23:27.047' AS DateTime), CAST(N'2025-03-07T23:27:32.997' AS DateTime), NULL, NULL)
INSERT [dbo].[ANALYSIS] ([Id], [Employee_Id], [Total], [Ontime], [Late], [Overdue], [Processing], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (40, 9, 2, 0, 0, 2, 0, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'2025-03-07T23:23:27.060' AS DateTime), CAST(N'2025-03-07T23:34:11.290' AS DateTime), NULL, NULL)
INSERT [dbo].[ANALYSIS] ([Id], [Employee_Id], [Total], [Ontime], [Late], [Overdue], [Processing], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (41, 13, 2, 0, 2, 0, 0, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'2025-03-07T23:23:27.063' AS DateTime), CAST(N'2025-03-07T23:33:58.903' AS DateTime), NULL, NULL)
INSERT [dbo].[ANALYSIS] ([Id], [Employee_Id], [Total], [Ontime], [Late], [Overdue], [Processing], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (42, 14, 2, 2, 0, 0, 0, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'2025-03-07T23:23:27.073' AS DateTime), CAST(N'2025-03-07T23:28:23.823' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ANALYSIS] OFF
GO
SET IDENTITY_INSERT [dbo].[BASELINEASSESSMENT] ON 

INSERT [dbo].[BASELINEASSESSMENT] ([Id], [Employee_Id], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [Time], [Evaluate], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (41, 14, 3, 3, 3, 3, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 0, 1, CAST(N'2025-03-07T23:23:46.117' AS DateTime), CAST(N'2025-03-07T23:28:23.810' AS DateTime), NULL, NULL)
INSERT [dbo].[BASELINEASSESSMENT] ([Id], [Employee_Id], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [Time], [Evaluate], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (42, 9, 6, 3, 3, 4.8000000000000007, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 0, 1, CAST(N'2025-03-07T23:24:27.337' AS DateTime), CAST(N'2025-03-07T23:34:11.270' AS DateTime), NULL, NULL)
INSERT [dbo].[BASELINEASSESSMENT] ([Id], [Employee_Id], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [Time], [Evaluate], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (43, 6, 2, 2, 2, 2, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 0, 1, CAST(N'2025-03-07T23:24:58.747' AS DateTime), CAST(N'2025-03-07T23:24:58.747' AS DateTime), NULL, NULL)
INSERT [dbo].[BASELINEASSESSMENT] ([Id], [Employee_Id], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [Time], [Evaluate], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (44, 5, 5, 6, 5, 5.15, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 0, 1, CAST(N'2025-03-07T23:25:19.257' AS DateTime), CAST(N'2025-03-08T17:43:00.347' AS DateTime), NULL, NULL)
INSERT [dbo].[BASELINEASSESSMENT] ([Id], [Employee_Id], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [Time], [Evaluate], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (45, 2, 3, 3, 3, 3, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 0, 1, CAST(N'2025-03-07T23:25:57.867' AS DateTime), CAST(N'2025-03-07T23:25:57.867' AS DateTime), NULL, NULL)
INSERT [dbo].[BASELINEASSESSMENT] ([Id], [Employee_Id], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [Time], [Evaluate], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (46, 3, 2, 2, 3, 2.25, CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 0, 1, CAST(N'2025-03-07T23:34:56.617' AS DateTime), CAST(N'2025-03-07T23:34:56.617' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[BASELINEASSESSMENT] OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, N'CAT001', N'CNTT', N'Công nghệ thông tin', 0, 0, 1, CAST(N'2025-02-20T10:10:05.893' AS DateTime), CAST(N'2025-02-20T10:10:05.893' AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, N'CAT002', N'Tài chính', N'Quản lý tài chính', 0, 0, 1, CAST(N'2025-02-20T10:10:05.893' AS DateTime), CAST(N'2025-02-20T10:10:05.893' AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, N'CAT003', N'Nhân sự', N'Quản lý nhân sự', 0, 0, 1, CAST(N'2025-02-20T10:10:05.893' AS DateTime), CAST(N'2025-02-20T10:10:05.893' AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, N'CAT004', N'Phát triển phần mềm', N'Công việc liên quan đến phát triển phần mềm', 0, 0, 1, CAST(N'2025-02-28T20:31:50.803' AS DateTime), CAST(N'2025-02-28T20:31:50.803' AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, N'CAT005', N'Tuyển dụng', N'Công việc liên quan đến tuyển dụng', 0, 0, 1, CAST(N'2025-02-28T20:31:50.803' AS DateTime), CAST(N'2025-02-28T20:31:50.803' AS DateTime), NULL, NULL)
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, N'CAT006', N'Bán hàng', N'Công việc liên quan đến bán hàng', 0, 0, 1, CAST(N'2025-02-28T20:31:50.803' AS DateTime), CAST(N'2025-02-28T20:31:50.803' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[DEPARTMENT] ON 

INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, N'HR', N'Phòng Nhân sự', N'Chịu trách nhiệm quản lý nhân sự', 0, 1, CAST(N'2025-02-20T10:10:05.870' AS DateTime), CAST(N'2025-02-20T10:10:05.870' AS DateTime), NULL, NULL)
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, N'IT', N'Phòng Công nghệ thông tin', N'Phát triển và bảo trì hệ thống', 0, 1, CAST(N'2025-02-20T10:10:05.870' AS DateTime), CAST(N'2025-02-20T10:10:05.870' AS DateTime), NULL, NULL)
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, N'FIN', N'Phòng Tài chính', N'Quản lý tài chính và kế toán', 0, 1, CAST(N'2025-02-20T10:10:05.870' AS DateTime), CAST(N'2025-02-20T10:10:05.870' AS DateTime), NULL, NULL)
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, N'D001', N'Phòng Kỹ thuật', N'Phòng phụ trách kỹ thuật', 0, 1, CAST(N'2025-02-28T20:31:50.753' AS DateTime), CAST(N'2025-02-28T20:31:50.753' AS DateTime), NULL, NULL)
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, N'D002', N'Phòng Nhân sự', N'Phòng phụ trách nhân sự', 0, 1, CAST(N'2025-02-28T20:31:50.753' AS DateTime), CAST(N'2025-02-28T20:31:50.753' AS DateTime), NULL, NULL)
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, N'D003', N'Phòng Kinh doanh', N'Phòng phụ trách kinh doanh', 0, 1, CAST(N'2025-02-28T20:31:50.753' AS DateTime), CAST(N'2025-02-28T20:31:50.753' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[DEPARTMENT] OFF
GO
SET IDENTITY_INSERT [dbo].[EMPLOYEE] ON 

INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, 1, 1, N'E001', N'Admin', N'Admin', N'Nam', CAST(N'1990-05-20' AS Date), N'0901234567', N'a.nguyen@example.com', CAST(N'2020-03-15' AS Date), N'Hà Nội', NULL, 0, 1, CAST(N'2025-02-20T10:10:05.890' AS DateTime), CAST(N'2025-02-20T10:10:05.890' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, 2, 3, N'E002', N'Trần', N'Thị B', N'Nữ', CAST(N'1985-07-10' AS Date), N'0912345678', N'b.tran@example.com', CAST(N'2018-06-01' AS Date), N'TP. Hồ Chí Minh', NULL, 0, 1, CAST(N'2025-02-20T10:10:05.890' AS DateTime), CAST(N'2025-02-20T10:10:05.890' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, 2, 5, N'E003', N'Nguyễn ', N'Văn C', N'Nam', CAST(N'1980-12-05' AS Date), N'0987654321', N'c.le@example.com', CAST(N'2015-09-20' AS Date), N'Đà Nẵng', NULL, 0, 1, CAST(N'2025-02-20T10:10:05.890' AS DateTime), CAST(N'2025-02-20T10:10:05.890' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, 1, 4, N'NS2', N'Đàm Quốc', N'Dân', N'Nam', NULL, N'0368966992', N'damquocdan@gmail.com', NULL, N'Tiến Bào, Phù Khê, Từ Sơn, Bắc Ninh', NULL, 0, 1, CAST(N'2025-02-21T14:40:44.950' AS DateTime), CAST(N'2025-02-21T14:40:44.950' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, 2, 2, N'IT001', N'Đàm Quốc', N'Luận', N'Nam', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, CAST(N'2025-02-21T14:41:29.383' AS DateTime), CAST(N'2025-02-21T14:41:29.383' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, 2, 1, N'1as', N'1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, CAST(N'2025-02-26T11:42:38.017' AS DateTime), CAST(N'2025-02-26T11:42:38.017' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (7, 1, 1, N'EMP001', N'Admin', N'Hệ thống', N'Male', CAST(N'1980-01-01' AS Date), N'0901234567', N'admin@worktracking.com', CAST(N'2020-01-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (8, 1, 2, N'EMP002', N'Nguyễn', N'Văn A', N'Male', CAST(N'1985-05-10' AS Date), N'0902345678', N'nguyenvana@worktracking.com', CAST(N'2021-01-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (9, 2, 2, N'EMP003', N'Trần', N'Thị B', N'Female', CAST(N'1988-07-15' AS Date), N'0903456789', N'tranthib@worktracking.com', CAST(N'2021-02-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (10, 3, 2, N'EMP004', N'Lê', N'Văn C', N'Male', CAST(N'1990-03-20' AS Date), N'0904567890', N'levanc@worktracking.com', CAST(N'2021-03-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (11, 1, 3, N'EMP005', N'Phạm', N'Thị D', N'Female', CAST(N'1995-08-25' AS Date), N'0905678901', N'phamthid@worktracking.com', CAST(N'2022-01-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (12, 1, 4, N'EMP006', N'Hoàng', N'Văn E', N'Male', CAST(N'1993-11-30' AS Date), N'0906789012', N'hoangvane@worktracking.com', CAST(N'2022-02-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (13, 2, 3, N'EMP007', N'Đỗ', N'Thị F', N'Female', CAST(N'1996-04-05' AS Date), N'0907890123', N'dothif@worktracking.com', CAST(N'2022-03-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (14, 2, 4, N'EMP008', N'Vũ', N'Văn G', N'Male', CAST(N'1994-09-10' AS Date), N'0908901234', N'vuvang@worktracking.com', CAST(N'2022-04-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (15, 3, 3, N'EMP009', N'Bùi', N'Thị H', N'Female', CAST(N'1997-12-15' AS Date), N'0909012345', N'buithih@worktracking.com', CAST(N'2022-05-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (16, 3, 4, N'EMP010', N'Ngô', N'Văn I', N'Male', CAST(N'1992-06-20' AS Date), N'0910123456', N'ngovani@worktracking.com', CAST(N'2022-06-01' AS Date), NULL, NULL, 0, 1, CAST(N'2025-02-28T20:31:50.793' AS DateTime), CAST(N'2025-02-28T20:31:50.793' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[EMPLOYEE] OFF
GO
SET IDENTITY_INSERT [dbo].[JOB] ON 

INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (221, 2, 1, N'Thiết kế cơ sở dữ liệu ', N'Thiết kế cơ sở dữ liệu  ', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 3, 3, 3, 3, 3, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (222, 3, 1, N'Thiết kế cơ sở dữ liệu ', N'Thiết kế cơ sở dữ liệu  ', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 4, 0, 0, 0, 0, NULL, CAST(N'2025-03-07T23:23:27.030' AS DateTime), 0, 1, CAST(N'2025-03-07T23:23:27.030' AS DateTime), CAST(N'2025-03-07T23:23:27.027' AS DateTime), N'manageProject', NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (223, 5, 1, N'Thiết kế cơ sở dữ liệu ', N'Thiết kế cơ sở dữ liệu  ', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 3, 2, 2, 2, 2, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (224, 6, 1, N'Thiết kế cơ sở dữ liệu ', N'Thiết kế cơ sở dữ liệu  ', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 1, 2, 2, 2, 2, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (225, 9, 1, N'Thiết kế cơ sở dữ liệu ', N'Thiết kế cơ sở dữ liệu  ', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 3, 3, 1, 1, 2.2, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (226, 13, 1, N'Thiết kế cơ sở dữ liệu ', N'Thiết kế cơ sở dữ liệu  ', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 2, 0, 0, 0, 0, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (227, 14, 1, N'Thiết kế cơ sở dữ liệu ', N'Thiết kế cơ sở dữ liệu  ', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 1, 1, 1, 1, 1, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (228, 2, 3, N'Đào tạo nhân sự', N'Đào tạo nhân sự', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 4, 0, 0, 0, 0, NULL, CAST(N'2025-03-07T23:27:32.957' AS DateTime), 0, 1, CAST(N'2025-03-07T23:27:32.957' AS DateTime), CAST(N'2025-03-07T23:27:32.963' AS DateTime), N'manageProject', NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (229, 3, 3, N'Đào tạo nhân sự', N'Đào tạo nhân sự', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 3, 2, 2, 3, 2.25, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (230, 5, 3, N'Đào tạo nhân sự', N'Đào tạo nhân sự', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 1, 2, 3, 2, 2.15, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (231, 6, 3, N'Đào tạo nhân sự', N'Đào tạo nhân sự', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 4, 0, 0, 0, 0, NULL, CAST(N'2025-03-07T23:27:32.993' AS DateTime), 0, 1, CAST(N'2025-03-07T23:27:32.993' AS DateTime), CAST(N'2025-03-07T23:27:32.990' AS DateTime), N'manageProject', NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (232, 9, 3, N'Đào tạo nhân sự', N'Đào tạo nhân sự', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 3, 3, 2, 2, 2.6, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (233, 13, 3, N'Đào tạo nhân sự', N'Đào tạo nhân sự', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 2, 0, 0, 0, 0, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (234, 14, 3, N'Đào tạo nhân sự', N'Đào tạo nhân sự', CAST(N'2025-03-07' AS Date), CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), 1, 2, 2, 2, 2, NULL, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (235, 5, 4, N'phát triển tiếp ', N'phát triển tiếp ', CAST(N'2025-03-08' AS Date), CAST(N'2025-03-09' AS Date), CAST(N'2025-03-10' AS Date), CAST(N'2025-03-11' AS Date), 1, 1, 1, 1, 1, NULL, CAST(N'2025-03-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[JOB] OFF
GO
SET IDENTITY_INSERT [dbo].[POSITION] ON 

INSERT [dbo].[POSITION] ([Id], [Name], [Description], [Status], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, N'Admin', N'Quản lý toàn hệ thống', 1, 0, 1, CAST(N'2025-02-20T10:10:05.887' AS DateTime), CAST(N'2025-02-20T10:10:05.887' AS DateTime), NULL, NULL)
INSERT [dbo].[POSITION] ([Id], [Name], [Description], [Status], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, N'Giám đốc	', N'Người điều hành công ty', 1, 0, 1, CAST(N'2025-02-20T10:10:05.887' AS DateTime), CAST(N'2025-02-20T10:10:05.887' AS DateTime), NULL, NULL)
INSERT [dbo].[POSITION] ([Id], [Name], [Description], [Status], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, N'Quản lý', N'Quản lý phòng ban', 0, 0, 1, CAST(N'2025-02-20T10:10:05.887' AS DateTime), CAST(N'2025-02-20T10:10:05.887' AS DateTime), NULL, NULL)
INSERT [dbo].[POSITION] ([Id], [Name], [Description], [Status], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, N'Nhân viên', N'Người dùng', 0, 0, 1, CAST(N'2025-02-28T20:31:50.733' AS DateTime), CAST(N'2025-02-28T20:31:50.733' AS DateTime), NULL, NULL)
INSERT [dbo].[POSITION] ([Id], [Name], [Description], [Status], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, N'Quản lý nhân sự', N'Quản lý nhân sự', 0, 0, 1, CAST(N'2025-03-02T14:28:10.930' AS DateTime), CAST(N'2025-03-02T14:28:10.930' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[POSITION] OFF
GO
SET IDENTITY_INSERT [dbo].[SYSTEMSW] ON 

INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, N'MaxLoginAttempts', N'5', N'Số lần đăng nhập sai tối đa', 0, 1, CAST(N'2025-02-20T10:10:05.903' AS DateTime), CAST(N'2025-02-20T10:10:05.903' AS DateTime), NULL, NULL)
INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, N'SessionTimeout', N'30', N'Thời gian hết hạn phiên làm việc', 0, 1, CAST(N'2025-02-20T10:10:05.903' AS DateTime), CAST(N'2025-02-20T10:10:05.903' AS DateTime), NULL, NULL)
INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, N'AllowGuestAccess', N'1', N'Cho phép khách truy cập', 0, 1, CAST(N'2025-02-20T10:10:05.903' AS DateTime), CAST(N'2025-02-20T10:10:05.903' AS DateTime), NULL, NULL)
INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, N'AdminSystem', N'1', N'Đăng nhập area admin', 0, 1, CAST(N'2025-03-02T14:20:14.350' AS DateTime), CAST(N'2025-03-02T14:20:14.350' AS DateTime), NULL, NULL)
INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, N'EmployeeSystem', N'4', N'Đăng nhập area EmployeeSystem ', 0, 1, CAST(N'2025-03-02T14:20:25.553' AS DateTime), CAST(N'2025-03-02T14:20:25.553' AS DateTime), NULL, NULL)
INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, N'HRManager', N'5', N'Đăng nhập area HRManager', 0, 1, CAST(N'2025-03-02T14:20:42.680' AS DateTime), CAST(N'2025-03-02T14:20:42.680' AS DateTime), NULL, NULL)
INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (7, N'ProjectManager', N'3', N'Đăng nhập area ProjectManager', 0, 1, CAST(N'2025-03-02T14:20:43.697' AS DateTime), CAST(N'2025-03-02T14:20:43.697' AS DateTime), NULL, NULL)
INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (8, N'HRDepartment', N'2', N'Đăng nhập area HRManager', 0, 1, CAST(N'2025-03-02T15:01:01.783' AS DateTime), CAST(N'2025-03-02T15:01:01.783' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[SYSTEMSW] OFF
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, N'admin', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 1, 0, 1, CAST(N'2025-02-20T10:10:05.907' AS DateTime), CAST(N'2025-03-02T15:15:05.547' AS DateTime), NULL, N'1')
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, N'manageProject', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 2, 0, 1, CAST(N'2025-02-20T10:10:05.907' AS DateTime), CAST(N'2025-02-20T10:10:05.907' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, N'manageHr', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 3, 0, 1, CAST(N'2025-02-20T10:10:05.907' AS DateTime), CAST(N'2025-02-20T10:10:05.907' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, N'employee', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 4, 0, 1, CAST(N'2025-02-21T14:44:39.890' AS DateTime), CAST(N'2025-02-21T14:44:39.890' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, N'luan', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 5, 0, 1, CAST(N'2025-02-21T14:44:52.370' AS DateTime), CAST(N'2025-02-21T14:44:52.370' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, N'admin1', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 1, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-03-02T11:26:53.803' AS DateTime), NULL, N'6')
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (7, N'nguyenvana', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 2, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (8, N'tranthib', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 3, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (9, N'levanc', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 4, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (10, N'phamthid', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 5, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (11, N'hoangvane', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 6, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (12, N'dothif', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 7, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (13, N'vuvang', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 8, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (14, N'buithih', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 9, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (15, N'ngovani', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 10, 0, 1, CAST(N'2025-02-28T20:31:51.263' AS DateTime), CAST(N'2025-02-28T20:31:51.263' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CATEGORY__A25C5AA7B090A1DF]    Script Date: 3/8/2025 5:56:54 PM ******/
ALTER TABLE [dbo].[CATEGORY] ADD UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DEPARTME__A25C5AA719582B3B]    Script Date: 3/8/2025 5:56:54 PM ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__EMPLOYEE__A25C5AA71E2A89E4]    Script Date: 3/8/2025 5:56:54 PM ******/
ALTER TABLE [dbo].[EMPLOYEE] ADD UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__USERS__C9F284567D6A4C40]    Script Date: 3/8/2025 5:56:54 PM ******/
ALTER TABLE [dbo].[USERS] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT ((0)) FOR [Ontime]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT ((0)) FOR [Late]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT ((0)) FOR [Overdue]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT ((0)) FOR [Processing]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[ANALYSIS] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT ((0)) FOR [VolumeAssessment]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT ((0)) FOR [ProgressAssessment]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT ((0)) FOR [QualityAssessment]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT ((0)) FOR [SummaryOfReviews]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT ((0)) FOR [Id_Parent]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[DEPARTMENT] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[DEPARTMENT] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[DEPARTMENT] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[DEPARTMENT] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[DEPARTMENT] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[DEPARTMENT] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT (NULL) FOR [Deadline1]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT (NULL) FOR [Deadline2]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT (NULL) FOR [Deadline3]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT (NULL) FOR [CompletionDate]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT ((0)) FOR [VolumeAssessment]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT ((0)) FOR [ProgressAssessment]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT ((0)) FOR [QualityAssessment]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT ((0)) FOR [SummaryOfReviews]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[JOB] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[POSITION] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[POSITION] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[POSITION] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[POSITION] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[POSITION] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[POSITION] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[POSITION] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[SYSTEMSW] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[SYSTEMSW] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[SYSTEMSW] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[SYSTEMSW] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[SYSTEMSW] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[SYSTEMSW] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT (getdate()) FOR [Update_Date]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT (NULL) FOR [Create_By]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT (NULL) FOR [Update_By]
GO
ALTER TABLE [dbo].[ANALYSIS]  WITH CHECK ADD FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[EMPLOYEE] ([Id])
GO
ALTER TABLE [dbo].[BASELINEASSESSMENT]  WITH CHECK ADD FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[EMPLOYEE] ([Id])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([Department_Id])
REFERENCES [dbo].[DEPARTMENT] ([Id])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([Position_Id])
REFERENCES [dbo].[POSITION] ([Id])
GO
ALTER TABLE [dbo].[JOB]  WITH CHECK ADD FOREIGN KEY([Category_Id])
REFERENCES [dbo].[CATEGORY] ([Id])
GO
ALTER TABLE [dbo].[JOB]  WITH CHECK ADD FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[EMPLOYEE] ([Id])
GO
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[EMPLOYEE] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[sp_DanhGiaBaseLine]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DanhGiaBaseLine]
	@Department_Id int = NULL,
	@Position_Id int = NULL,
	@DateStart date = NULL,
	@DateEnd date = NULL,
	@Order nvarchar(255)
AS
BEGIN
	DECLARE @strSQL nvarchar(2000)
	SET @strSQL =N'select E.Id, D.Name AS DepartmentName, P.Name AS PositionName, E.First_Name + E.Last_Name AS Name,SUM(VolumeAssessment) AS VolumeAssessment
					,SUM(ProgressAssessment) AS ProgressAssessment,SUM(QualityAssessment) AS QualityAssessment, SUM(SummaryOfReviews) AS SummaryOfReviews,
					IIF(SUM(SummaryOfReviews)>45, N''Đạt baseline'', N''Không đạt baseline'')
					from [dbo].[EMPLOYEE] E
					inner join [dbo].[JOB] J  ON J.Employee_Id = E.Id
					inner join DEPARTMENT D  ON D.Id = E.Department_Id
					inner join POSITION P  ON P.Id = E.Position_Id
					WHERE 1 = 1'

		if(@Department_Id IS NOT NULL)
		BEGIN
				SET @strSQL += ' AND E.Department_Id = ' + CONVERT(varchar(20), @Department_Id)
		END
		if(@Position_Id IS NOT NULL)
		BEGIN
				SET @strSQL += ' AND E.Position_Id = ' + CONVERT(varchar(20), @Position_Id) 
		END
		if(@DateStart IS NOT NULL)
		BEGIN
				SET @strSQL += ' AND J.CompletionDate > ' + CONVERT(varchar(20), @DateStart,103) 
		END
		if(@DateEnd IS NOT NULL)
		BEGIN
				SET @strSQL += ' AND J.CompletionDate < ' + CONVERT(varchar(20), @DateEnd,103) 
		END

		SET @strSQL += ' GROUP BY E.Id, D.Name, P.Name , E.First_Name, E.Last_Name '

		if(@Order IS NOT NULL)
		BEGIN
				SET @strSQL += ' ORDER BY ' + @Order
		END
		ELSE
			BEGIN
				SET @strSQL += ' ORDER BY E.First_Name, E.Last_Name,E.Id, D.Name, P.Name '
		END
		print @strSQL
		exec (@strSQL)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_PhanTichNhanSu]    Script Date: 3/8/2025 5:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_PhanTichNhanSu]
	@Department_Id int = NULL,
	@Position_Id int = NULL,
	@DateStart date = NULL,
	@DateEnd date = NULL,
	@Order nvarchar(255)
AS
BEGIN
	DECLARE @strSQL nvarchar(2000)
	SET @strSQL =N'select E.Id, D.Name AS DepartmentName, P.Name AS PositionName, E.First_Name + E.Last_Name AS Name
					,COUNT(J.Status) AS Tong,SUM(IIF(J.Status=3,1,0)) AS DungHan,SUM(IIF(J.Status=4,1,0)) AS TreHan
					,SUM(IIF(J.Status=2,1,0)) AS QuaNgay,SUM(IIF(J.Status=1,1,0)) AS DangXuLy
					from [dbo].[EMPLOYEE] E
					inner join [dbo].[JOB] J  ON J.Employee_Id = E.Id
					inner join DEPARTMENT D  ON D.Id = E.Department_Id
					inner join POSITION P  ON P.Id = E.Position_Id
					WHERE 1 = 1'

		if(@Department_Id IS NOT NULL)
		BEGIN
				SET @strSQL += ' AND E.Department_Id = ' + CONVERT(varchar(20), @Department_Id)
		END
		if(@Position_Id IS NOT NULL)
		BEGIN
				SET @strSQL += ' AND E.Position_Id = ' + CONVERT(varchar(20), @Position_Id) 
		END
		if(@DateStart IS NOT NULL)
		BEGIN
				SET @strSQL += ' AND J.CompletionDate > ' + CONVERT(varchar(20), @DateStart,103) 
		END
		if(@DateEnd IS NOT NULL)
		BEGIN
				SET @strSQL += ' AND J.CompletionDate < ' + CONVERT(varchar(20), @DateEnd,103) 
		END

		SET @strSQL += ' GROUP BY E.Id, D.Name, P.Name , E.First_Name, E.Last_Name '

		if(@Order IS NOT NULL)
		BEGIN
				SET @strSQL += ' ORDER BY ' + @Order
		END
		ELSE
			BEGIN
				SET @strSQL += ' ORDER BY E.First_Name, E.Last_Name,E.Id, D.Name, P.Name '
		END
		print @strSQL
		exec (@strSQL)
END
GO

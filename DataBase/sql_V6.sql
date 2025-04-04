USE [master]
GO
/****** Object:  Database [WorkTrackingSystem]    Script Date: 3/11/2025 9:05:52 PM ******/
CREATE DATABASE [WorkTrackingSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WorkTrackingSystem', FILENAME = N'E:\DevMaster\DATABASE\WorkTrackingSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WorkTrackingSystem_log', FILENAME = N'E:\DevMaster\DATABASE\WorkTrackingSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorkTrackingSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorkTrackingSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorkTrackingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorkTrackingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorkTrackingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorkTrackingSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WorkTrackingSystem] SET  MULTI_USER 
GO
ALTER DATABASE [WorkTrackingSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorkTrackingSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorkTrackingSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorkTrackingSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WorkTrackingSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WorkTrackingSystem]
GO
/****** Object:  Table [dbo].[ANALYSIS]    Script Date: 3/11/2025 9:05:53 PM ******/
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
/****** Object:  Table [dbo].[BASELINEASSESSMENT]    Script Date: 3/11/2025 9:05:53 PM ******/
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
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 3/11/2025 9:05:53 PM ******/
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
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 3/11/2025 9:05:53 PM ******/
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
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 3/11/2025 9:05:53 PM ******/
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
/****** Object:  Table [dbo].[JOB]    Script Date: 3/11/2025 9:05:53 PM ******/
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
/****** Object:  Table [dbo].[POSITION]    Script Date: 3/11/2025 9:05:53 PM ******/
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
/****** Object:  Table [dbo].[SYSTEMSW]    Script Date: 3/11/2025 9:05:53 PM ******/
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
/****** Object:  Table [dbo].[USERS]    Script Date: 3/11/2025 9:05:53 PM ******/
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
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, N'TTNCTT', N'TTNCTT', N'TTNCTT', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, N'CT', N'Cải tạo', N'Cải tạo', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, N'KY', N'Khoa Y', N'Khoa Y', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, N'KH', N'Khác', N'Khác', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, N'BC', N'Báo cáo', N'Báo cáo', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, N'VB', N'Văn bản', N'Văn bản', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (7, N'ED', N'EDVS', N'EDVS', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (8, N'QH', N'QH TMB', N'QH TMB', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (9, N'HC', N'Hành chính', N'Hành chính', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (10, N'KT', N'Kiểm toán', N'Kiểm toán', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (11, N'TH', N'Tổng hợp', N'Tổng hợp', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (12, N'DC', N'Điều chỉnh dự án', N'Điều chỉnh dự án', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (13, N'MT', N'MTXH', N'MTXH', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (14, N'TT', N'Thanh toán', N'Thanh toán', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[CATEGORY] ([Id], [Code], [Name], [Description], [Id_Parent], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (15, N'DT', N'Đấu thầu', N'Đấu thầu', 0, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[DEPARTMENT] ON 

INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, N'HR', N'Phòng Nhân sự', N'Chịu trách nhiệm quản lý nhân sự', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, N'IT', N'Phòng Công nghệ thông tin', N'Phát triển và bảo trì hệ thống', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, N'TC-KT', N'Phòng Tài chính', N'Quản lý tài chính và kế toán', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, N'KT', N'Phòng Kỹ thuật', N'Phòng phụ trách kỹ thuật', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, N'KD', N'Phòng Kinh doanh', N'Phòng phụ trách kinh doanh', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[DEPARTMENT] ([Id], [Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, N'QL', N'Phòng Quản Lý', N'Phòng Quản Lý', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
SET IDENTITY_INSERT [dbo].[DEPARTMENT] OFF
GO
SET IDENTITY_INSERT [dbo].[EMPLOYEE] ON 

INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, 1, 1, N'E001', N'Admin', N'Admin', N'Nam', CAST(N'1990-05-20' AS Date), N'0901234567', N'a.nguyen@example.com', CAST(N'2020-03-15' AS Date), N'Hà Nội', NULL, 0, 1, CAST(N'2025-02-20T10:10:05.890' AS DateTime), CAST(N'2025-02-20T10:10:05.890' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, 2, 3, N'E002', N'Trần', N'Manage', N'Nữ', CAST(N'1985-07-10' AS Date), N'0912345678', N'b.tran@example.com', CAST(N'2018-06-01' AS Date), N'TP. Hồ Chí Minh', NULL, 0, 1, CAST(N'2025-02-20T10:10:05.890' AS DateTime), CAST(N'2025-02-20T10:10:05.890' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, 1, 5, N'E003', N'Nguyễn ', N'HR', N'Nam', CAST(N'1980-12-05' AS Date), N'0987654321', N'c.le@example.com', CAST(N'2015-09-20' AS Date), N'Đà Nẵng', NULL, 0, 1, CAST(N'2025-02-20T10:10:05.890' AS DateTime), CAST(N'2025-02-20T10:10:05.890' AS DateTime), NULL, NULL)
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, 2, 4, N'EM001', N'Lê ', N'Duy Bình', N'Male', CAST(N'1900-01-01' AS Date), N'901234567', N'lebinh@worktracking.com', CAST(N'1900-01-01' AS Date), N'Hà Nội', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, 2, 4, N'EM002', N'Trần', N'Đức Huy', N'Male', CAST(N'1900-01-01' AS Date), N'902345678', N'tranhuy@worktracking.com', CAST(N'1900-01-01' AS Date), N'TP. Hồ Chí Minh', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, 4, 4, N'EM003', N'Hoàng', N'Văn Mạnh', N'Male', CAST(N'1900-01-01' AS Date), N'903456789', N'hoangmanh@worktracking.com', CAST(N'1900-01-01' AS Date), N'Đà Nẵng', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (7, 4, 4, N'EM004', N'Nguyễn ', N'Thanh Vũ', N'Male', CAST(N'1900-01-01' AS Date), N'904567890', N'nguyenvu@worktracking.com', CAST(N'1900-01-01' AS Date), N'Tiến Bào, Phù Khê, Từ Sơn, Bắc Ninh', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (8, 4, 5, N'EM005', N'Nguyễn ', N'Thanh Trúc', N'Female', CAST(N'1900-01-01' AS Date), N'905678901', N'nguyentruc@worktracking.com', CAST(N'1900-01-01' AS Date), N'Bắc Giang', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (9, 4, 5, N'EM006', N'Nguyễn ', N'Thị Hoa Phượng', N'Female', CAST(N'1900-01-01' AS Date), N'906789012', N'nguyenphuong@worktracking.com', CAST(N'1900-01-01' AS Date), N'Hà Nội', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (10, 4, 5, N'EM007', N'Đào', N'Khánh Vy', N'Female', CAST(N'1900-01-01' AS Date), N'907890123', N'daovy@worktracking.com', CAST(N'1900-01-01' AS Date), N'Lào Cai', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (11, 4, 5, N'EM008', N'Nguyễn ', N'Phi Long', N'Male', CAST(N'1900-01-01' AS Date), N'908901234', N'nguyenlong@worktracking.com', CAST(N'1900-01-01' AS Date), N'Lạng Sơn', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (12, 1, 5, N'EM009', N'Đào', N'Duy Dũng', N'Other', CAST(N'1900-01-01' AS Date), N'909012345', N'daodung@worktracking.com', CAST(N'1900-01-01' AS Date), N'Thanh Hóa', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (13, 4, 3, N'EM010', N'Nguyễn ', N'Quốc Cường', N'Other', CAST(N'1900-01-01' AS Date), N'910123456', N'nguyencuong@worktracking.com', CAST(N'1900-01-01' AS Date), N'Hải Phòng', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[EMPLOYEE] ([Id], [Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [Address], [Avatar], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (14, 6, 1, N'EM011', N'Bùi ', N'Huy Hoàng ', N'Male', CAST(N'1900-01-01' AS Date), N'910123456', N'buihoang@worktracking.com', CAST(N'1900-01-01' AS Date), N'Hải Phòng', N'', 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
SET IDENTITY_INSERT [dbo].[EMPLOYEE] OFF
GO
SET IDENTITY_INSERT [dbo].[JOB] ON 

INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, 5, 5, N'Dự thảo báo cáo kết quả lựa chọn nhà thầu cho ĐHQG-HCM', N'Dự thảo báo cáo kết quả lựa chọn nhà thầu cho ĐHQG-HCM', CAST(N'2025-05-25' AS Date), NULL, NULL, CAST(N'2025-05-25' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-05-25T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, 5, 6, N'Dự thảo và trình ký CV gửi nhà thầu CW-02 vv triển khai công việc thuộc HĐ', N'Dự thảo và trình ký CV gửi nhà thầu CW-02 vv triển khai công việc thuộc HĐ', CAST(N'2025-03-07' AS Date), NULL, NULL, CAST(N'2025-03-07' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, 5, 14, N'Rà soát hồ sơ thanh toán gói TV ĐL MTXH', N'Rà soát hồ sơ thanh toán gói TV ĐL MTXH', CAST(N'2025-03-07' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, 5, 14, N'Chỉnh sửa quy trình thanh toán', N'Chỉnh sửa quy trình thanh toán', CAST(N'2025-03-14' AS Date), NULL, NULL, CAST(N'2025-03-14' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-14T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, 5, 15, N'G-06: Nghiên cứu quy định về điều chỉnh giá gói thầu', N'G-06: Nghiên cứu quy định về điều chỉnh giá gói thầu', CAST(N'2025-03-30' AS Date), NULL, NULL, CAST(N'2025-03-30' AS Date), 1, 0.5, 3, 3, 1.5, 100, CAST(N'2025-03-30T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, 5, 15, N'G:06 Dự thảo QĐ phê duyệt cập nhật giá gói thầu', N'G:06 Dự thảo QĐ phê duyệt cập nhật giá gói thầu', CAST(N'2025-03-07' AS Date), NULL, NULL, CAST(N'2025-03-07' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (7, 5, 15, N'G:06 Dự thảo Tờ trình phê duyệt cập nhật giá gói thầu', N'G:06 Dự thảo Tờ trình phê duyệt cập nhật giá gói thầu', CAST(N'2025-04-12' AS Date), NULL, NULL, CAST(N'2025-04-12' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-04-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (8, 5, 15, N'G-06: Chỉnh sửa HSMT theo ý kiến NOL có điều kiện trên STEP', N'G-06: Chỉnh sửa HSMT theo ý kiến NOL có điều kiện trên STEP', CAST(N'2025-03-02' AS Date), NULL, NULL, CAST(N'2025-03-02' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-02T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (9, 5, 15, N'G:06: SPN', N'G:06: SPN', CAST(N'2025-03-07' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (10, 5, 15, N'Cập nhật STEP bước mở thầu gói CW-01', N'Cập nhật STEP bước mở thầu gói CW-01', CAST(N'2025-03-07' AS Date), NULL, NULL, CAST(N'2025-03-07' AS Date), 1, 0.5, 2, 2, 1.1, 100, CAST(N'2025-03-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (11, 5, 13, N'Triển khai tập huấn MTXH nhà thầu CW-02', N'Triển khai tập huấn MTXH nhà thầu CW-02', CAST(N'2025-03-07' AS Date), NULL, NULL, CAST(N'2025-03-07' AS Date), 1, 2, 3, 3, 2.4, 100, CAST(N'2025-03-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (12, 5, 15, N'Tổng hợp quá trình triển khai proposals của gói G-08', N'Tổng hợp quá trình triển khai proposals của gói G-08', CAST(N'2025-03-13' AS Date), NULL, NULL, CAST(N'2025-03-13' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-13T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (13, 5, 15, N'Cập nhật roadmap', N'Cập nhật roadmap', CAST(N'2025-03-07' AS Date), NULL, NULL, CAST(N'2025-03-07' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (14, 5, 15, N'Dự thảo KHLCNT CW-03', N'Dự thảo KHLCNT CW-03', CAST(N'2025-03-07' AS Date), NULL, NULL, CAST(N'2025-03-07' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (15, 5, 15, N'Dịch NOL BCĐG CW-02 cho Kho Bạc', N'Dịch NOL BCĐG CW-02 cho Kho Bạc', CAST(N'2025-03-07' AS Date), NULL, NULL, CAST(N'2025-03-07' AS Date), 1, 0.5, 2, 2, 1.1, 100, CAST(N'2025-03-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (16, 5, 15, N'Trả lời kiến nghị của nhà thầu CW-01', N'Trả lời kiến nghị của nhà thầu CW-01', CAST(N'2025-03-08' AS Date), NULL, NULL, CAST(N'2025-03-08' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-08T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (17, 5, 15, N'Cập nhật CW-03 trên STEP', N'Cập nhật CW-03 trên STEP', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 1, 3, 2, 1.55, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (18, 5, 13, N'Rà soát C-ESMP CW-02', N'Rà soát C-ESMP CW-02', CAST(N'2025-03-10' AS Date), NULL, NULL, CAST(N'2025-03-10' AS Date), 1, 3, 3, 3, 3, 100, CAST(N'2025-03-10T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (19, 5, 4, N'Lập file quản lý CV đến CV đi cần xử lý', N'Lập file quản lý CV đến CV đi cần xử lý', CAST(N'2025-03-11' AS Date), NULL, NULL, CAST(N'2025-03-11' AS Date), 1, 1, 3, 2, 1.55, 100, CAST(N'2025-03-11T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (20, 5, 15, N'Viết lại proposals cho G-08 và G-09', N'Viết lại proposals cho G-08 và G-09', CAST(N'2025-03-12' AS Date), NULL, NULL, CAST(N'2025-03-12' AS Date), 1, 3, 3, 3, 3, 100, CAST(N'2025-03-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (21, 5, 15, N'Nghiên cứu thiết bị nào sử dụng vốn ODA. (Đọc hiệp định và Luật)', N'Nghiên cứu thiết bị nào sử dụng vốn ODA. (Đọc hiệp định và Luật)', CAST(N'2025-03-13' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (22, 5, 5, N'Báo cáo a Bình QLHĐ CS-01 và CS-02', N'Báo cáo a Bình QLHĐ CS-01 và CS-02', CAST(N'2025-03-14' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (23, 5, 15, N'Rà soát roadmap đấu thầu', N'Rà soát roadmap đấu thầu', CAST(N'2025-03-15' AS Date), NULL, NULL, CAST(N'2025-03-15' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-15T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (24, 5, 15, N'Soạn Quy trình để có được proposals G-08 và G-09', N'Soạn Quy trình để có được proposals G-08 và G-09', CAST(N'2025-03-16' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (25, 5, 15, N'Cập nhật hsmt G-06 theo giá dự toán mới nhất', N'Cập nhật hsmt G-06 theo giá dự toán mới nhất', CAST(N'2025-03-17' AS Date), NULL, NULL, CAST(N'2025-03-17' AS Date), 1, 1, 2, 2, 1.4, 100, CAST(N'2025-03-17T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (26, 5, 15, N'Lập ma trận giải trình góp ý CW-03', N'Lập ma trận giải trình góp ý CW-03', CAST(N'2025-03-18' AS Date), NULL, NULL, CAST(N'2025-03-18' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-18T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (27, 5, 15, N'Dự thảo Tờ trình và Quyết định phê duyệt hsmt G-06', N'Dự thảo Tờ trình và Quyết định phê duyệt hsmt G-06', CAST(N'2025-03-19' AS Date), NULL, NULL, CAST(N'2025-03-19' AS Date), 1, 2, 3, 3, 2.4, 100, CAST(N'2025-03-19T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (28, 5, 5, N'Rà soát báo cáo thẩm định hsmt G-06 của tư vấn', N'Rà soát báo cáo thẩm định hsmt G-06 của tư vấn', CAST(N'2025-03-20' AS Date), NULL, NULL, CAST(N'2025-03-20' AS Date), 1, 0.5, 2, 2, 1.1, 100, CAST(N'2025-03-20T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (29, 5, 4, N'Cập nhật file IPMU Tasks', N'Cập nhật file IPMU Tasks', CAST(N'2025-03-21' AS Date), NULL, NULL, CAST(N'2025-03-21' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-21T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (30, 5, 15, N'Bổ sung yêu cầu ủy quyền của nhà sản xuất vào hsmt G-06', N'Bổ sung yêu cầu ủy quyền của nhà sản xuất vào hsmt G-06', CAST(N'2025-03-22' AS Date), NULL, NULL, CAST(N'2025-03-22' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-22T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (31, 5, 15, N'Soạn email gửi step hsmt CW-03', N'Soạn email gửi step hsmt CW-03', CAST(N'2025-03-23' AS Date), NULL, NULL, CAST(N'2025-03-23' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-03-23T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (32, 6, 2, N'Họp giao ban trường CNTT và NV', N'Họp giao ban trường CNTT và NV', CAST(N'2025-03-24' AS Date), NULL, NULL, CAST(N'2025-03-24' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-24T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (33, 6, 2, N'Họp giao ban trường CNTT và NV', N'Họp giao ban trường CNTT và NV', CAST(N'2025-03-25' AS Date), NULL, NULL, CAST(N'2025-03-25' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-25T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (34, 6, 2, N'Họp giao ban trường CNTT và NV', N'Họp giao ban trường CNTT và NV', CAST(N'2025-03-26' AS Date), NULL, NULL, CAST(N'2025-03-26' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-26T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (35, 6, 2, N'Họp giao ban trường CNTT và NV', N'Họp giao ban trường CNTT và NV', CAST(N'2025-03-27' AS Date), NULL, NULL, CAST(N'2025-03-27' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-27T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (36, 6, 2, N'Họp giao ban trường KHTN và BK-KTL', N'Họp giao ban trường KHTN và BK-KTL', CAST(N'2025-03-28' AS Date), NULL, NULL, CAST(N'2025-03-28' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-28T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (37, 6, 2, N'Họp giao ban trường KHTN và BK-KTL', N'Họp giao ban trường KHTN và BK-KTL', CAST(N'2025-03-29' AS Date), NULL, NULL, CAST(N'2025-03-29' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-29T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (38, 6, 2, N'Họp giao ban trường KHTN và BK-KTL', N'Họp giao ban trường KHTN và BK-KTL', CAST(N'2025-03-30' AS Date), NULL, NULL, CAST(N'2025-03-30' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-30T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (39, 6, 2, N'Họp giao ban trường KHTN và BK-KTL', N'Họp giao ban trường KHTN và BK-KTL', CAST(N'2025-03-31' AS Date), NULL, NULL, CAST(N'2025-03-31' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-31T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (40, 6, 2, N'Phối hợp kiểm tra bàn giao 02  phòng trường NV', N'Phối hợp kiểm tra bàn giao 02  phòng trường NV', CAST(N'2025-04-01' AS Date), NULL, NULL, CAST(N'2025-04-01' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (41, 6, 2, N'Phối hợp kiểm tra bàn giao zone 02 nhà E trường KHTN', N'Phối hợp kiểm tra bàn giao zone 02 nhà E trường KHTN', CAST(N'2025-04-02' AS Date), NULL, NULL, CAST(N'2025-04-02' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-02T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (42, 6, 2, N'Phối hơp kiểm tra công tác bàn giao mặt bằng Zone 3 Trường KHTN', N'Phối hơp kiểm tra công tác bàn giao mặt bằng Zone 3 Trường KHTN', CAST(N'2025-04-03' AS Date), NULL, NULL, CAST(N'2025-04-03' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-04-03T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (43, 6, 2, N'Phối hơp kiểm tra công tác nghiệm thu cốt thép móng, giằng móng trục 11-17/F-G TTNCTT', N'Phối hơp kiểm tra công tác nghiệm thu cốt thép móng, giằng móng trục 11-17/F-G TTNCTT', CAST(N'2025-04-04' AS Date), NULL, NULL, CAST(N'2025-04-04' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-04-04T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (44, 6, 2, N'Phối hơp kiểm tra công tác nghiệm thu ván khuôn móng, giằng móng trục 11-17/F-G TTNCTT', N'Phối hơp kiểm tra công tác nghiệm thu ván khuôn móng, giằng móng trục 11-17/F-G TTNCTT', CAST(N'2025-04-05' AS Date), NULL, NULL, CAST(N'2025-04-05' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-05T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (45, 6, 2, N'Phối hơp kiểm tra công tác thi công hiện trường và biện pháp thi công cùng Shop thép phần móng hầm TTNCTT', N'Phối hơp kiểm tra công tác thi công hiện trường và biện pháp thi công cùng Shop thép phần móng hầm TTNCTT', CAST(N'2025-04-06' AS Date), NULL, NULL, CAST(N'2025-04-06' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2025-04-06T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (46, 6, 2, N'Phối hơp kiểm tra nghiệm thu bả, xả matit ngoài nhà E zone 3 Trường KHTN', N'Phối hơp kiểm tra nghiệm thu bả, xả matit ngoài nhà E zone 3 Trường KHTN', CAST(N'2025-04-07' AS Date), NULL, NULL, CAST(N'2025-04-07' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (47, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi cầu thang 1 Trường KHTN', N'Phối hơp kiểm tra nghiệm thu cạo sủi cầu thang 1 Trường KHTN', CAST(N'2025-04-08' AS Date), NULL, NULL, CAST(N'2025-04-08' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-08T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (48, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi cầu thang 2 Trường KHTN', N'Phối hơp kiểm tra nghiệm thu cạo sủi cầu thang 2 Trường KHTN', CAST(N'2025-04-09' AS Date), NULL, NULL, CAST(N'2025-04-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (49, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi Hành lang trục A-B/12-21 lầu 1,2 nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu cạo sủi Hành lang trục A-B/12-21 lầu 1,2 nhà A Trường KTL', CAST(N'2025-04-10' AS Date), NULL, NULL, CAST(N'2025-04-10' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-10T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (50, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi Hành lang trục A-B/12-21 lầu 1,2 nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu cạo sủi Hành lang trục A-B/12-21 lầu 1,2 nhà A Trường KTL', CAST(N'2025-04-11' AS Date), NULL, NULL, CAST(N'2025-04-11' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-11T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (51, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi Hành lang trục A-B/12-21 lầu 3,4 nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu cạo sủi Hành lang trục A-B/12-21 lầu 3,4 nhà A Trường KTL', CAST(N'2025-04-12' AS Date), NULL, NULL, CAST(N'2025-04-12' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (52, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi Hành lang trục A-B/3-21 lầu 5,6,7 nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu cạo sủi Hành lang trục A-B/3-21 lầu 5,6,7 nhà A Trường KTL', CAST(N'2025-04-13' AS Date), NULL, NULL, CAST(N'2025-04-13' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-13T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (53, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà E zone 3 Trường KHTN', N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà E zone 3 Trường KHTN', CAST(N'2025-04-14' AS Date), NULL, NULL, CAST(N'2025-04-14' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-14T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (54, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà trục 1-2/B*-E nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà trục 1-2/B*-E nhà A Trường KTL', CAST(N'2025-04-15' AS Date), NULL, NULL, CAST(N'2025-04-15' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-15T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (55, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà trục 22-23/B*-E nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà trục 22-23/B*-E nhà A Trường KTL', CAST(N'2025-04-20' AS Date), NULL, NULL, CAST(N'2025-04-20' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-20T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (56, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà trục E/6-8&17-19 nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà trục E/6-8&17-19 nhà A Trường KTL', CAST(N'2025-06-13' AS Date), NULL, NULL, CAST(N'2025-06-13' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-06-13T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (57, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà trục E/8-10&13-15 nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu cạo sủi ngoài nhà trục E/8-10&13-15 nhà A Trường KTL', CAST(N'2025-04-18' AS Date), NULL, NULL, CAST(N'2025-04-18' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-18T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (58, 6, 2, N'Phối hơp kiểm tra nghiệm thu cạo sủi phòng học zone3 nhà E Trường KHTN', N'Phối hơp kiểm tra nghiệm thu cạo sủi phòng học zone3 nhà E Trường KHTN', CAST(N'2025-04-19' AS Date), NULL, NULL, CAST(N'2025-04-19' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-19T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (59, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác bả, xả matit trước khi sơn lót P. A32 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác bả, xả matit trước khi sơn lót P. A32 Trường NV', CAST(N'2025-04-20' AS Date), NULL, NULL, CAST(N'2025-04-20' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-20T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (60, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác bả, xả matit trước khi sơn lót P. A33 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác bả, xả matit trước khi sơn lót P. A33 Trường NV', CAST(N'2025-04-21' AS Date), NULL, NULL, CAST(N'2025-04-21' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-21T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (61, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác cạo sủi tường P. A32 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác cạo sủi tường P. A32 Trường NV', CAST(N'2025-04-22' AS Date), NULL, NULL, CAST(N'2025-04-22' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-22T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (62, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác cạo sủi tường P. A33 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác cạo sủi tường P. A33 Trường NV', CAST(N'2025-04-23' AS Date), NULL, NULL, CAST(N'2025-04-23' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-04-23T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (63, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác cạo sủi tường trong Hội trường Trường KHTN', N'Phối hơp kiểm tra nghiệm thu công tác cạo sủi tường trong Hội trường Trường KHTN', CAST(N'2025-04-02' AS Date), NULL, NULL, CAST(N'2025-04-02' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-02T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (64, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác đục nền, ghém nền, lắp đặt ống âm nền P. A33 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác đục nền, ghém nền, lắp đặt ống âm nền P. A33 Trường NV', CAST(N'2025-04-25' AS Date), NULL, NULL, CAST(N'2025-04-25' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-25T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (65, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác sơn lót P. A32 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác sơn lót P. A32 Trường NV', CAST(N'2025-04-26' AS Date), NULL, NULL, CAST(N'2025-04-26' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-26T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (66, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác sơn lót P. A33 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác sơn lót P. A33 Trường NV', CAST(N'2025-04-27' AS Date), NULL, NULL, CAST(N'2025-04-27' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-27T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (67, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác sơn nước 1 P. A32 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác sơn nước 1 P. A32 Trường NV', CAST(N'2025-04-28' AS Date), NULL, NULL, CAST(N'2025-04-28' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (68, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác sơn nước 1 P. A33 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác sơn nước 1 P. A33 Trường NV', CAST(N'2025-04-29' AS Date), NULL, NULL, CAST(N'2025-04-29' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-29T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (69, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác sơn nước 2 P. A32 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác sơn nước 2 P. A32 Trường NV', CAST(N'2025-04-30' AS Date), NULL, NULL, CAST(N'2025-04-30' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-04-30T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (70, 6, 2, N'Phối hơp kiểm tra nghiệm thu công tác sơn nước 2 P. A33 Trường NV', N'Phối hơp kiểm tra nghiệm thu công tác sơn nước 2 P. A33 Trường NV', CAST(N'2025-05-01' AS Date), NULL, NULL, CAST(N'2025-05-01' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-05-01T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (71, 6, 2, N'Phối hơp kiểm tra nghiệm thu ghém mốc và cán nền Hành lang zone 3 nhà E Trường KHTN', N'Phối hơp kiểm tra nghiệm thu ghém mốc và cán nền Hành lang zone 3 nhà E Trường KHTN', CAST(N'2025-03-06' AS Date), NULL, NULL, CAST(N'2025-03-06' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-06T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (72, 6, 2, N'Phối hơp kiểm tra nghiệm thu ghém mốc và cán nền phòng 301 Trường BK', N'Phối hơp kiểm tra nghiệm thu ghém mốc và cán nền phòng 301 Trường BK', CAST(N'2025-05-03' AS Date), NULL, NULL, CAST(N'2025-05-03' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-05-03T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (73, 6, 2, N'Phối hơp kiểm tra nghiệm thu ghém mốc và cán nền phòng học zone3 nhà E Trường KHTN', N'Phối hơp kiểm tra nghiệm thu ghém mốc và cán nền phòng học zone3 nhà E Trường KHTN', CAST(N'2025-05-04' AS Date), NULL, NULL, CAST(N'2025-05-04' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-05-04T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (74, 6, 2, N'Phối hơp kiểm tra nghiệm thu ghém nền Trường KHTN', N'Phối hơp kiểm tra nghiệm thu ghém nền Trường KHTN', CAST(N'2025-05-05' AS Date), NULL, NULL, CAST(N'2025-05-05' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-05-05T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (75, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lót ngoài nhà E zone 3 Trường KHTN', N'Phối hơp kiểm tra nghiệm thu sơn lót ngoài nhà E zone 3 Trường KHTN', CAST(N'2025-05-06' AS Date), NULL, NULL, CAST(N'2025-05-06' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-05-06T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (76, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lót ngoài nhà Trường CNTT', N'Phối hơp kiểm tra nghiệm thu sơn lót ngoài nhà Trường CNTT', CAST(N'2025-05-07' AS Date), NULL, NULL, CAST(N'2025-05-07' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-05-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (77, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lót phòng 301-302 Trường BK', N'Phối hơp kiểm tra nghiệm thu sơn lót phòng 301-302 Trường BK', CAST(N'2025-05-08' AS Date), NULL, NULL, CAST(N'2025-05-08' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-05-08T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (78, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lót phòng học zone3 nhà E Trường KHTN', N'Phối hơp kiểm tra nghiệm thu sơn lót phòng học zone3 nhà E Trường KHTN', CAST(N'2025-05-09' AS Date), NULL, NULL, CAST(N'2025-05-09' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-05-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (79, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lớp 1 ngoài nhà E zone 3 Trường KHTN', N'Phối hơp kiểm tra nghiệm thu sơn lớp 1 ngoài nhà E zone 3 Trường KHTN', CAST(N'2025-05-10' AS Date), NULL, NULL, CAST(N'2025-05-10' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-05-10T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (80, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lớp 1 phòng 210-211 Trường BK', N'Phối hơp kiểm tra nghiệm thu sơn lớp 1 phòng 210-211 Trường BK', CAST(N'2025-03-08' AS Date), NULL, NULL, CAST(N'2025-03-08' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-08T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (81, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lớp 1 phòng 303-304 Trường BK', N'Phối hơp kiểm tra nghiệm thu sơn lớp 1 phòng 303-304 Trường BK', CAST(N'2025-05-12' AS Date), NULL, NULL, CAST(N'2025-05-12' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-05-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (82, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lớp 1 phòng học zone3 nhà E Trường KHTN', N'Phối hơp kiểm tra nghiệm thu sơn lớp 1 phòng học zone3 nhà E Trường KHTN', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (83, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lớp 2 ngoài nhà E zone 3 Trường KHTN', N'Phối hơp kiểm tra nghiệm thu sơn lớp 2 ngoài nhà E zone 3 Trường KHTN', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (84, 6, 2, N'Phối hơp kiểm tra nghiệm thu sơn lớp 2 phòng học zone3 nhà E Trường KHTN', N'Phối hơp kiểm tra nghiệm thu sơn lớp 2 phòng học zone3 nhà E Trường KHTN', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (85, 6, 2, N'Phối hơp kiểm tra nghiệm thu trần, tấm Compart ngăn phòng, đá ốp lavabo WC tầng 5 nhà A Trường KTL', N'Phối hơp kiểm tra nghiệm thu trần, tấm Compart ngăn phòng, đá ốp lavabo WC tầng 5 nhà A Trường KTL', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (86, 6, 2, N'Phối hợp kiểm tra nhận mặt bằng 02 phòng  trường NV', N'Phối hợp kiểm tra nhận mặt bằng 02 phòng  trường NV', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (87, 6, 2, N'Phối hợp kiểm tra nhận mặt bằng Hội trường trường KHTN', N'Phối hợp kiểm tra nhận mặt bằng Hội trường trường KHTN', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (88, 6, 2, N'Phối hợp kiểm tra nhận mặt bằng zone 03 nhà E trường KHTN', N'Phối hợp kiểm tra nhận mặt bằng zone 03 nhà E trường KHTN', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (89, 6, 2, N'Phối hơp kiểm tra phê duyệt vật tư chống thấm mái nhà A Trường KTL', N'Phối hơp kiểm tra phê duyệt vật tư chống thấm mái nhà A Trường KTL', CAST(N'2025-03-09' AS Date), NULL, NULL, CAST(N'2025-03-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2025-03-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (90, 4, 1, N'Chỉnh sửa hồ sơ và trình ký công văn gửi dự thảo HĐ gói thầu bảo hiểm công trình CW2', N'Chỉnh sửa hồ sơ và trình ký công văn gửi dự thảo HĐ gói thầu bảo hiểm công trình CW2', CAST(N'2024-12-06' AS Date), NULL, NULL, CAST(N'2024-12-06' AS Date), 1, 1, 2, 3, 1.65, 100, CAST(N'2024-12-06T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (91, 4, 1, N'Dự thảo biên bản bàn giao cọc thí nghiệm cho nhà thầu thi công công trình trung tâm nghiên cứu Tiên tiến', N'Dự thảo biên bản bàn giao cọc thí nghiệm cho nhà thầu thi công công trình trung tâm nghiên cứu Tiên tiến', CAST(N'2024-12-26' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (92, 4, 4, N'Dự thảo Biên bản nghiệm thu hoàn thành bàn giao gói thầu cọc thử', N'Dự thảo Biên bản nghiệm thu hoàn thành bàn giao gói thầu cọc thử', CAST(N'2024-12-11' AS Date), NULL, NULL, CAST(N'2024-12-11' AS Date), 1, 1, 2, 2, 1.4, 100, CAST(N'2024-12-11T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (93, 4, 4, N'Dự thảo Biên bản nghiệm thu hoàn thành bàn giao gói thầu giám sát thi công cọc thí nghiệm', N'Dự thảo Biên bản nghiệm thu hoàn thành bàn giao gói thầu giám sát thi công cọc thí nghiệm', CAST(N'2024-12-16' AS Date), NULL, NULL, CAST(N'2024-12-16' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2024-12-16T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (94, 4, 4, N'Dự thảo Biên bản thanh lý hợp đồng gói thầu cọc thử', N'Dự thảo Biên bản thanh lý hợp đồng gói thầu cọc thử', CAST(N'2024-12-12' AS Date), NULL, NULL, CAST(N'2024-12-12' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2024-12-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (95, 4, 4, N'Dự thảo Biên bản thanh lý hợp đồng gói thầu giám sát thi công cọc thí nghiệm', N'Dự thảo Biên bản thanh lý hợp đồng gói thầu giám sát thi công cọc thí nghiệm', CAST(N'2025-03-13' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (96, 4, 4, N'Dự thảo hồ sơ quyết toán gói thầu cọc thử', N'Dự thảo hồ sơ quyết toán gói thầu cọc thử', CAST(N'2024-12-10' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (97, 4, 3, N'Dự thảo hơp đồng bảo hiểm CW1 Khoa y', N'Dự thảo hơp đồng bảo hiểm CW1 Khoa y', CAST(N'2024-12-19' AS Date), NULL, NULL, CAST(N'2024-12-19' AS Date), 1, 3, 3, 3, 3, 100, CAST(N'2024-12-19T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (98, 4, 4, N'Dự thảo phụ lục hợp đồng gói thầu cọc thử', N'Dự thảo phụ lục hợp đồng gói thầu cọc thử', CAST(N'2024-12-11' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (99, 4, 4, N'Dự thảo phụ lục hợp đồng gói thầu giám sát thi công cọc thí nghiệm', N'Dự thảo phụ lục hợp đồng gói thầu giám sát thi công cọc thí nghiệm', CAST(N'2024-12-16' AS Date), NULL, NULL, CAST(N'2024-12-16' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2024-12-16T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
GO
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (100, 4, 4, N'Dự thảo phụ lục thanh toán 3a đợt cuối SCGEO gói thầu cọc thử', N'Dự thảo phụ lục thanh toán 3a đợt cuối SCGEO gói thầu cọc thử', CAST(N'2024-12-12' AS Date), NULL, NULL, CAST(N'2024-12-12' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2024-12-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (101, 4, 4, N'Dự thảo phụ lục thanh toán 3a, gói thầu giám sát thi công cọc thí nghiệm', N'Dự thảo phụ lục thanh toán 3a, gói thầu giám sát thi công cọc thí nghiệm', CAST(N'2024-12-17' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (102, 4, 4, N'Dự thảo phụ lục thanh toán 3a, Phụ lục 3c đợt cuối TDC gói thầu cọc thử', N'Dự thảo phụ lục thanh toán 3a, Phụ lục 3c đợt cuối TDC gói thầu cọc thử', CAST(N'2024-12-12' AS Date), NULL, NULL, CAST(N'2024-12-12' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2024-12-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (103, 4, 4, N'Dự thảo phụ lục thanh toán 3a, Phụ lục 3c đợt cuối Vimeco gói thầu cọc thử', N'Dự thảo phụ lục thanh toán 3a, Phụ lục 3c đợt cuối Vimeco gói thầu cọc thử', CAST(N'2024-12-12' AS Date), NULL, NULL, CAST(N'2024-12-12' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2024-12-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (104, 4, 3, N'Dự thảo Quyết định chỉ định thầu bảo hiểm CW1 Khoa y', N'Dự thảo Quyết định chỉ định thầu bảo hiểm CW1 Khoa y', CAST(N'2024-12-20' AS Date), NULL, NULL, CAST(N'2024-12-20' AS Date), 1, 3, 3, 3, 3, 100, CAST(N'2024-12-20T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (105, 4, 3, N'Dự thảo Quyết định phê duyệt dự toán gói thầu bảo hiểm Cw1', N'Dự thảo Quyết định phê duyệt dự toán gói thầu bảo hiểm Cw1', CAST(N'2024-12-24' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (106, 4, 3, N'Dự thảo tơ trình phê duyệt dự toán gói thầu bảo hiểm Cw1', N'Dự thảo tơ trình phê duyệt dự toán gói thầu bảo hiểm Cw1', CAST(N'2024-12-23' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (107, 4, 1, N'Dự thảo và trình ký quyết định phê duyệt dự toán gói thầu bảo hiểm công trình CW2', N'Dự thảo và trình ký quyết định phê duyệt dự toán gói thầu bảo hiểm công trình CW2', CAST(N'2024-12-06' AS Date), NULL, NULL, NULL, 2, 0, 0, 0, 0, 85, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (108, 4, 4, N'Dự thảo và trình ký tơ trình ký phụ lục hợp đồng gói thầu cọc thí nghiệm', N'Dự thảo và trình ký tơ trình ký phụ lục hợp đồng gói thầu cọc thí nghiệm', CAST(N'2024-12-05' AS Date), NULL, NULL, NULL, 2, 2, 1, 2, 1.85, 75, CAST(N'2024-12-05T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (109, 4, 1, N'Dự thảo và trình ký tờ trình phê duyệt dự toán gói thầu bảo hiểm công trình CW2', N'Dự thảo và trình ký tờ trình phê duyệt dự toán gói thầu bảo hiểm công trình CW2', CAST(N'2024-12-06' AS Date), NULL, NULL, NULL, 2, 3, 2, 3, 2.85, 50, CAST(N'2024-12-06T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (110, 4, 1, N'Góp ý dự thảo công văn đề xuất quan tâm gói thầu bảo hiểm Cw1', N'Góp ý dự thảo công văn đề xuất quan tâm gói thầu bảo hiểm Cw1', CAST(N'2024-12-09' AS Date), NULL, NULL, CAST(N'2024-12-09' AS Date), 1, 1, 2, 2, 1.4, 100, CAST(N'2024-12-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (111, 4, 1, N'Họp giao Ban TTNCTT', N'Họp giao Ban TTNCTT', CAST(N'2024-12-25' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (112, 4, 1, N'Làm biên bản bàn giao mặt bằng lán trại tạm thi công với Trung tâm Quản lý đô thị', N'Làm biên bản bàn giao mặt bằng lán trại tạm thi công với Trung tâm Quản lý đô thị', CAST(N'2024-12-04' AS Date), NULL, NULL, CAST(N'2025-03-11' AS Date), 3, 1, 1, 1, 1, 100, CAST(N'2024-12-04T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (113, 4, 4, N'làm đề nghị thanh toán mẫu 2a, biên bản giao nhận, scan hồ sơ, trình ký hồ sơ thanh toán gói thầu giám sát thi công cọc thí nghiệm', N'làm đề nghị thanh toán mẫu 2a, biên bản giao nhận, scan hồ sơ, trình ký hồ sơ thanh toán gói thầu giám sát thi công cọc thí nghiệm', CAST(N'2024-12-18' AS Date), NULL, NULL, CAST(N'2024-12-18' AS Date), 1, 0.5, 1, 1, 0.7, 100, CAST(N'2024-12-18T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (114, 4, 4, N'Làm hồ sơ thanh toán đợt 2 gói thầu bảo hiểm các gói thầu cải tạo', N'Làm hồ sơ thanh toán đợt 2 gói thầu bảo hiểm các gói thầu cải tạo', CAST(N'2024-12-13' AS Date), NULL, NULL, CAST(N'2024-12-13' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2024-12-13T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (115, 4, 1, N'Làm hồ sơ thanh toán gói thầu bảo hiểm CW2', N'Làm hồ sơ thanh toán gói thầu bảo hiểm CW2', CAST(N'2024-12-26' AS Date), NULL, NULL, CAST(N'2024-12-26' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2024-12-26T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (116, 4, 4, N'Làm hồ sơ và chuyển phòng kế toán ra kho bạc thanh toán gói thầu cọc thí nghiệm ', N'Làm hồ sơ và chuyển phòng kế toán ra kho bạc thanh toán gói thầu cọc thí nghiệm ', CAST(N'2024-12-05' AS Date), NULL, NULL, NULL, 2, 1, 1, 3, 1.5, 70, CAST(N'2024-12-05T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (117, 4, 1, N'Phối hợp cung cấp hồ sơ làm đấu nối cấp nước thi công cho Vinaconex', N'Phối hợp cung cấp hồ sơ làm đấu nối cấp nước thi công cho Vinaconex', CAST(N'2024-12-10' AS Date), NULL, NULL, CAST(N'2024-12-10' AS Date), 1, 1, 2, 2, 1.4, 100, CAST(N'2024-12-10T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (118, 4, 1, N'Phối hợp điều phối xe hiện trường với Trung tâm đô thị trong lễ khởi công Trung tâm nghiên cứu Tiên tiến', N'Phối hợp điều phối xe hiện trường với Trung tâm đô thị trong lễ khởi công Trung tâm nghiên cứu Tiên tiến', CAST(N'2024-12-09' AS Date), NULL, NULL, CAST(N'2024-12-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2024-12-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (119, 4, 2, N'Phối hợp với Dũng và nhà thầu về các mẫu biểu phụ lục thanh toán 3a, 3c, dự toán phát sinh các gói thầu thi công cải tạo', N'Phối hợp với Dũng và nhà thầu về các mẫu biểu phụ lục thanh toán 3a, 3c, dự toán phát sinh các gói thầu thi công cải tạo', CAST(N'2024-12-09' AS Date), NULL, NULL, CAST(N'2024-12-09' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2024-12-09T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (120, 4, 1, N'Phối hợp xử lý về hạ tầng ngầm trên vỉa hè với tư vấn thiết kế theo nội dung công văn của trung tâm Quản lý và phát triển khu đô thị', N'Phối hợp xử lý về hạ tầng ngầm trên vỉa hè với tư vấn thiết kế theo nội dung công văn của trung tâm Quản lý và phát triển khu đô thị', CAST(N'2024-12-30' AS Date), NULL, NULL, CAST(N'2024-12-30' AS Date), 1, 1, 2, 1, 1.15, 100, CAST(N'2024-12-30T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (121, 4, 4, N'Rà soát hồ sơ KCS, Bản vẽ hoàn công, nhật ký gói thầu cọc thử', N'Rà soát hồ sơ KCS, Bản vẽ hoàn công, nhật ký gói thầu cọc thử', CAST(N'2024-12-12' AS Date), NULL, NULL, CAST(N'2024-12-12' AS Date), 1, 1, 1, 1, 1, 100, CAST(N'2024-12-12T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (122, 4, 4, N'Thống kê file gửi kiểm toán độc lập', N'Thống kê file gửi kiểm toán độc lập', CAST(N'2024-12-27' AS Date), NULL, NULL, CAST(N'2024-12-27' AS Date), 1, 1, 3, 3, 1.8, 100, CAST(N'2024-12-27T00:00:00.000' AS DateTime), 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[JOB] ([Id], [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], [progress], [Time], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (123, 4, 1, N'Trao đổi về ranh mốc, hạ tầng ngầm trên vỉa hè Nguyễn Du với Tư vấn thiết kế', N'Trao đổi về ranh mốc, hạ tầng ngầm trên vỉa hè Nguyễn Du với Tư vấn thiết kế', CAST(N'2024-12-25' AS Date), NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
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
INSERT [dbo].[SYSTEMSW] ([Id], [Name], [Value], [Description], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (8, N'HRDepartment', N'1', N'Đăng nhập area HRManager', 0, 1, CAST(N'2025-03-02T15:01:01.783' AS DateTime), CAST(N'2025-03-02T15:01:01.783' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[SYSTEMSW] OFF
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (1, N'admin', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 1, 0, 1, CAST(N'2025-02-20T10:10:05.907' AS DateTime), CAST(N'2025-03-02T15:15:05.547' AS DateTime), NULL, N'1')
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (2, N'manageProject', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 2, 0, 1, CAST(N'2025-02-20T10:10:05.907' AS DateTime), CAST(N'2025-02-20T10:10:05.907' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (3, N'manageHr', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 3, 0, 1, CAST(N'2025-02-20T10:10:05.907' AS DateTime), CAST(N'2025-02-20T10:10:05.907' AS DateTime), NULL, NULL)
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (4, N'HuyBinh', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 4, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (5, N'TranHuy', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 5, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
INSERT [dbo].[USERS] ([Id], [UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date], [Update_Date], [Create_By], [Update_By]) VALUES (6, N'HoangManh', N'74bbe0e185d65998d4fecc8517dd98d0bed47036b603779d470c0eaafb04c196', 6, 0, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'')
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CATEGORY__A25C5AA7AD2DBF43]    Script Date: 3/11/2025 9:05:53 PM ******/
ALTER TABLE [dbo].[CATEGORY] ADD UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DEPARTME__A25C5AA70DA9BD48]    Script Date: 3/11/2025 9:05:53 PM ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__EMPLOYEE__A25C5AA7E6BF44E4]    Script Date: 3/11/2025 9:05:53 PM ******/
ALTER TABLE [dbo].[EMPLOYEE] ADD UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__USERS__C9F28456F9CEABC6]    Script Date: 3/11/2025 9:05:53 PM ******/
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
USE [master]
GO
ALTER DATABASE [WorkTrackingSystem] SET  READ_WRITE 
GO

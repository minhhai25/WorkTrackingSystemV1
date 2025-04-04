USE [WorkTrackingSystem]
GO
/****** Object:  Table [dbo].[ANALYSIS]    Script Date: 2/28/2025 8:24:20 PM ******/
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
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BASELINEASSESSMENT]    Script Date: 2/28/2025 8:24:20 PM ******/
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
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 2/28/2025 8:24:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](25) NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Id_Parent] [bigint] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 2/28/2025 8:24:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 2/28/2025 8:24:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Department_Id] [bigint] NULL,
	[Position_Id] [bigint] NULL,
	[Code] [nvarchar](50) NULL,
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
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB]    Script Date: 2/28/2025 8:24:20 PM ******/
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
	[Time] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSITION]    Script Date: 2/28/2025 8:24:20 PM ******/
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
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYSTEMSW]    Script Date: 2/28/2025 8:24:20 PM ******/
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
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 2/28/2025 8:24:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[Employee_Id] [bigint] NULL,
	[IsDelete] [bit] NULL,
	[IsActive] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
	[Create_By] [bigint] NULL,
	[Update_By] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
USE [WorkTrackingSystem]
GO

-- 1. Thêm dữ liệu vào bảng POSITION (Chức vụ)
INSERT INTO [dbo].[POSITION] ([Name], [Description], [Status], [IsDelete], [IsActive], [Create_Date])
VALUES 
    ('Admin', 'Quản lý toàn hệ thống', 1, 0, 1, GETDATE()),
    ('Manager', 'Quản lý phòng ban', 1, 0, 1, GETDATE()),
    ('Staff', 'Nhân viên thường', 1, 0, 1, GETDATE()),
    ('Senior Staff', 'Nhân viên cao cấp', 1, 0, 1, GETDATE());
GO

-- 2. Thêm dữ liệu vào bảng DEPARTMENT (Phòng ban)
INSERT INTO [dbo].[DEPARTMENT] ([Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date])
VALUES 
    ('D001', N'Phòng Kỹ thuật', N'Phòng phụ trách kỹ thuật', 0, 1, GETDATE()),
    ('D002', N'Phòng Nhân sự', N'Phòng phụ trách nhân sự', 0, 1, GETDATE()),
    ('D003', N'Phòng Kinh doanh', N'Phòng phụ trách kinh doanh', 0, 1, GETDATE());
GO

-- 3. Thêm dữ liệu vào bảng EMPLOYEE (Nhân viên)
INSERT INTO [dbo].[EMPLOYEE] ([Department_Id], [Position_Id], [Code], [First_Name], [Last_Name], [Gender], [Birthday], [Phone], [Email], [Hire_Date], [IsDelete], [IsActive], [Create_Date])
VALUES 
    (1, 1, 'EMP001', N'Admin', N'Hệ thống', 'Male', '1980-01-01', '0901234567', 'admin@worktracking.com', '2020-01-01', 0, 1, GETDATE()), -- Admin
    (1, 2, 'EMP002', N'Nguyễn', N'Văn A', 'Male', '1985-05-10', '0902345678', 'nguyenvana@worktracking.com', '2021-01-01', 0, 1, GETDATE()), -- Quản lý D001
    (2, 2, 'EMP003', N'Trần', N'Thị B', 'Female', '1988-07-15', '0903456789', 'tranthib@worktracking.com', '2021-02-01', 0, 1, GETDATE()), -- Quản lý D002
    (3, 2, 'EMP004', N'Lê', N'Văn C', 'Male', '1990-03-20', '0904567890', 'levanc@worktracking.com', '2021-03-01', 0, 1, GETDATE()), -- Quản lý D003
    (1, 3, 'EMP005', N'Phạm', N'Thị D', 'Female', '1995-08-25', '0905678901', 'phamthid@worktracking.com', '2022-01-01', 0, 1, GETDATE()), -- Nhân viên D001
    (1, 4, 'EMP006', N'Hoàng', N'Văn E', 'Male', '1993-11-30', '0906789012', 'hoangvane@worktracking.com', '2022-02-01', 0, 1, GETDATE()), -- Nhân viên D001
    (2, 3, 'EMP007', N'Đỗ', N'Thị F', 'Female', '1996-04-05', '0907890123', 'dothif@worktracking.com', '2022-03-01', 0, 1, GETDATE()), -- Nhân viên D002
    (2, 4, 'EMP008', N'Vũ', N'Văn G', 'Male', '1994-09-10', '0908901234', 'vuvang@worktracking.com', '2022-04-01', 0, 1, GETDATE()), -- Nhân viên D002
    (3, 3, 'EMP009', N'Bùi', N'Thị H', 'Female', '1997-12-15', '0909012345', 'buithih@worktracking.com', '2022-05-01', 0, 1, GETDATE()), -- Nhân viên D003
    (3, 4, 'EMP010', N'Ngô', N'Văn I', 'Male', '1992-06-20', '0910123456', 'ngovani@worktracking.com', '2022-06-01', 0, 1, GETDATE()); -- Nhân viên D003
GO

-- 4. Thêm dữ liệu vào bảng CATEGORY (Danh mục công việc)
INSERT INTO [dbo].[CATEGORY] ([Code], [Name], [Description], [IsDelete], [IsActive], [Create_Date])
VALUES 
    ('CAT001', N'Phát triển phần mềm', N'Công việc liên quan đến phát triển phần mềm', 0, 1, GETDATE()),
    ('CAT002', N'Tuyển dụng', N'Công việc liên quan đến tuyển dụng', 0, 1, GETDATE()),
    ('CAT003', N'Bán hàng', N'Công việc liên quan đến bán hàng', 0, 1, GETDATE());
GO

-- 5. Thêm dữ liệu vào bảng JOB (Công việc) - Mỗi nhân viên 10 công việc
DECLARE @EmployeeId BIGINT, @Counter INT, @CategoryId BIGINT, @Status TINYINT, @Volume FLOAT, @Progress FLOAT, @Quality FLOAT, @Summary FLOAT;
DECLARE employee_cursor CURSOR FOR 
    SELECT [Id] FROM [dbo].[EMPLOYEE];

OPEN employee_cursor;
FETCH NEXT FROM employee_cursor INTO @EmployeeId;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @Counter = 1;
    WHILE @Counter <= 10
    BEGIN
        -- Random Category_Id (1, 2, 3)
        SET @CategoryId = (SELECT 1 + FLOOR(RAND() * 3));
        -- Random Status (1 đến 4)
        SET @Status = (SELECT 1 + FLOOR(RAND() * 4));
        -- Random Assessments (0 đến 3)
        SET @Volume = (SELECT ROUND(RAND() * 3, 1));
        SET @Progress = (SELECT ROUND(RAND() * 3, 1));
        SET @Quality = (SELECT ROUND(RAND() * 3, 1));
        -- SummaryOfReviews = 0.60 * Volume + 0.15 * Progress + 0.25 * Quality
        SET @Summary = ROUND((0.60 * @Volume + 0.15 * @Progress + 0.25 * @Quality), 1);

        INSERT INTO [dbo].[JOB] (
            [Employee_Id], [Category_Id], [Name], [Description], [Deadline1], [Deadline2], [Deadline3], 
            [CompletionDate], [Status], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], 
            [SummaryOfReviews], [Time], [IsDelete], [IsActive], [Create_Date], [Create_By]
        )
        VALUES (
            @EmployeeId, 
            @CategoryId, 
            N'Công việc ' + CAST(@Counter AS NVARCHAR) + N' của nhân viên ' + CAST(@EmployeeId AS NVARCHAR), 
            N'Mô tả công việc ' + CAST(@Counter AS NVARCHAR), 
            DATEADD(DAY, @Counter, '2025-02-01'), -- Deadline1
            DATEADD(DAY, @Counter + 5, '2025-02-01'), -- Deadline2
            DATEADD(DAY, @Counter + 10, '2025-02-01'), -- Deadline3
            CASE WHEN @Status IN (1, 3) THEN DATEADD(DAY, @Counter + RAND() * 10, '2025-02-01') ELSE NULL END, -- CompletionDate nếu hoàn thành
            @Status, 
            @Volume, 
            @Progress, 
            @Quality, 
            @Summary, 
            DATEADD(DAY, @Counter - 1, '2025-02-01'), -- Time
            0, 
            1, 
            GETDATE(), 
            1 -- Admin tạo
        );
        SET @Counter = @Counter + 1;
    END;
    FETCH NEXT FROM employee_cursor INTO @EmployeeId;
END;

CLOSE employee_cursor;
DEALLOCATE employee_cursor;
GO

-- 6. Thêm dữ liệu vào bảng BASELINEASSESSMENT (Tổng đánh giá cho từng nhân viên trong tháng 2/2025)
INSERT INTO [dbo].[BASELINEASSESSMENT] (
    [Employee_Id], [VolumeAssessment], [ProgressAssessment], [QualityAssessment], [SummaryOfReviews], 
    [Time], [Evaluate], [IsDelete], [IsActive], [Create_Date], [Create_By]
)
SELECT 
    j.[Employee_Id],
    SUM(j.[VolumeAssessment]) AS VolumeAssessment,
    SUM(j.[ProgressAssessment]) AS ProgressAssessment,
    SUM(j.[QualityAssessment]) AS QualityAssessment,
    SUM(j.[SummaryOfReviews]) AS SummaryOfReviews,
    '2025-02-01' AS [Time],
    CASE WHEN SUM(j.[SummaryOfReviews]) >= 20 THEN 1 ELSE 0 END AS [Evaluate], -- Ngưỡng 20 điểm
    0 AS [IsDelete],
    1 AS [IsActive],
    GETDATE() AS [Create_Date],
    1 AS [Create_By] -- Admin tạo
FROM [dbo].[JOB] j
WHERE j.[Time] BETWEEN '2025-02-01' AND '2025-02-28'
    AND j.[Status] IN (1, 3) -- Chỉ tính công việc hoàn thành hoặc hoàn thành muộn
GROUP BY j.[Employee_Id];
GO

-- 7. Thêm dữ liệu vào bảng ANALYSIS (Phân tích công việc cho từng nhân viên trong tháng 2/2025)
INSERT INTO [dbo].[ANALYSIS] (
    [Employee_Id], [Total], [Ontime], [Late], [Overdue], [Processing], [Time], 
    [IsDelete], [IsActive], [Create_Date], [Create_By]
)
SELECT 
    j.[Employee_Id],
    COUNT(*) AS [Total],
    SUM(CASE WHEN j.[Status] = 1 THEN 1 ELSE 0 END) AS [Ontime],
    SUM(CASE WHEN j.[Status] = 3 THEN 1 ELSE 0 END) AS [Late],
    SUM(CASE WHEN j.[Status] = 2 THEN 1 ELSE 0 END) AS [Overdue],
    SUM(CASE WHEN j.[Status] = 4 THEN 1 ELSE 0 END) AS [Processing],
    '2025-02-01' AS [Time],
    0 AS [IsDelete],
    1 AS [IsActive],
    GETDATE() AS [Create_Date],
    1 AS [Create_By] -- Admin tạo
FROM [dbo].[JOB] j
WHERE j.[Time] BETWEEN '2025-02-01' AND '2025-02-28'
GROUP BY j.[Employee_Id];
GO

-- 8. Thêm dữ liệu vào bảng USERS (Tài khoản người dùng)
INSERT INTO [dbo].[USERS] ([UserName], [Password], [Employee_Id], [IsDelete], [IsActive], [Create_Date])
VALUES 
    ('admin', 'admin123', 1, 0, 1, GETDATE()), -- Admin
    ('nguyenvana', 'pass123', 2, 0, 1, GETDATE()),
    ('tranthib', 'pass123', 3, 0, 1, GETDATE()),
    ('levanc', 'pass123', 4, 0, 1, GETDATE()),
    ('phamthid', 'pass123', 5, 0, 1, GETDATE()),
    ('hoangvane', 'pass123', 6, 0, 1, GETDATE()),
    ('dothif', 'pass123', 7, 0, 1, GETDATE()),
    ('vuvang', 'pass123', 8, 0, 1, GETDATE()),
    ('buithih', 'pass123', 9, 0, 1, GETDATE()),
    ('ngovani', 'pass123', 10, 0, 1, GETDATE());
GO
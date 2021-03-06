USE Tutorial
GO
ALTER TABLE [dbo].[StudentRegister] DROP CONSTRAINT [FK_Student_StudentRegister]
GO
ALTER TABLE [dbo].[StudentRegister] DROP CONSTRAINT [FK_SC]
GO
ALTER TABLE [dbo].[InstructorRegister] DROP CONSTRAINT [FK_InstructorRegister]
GO
ALTER TABLE [dbo].[InstructorRegister] DROP CONSTRAINT [FK_CI]
GO
ALTER TABLE [dbo].[Course] DROP CONSTRAINT [fk_course]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 11/10/2019 4:35:29 PM ******/
DROP TABLE [dbo].[Subject]
GO
/****** Object:  Table [dbo].[StudentRegister]    Script Date: 11/10/2019 4:35:29 PM ******/
DROP TABLE [dbo].[StudentRegister]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/10/2019 4:35:29 PM ******/
DROP TABLE [dbo].[Student]
GO
/****** Object:  Table [dbo].[InstructorRegister]    Script Date: 11/10/2019 4:35:29 PM ******/
DROP TABLE [dbo].[InstructorRegister]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 11/10/2019 4:35:29 PM ******/
DROP TABLE [dbo].[Instructor]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/10/2019 4:35:29 PM ******/
DROP TABLE [dbo].[Course]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/10/2019 4:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectID] [int] NOT NULL,
	[CourseName] [nvarchar](255) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[TotalSlot] [int] NULL,
 CONSTRAINT [PK__Course__C92D7187AFC3F98A] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 11/10/2019 4:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Title] [nvarchar](255) NULL,
	[Salary] [float] NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstructorRegister]    Script Date: 11/10/2019 4:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstructorRegister](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InstructorID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[RegisterDate] [date] NOT NULL,
 CONSTRAINT [PK_InstructorRegister] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/10/2019 4:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [pk_PS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentRegister]    Script Date: 11/10/2019 4:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentRegister](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[RegisterDate] [date] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK__StudentR__3214EC27CEE604CB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 11/10/2019 4:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Credit] [int] NOT NULL,
	[SubjectName] [nvarchar](255) NOT NULL,
	[Fee] [float] NOT NULL,
	[Semester] [int] NULL,
 CONSTRAINT [PK__Subject__AC1BA3889F90B90E] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (1, 1, N'TT1', CAST(N'2020-01-10' AS Date), CAST(N'2020-05-28' AS Date), 70)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (2, 1, N'TT2', CAST(N'2020-01-10' AS Date), CAST(N'2020-05-28' AS Date), 70)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (3, 1, N'TT3', CAST(N'2020-01-10' AS Date), CAST(N'2020-05-28' AS Date), 50)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (4, 2, N'XLA1', CAST(N'2020-01-12' AS Date), CAST(N'2020-05-31' AS Date), 50)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (5, 2, N'XLA2', CAST(N'2020-01-12' AS Date), CAST(N'2020-05-30' AS Date), 60)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (6, 2, N'XLA2', CAST(N'2020-01-15' AS Date), CAST(N'2020-06-05' AS Date), 50)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (8, 2, N'XLA3', CAST(N'2020-01-16' AS Date), CAST(N'2020-06-10' AS Date), 50)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (9, 8, N'Java1', CAST(N'2020-01-18' AS Date), CAST(N'2020-06-10' AS Date), 60)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (10, 8, N'Java2', CAST(N'2020-01-19' AS Date), CAST(N'2020-06-12' AS Date), 60)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (11, 8, N'Java3', CAST(N'2020-01-20' AS Date), CAST(N'2020-06-15' AS Date), 50)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (12, 8, N'Java4', CAST(N'2020-01-25' AS Date), CAST(N'2020-06-20' AS Date), 50)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (15, 6, N'TCC1', CAST(N'2020-01-10' AS Date), CAST(N'2020-05-29' AS Date), 70)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (17, 6, N'TCC2', CAST(N'2020-01-10' AS Date), CAST(N'2020-05-29' AS Date), 70)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (18, 6, N'TCC3', CAST(N'2020-01-11' AS Date), CAST(N'2020-05-31' AS Date), 60)
INSERT [dbo].[Course] ([CourseID], [SubjectID], [CourseName], [StartDate], [EndDate], [TotalSlot]) VALUES (21, 6, N'TCC4', CAST(N'2020-01-11' AS Date), CAST(N'2020-05-31' AS Date), 50)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([InstructorID], [FullName], [Address], [Email], [DOB], [Gender], [Phone], [Title], [Salary]) VALUES (1, N'Nguyễn Thanh Tùng', N'Ha Noi', N'tungthanhnguyen@xmail.com', CAST(N'1992-01-02' AS Date), N'Nam', N'0978666555', N'Giáo sư', 15200)
INSERT [dbo].[Instructor] ([InstructorID], [FullName], [Address], [Email], [DOB], [Gender], [Phone], [Title], [Salary]) VALUES (2, N'Trương Thành Nam', N'Hưng Yên', N'nam@xmail.com', CAST(N'1993-03-03' AS Date), N'Nam', N'0988654654', N'Tiến sỹ', 16520)
INSERT [dbo].[Instructor] ([InstructorID], [FullName], [Address], [Email], [DOB], [Gender], [Phone], [Title], [Salary]) VALUES (3, N'Trần Hoàng Nam', N'Hải Phòng', N'namhoang@xmail.com', CAST(N'1990-12-20' AS Date), N'Nam', N'0945456456', N'Thạc sỹ', 17530)
INSERT [dbo].[Instructor] ([InstructorID], [FullName], [Address], [Email], [DOB], [Gender], [Phone], [Title], [Salary]) VALUES (4, N'Trịnh Thị Hà', N'Thanh Hóa', N'hacute@xmail.com', CAST(N'1994-07-28' AS Date), N'Nữ', N'0912345345', N'Giáo sư', 14950)
INSERT [dbo].[Instructor] ([InstructorID], [FullName], [Address], [Email], [DOB], [Gender], [Phone], [Title], [Salary]) VALUES (5, N'Tô Thành Đạt', N'Đà Nẵng', N'dat08@xmail.com', CAST(N'1995-11-07' AS Date), N'Nam', N'0902778774', N'Tiến Sỹ', 17580)
INSERT [dbo].[Instructor] ([InstructorID], [FullName], [Address], [Email], [DOB], [Gender], [Phone], [Title], [Salary]) VALUES (6, N'Lưu Thị Huệ', N'Cần Thơ', N'huexanh@xmail.com', CAST(N'1996-06-02' AS Date), N'Nữ', N'0974654654', N'Giảng viên', 14560)
INSERT [dbo].[Instructor] ([InstructorID], [FullName], [Address], [Email], [DOB], [Gender], [Phone], [Title], [Salary]) VALUES (7, N'Hứa Thị Thơm', N'Long An', N'thomkika@xmai.com', CAST(N'1994-11-23' AS Date), N'Nữ', N'0913252525', N'Giảng viên', 14250)
INSERT [dbo].[Instructor] ([InstructorID], [FullName], [Address], [Email], [DOB], [Gender], [Phone], [Title], [Salary]) VALUES (8, N'Lò Thị Hoa', N'Ha Noi', N'hoathi@xmail.com', CAST(N'1997-10-15' AS Date), N'Nữ', N'0965456652', N'Giảng viên', 14300)
SET IDENTITY_INSERT [dbo].[Instructor] OFF
SET IDENTITY_INSERT [dbo].[InstructorRegister] ON 

INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (12, 1, 1, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (13, 1, 2, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (14, 2, 3, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (15, 2, 4, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (16, 3, 5, CAST(N'2020-01-03' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (17, 4, 6, CAST(N'2020-01-04' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (18, 5, 6, CAST(N'2020-01-04' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (20, 5, 8, CAST(N'2020-01-05' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (21, 7, 9, CAST(N'2020-01-05' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (22, 7, 10, CAST(N'2020-01-06' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (23, 8, 11, CAST(N'2020-01-06' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (24, 8, 12, CAST(N'2020-01-06' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (27, 8, 15, CAST(N'2020-01-06' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (29, 3, 17, CAST(N'2020-01-07' AS Date))
INSERT [dbo].[InstructorRegister] ([ID], [InstructorID], [CourseID], [RegisterDate]) VALUES (30, 3, 18, CAST(N'2020-01-07' AS Date))
SET IDENTITY_INSERT [dbo].[InstructorRegister] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (1, N'Triệu Van Thân', N'Ha Noi', N'trieuthan92pro@xmail.com', CAST(N'1992-04-27' AS Date), N'Nam', N'0912555879')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (2, N'Nguyễn Mạnh Phúc', N'Ha Noi', N'phucycd@xmail.com', CAST(N'1996-08-03' AS Date), N'Nam', N'01685321564')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (3, N'Phạm Thị Mai', N'Nam Định', N'maipham@xmail.com', CAST(N'1995-05-06' AS Date), N'Nữ', N'0978456456')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (4, N'Trần Thị Tuyết', N'Hà Giang', N'tuyettran@xmail.com', CAST(N'1997-07-21' AS Date), N'Nữ', N'0912352256')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (5, N'Hoàng Văn Nam', N'Đà Nẵng', N'namhoang@xmail.com', CAST(N'1998-08-29' AS Date), N'Nam', N'0987878787')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (6, N'Trương Thúy Hà', N'Cà Mau', N'hacutecute@xmail.com', CAST(N'1999-02-25' AS Date), N'Nữ', N'0945645645')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (7, N'Lò Văn Cá', N'Lào Cai', N'lovanca@xmail.com', CAST(N'2000-10-13' AS Date), N'Nam', N'0912312312')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (8, N'La Thị Hải', N'Thái Nguyên', N'haihai@xmail.com', CAST(N'2001-11-02' AS Date), N'Nữ', N'0947852256')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (9, N'Nguyễn Thúy Sen', N'Nghệ An', N'sentrongho@xmail.com', CAST(N'1997-07-08' AS Date), N'Nữ', N'0967888888')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (10, N'Hoàng Trung Phong', N'Hồ Chí Minh', N'phongdaica@xmail.com', CAST(N'1995-09-15' AS Date), N'Nam', N'0966888741')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (11, N'Chu Đình Hoàng', N'Hải Phòng', N'hoang@xmail.com', CAST(N'1998-08-29' AS Date), N'Nam', N'0912212212')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (12, N'Ma Thị Thủy', N'Bình Dương', N'thuythy@xmail.com', CAST(N'1999-11-21' AS Date), N'Nữ', N'0975475475')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (13, N'Join Kerry', N'New York', N'join@xmail.com', CAST(N'1999-11-20' AS Date), N'Nam', N'0988312521')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (14, N'Hana Fred', N'New York', N'hana@xmail.com', CAST(N'1998-02-18' AS Date), N'Nam', N'01225985898')
INSERT [dbo].[Student] ([ID], [FullName], [Address], [Email], [DOB], [Gender], [Phone]) VALUES (15, N'Lorra Hunda', N'New York', N'lorra@xmail.com', CAST(N'1999-06-07' AS Date), N'Nam', N'0912345345')
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[StudentRegister] ON 

INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (1, 1, CAST(N'2020-01-06' AS Date), 1)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (2, 1, CAST(N'2020-01-06' AS Date), 4)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (3, 1, CAST(N'2020-01-06' AS Date), 9)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (4, 1, CAST(N'2020-01-06' AS Date), 15)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (5, 2, CAST(N'2020-01-07' AS Date), 2)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (6, 2, CAST(N'2020-01-07' AS Date), 5)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (7, 2, CAST(N'2020-01-07' AS Date), 17)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (8, 3, CAST(N'2020-01-07' AS Date), 3)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (9, 3, CAST(N'2020-01-07' AS Date), 18)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (10, 4, CAST(N'2020-01-08' AS Date), 18)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (11, 4, CAST(N'2020-01-08' AS Date), 10)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (12, 5, CAST(N'2020-01-08' AS Date), 11)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (13, 6, CAST(N'2020-01-08' AS Date), 12)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (14, 8, CAST(N'2020-01-09' AS Date), 11)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (15, 8, CAST(N'2020-01-09' AS Date), 15)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (16, 7, CAST(N'2020-01-09' AS Date), 2)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (17, 7, CAST(N'2020-01-09' AS Date), 5)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (18, 7, CAST(N'2020-01-09' AS Date), 15)
INSERT [dbo].[StudentRegister] ([ID], [StudentID], [RegisterDate], [CourseID]) VALUES (19, 7, CAST(N'2020-01-09' AS Date), 10)
SET IDENTITY_INSERT [dbo].[StudentRegister] OFF
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (1, 3, N'Trí tuệ nhân tạo', 1500, 20201)
INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (2, 3, N'Xử lý ảnh', 1500, 20201)
INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (4, 2, N'Xử lý tín hiệu', 1000, 20201)
INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (5, 4, N'Vật lý đại cương', 2000, 20201)
INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (6, 4, N'Toán cao cấp', 2000, 20201)
INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (7, 2, N'Kĩ thuật đồ họa', 1000, 20201)
INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (8, 3, N'Lập trình Java', 1500, 20201)
INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (9, 3, N'Cơ sở dữ liệu', 1500, 20201)
INSERT [dbo].[Subject] ([SubjectID], [Credit], [SubjectName], [Fee], [Semester]) VALUES (10, 3, N'Cấu trúc dữ liệu và giải thuật', 1500, 20201)
SET IDENTITY_INSERT [dbo].[Subject] OFF
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [fk_course] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [fk_course]
GO
ALTER TABLE [dbo].[InstructorRegister]  WITH CHECK ADD  CONSTRAINT [FK_CI] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[InstructorRegister] CHECK CONSTRAINT [FK_CI]
GO
ALTER TABLE [dbo].[InstructorRegister]  WITH CHECK ADD  CONSTRAINT [FK_InstructorRegister] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO
ALTER TABLE [dbo].[InstructorRegister] CHECK CONSTRAINT [FK_InstructorRegister]
GO
ALTER TABLE [dbo].[StudentRegister]  WITH CHECK ADD  CONSTRAINT [FK_SC] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[StudentRegister] CHECK CONSTRAINT [FK_SC]
GO
ALTER TABLE [dbo].[StudentRegister]  WITH CHECK ADD  CONSTRAINT [FK_Student_StudentRegister] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[StudentRegister] CHECK CONSTRAINT [FK_Student_StudentRegister]
GO

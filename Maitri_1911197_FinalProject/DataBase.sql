USE [master]
GO
/****** Object:  Database [HiTechDB1]    Script Date: 15-12-2020 18:03:39 ******/
CREATE DATABASE [HiTechDB1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HiTechDB1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\HiTechDB1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HiTechDB1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\HiTechDB1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HiTechDB1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HiTechDB1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HiTechDB1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HiTechDB1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HiTechDB1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HiTechDB1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HiTechDB1] SET ARITHABORT OFF 
GO
ALTER DATABASE [HiTechDB1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HiTechDB1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HiTechDB1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HiTechDB1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HiTechDB1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HiTechDB1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HiTechDB1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HiTechDB1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HiTechDB1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HiTechDB1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HiTechDB1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HiTechDB1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HiTechDB1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HiTechDB1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HiTechDB1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HiTechDB1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HiTechDB1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HiTechDB1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HiTechDB1] SET  MULTI_USER 
GO
ALTER DATABASE [HiTechDB1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HiTechDB1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HiTechDB1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HiTechDB1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HiTechDB1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HiTechDB1] SET QUERY_STORE = OFF
GO
USE [HiTechDB1]
GO
/****** Object:  Table [dbo].[AuthorBooks]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorBooks](
	[AuthorId] [int] NOT NULL,
	[ISBN] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AuthorBooks] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC,
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorId] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[ISBN] [varchar](50) NOT NULL,
	[BookTitle] [varchar](50) NULL,
	[UnitPrice] [float] NULL,
	[YearPublished] [int] NULL,
	[QOH] [int] NULL,
	[PublisherId] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[Street] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[PhoneNumber] [int] NULL,
	[FaxNumber] [int] NULL,
	[CreditLimit] [int] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[JobId] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[JobId] [int] NOT NULL,
	[JobTitle] [varchar](50) NULL,
	[JobDesc] [varchar](50) NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ISBN] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[EmployeeId] [int] NULL,
	[OrderDate] [date] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publishers]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishers](
	[PublisherId] [int] NOT NULL,
	[PublisherName] [varchar](50) NULL,
 CONSTRAINT [PK_Publishers] PRIMARY KEY CLUSTERED 
(
	[PublisherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15-12-2020 18:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] NOT NULL,
	[Password] [varchar](50) NULL,
	[UserStatus] [varchar](50) NULL,
	[EmploeeId] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AuthorBooks] ([AuthorId], [ISBN]) VALUES (1010, N'1A1B1C')
GO
INSERT [dbo].[Authors] ([AuthorId], [FirstName], [LastName], [Email]) VALUES (1010, N'Chetan', N'Bhagat', N'chetan111@gmail.com')
GO
INSERT [dbo].[Books] ([ISBN], [BookTitle], [UnitPrice], [YearPublished], [QOH], [PublisherId], [CategoryId]) VALUES (N'1A1B1C', N'Revolution', 31.72, 2011, 25, 10, 101)
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (101, N'Love')
GO
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Street], [City], [PostalCode], [PhoneNumber], [FaxNumber], [CreditLimit]) VALUES (1, N'Maitri', N'Saint Kevin', N'Montreal', N'H3W1N9', 1111111, 2222222, 3000)
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (111, N'Maitri', N'Patel', 1111)
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (222, N'Henry', N'Brown', 2222)
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (333, N'Thomas', N'Moore', 3333)
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (444, N'Peter', N'Wang', 4444)
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (555, N'Mary', N'Brown', 5555)
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (666, N'Jennifer', N'Prajapati', 5555)
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (777, N'Bouchard', N'Joshi', 5555)
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (888, N'Kim Hoa', N'Nguyen', 6666)
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [JobId]) VALUES (999, N'Darshan', N'Joshi', 6666)
GO
INSERT [dbo].[Jobs] ([JobId], [JobTitle], [JobDesc]) VALUES (1111, N'Programmer', N'Coding')
INSERT [dbo].[Jobs] ([JobId], [JobTitle], [JobDesc]) VALUES (2222, N'MIS Manager', N'Manage')
INSERT [dbo].[Jobs] ([JobId], [JobTitle], [JobDesc]) VALUES (3333, N'Sales Manager', N'Sale')
INSERT [dbo].[Jobs] ([JobId], [JobTitle], [JobDesc]) VALUES (4444, N'Inventory Controller', N'Control')
INSERT [dbo].[Jobs] ([JobId], [JobTitle], [JobDesc]) VALUES (5555, N'Order Clerks ', N'Order')
INSERT [dbo].[Jobs] ([JobId], [JobTitle], [JobDesc]) VALUES (6666, N'Accountant', N'Counting')
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ISBN]) VALUES (11, N'1A1B1C')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDate]) VALUES (11, 1, 111, CAST(N'2011-11-11' AS Date))
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDate]) VALUES (22, 1, 222, CAST(N'2020-12-12' AS Date))
GO
INSERT [dbo].[Publishers] ([PublisherId], [PublisherName]) VALUES (10, N'Amazon')
GO
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (1010, N'dJoshi', N'Active', 999)
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (2121, N'mPatel', N'Active', 111)
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (3131, N'hBrown', N'Active', 222)
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (4141, N'tMoore', N'Active', 333)
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (5151, N'pWang', N'Active', 444)
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (6161, N'mBrown', N'Active', 555)
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (7171, N'jPrajapati', N'Active', 666)
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (8181, N'bJoshi', N'Active', 777)
INSERT [dbo].[Users] ([UserId], [Password], [UserStatus], [EmploeeId]) VALUES (9191, N'kNguyen', N'Active', 888)
GO
ALTER TABLE [dbo].[AuthorBooks]  WITH CHECK ADD  CONSTRAINT [FK_AuthorBooks_Authors] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[AuthorBooks] CHECK CONSTRAINT [FK_AuthorBooks_Authors]
GO
ALTER TABLE [dbo].[AuthorBooks]  WITH CHECK ADD  CONSTRAINT [FK_AuthorBooks_Books] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Books] ([ISBN])
GO
ALTER TABLE [dbo].[AuthorBooks] CHECK CONSTRAINT [FK_AuthorBooks_Books]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Publishers] FOREIGN KEY([PublisherId])
REFERENCES [dbo].[Publishers] ([PublisherId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Publishers]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Jobs] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([JobId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Jobs]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Books] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Books] ([ISBN])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Books]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Employees] FOREIGN KEY([EmploeeId])
REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Employees]
GO
USE [master]
GO
ALTER DATABASE [HiTechDB1] SET  READ_WRITE 
GO

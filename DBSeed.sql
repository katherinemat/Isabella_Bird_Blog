USE [master]
GO
/****** Object:  Database [IsabellaBirdBlog]    Script Date: 4/19/2017 2:23:41 PM ******/
CREATE DATABASE [IsabellaBirdBlog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IsabellaBirdBlog', FILENAME = N'C:\Users\epicodus\IsabellaBirdBlog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IsabellaBirdBlog_log', FILENAME = N'C:\Users\epicodus\IsabellaBirdBlog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [IsabellaBirdBlog] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IsabellaBirdBlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IsabellaBirdBlog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET ARITHABORT OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [IsabellaBirdBlog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IsabellaBirdBlog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IsabellaBirdBlog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IsabellaBirdBlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IsabellaBirdBlog] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [IsabellaBirdBlog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IsabellaBirdBlog] SET  MULTI_USER 
GO
ALTER DATABASE [IsabellaBirdBlog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IsabellaBirdBlog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IsabellaBirdBlog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IsabellaBirdBlog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IsabellaBirdBlog] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IsabellaBirdBlog] SET QUERY_STORE = OFF
GO
USE [IsabellaBirdBlog]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [IsabellaBirdBlog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/19/2017 2:23:42 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 4/19/2017 2:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiences](
	[ExperienceId] [int] IDENTITY(1,1) NOT NULL,
	[ExperienceDesc] [varchar](max) NOT NULL,
	[ExperienceName] [nvarchar](max) NOT NULL,
	[LocationId] [int] NULL,
 CONSTRAINT [PK_Experiences] PRIMARY KEY CLUSTERED 
(
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 4/19/2017 2:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[GeoClass] [nvarchar](max) NOT NULL,
	[LocationName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 4/19/2017 2:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NULL,
	[PersonName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonsExperiences]    Script Date: 4/19/2017 2:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonsExperiences](
	[PersonId] [int] NOT NULL,
	[ExperienceId] [int] NOT NULL,
 CONSTRAINT [PK_PersonsExperiences] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC,
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170419204436_Initial', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170419212002_LongerDesc', N'1.0.0-rtm-21431')
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([ExperienceId], [ExperienceDesc], [ExperienceName], [LocationId]) VALUES (1, N'I just founded a hospital in my late husband''s name!  I gave money to Fanny Jane Butler to build the John Butler Memorial Hospital in Kashmir, India.', N'Founding A Hospital', 8)
SET IDENTITY_INSERT [dbo].[Experiences] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (1, N'City', N' Yorkshire, England')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (2, N'City', N'Halifax, Canada')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (3, N'Country', N'Australia')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (4, N'Landmark', N'Mauna Loa, Hawaii')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (5, N'Landmark', N'Mauna Kea, Hawaii')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (6, N'Region', N'Rocky Mountains, US')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (7, N'City', N'Mayfair, London, England')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (8, N'Region', N'Kashmir, India')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([PersonId], [LocationId], [PersonName]) VALUES (1, 6, N'Jim Nugent')
INSERT [dbo].[Persons] ([PersonId], [LocationId], [PersonName]) VALUES (2, 7, N'John Murray II')
INSERT [dbo].[Persons] ([PersonId], [LocationId], [PersonName]) VALUES (3, 1, N'Dr John Bishop')
INSERT [dbo].[Persons] ([PersonId], [LocationId], [PersonName]) VALUES (4, 8, N'Fanny Jane Butler')
SET IDENTITY_INSERT [dbo].[Persons] OFF
INSERT [dbo].[PersonsExperiences] ([PersonId], [ExperienceId]) VALUES (2, 1)
INSERT [dbo].[PersonsExperiences] ([PersonId], [ExperienceId]) VALUES (4, 1)
/****** Object:  Index [IX_Experiences_LocationId]    Script Date: 4/19/2017 2:23:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Experiences_LocationId] ON [dbo].[Experiences]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Persons_LocationId]    Script Date: 4/19/2017 2:23:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Persons_LocationId] ON [dbo].[Persons]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonsExperiences_ExperienceId]    Script Date: 4/19/2017 2:23:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonsExperiences_ExperienceId] ON [dbo].[PersonsExperiences]
(
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonsExperiences_PersonId]    Script Date: 4/19/2017 2:23:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonsExperiences_PersonId] ON [dbo].[PersonsExperiences]
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Experiences]  WITH CHECK ADD  CONSTRAINT [FK_Experiences_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
ALTER TABLE [dbo].[Experiences] CHECK CONSTRAINT [FK_Experiences_Locations_LocationId]
GO
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_Locations_LocationId]
GO
ALTER TABLE [dbo].[PersonsExperiences]  WITH CHECK ADD  CONSTRAINT [FK_PersonsExperiences_Experiences_ExperienceId] FOREIGN KEY([ExperienceId])
REFERENCES [dbo].[Experiences] ([ExperienceId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonsExperiences] CHECK CONSTRAINT [FK_PersonsExperiences_Experiences_ExperienceId]
GO
ALTER TABLE [dbo].[PersonsExperiences]  WITH CHECK ADD  CONSTRAINT [FK_PersonsExperiences_Persons_PersonId] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonsExperiences] CHECK CONSTRAINT [FK_PersonsExperiences_Persons_PersonId]
GO
USE [master]
GO
ALTER DATABASE [IsabellaBirdBlog] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [eVMS]    Script Date: 8/2/2017 1:44:21 AM ******/
CREATE DATABASE [eVMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eVMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\eVMS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eVMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\eVMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eVMS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eVMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eVMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eVMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eVMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eVMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eVMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [eVMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eVMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eVMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eVMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eVMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eVMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eVMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eVMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eVMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eVMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eVMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eVMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eVMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eVMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eVMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eVMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eVMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eVMS] SET RECOVERY FULL 
GO
ALTER DATABASE [eVMS] SET  MULTI_USER 
GO
ALTER DATABASE [eVMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eVMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eVMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eVMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [eVMS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'eVMS', N'ON'
GO
USE [eVMS]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBranches]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBranches](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationID] [bigint] NOT NULL,
	[BranchName] [nvarchar](500) NOT NULL,
	[EmailAddress] [nvarchar](200) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[StreetLine1] [nvarchar](500) NULL,
	[StreetLine2] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[StateID] [int] NULL,
	[CountryID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[CreatedUserID] [nvarchar](128) NOT NULL,
	[UpdatedTimestamp] [datetime] NULL,
	[UpdatedUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_tblBranches] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCountries]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountries](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Code] [nchar](10) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[CreatedUserID] [nvarchar](128) NOT NULL,
	[UpdatedTimestamp] [datetime] NULL,
	[UpdatedUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_tblCountries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCountryStates]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountryStates](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryID] [bigint] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Code] [nchar](10) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[CreatedUserID] [nvarchar](128) NOT NULL,
	[UpdatedTimestamp] [datetime] NULL,
	[UpdatedUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_tblCountryStates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLocations]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLocations](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](500) NOT NULL,
	[StreetLine1] [nvarchar](500) NULL,
	[StreetLine2] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[StateID] [int] NULL,
	[CountryID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[CreatedUserID] [nvarchar](128) NOT NULL,
	[UpdatedTimestamp] [datetime] NULL,
	[UpdatedUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_tblLocations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMSPDetails]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMSPDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](500) NOT NULL,
	[WebSite] [nvarchar](200) NULL,
	[EmailAddress] [nvarchar](200) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[StateID] [int] NULL,
	[CountryID] [int] NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[CreatedUserID] [nvarchar](128) NOT NULL,
	[UpdatedTimestamp] [datetime] NULL,
	[UpdatedUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_tblMSPDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMSPUsers]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMSPUsers](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MSPID] [bigint] NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[CreatedUserID] [nvarchar](128) NOT NULL,
	[UpdatedTimestamp] [datetime] NULL,
	[UpdatedUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_tblMSPUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserLocationBranches]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserLocationBranches](
	[ID] [bigint] NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[LocationID] [bigint] NOT NULL,
	[BranchID] [bigint] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[CreatedUserID] [nvarchar](128) NOT NULL,
	[UpdatedTimestamp] [datetime] NULL,
	[UpdatedUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_tblUserLocationBranches] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserProfile]    Script Date: 8/2/2017 1:44:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserProfile](
	[UserID] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[EmailAddress] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](200) NULL,
	[StateID] [int] NULL,
	[CountryID] [int] NULL,
	[ZipCode] [nvarchar](50) NULL,
	[TimezoneID] [int] NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[CreatedUserID] [nvarchar](128) NOT NULL,
	[UpdatedTimestamp] [datetime] NULL,
	[UpdatedUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_tblUserProfile] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/2/2017 1:44:21 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/2/2017 1:44:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/2/2017 1:44:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/2/2017 1:44:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/2/2017 1:44:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/2/2017 1:44:21 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tblBranches]  WITH CHECK ADD  CONSTRAINT [FK_tblBranches_tblLocations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[tblLocations] ([ID])
GO
ALTER TABLE [dbo].[tblBranches] CHECK CONSTRAINT [FK_tblBranches_tblLocations]
GO
ALTER TABLE [dbo].[tblCountryStates]  WITH CHECK ADD  CONSTRAINT [FK_tblCountryStates_tblCountries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([ID])
GO
ALTER TABLE [dbo].[tblCountryStates] CHECK CONSTRAINT [FK_tblCountryStates_tblCountries]
GO
ALTER TABLE [dbo].[tblMSPUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblMSPUsers_tblMSPDetails] FOREIGN KEY([MSPID])
REFERENCES [dbo].[tblMSPDetails] ([ID])
GO
ALTER TABLE [dbo].[tblMSPUsers] CHECK CONSTRAINT [FK_tblMSPUsers_tblMSPDetails]
GO
ALTER TABLE [dbo].[tblMSPUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblMSPUsers_tblUserProfile] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUserProfile] ([UserID])
GO
ALTER TABLE [dbo].[tblMSPUsers] CHECK CONSTRAINT [FK_tblMSPUsers_tblUserProfile]
GO
ALTER TABLE [dbo].[tblUserLocationBranches]  WITH CHECK ADD  CONSTRAINT [FK_tblUserLocationBranches_tblBranches] FOREIGN KEY([BranchID])
REFERENCES [dbo].[tblBranches] ([ID])
GO
ALTER TABLE [dbo].[tblUserLocationBranches] CHECK CONSTRAINT [FK_tblUserLocationBranches_tblBranches]
GO
ALTER TABLE [dbo].[tblUserLocationBranches]  WITH CHECK ADD  CONSTRAINT [FK_tblUserLocationBranches_tblLocations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[tblLocations] ([ID])
GO
ALTER TABLE [dbo].[tblUserLocationBranches] CHECK CONSTRAINT [FK_tblUserLocationBranches_tblLocations]
GO
ALTER TABLE [dbo].[tblUserLocationBranches]  WITH CHECK ADD  CONSTRAINT [FK_tblUserLocationBranches_tblUserProfile] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUserProfile] ([UserID])
GO
ALTER TABLE [dbo].[tblUserLocationBranches] CHECK CONSTRAINT [FK_tblUserLocationBranches_tblUserProfile]
GO
ALTER TABLE [dbo].[tblUserProfile]  WITH CHECK ADD  CONSTRAINT [FK_tblUserProfile_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblUserProfile] CHECK CONSTRAINT [FK_tblUserProfile_AspNetUsers]
GO
USE [master]
GO
ALTER DATABASE [eVMS] SET  READ_WRITE 
GO

USE [JustGoTutor]
GO
/****** Object:  Table [dbo].[CodeDatas]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeDatas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[BaseNo] [nvarchar](50) NULL,
	[ParentNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CodeName] [nvarchar](50) NULL,
	[CodeValue] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_CodeAddressBook]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeAddressBook]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'AddressBook')
GO
/****** Object:  View [dbo].[vi_CodeBrand]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeBrand]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Brand')
GO
/****** Object:  View [dbo].[vi_CodeCalendar]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeCalendar]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Calendar')
GO
/****** Object:  View [dbo].[vi_CodeCloseDate]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeCloseDate]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'CloseDate')
GO
/****** Object:  View [dbo].[vi_CodeCompany]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeCompany]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Company')
GO
/****** Object:  View [dbo].[vi_CodeColor]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeColor]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Color')
GO
/****** Object:  View [dbo].[vi_CodeCustomer]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeCustomer]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Customer')
GO
/****** Object:  View [dbo].[vi_CodeFormStatus]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeFormStatus]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'FormStatus')
GO
/****** Object:  View [dbo].[vi_CodeGender]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeGender]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Gender')
GO
/****** Object:  View [dbo].[vi_CodeLog]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeLog]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Log')
GO
/****** Object:  View [dbo].[vi_CodeMaterial]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeMaterial]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Material')
GO
/****** Object:  View [dbo].[vi_CodeMember]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeMember]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Member')
GO
/****** Object:  View [dbo].[vi_CodeMessage]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeMessage]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Message')
GO
/****** Object:  View [dbo].[vi_CodeNews]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeNews]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'News')
GO
/****** Object:  View [dbo].[vi_CodeNotification]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeNotification]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Notification')
GO
/****** Object:  View [dbo].[vi_CodePhoto]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodePhoto]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Photo')
GO
/****** Object:  View [dbo].[vi_CodeProgram]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeProgram]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Program')
GO
/****** Object:  View [dbo].[vi_CodeResignReason]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeResignReason]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'ResignReason')
GO
/****** Object:  View [dbo].[vi_CodeSheet]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeSheet]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Sheet')
GO
/****** Object:  View [dbo].[vi_CodeSize]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeSize]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Size')
GO
/****** Object:  View [dbo].[vi_CodeTarget]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeTarget]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Target')
GO
/****** Object:  View [dbo].[vi_CodeTax]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeTax]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Tax')
GO
/****** Object:  View [dbo].[vi_TodoList]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_TodoList]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'TodoList')
GO
/****** Object:  View [dbo].[vi_CodeUser]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeUser]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'User')
GO
/****** Object:  View [dbo].[vi_CodeVacation]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeVacation]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Vacation')
GO
/****** Object:  View [dbo].[vi_CodeVendor]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeVendor]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Vendor')
GO
/****** Object:  Table [dbo].[Companys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CompNo] [nvarchar](50) NULL,
	[CompName] [nvarchar](250) NULL,
	[ShortName] [nvarchar](50) NULL,
	[EngName] [nvarchar](250) NULL,
	[EngShortName] [nvarchar](50) NULL,
	[RegisterDate] [datetime] NOT NULL,
	[BossName] [nvarchar](50) NULL,
	[ContactName] [nvarchar](50) NULL,
	[CompTel] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[CompFax] [nvarchar](50) NULL,
	[CompID] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[CompAddress] [nvarchar](250) NULL,
	[CompUrl] [nvarchar](250) NULL,
	[TwitterUrl] [nvarchar](250) NULL,
	[FacebookUrl] [nvarchar](250) NULL,
	[InstagramUrl] [nvarchar](250) NULL,
	[SkypeUrl] [nvarchar](250) NULL,
	[LinkedinUrl] [nvarchar](250) NULL,
	[Latitude] [decimal](20, 15) NOT NULL,
	[Longitude] [decimal](20, 15) NOT NULL,
	[AboutusText] [nvarchar](max) NULL,
	[SupportText] [nvarchar](max) NULL,
	[ReturnText] [nvarchar](max) NULL,
	[ShippingText] [nvarchar](max) NULL,
	[PaymentText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_CompCompany]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vi_CompCompany]
AS
SELECT Id, IsDefault, IsEnabled, CodeNo, CompNo, CompName, ShortName, EngName, EngShortName, RegisterDate, BossName, ContactName, CompTel, ContactTel, CompFax, CompID, ContactEmail, CompAddress, CompUrl, TwitterUrl, FacebookUrl, InstagramUrl, SkypeUrl, LinkedinUrl, Latitude, Longitude, AboutusText, SupportText, ReturnText, ShippingText, PaymentText, Remark
FROM dbo.Companys
WHERE (CodeNo = N'Company')
GO
/****** Object:  View [dbo].[vi_CompCustomer]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CompCustomer]
AS
SELECT Id, IsDefault, IsEnabled, CodeNo, CompNo, CompName, ShortName, EngName, EngShortName, RegisterDate, BossName, ContactName, CompTel, ContactTel, CompFax, CompID, ContactEmail, CompAddress, CompUrl, TwitterUrl, FacebookUrl, InstagramUrl, SkypeUrl, LinkedinUrl, Latitude, Longitude, AboutusText, SupportText, ReturnText, ShippingText, PaymentText, Remark
FROM dbo.Companys
WHERE (CodeNo = N'Customer')
GO
/****** Object:  View [dbo].[vi_CompVendor]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CompVendor]
AS
SELECT Id, IsDefault, IsEnabled, CodeNo, CompNo, CompName, ShortName, EngName, EngShortName, RegisterDate, BossName, ContactName, CompTel, ContactTel, CompFax, CompID, ContactEmail, CompAddress, CompUrl, TwitterUrl, FacebookUrl, InstagramUrl, SkypeUrl, LinkedinUrl, Latitude, Longitude, AboutusText, SupportText, ReturnText, ShippingText, PaymentText, Remark
FROM dbo.Companys
WHERE (CodeNo = N'Vendor')
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](250) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[RoleNo] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[CountryNo] [nvarchar](50) NULL,
	[DeptNo] [nvarchar](50) NULL,
	[TitleNo] [nvarchar](50) NULL,
	[ReviewStar] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[OnboardDate] [date] NULL,
	[LeaveDate] [date] NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactAddress] [nvarchar](250) NULL,
	[ValidateCode] [nvarchar](250) NULL,
	[NotifyPassword] [nvarchar](250) NULL,
	[ContentText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_UserCustomer]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserCustomer]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Customer')
GO
/****** Object:  View [dbo].[vi_UserMis]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserMis]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Mis')
GO
/****** Object:  View [dbo].[vi_UserOperator]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserOperator]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Operator')
GO
/****** Object:  View [dbo].[vi_UserTarget]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserTarget]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Target')
GO
/****** Object:  View [dbo].[vi_UserUser]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserUser]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'User')
GO
/****** Object:  View [dbo].[vi_UserVendor]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserVendor]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Vendor')
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HeaderName] [nvarchar](250) NULL,
	[TitleName] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[DetailText] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AboutUsDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUsDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ItemName] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressBooks]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressBooks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EngName] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[CompName] [nvarchar](250) NULL,
	[CompID] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[CompTel] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[ContactAddress] [nvarchar](250) NULL,
	[LineID] [nvarchar](50) NULL,
	[FacebookID] [nvarchar](50) NULL,
	[TwitterID] [nvarchar](50) NULL,
	[InstagramID] [nvarchar](50) NULL,
	[LinkedInID] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsDebug] [bit] NOT NULL,
	[AppName] [nvarchar](50) NULL,
	[AdminName] [nvarchar](50) NULL,
	[ShopName] [nvarchar](50) NULL,
	[AppVersion] [nvarchar](50) NULL,
	[EncryptionMode] [bit] NOT NULL,
	[PowerBy] [nvarchar](50) NULL,
	[LanguageNo] [nvarchar](50) NULL,
	[GoogleMapKey] [nvarchar](50) NULL,
	[MailSenderName] [nvarchar](50) NULL,
	[MailSenderEmail] [nvarchar](50) NULL,
	[MailReceiverName] [nvarchar](50) NULL,
	[MailReceiverEmail] [nvarchar](50) NULL,
	[MailAppPassword] [nvarchar](50) NULL,
	[MailHostUrl] [nvarchar](250) NULL,
	[MailHostPort] [int] NOT NULL,
	[MailUseSSL] [bit] NOT NULL,
	[WebSiteUrl] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendars]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TargetCode] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[SubjectName] [nvarchar](50) NULL,
	[StartDate] [datetime] NOT NULL,
	[StartTime] [nvarchar](50) NULL,
	[EndDate] [datetime] NOT NULL,
	[EndTime] [nvarchar](50) NULL,
	[ColorName] [nvarchar](50) NULL,
	[IsFullday] [bit] NOT NULL,
	[PlaceName] [nvarchar](250) NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[PlaceAddress] [nvarchar](250) NULL,
	[RoomNo] [nvarchar](50) NULL,
	[ResourceText] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carousels]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carousels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[HeaderName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[MoreUrl] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LotNo] [nvarchar](50) NULL,
	[MemberNo] [nvarchar](50) NULL,
	[VendorNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](250) NULL,
	[ProdNo] [nvarchar](50) NULL,
	[ProdName] [nvarchar](250) NULL,
	[ProdSpec] [nvarchar](250) NULL,
	[OrderQty] [int] NOT NULL,
	[OrderPrice] [int] NOT NULL,
	[OrderAmount] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category1s]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category1s](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsImportment] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ParentNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[EnglishName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Category1s] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category2s]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category2s](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ParentNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[EnglishName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Category2s] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category3s]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category3s](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ParentNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[EnglishName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Category3s] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsCategory] [bit] NOT NULL,
	[ParentNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[RouteName] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityAreas]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityAreas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[AreaName] [nvarchar](50) NULL,
	[Latitude] [decimal](18, 15) NULL,
	[Longitude] [decimal](18, 15) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[CityName] [nvarchar](50) NULL,
	[Latitude] [decimal](18, 15) NULL,
	[Longitude] [decimal](18, 15) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ClientName] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[WebsiteUrl] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CloseDates]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CloseDates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodeBases]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeBases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[BaseNo] [nvarchar](50) NULL,
	[BaseName] [nvarchar](50) NULL,
	[DefaultValue] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryNo] [nvarchar](50) NULL,
	[CountryName] [nvarchar](50) NULL,
	[Remark] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[CourseNo] [nvarchar](50) NULL,
	[CourseName] [nvarchar](50) NULL,
	[StatusCode] [nvarchar](50) NULL,
	[RegisterStartDate] [date] NULL,
	[RegisterEndDate] [date] NULL,
	[OpenStartDate] [date] NOT NULL,
	[OpenEndDate] [date] NOT NULL,
	[TeacherNo] [nvarchar](50) NULL,
	[CourseAmount] [int] NOT NULL,
	[TotalHours] [int] NULL,
	[CourseCode] [nvarchar](50) NULL,
	[CourseOutline] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCase]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCase](
	[Id] [int] IDENTITY(10001,1) NOT NULL,
	[StatusCode] [nvarchar](50) NULL,
	[CaseDate] [date] NULL,
	[ConfirmTime] [datetime] NULL,
	[CaseTime] [nvarchar](250) NULL,
	[StudentNo] [nvarchar](50) NULL,
	[StudentName] [nvarchar](50) NULL,
	[TeacherNo] [nvarchar](50) NULL,
	[TeacherName] [nvarchar](50) NULL,
	[CourseNo] [nvarchar](50) NULL,
	[CourseName] [nvarchar](50) NULL,
	[TimeSection] [nvarchar](250) NULL,
	[WeekSection] [nvarchar](250) NULL,
	[UserMemo] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_CourseCase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCode]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CodeName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_CourseCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseStatus]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusNo] [nvarchar](50) NULL,
	[StatusName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_CourseStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeptNo] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[EmpNo] [nvarchar](50) NULL,
	[EmpName] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[DeptNo] [nvarchar](50) NULL,
	[TitleNo] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[OnboardDate] [date] NULL,
	[LeaveDate] [date] NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactAddress] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtensionTables]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtensionTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ExtName] [nvarchar](50) NULL,
	[ExtNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Featureds]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Featureds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ProdNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormDetail]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[FormCode] [nvarchar](50) NULL,
	[FormNo] [nvarchar](50) NULL,
	[GuidNo] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[TargetName] [nvarchar](50) NULL,
	[DeptNo] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[TitleNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[StartTime] [datetime] NULL,
	[EndDate] [date] NULL,
	[EndTime] [datetime] NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CodeName] [nvarchar](50) NULL,
	[Qty1] [int] NOT NULL,
	[Qty2] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormMaster]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormCode] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[StatusCode] [nvarchar](50) NULL,
	[FormNo] [nvarchar](50) NULL,
	[FormDate] [date] NULL,
	[FormTime] [datetime] NULL,
	[TargetNo] [nvarchar](50) NULL,
	[TargetName] [nvarchar](50) NULL,
	[DeptNo] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[TitleNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[StartTime] [datetime] NULL,
	[EndDate] [date] NULL,
	[EndTime] [datetime] NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CodeName] [nvarchar](50) NULL,
	[Qty1] [int] NOT NULL,
	[Qty2] [int] NOT NULL,
	[ApproveTime] [datetime] NULL,
	[RejectTime] [datetime] NULL,
	[SourceNo] [nvarchar](50) NULL,
	[ApproveNo] [nvarchar](50) NULL,
	[RejectNo] [nvarchar](50) NULL,
	[NextNo] [nvarchar](50) NULL,
	[GuidNo] [nvarchar](50) NULL,
	[NotifyKey] [nvarchar](50) NULL,
	[FormDescribe] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForumBoards]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumBoards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[BoardNo] [nvarchar](50) NULL,
	[BoardName] [nvarchar](250) NULL,
	[IconName] [nvarchar](50) NULL,
	[DescriptionText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forums]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentGuid] [nvarchar](50) NULL,
	[ReplyGuid] [nvarchar](50) NULL,
	[BoardNo] [nvarchar](50) NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsClosed] [bit] NOT NULL,
	[SubjectDate] [datetime] NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[SubjectName] [nvarchar](250) NULL,
	[SubjectContent] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WareHouseNo] [nvarchar](50) NULL,
	[ProductNo] [nvarchar](50) NULL,
	[Qty] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventorys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeNo] [nvarchar](50) NULL,
	[SheetCode] [nvarchar](50) NULL,
	[SheetNo] [nvarchar](50) NULL,
	[SheetDate] [date] NULL,
	[WarehouseNo] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[TargetName] [nvarchar](50) NULL,
	[HandleNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventorysDetail]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventorysDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[ProductNo] [nvarchar](50) NULL,
	[Qty] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventorysType]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventorysType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeNo] [nvarchar](50) NULL,
	[TypeName] [nvarchar](50) NULL,
	[QtyCode] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvMasters]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductNo] [nvarchar](50) NULL,
	[Qty] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LangNo] [nvarchar](50) NULL,
	[LangName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [date] NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[LogNo] [nvarchar](50) NULL,
	[LogQty] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MapPositions]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapPositions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TargetCode] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[ContactAddress] [nvarchar](250) NULL,
	[Latitude] [decimal](18, 15) NOT NULL,
	[Longitude] [decimal](18, 15) NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[SenderNo] [nvarchar](50) NULL,
	[ReceiverNo] [nvarchar](50) NULL,
	[SendDate] [date] NOT NULL,
	[SendTime] [date] NOT NULL,
	[HeaderText] [nvarchar](250) NULL,
	[MessageText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsWorkflow] [bit] NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[ModuleNo] [nvarchar](50) NULL,
	[ModuleName] [nvarchar](50) NULL,
	[IconName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[PublishDate] [datetime] NOT NULL,
	[HeaderName] [nvarchar](50) NULL,
	[DetailText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetter]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserEmail] [nvarchar](50) NULL,
	[SubscribeDate] [datetime] NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[SourceNo] [nvarchar](50) NULL,
	[SenderNo] [nvarchar](50) NULL,
	[ReceiverNo] [nvarchar](50) NULL,
	[SendDate] [date] NOT NULL,
	[SendTime] [date] NOT NULL,
	[HeaderText] [nvarchar](250) NULL,
	[MessageText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentNo] [nvarchar](50) NULL,
	[VendorNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[ProdNo] [nvarchar](50) NULL,
	[ProdName] [nvarchar](250) NULL,
	[ProdSpec] [nvarchar](250) NULL,
	[OrderPrice] [int] NOT NULL,
	[OrderQty] [int] NOT NULL,
	[OrderAmount] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SheetNo] [nvarchar](50) NULL,
	[SheetDate] [datetime] NOT NULL,
	[StatusCode] [nvarchar](50) NULL,
	[IsClosed] [bit] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[CustNo] [nvarchar](50) NULL,
	[CustName] [nvarchar](50) NULL,
	[PaymentNo] [nvarchar](50) NULL,
	[ShippingNo] [nvarchar](50) NULL,
	[ReceiverName] [nvarchar](50) NULL,
	[ReceiverEmail] [nvarchar](50) NULL,
	[ReceiverAddress] [nvarchar](250) NULL,
	[OrderAmount] [int] NOT NULL,
	[TaxAmount] [int] NOT NULL,
	[TotalAmount] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersStatus]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsPayed] [bit] NOT NULL,
	[IsClosed] [bit] NOT NULL,
	[StatusNo] [nvarchar](50) NULL,
	[StatusName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentNo] [nvarchar](50) NULL,
	[PaymentName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[FolderName] [nvarchar](50) NULL,
	[PhotoName] [nvarchar](250) NULL,
	[PriceName] [nvarchar](250) NULL,
	[SaleDate] [date] NOT NULL,
	[DetailText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PricingDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PricingDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PricingNo] [nvarchar](50) NULL,
	[IsSupport] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ItemName] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricings]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsAdvanced] [bit] NOT NULL,
	[IsRecommend] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[PricingNo] [nvarchar](50) NULL,
	[PricingName] [nvarchar](50) NULL,
	[ProdPrice] [int] NOT NULL,
	[CycleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductFeatureds]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductFeatureds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[FeaturedName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInventorys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInventorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[PropertyNo] [nvarchar](50) NULL,
	[IsInventory] [bit] NOT NULL,
	[InventoryQty] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPropertys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPropertys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsSelect] [bit] NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[PropertyNo] [nvarchar](50) NULL,
	[PropertyValue] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRelations]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRelations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsInventory] [bit] NOT NULL,
	[IsShowPhoto] [bit] NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[ProdName] [nvarchar](250) NULL,
	[BrandName] [nvarchar](50) NULL,
	[BrandSeriesName] [nvarchar](50) NULL,
	[BarcodeNo] [nvarchar](50) NULL,
	[VendorNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[CostPrice] [int] NOT NULL,
	[MarketPrice] [int] NOT NULL,
	[SalePrice] [int] NOT NULL,
	[DiscountPrice] [int] NOT NULL,
	[InventoryQty] [int] NOT NULL,
	[ContentText] [nvarchar](max) NULL,
	[SpecificationText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsPageSize] [bit] NOT NULL,
	[IsSearch] [bit] NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[ModuleNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[PrgNo] [nvarchar](50) NULL,
	[PrgName] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[AreaName] [nvarchar](50) NULL,
	[ControllerName] [nvarchar](50) NULL,
	[ActionName] [nvarchar](50) NULL,
	[ParmValue] [nvarchar](50) NULL,
	[PageSize] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ProdNo] [nvarchar](50) NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[SalePrice] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyNames]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyNames](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Propertys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propertys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsSelect] [bit] NOT NULL,
	[PropertyNo] [nvarchar](50) NULL,
	[PropertyName] [nvarchar](50) NULL,
	[PropertyValue] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Securitys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Securitys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[ModuleNo] [nvarchar](50) NULL,
	[PrgNo] [nvarchar](50) NULL,
	[IsAdd] [bit] NOT NULL,
	[IsEdit] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[IsConfirm] [bit] NOT NULL,
	[IsUndo] [bit] NOT NULL,
	[IsInvalid] [bit] NOT NULL,
	[IsUpload] [bit] NOT NULL,
	[IsDownload] [bit] NOT NULL,
	[IsPrint] [bit] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[HeaderName] [nvarchar](250) NULL,
	[DetailName] [nvarchar](250) NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippings]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShippingNo] [nvarchar](50) NULL,
	[ShippingName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[TeamNo] [nvarchar](50) NULL,
	[TeamName] [nvarchar](50) NULL,
	[EngName] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[TwitterUrl] [nvarchar](50) NULL,
	[FacebookUrl] [nvarchar](50) NULL,
	[LinkedinUrl] [nvarchar](50) NULL,
	[InstagramUrl] [nvarchar](50) NULL,
	[SkypeUrl] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[DetailText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Titles]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TitleNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TodoLists]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TodoLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsFinished] [bit] NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](250) NULL,
	[DeadlineDate] [datetime] NOT NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCategorys]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCategorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_UserCategorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacations]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VacYear] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouses]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseNo] [nvarchar](50) NULL,
	[WarehouseName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsClose] [bit] NOT NULL,
	[IsApprove] [bit] NOT NULL,
	[IsReject] [bit] NOT NULL,
	[MasterGuidNo] [nvarchar](50) NULL,
	[RouteGuidNo] [nvarchar](50) NULL,
	[RouteOrder] [nvarchar](50) NULL,
	[RoleNo] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[AgentNo] [nvarchar](50) NULL,
	[AgentName] [nvarchar](50) NULL,
	[CreateTime] [datetime] NOT NULL,
	[UserReadTime] [datetime] NULL,
	[AgentReadTime] [datetime] NULL,
	[SignUserNo] [nvarchar](50) NULL,
	[SignUserName] [nvarchar](50) NULL,
	[SignTime] [datetime] NULL,
	[SignComment] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowMasters]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsClose] [bit] NOT NULL,
	[IsApprove] [bit] NOT NULL,
	[IsReject] [bit] NOT NULL,
	[FlowGuidNo] [nvarchar](50) NULL,
	[SheetNo] [nvarchar](50) NULL,
	[SheetName] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[DeadlineTime] [datetime] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[ContentText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowRoles]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowRoleUsers]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowRoleUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[AgentNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowRoutes]    Script Date: 2023/10/4 下午 11:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowRoutes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrgNo] [nvarchar](50) NULL,
	[RouteOrder] [nvarchar](50) NULL,
	[RoleNo] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Applications] ON 

INSERT [dbo].[Applications] ([Id], [IsEnabled], [IsDebug], [AppName], [AdminName], [ShopName], [AppVersion], [EncryptionMode], [PowerBy], [LanguageNo], [GoogleMapKey], [MailSenderName], [MailSenderEmail], [MailReceiverName], [MailReceiverEmail], [MailAppPassword], [MailHostUrl], [MailHostPort], [MailUseSSL], [WebSiteUrl], [Remark]) VALUES (1, 1, 1, N'好好用ERP', N'好好用後台管理', N'好好用購物商城', N'1.0', 0, N'DevStudio', N'zh-TW', N'xxxxxxxxx', N'網站管理員', N'xxxxxxxxx@gmail.com', N'網站管理員', N'xxxxxxxxx@gmail.com', N'xxxxxxxxx', N'smtp.gmail.com', 587, 1, N'http://localhost:8888', N'')
SET IDENTITY_INSERT [dbo].[Applications] OFF
GO
SET IDENTITY_INSERT [dbo].[Carousels] ON 

INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (1, 1, N'01', N'歡迎來到我們公司', N'嗨！歡迎來到我們公司！ 我們是一間「以人為本」、帶有真實溫度、採用人性化管理的公司，我們重視團隊，並給予每一位同仁尊重與支持。 你的自由感有多大，來自於你對團隊的擁有感有多大。', N'Carousel1.jpg', N'#', N'')
INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (2, 0, N'02', N'溫馨的工作環境', N'我們公司在改善員工的工作環境上展現積極的態度，藉此提升職場的工作效率。為了確保這一點，我們公司提供免費的休閒活動、餐廳和無障礙設施。也為了員工身體健康我們也保持清新的空氣和提供過濾後的飲用水給員工飲用。', N'Carousel2.jpg', N'#', N'')
INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (3, 0, N'03', N'專業的團隊合作', N'如獅群般的團隊合作. 團隊是由員工和管理層組成的一個共同體，該共同體合理利用每一個成員的知識和技能協同工作，解決問題，達到共同的目標。 我們是一支專業的團隊。我們的成員擁有多年的系統整合專業技術背景，來自國內知名公司的骨幹。', N'Carousel3.jpg', N'#', N'')
SET IDENTITY_INSERT [dbo].[Carousels] OFF
GO
SET IDENTITY_INSERT [dbo].[Category1s] ON 

INSERT [dbo].[Category1s] ([Id], [IsEnabled], [IsImportment], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (1, 1, 1, N'01', N'', N'SPT', N'運動類', N'Sport', NULL)
INSERT [dbo].[Category1s] ([Id], [IsEnabled], [IsImportment], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (2, 1, 0, N'02', N'', N'SCI', N'科學類', N'Science', NULL)
INSERT [dbo].[Category1s] ([Id], [IsEnabled], [IsImportment], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (3, 1, 0, N'03', N'', N'PRG', N'程式類', N'Programm', NULL)
INSERT [dbo].[Category1s] ([Id], [IsEnabled], [IsImportment], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (4, 1, 1, N'04', N'', N'LAN', N'語言類', N'Language', NULL)
SET IDENTITY_INSERT [dbo].[Category1s] OFF
GO
SET IDENTITY_INSERT [dbo].[Category2s] ON 

INSERT [dbo].[Category2s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (1, 1, N'01', N'LAN', N'ENG', N'英文', N'English', NULL)
INSERT [dbo].[Category2s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (2, 1, N'02', N'LAN', N'JPN', N'日文', N'Japanese', NULL)
INSERT [dbo].[Category2s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (3, 1, N'03', N'LAN', N'KOR', N'韓文', N'Korean', NULL)
INSERT [dbo].[Category2s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (4, 1, N'04', N'LAN', N'FRN', N'法文', N'France', NULL)
SET IDENTITY_INSERT [dbo].[Category2s] OFF
GO
SET IDENTITY_INSERT [dbo].[Category3s] ON 

INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (1, 1, N'01', N'ENG', N'ENGBUS', N'商用英文', N'Business English', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (2, 1, N'01', N'ENG', N'ENGLIC', N'英文證照', N'English Licence', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (3, 1, N'01', N'ENG', N'ENGSPK', N'英文口說', N'English Speaking', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (4, 1, N'01', N'ENG', N'ENGKID', N'兒童英文', N'Kid English', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (5, 1, N'02', N'JPN', N'JPNBUS', N'商用日文', N'Business Japanese', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (6, 1, N'02', N'JPN', N'JPNLIC', N'日文證照', N'Japanese Licence', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (7, 1, N'02', N'JPN', N'JPNSPK', N'日文口說', N'Japanese Speaking', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (8, 1, N'02', N'JPN', N'JPNKID', N'兒童日文', N'Kid Japanese', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (9, 1, N'03', N'KOR', N'KORBUS', N'商用韓文', N'Business Korean', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (10, 1, N'03', N'KOR', N'KORLIC', N'韓文證照', N'Korean Licence', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (11, 1, N'03', N'KOR', N'KORSPK', N'韓文口說', N'Korean Speaking', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (12, 1, N'03', N'KOR', N'KORKID', N'兒童韓文', N'Kid Korean', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (13, 1, N'04', N'FRN', N'KORBUS', N'商用法文', N'Business French', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (14, 1, N'04', N'FRN', N'FRNLIC', N'法文證照', N'French Licence', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (15, 1, N'04', N'FRN', N'FRNSPK', N'法文口說', N'French Speaking', NULL)
INSERT [dbo].[Category3s] ([Id], [IsEnabled], [SortNo], [ParentNo], [CategoryNo], [CategoryName], [EnglishName], [Remark]) VALUES (16, 1, N'04', N'FRN', N'FRNKID', N'兒童法文', N'Kid French', NULL)
SET IDENTITY_INSERT [dbo].[Category3s] OFF
GO
SET IDENTITY_INSERT [dbo].[CityAreas] ON 

INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (1, N'宜蘭縣', N'三星鄉', CAST(121.664271400000000 AS Decimal(18, 15)), CAST(24.667719720000000 AS Decimal(18, 15)), N'宜蘭縣三星鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (2, N'宜蘭縣', N'大同鄉', CAST(121.504036900000000 AS Decimal(18, 15)), CAST(24.551520820000000 AS Decimal(18, 15)), N'宜蘭縣大同鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (3, N'宜蘭縣', N'五結鄉', CAST(121.805834200000000 AS Decimal(18, 15)), CAST(24.688873430000000 AS Decimal(18, 15)), N'宜蘭縣五結鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (4, N'宜蘭縣', N'冬山鄉', CAST(121.760255000000000 AS Decimal(18, 15)), CAST(24.642149860000000 AS Decimal(18, 15)), N'宜蘭縣冬山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (5, N'宜蘭縣', N'壯圍鄉', CAST(121.801762200000000 AS Decimal(18, 15)), CAST(24.751830420000000 AS Decimal(18, 15)), N'宜蘭縣壯圍鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (6, N'宜蘭縣', N'宜蘭市', CAST(121.756935800000000 AS Decimal(18, 15)), CAST(24.750211840000000 AS Decimal(18, 15)), N'宜蘭縣宜蘭市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (7, N'宜蘭縣', N'南澳鄉', CAST(121.656059300000000 AS Decimal(18, 15)), CAST(24.448640580000000 AS Decimal(18, 15)), N'宜蘭縣南澳鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (8, N'宜蘭縣', N'員山鄉', CAST(121.661228200000000 AS Decimal(18, 15)), CAST(24.741992370000000 AS Decimal(18, 15)), N'宜蘭縣員山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (9, N'宜蘭縣', N'釣魚臺', CAST(123.475482000000000 AS Decimal(18, 15)), CAST(25.746396000000000 AS Decimal(18, 15)), N'宜蘭縣釣魚臺列嶼')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (10, N'宜蘭縣', N'頭城鎮', CAST(121.845797000000000 AS Decimal(18, 15)), CAST(24.900758820000000 AS Decimal(18, 15)), N'宜蘭縣頭城鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (11, N'宜蘭縣', N'礁溪鄉', CAST(121.734660600000000 AS Decimal(18, 15)), CAST(24.811441920000000 AS Decimal(18, 15)), N'宜蘭縣礁溪鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (12, N'宜蘭縣', N'羅東鎮', CAST(121.770178200000000 AS Decimal(18, 15)), CAST(24.678848240000000 AS Decimal(18, 15)), N'宜蘭縣羅東鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (13, N'宜蘭縣', N'蘇澳鎮', CAST(121.834689200000000 AS Decimal(18, 15)), CAST(24.554670580000000 AS Decimal(18, 15)), N'宜蘭縣蘇澳鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (14, N'花蓮縣', N'玉里鎮', CAST(121.360447600000000 AS Decimal(18, 15)), CAST(23.371435880000000 AS Decimal(18, 15)), N'花蓮縣玉里鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (15, N'花蓮縣', N'光復鄉', CAST(121.435123100000000 AS Decimal(18, 15)), CAST(23.646587420000000 AS Decimal(18, 15)), N'花蓮縣光復鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (16, N'花蓮縣', N'吉安鄉', CAST(121.564673800000000 AS Decimal(18, 15)), CAST(23.955465850000000 AS Decimal(18, 15)), N'花蓮縣吉安鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (17, N'花蓮縣', N'秀林鄉', CAST(121.480719400000000 AS Decimal(18, 15)), CAST(24.123744140000000 AS Decimal(18, 15)), N'花蓮縣秀林鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (18, N'花蓮縣', N'卓溪鄉', CAST(121.180422200000000 AS Decimal(18, 15)), CAST(23.390628750000000 AS Decimal(18, 15)), N'花蓮縣卓溪鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (19, N'花蓮縣', N'花蓮市', CAST(121.607146300000000 AS Decimal(18, 15)), CAST(23.997002710000000 AS Decimal(18, 15)), N'花蓮縣花蓮市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (20, N'花蓮縣', N'富里鄉', CAST(121.298049400000000 AS Decimal(18, 15)), CAST(23.196720920000000 AS Decimal(18, 15)), N'花蓮縣富里鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (21, N'花蓮縣', N'新城鄉', CAST(121.613796900000000 AS Decimal(18, 15)), CAST(24.055799520000000 AS Decimal(18, 15)), N'花蓮縣新城鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (22, N'花蓮縣', N'瑞穗鄉', CAST(121.407347200000000 AS Decimal(18, 15)), CAST(23.515612400000000 AS Decimal(18, 15)), N'花蓮縣瑞穗鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (23, N'花蓮縣', N'萬榮鄉', CAST(121.318953100000000 AS Decimal(18, 15)), CAST(23.727726290000000 AS Decimal(18, 15)), N'花蓮縣萬榮鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (24, N'花蓮縣', N'壽豐鄉', CAST(121.534156900000000 AS Decimal(18, 15)), CAST(23.844597140000000 AS Decimal(18, 15)), N'花蓮縣壽豐鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (25, N'花蓮縣', N'鳳林鎮', CAST(121.469884800000000 AS Decimal(18, 15)), CAST(23.743244620000000 AS Decimal(18, 15)), N'花蓮縣鳳林鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (26, N'花蓮縣', N'豐濱鄉', CAST(121.494233100000000 AS Decimal(18, 15)), CAST(23.585194280000000 AS Decimal(18, 15)), N'花蓮縣豐濱鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (27, N'金門縣', N'金沙鎮', CAST(118.408410000000000 AS Decimal(18, 15)), CAST(24.458650000000000 AS Decimal(18, 15)), N'金門縣金沙鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (28, N'金門縣', N'金城鎮', CAST(118.301280000000000 AS Decimal(18, 15)), CAST(24.384020000000000 AS Decimal(18, 15)), N'金門縣金城鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (29, N'金門縣', N'金湖鎮', CAST(118.403730000000000 AS Decimal(18, 15)), CAST(24.414960000000000 AS Decimal(18, 15)), N'金門縣金湖鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (30, N'金門縣', N'金寧鄉', CAST(118.317050000000000 AS Decimal(18, 15)), CAST(24.424820000000000 AS Decimal(18, 15)), N'金門縣金寧鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (31, N'金門縣', N'烈嶼鄉', CAST(118.227890000000000 AS Decimal(18, 15)), CAST(24.401660000000000 AS Decimal(18, 15)), N'金門縣烈嶼鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (32, N'金門縣', N'烏坵鄉', CAST(119.452738000000000 AS Decimal(18, 15)), CAST(24.992338000000000 AS Decimal(18, 15)), N'金門縣烏坵鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (33, N'南投縣', N'中寮鄉', CAST(120.785915900000000 AS Decimal(18, 15)), CAST(23.905892140000000 AS Decimal(18, 15)), N'南投縣中寮鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (34, N'南投縣', N'仁愛鄉', CAST(121.144387900000000 AS Decimal(18, 15)), CAST(24.028865130000000 AS Decimal(18, 15)), N'南投縣仁愛鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (35, N'南投縣', N'水里鄉', CAST(120.862272100000000 AS Decimal(18, 15)), CAST(23.796129070000000 AS Decimal(18, 15)), N'南投縣水里鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (36, N'南投縣', N'名間鄉', CAST(120.677440200000000 AS Decimal(18, 15)), CAST(23.851077100000000 AS Decimal(18, 15)), N'南投縣名間鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (37, N'南投縣', N'竹山鎮', CAST(120.710079700000000 AS Decimal(18, 15)), CAST(23.698055180000000 AS Decimal(18, 15)), N'南投縣竹山鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (38, N'南投縣', N'信義鄉', CAST(121.021286700000000 AS Decimal(18, 15)), CAST(23.655464700000000 AS Decimal(18, 15)), N'南投縣信義鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (39, N'南投縣', N'南投市', CAST(120.678765800000000 AS Decimal(18, 15)), CAST(23.921735370000000 AS Decimal(18, 15)), N'南投縣南投市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (40, N'南投縣', N'埔里鎮', CAST(120.962525900000000 AS Decimal(18, 15)), CAST(23.978925910000000 AS Decimal(18, 15)), N'南投縣埔里鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (41, N'南投縣', N'草屯鎮', CAST(120.732618200000000 AS Decimal(18, 15)), CAST(23.983210810000000 AS Decimal(18, 15)), N'南投縣草屯鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (42, N'南投縣', N'國姓鄉', CAST(120.867605200000000 AS Decimal(18, 15)), CAST(24.031354130000000 AS Decimal(18, 15)), N'南投縣國姓鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (43, N'南投縣', N'魚池鄉', CAST(120.925673600000000 AS Decimal(18, 15)), CAST(23.876012130000000 AS Decimal(18, 15)), N'南投縣魚池鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (44, N'南投縣', N'鹿谷鄉', CAST(120.781506500000000 AS Decimal(18, 15)), CAST(23.737760290000000 AS Decimal(18, 15)), N'南投縣鹿谷鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (45, N'南投縣', N'集集鎮', CAST(120.785419200000000 AS Decimal(18, 15)), CAST(23.837016870000000 AS Decimal(18, 15)), N'南投縣集集鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (46, N'屏東縣', N'九如鄉', CAST(120.484504400000000 AS Decimal(18, 15)), CAST(22.731667700000000 AS Decimal(18, 15)), N'屏東縣九如鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (47, N'屏東縣', N'三地門', CAST(120.686521900000000 AS Decimal(18, 15)), CAST(22.797868470000000 AS Decimal(18, 15)), N'屏東縣三地門鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (48, N'屏東縣', N'內埔鄉', CAST(120.588822200000000 AS Decimal(18, 15)), CAST(22.651169330000000 AS Decimal(18, 15)), N'屏東縣內埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (49, N'屏東縣', N'竹田鄉', CAST(120.526637900000000 AS Decimal(18, 15)), CAST(22.588556360000000 AS Decimal(18, 15)), N'屏東縣竹田鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (50, N'屏東縣', N'牡丹鄉', CAST(120.817360900000000 AS Decimal(18, 15)), CAST(22.155528590000000 AS Decimal(18, 15)), N'屏東縣牡丹鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (51, N'屏東縣', N'車城鄉', CAST(120.743263300000000 AS Decimal(18, 15)), CAST(22.079156170000000 AS Decimal(18, 15)), N'屏東縣車城鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (52, N'屏東縣', N'里港鄉', CAST(120.506127600000000 AS Decimal(18, 15)), CAST(22.798548310000000 AS Decimal(18, 15)), N'屏東縣里港鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (53, N'屏東縣', N'佳冬鄉', CAST(120.547612400000000 AS Decimal(18, 15)), CAST(22.429806240000000 AS Decimal(18, 15)), N'屏東縣佳冬鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (54, N'屏東縣', N'來義鄉', CAST(120.685723200000000 AS Decimal(18, 15)), CAST(22.501572060000000 AS Decimal(18, 15)), N'屏東縣來義鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (55, N'屏東縣', N'枋山鄉', CAST(120.656767300000000 AS Decimal(18, 15)), CAST(22.270869620000000 AS Decimal(18, 15)), N'屏東縣枋山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (56, N'屏東縣', N'枋寮鄉', CAST(120.597584500000000 AS Decimal(18, 15)), CAST(22.403341990000000 AS Decimal(18, 15)), N'屏東縣枋寮鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (57, N'屏東縣', N'東港鎮', CAST(120.475133300000000 AS Decimal(18, 15)), CAST(22.462656350000000 AS Decimal(18, 15)), N'屏東縣東港鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (58, N'屏東縣', N'林邊鄉', CAST(120.512509500000000 AS Decimal(18, 15)), CAST(22.441421010000000 AS Decimal(18, 15)), N'屏東縣林邊鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (59, N'屏東縣', N'長治鄉', CAST(120.555979000000000 AS Decimal(18, 15)), CAST(22.694549520000000 AS Decimal(18, 15)), N'屏東縣長治鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (60, N'屏東縣', N'南州鄉', CAST(120.518056100000000 AS Decimal(18, 15)), CAST(22.479807040000000 AS Decimal(18, 15)), N'屏東縣南州鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (61, N'屏東縣', N'屏東市', CAST(120.479994800000000 AS Decimal(18, 15)), CAST(22.664737500000000 AS Decimal(18, 15)), N'屏東縣屏東市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (62, N'屏東縣', N'恆春鎮', CAST(120.763253700000000 AS Decimal(18, 15)), CAST(21.985316450000000 AS Decimal(18, 15)), N'屏東縣恆春鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (63, N'屏東縣', N'春日鄉', CAST(120.697579900000000 AS Decimal(18, 15)), CAST(22.403997540000000 AS Decimal(18, 15)), N'屏東縣春日鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (64, N'屏東縣', N'崁頂鄉', CAST(120.500659800000000 AS Decimal(18, 15)), CAST(22.515281510000000 AS Decimal(18, 15)), N'屏東縣崁頂鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (65, N'屏東縣', N'泰武鄉', CAST(120.691792900000000 AS Decimal(18, 15)), CAST(22.604084770000000 AS Decimal(18, 15)), N'屏東縣泰武鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (66, N'屏東縣', N'琉球鄉', CAST(120.371046600000000 AS Decimal(18, 15)), CAST(22.340002780000000 AS Decimal(18, 15)), N'屏東縣琉球鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (67, N'屏東縣', N'高樹鄉', CAST(120.601767800000000 AS Decimal(18, 15)), CAST(22.809920220000000 AS Decimal(18, 15)), N'屏東縣高樹鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (68, N'屏東縣', N'新埤鄉', CAST(120.584625700000000 AS Decimal(18, 15)), CAST(22.486762790000000 AS Decimal(18, 15)), N'屏東縣新埤鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (69, N'屏東縣', N'新園鄉', CAST(120.450142900000000 AS Decimal(18, 15)), CAST(22.517190300000000 AS Decimal(18, 15)), N'屏東縣新園鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (70, N'屏東縣', N'獅子鄉', CAST(120.735645400000000 AS Decimal(18, 15)), CAST(22.260849210000000 AS Decimal(18, 15)), N'屏東縣獅子鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (71, N'屏東縣', N'萬丹鄉', CAST(120.476618800000000 AS Decimal(18, 15)), CAST(22.588495470000000 AS Decimal(18, 15)), N'屏東縣萬丹鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (72, N'屏東縣', N'萬巒鄉', CAST(120.601817000000000 AS Decimal(18, 15)), CAST(22.582334590000000 AS Decimal(18, 15)), N'屏東縣萬巒鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (73, N'屏東縣', N'滿州鄉', CAST(120.843567500000000 AS Decimal(18, 15)), CAST(22.049300150000000 AS Decimal(18, 15)), N'屏東縣滿州鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (74, N'屏東縣', N'瑪家鄉', CAST(120.679923900000000 AS Decimal(18, 15)), CAST(22.671077640000000 AS Decimal(18, 15)), N'屏東縣瑪家鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (75, N'屏東縣', N'潮州鎮', CAST(120.556806300000000 AS Decimal(18, 15)), CAST(22.536429470000000 AS Decimal(18, 15)), N'屏東縣潮州鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (76, N'屏東縣', N'霧臺鄉', CAST(120.800809900000000 AS Decimal(18, 15)), CAST(22.759904780000000 AS Decimal(18, 15)), N'屏東縣霧臺鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (77, N'屏東縣', N'麟洛鄉', CAST(120.529969300000000 AS Decimal(18, 15)), CAST(22.648763670000000 AS Decimal(18, 15)), N'屏東縣麟洛鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (78, N'屏東縣', N'鹽埔鄉', CAST(120.569394100000000 AS Decimal(18, 15)), CAST(22.742536360000000 AS Decimal(18, 15)), N'屏東縣鹽埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (79, N'苗栗縣', N'三義鄉', CAST(120.770192900000000 AS Decimal(18, 15)), CAST(24.380816590000000 AS Decimal(18, 15)), N'苗栗縣三義鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (80, N'苗栗縣', N'三灣鄉', CAST(120.952574500000000 AS Decimal(18, 15)), CAST(24.635994050000000 AS Decimal(18, 15)), N'苗栗縣三灣鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (81, N'苗栗縣', N'大湖鄉', CAST(120.863119200000000 AS Decimal(18, 15)), CAST(24.393596410000000 AS Decimal(18, 15)), N'苗栗縣大湖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (82, N'苗栗縣', N'公館鄉', CAST(120.850590400000000 AS Decimal(18, 15)), CAST(24.502496860000000 AS Decimal(18, 15)), N'苗栗縣公館鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (83, N'苗栗縣', N'竹南鎮', CAST(120.877731600000000 AS Decimal(18, 15)), CAST(24.698624590000000 AS Decimal(18, 15)), N'苗栗縣竹南鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (84, N'苗栗縣', N'西湖鄉', CAST(120.761414400000000 AS Decimal(18, 15)), CAST(24.541532180000000 AS Decimal(18, 15)), N'苗栗縣西湖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (85, N'苗栗縣', N'卓蘭鎮', CAST(120.856196600000000 AS Decimal(18, 15)), CAST(24.325101670000000 AS Decimal(18, 15)), N'苗栗縣卓蘭鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (86, N'苗栗縣', N'南庄鄉', CAST(121.017471000000000 AS Decimal(18, 15)), CAST(24.566084320000000 AS Decimal(18, 15)), N'苗栗縣南庄鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (87, N'苗栗縣', N'後龍鎮', CAST(120.781205000000000 AS Decimal(18, 15)), CAST(24.615626500000000 AS Decimal(18, 15)), N'苗栗縣後龍鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (88, N'苗栗縣', N'苗栗市', CAST(120.811229900000000 AS Decimal(18, 15)), CAST(24.563821410000000 AS Decimal(18, 15)), N'苗栗縣苗栗市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (89, N'苗栗縣', N'苑裡鎮', CAST(120.688219500000000 AS Decimal(18, 15)), CAST(24.411023200000000 AS Decimal(18, 15)), N'苗栗縣苑裡鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (90, N'苗栗縣', N'泰安鄉', CAST(121.068157100000000 AS Decimal(18, 15)), CAST(24.419258190000000 AS Decimal(18, 15)), N'苗栗縣泰安鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (91, N'苗栗縣', N'通霄鎮', CAST(120.714637800000000 AS Decimal(18, 15)), CAST(24.485046400000000 AS Decimal(18, 15)), N'苗栗縣通霄鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (92, N'苗栗縣', N'造橋鄉', CAST(120.869566300000000 AS Decimal(18, 15)), CAST(24.624813140000000 AS Decimal(18, 15)), N'苗栗縣造橋鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (93, N'苗栗縣', N'獅潭鄉', CAST(120.920668800000000 AS Decimal(18, 15)), CAST(24.519786140000000 AS Decimal(18, 15)), N'苗栗縣獅潭鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (94, N'苗栗縣', N'銅鑼鄉', CAST(120.799204300000000 AS Decimal(18, 15)), CAST(24.455918320000000 AS Decimal(18, 15)), N'苗栗縣銅鑼鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (95, N'苗栗縣', N'頭份市', CAST(120.918943700000000 AS Decimal(18, 15)), CAST(24.676282430000000 AS Decimal(18, 15)), N'苗栗縣頭份市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (96, N'苗栗縣', N'頭屋鄉', CAST(120.882663100000000 AS Decimal(18, 15)), CAST(24.573454970000000 AS Decimal(18, 15)), N'苗栗縣頭屋鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (97, N'桃園市', N'八德區', CAST(121.291310200000000 AS Decimal(18, 15)), CAST(24.949689030000000 AS Decimal(18, 15)), N'桃園市八德區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (98, N'桃園市', N'大園區', CAST(121.211770000000000 AS Decimal(18, 15)), CAST(25.063847090000000 AS Decimal(18, 15)), N'桃園市大園區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (99, N'桃園市', N'大溪區', CAST(121.296342000000000 AS Decimal(18, 15)), CAST(24.867970260000000 AS Decimal(18, 15)), N'桃園市大溪區')
GO
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (100, N'桃園市', N'中壢區', CAST(121.214724300000000 AS Decimal(18, 15)), CAST(24.979938030000000 AS Decimal(18, 15)), N'桃園市中壢區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (101, N'桃園市', N'平鎮區', CAST(121.214005100000000 AS Decimal(18, 15)), CAST(24.921179230000000 AS Decimal(18, 15)), N'桃園市平鎮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (102, N'桃園市', N'桃園區', CAST(121.299661200000000 AS Decimal(18, 15)), CAST(25.000400240000000 AS Decimal(18, 15)), N'桃園市桃園區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (103, N'桃園市', N'復興區', CAST(121.375458800000000 AS Decimal(18, 15)), CAST(24.729498840000000 AS Decimal(18, 15)), N'桃園市復興區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (104, N'桃園市', N'新屋區', CAST(121.067758000000000 AS Decimal(18, 15)), CAST(24.972803520000000 AS Decimal(18, 15)), N'桃園市新屋區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (105, N'桃園市', N'楊梅區', CAST(121.129169700000000 AS Decimal(18, 15)), CAST(24.918209890000000 AS Decimal(18, 15)), N'桃園市楊梅區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (106, N'桃園市', N'龍潭區', CAST(121.211787700000000 AS Decimal(18, 15)), CAST(24.850649540000000 AS Decimal(18, 15)), N'桃園市龍潭區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (107, N'桃園市', N'龜山區', CAST(121.356926500000000 AS Decimal(18, 15)), CAST(25.024174720000000 AS Decimal(18, 15)), N'桃園市龜山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (108, N'桃園市', N'蘆竹區', CAST(121.283126600000000 AS Decimal(18, 15)), CAST(25.060733370000000 AS Decimal(18, 15)), N'桃園市蘆竹區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (109, N'桃園市', N'觀音區', CAST(121.115502100000000 AS Decimal(18, 15)), CAST(25.026716110000000 AS Decimal(18, 15)), N'桃園市觀音區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (110, N'高雄市', N'三民區', CAST(120.317918700000000 AS Decimal(18, 15)), CAST(22.649898830000000 AS Decimal(18, 15)), N'高雄市三民區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (111, N'高雄市', N'大社區', CAST(120.370799400000000 AS Decimal(18, 15)), CAST(22.739834790000000 AS Decimal(18, 15)), N'高雄市大社區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (112, N'高雄市', N'大寮區', CAST(120.411146800000000 AS Decimal(18, 15)), CAST(22.592835760000000 AS Decimal(18, 15)), N'高雄市大寮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (113, N'高雄市', N'大樹區', CAST(120.425407000000000 AS Decimal(18, 15)), CAST(22.711003640000000 AS Decimal(18, 15)), N'高雄市大樹區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (114, N'高雄市', N'小港區', CAST(120.359260500000000 AS Decimal(18, 15)), CAST(22.551402070000000 AS Decimal(18, 15)), N'高雄市小港區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (115, N'高雄市', N'仁武區', CAST(120.360526500000000 AS Decimal(18, 15)), CAST(22.701207820000000 AS Decimal(18, 15)), N'高雄市仁武區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (116, N'高雄市', N'內門區', CAST(120.471927200000000 AS Decimal(18, 15)), CAST(22.956688170000000 AS Decimal(18, 15)), N'高雄市內門區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (117, N'高雄市', N'六龜區', CAST(120.658563500000000 AS Decimal(18, 15)), CAST(23.011954260000000 AS Decimal(18, 15)), N'高雄市六龜區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (118, N'高雄市', N'左營區', CAST(120.295158800000000 AS Decimal(18, 15)), CAST(22.683956990000000 AS Decimal(18, 15)), N'高雄市左營區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (119, N'高雄市', N'永安區', CAST(120.228051000000000 AS Decimal(18, 15)), CAST(22.822245850000000 AS Decimal(18, 15)), N'高雄市永安區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (120, N'高雄市', N'田寮區', CAST(120.395984200000000 AS Decimal(18, 15)), CAST(22.863943070000000 AS Decimal(18, 15)), N'高雄市田寮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (121, N'高雄市', N'甲仙區', CAST(120.623289500000000 AS Decimal(18, 15)), CAST(23.116549950000000 AS Decimal(18, 15)), N'高雄市甲仙區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (122, N'高雄市', N'杉林區', CAST(120.562197100000000 AS Decimal(18, 15)), CAST(22.996946810000000 AS Decimal(18, 15)), N'高雄市杉林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (123, N'高雄市', N'那瑪夏', CAST(120.741944000000000 AS Decimal(18, 15)), CAST(23.275008000000000 AS Decimal(18, 15)), N'高雄市那瑪夏區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (124, N'高雄市', N'岡山區', CAST(120.297890600000000 AS Decimal(18, 15)), CAST(22.805058860000000 AS Decimal(18, 15)), N'高雄市岡山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (125, N'高雄市', N'東沙群', CAST(116.906984000000000 AS Decimal(18, 15)), CAST(20.705842000000000 AS Decimal(18, 15)), N'高雄市東沙群島')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (126, N'高雄市', N'林園區', CAST(120.399052000000000 AS Decimal(18, 15)), CAST(22.508137430000000 AS Decimal(18, 15)), N'高雄市林園區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (127, N'高雄市', N'阿蓮區', CAST(120.321096700000000 AS Decimal(18, 15)), CAST(22.870228830000000 AS Decimal(18, 15)), N'高雄市阿蓮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (128, N'高雄市', N'前金區', CAST(120.294421700000000 AS Decimal(18, 15)), CAST(22.626990500000000 AS Decimal(18, 15)), N'高雄市前金區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (129, N'高雄市', N'前鎮區', CAST(120.314674900000000 AS Decimal(18, 15)), CAST(22.592697240000000 AS Decimal(18, 15)), N'高雄市前鎮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (130, N'高雄市', N'南沙群', CAST(115.812406000000000 AS Decimal(18, 15)), CAST(10.724232000000000 AS Decimal(18, 15)), N'高雄市南沙群島')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (131, N'高雄市', N'美濃區', CAST(120.563463500000000 AS Decimal(18, 15)), CAST(22.900055290000000 AS Decimal(18, 15)), N'高雄市美濃區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (132, N'高雄市', N'茄萣區', CAST(120.198051900000000 AS Decimal(18, 15)), CAST(22.882413990000000 AS Decimal(18, 15)), N'高雄市茄萣區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (133, N'高雄市', N'茂林區', CAST(120.752384000000000 AS Decimal(18, 15)), CAST(22.919932560000000 AS Decimal(18, 15)), N'高雄市茂林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (134, N'高雄市', N'苓雅區', CAST(120.320910300000000 AS Decimal(18, 15)), CAST(22.623594480000000 AS Decimal(18, 15)), N'高雄市苓雅區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (135, N'高雄市', N'桃源區', CAST(120.852338300000000 AS Decimal(18, 15)), CAST(23.224945900000000 AS Decimal(18, 15)), N'高雄市桃源區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (136, N'高雄市', N'梓官區', CAST(120.259398900000000 AS Decimal(18, 15)), CAST(22.748209000000000 AS Decimal(18, 15)), N'高雄市梓官區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (137, N'高雄市', N'鳥松區', CAST(120.372778300000000 AS Decimal(18, 15)), CAST(22.662493020000000 AS Decimal(18, 15)), N'高雄市鳥松區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (138, N'高雄市', N'湖內區', CAST(120.225937500000000 AS Decimal(18, 15)), CAST(22.893249520000000 AS Decimal(18, 15)), N'高雄市湖內區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (139, N'高雄市', N'新興區', CAST(120.306733700000000 AS Decimal(18, 15)), CAST(22.629929060000000 AS Decimal(18, 15)), N'高雄市新興區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (140, N'高雄市', N'楠梓區', CAST(120.300758000000000 AS Decimal(18, 15)), CAST(22.721099610000000 AS Decimal(18, 15)), N'高雄市楠梓區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (141, N'高雄市', N'路竹區', CAST(120.265987100000000 AS Decimal(18, 15)), CAST(22.857241710000000 AS Decimal(18, 15)), N'高雄市路竹區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (142, N'高雄市', N'鼓山區', CAST(120.274163000000000 AS Decimal(18, 15)), CAST(22.650195250000000 AS Decimal(18, 15)), N'高雄市鼓山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (143, N'高雄市', N'旗山區', CAST(120.475455400000000 AS Decimal(18, 15)), CAST(22.864970330000000 AS Decimal(18, 15)), N'高雄市旗山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (144, N'高雄市', N'旗津區', CAST(120.289153900000000 AS Decimal(18, 15)), CAST(22.585655830000000 AS Decimal(18, 15)), N'高雄市旗津區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (145, N'高雄市', N'鳳山區', CAST(120.355435900000000 AS Decimal(18, 15)), CAST(22.613792510000000 AS Decimal(18, 15)), N'高雄市鳳山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (146, N'高雄市', N'橋頭區', CAST(120.300653400000000 AS Decimal(18, 15)), CAST(22.752523980000000 AS Decimal(18, 15)), N'高雄市橋頭區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (147, N'高雄市', N'燕巢區', CAST(120.370799000000000 AS Decimal(18, 15)), CAST(22.787696260000000 AS Decimal(18, 15)), N'高雄市燕巢區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (148, N'高雄市', N'彌陀區', CAST(120.239457100000000 AS Decimal(18, 15)), CAST(22.779445280000000 AS Decimal(18, 15)), N'高雄市彌陀區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (149, N'高雄市', N'鹽埕區', CAST(120.284233100000000 AS Decimal(18, 15)), CAST(22.624245850000000 AS Decimal(18, 15)), N'高雄市鹽埕區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (150, N'基隆市', N'七堵區', CAST(121.683628000000000 AS Decimal(18, 15)), CAST(25.109620280000000 AS Decimal(18, 15)), N'基隆市七堵區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (151, N'基隆市', N'中山區', CAST(121.730891300000000 AS Decimal(18, 15)), CAST(25.149863650000000 AS Decimal(18, 15)), N'基隆市中山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (152, N'基隆市', N'中正區', CAST(121.778354900000000 AS Decimal(18, 15)), CAST(25.143657540000000 AS Decimal(18, 15)), N'基隆市中正區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (153, N'基隆市', N'仁愛區', CAST(121.743420500000000 AS Decimal(18, 15)), CAST(25.119454210000000 AS Decimal(18, 15)), N'基隆市仁愛區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (154, N'基隆市', N'安樂區', CAST(121.707832500000000 AS Decimal(18, 15)), CAST(25.141395210000000 AS Decimal(18, 15)), N'基隆市安樂區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (155, N'基隆市', N'信義區', CAST(121.772646000000000 AS Decimal(18, 15)), CAST(25.125765790000000 AS Decimal(18, 15)), N'基隆市信義區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (156, N'基隆市', N'暖暖區', CAST(121.744734400000000 AS Decimal(18, 15)), CAST(25.080970030000000 AS Decimal(18, 15)), N'基隆市暖暖區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (157, N'連江縣', N'北竿鄉', CAST(119.994251000000000 AS Decimal(18, 15)), CAST(26.225637000000000 AS Decimal(18, 15)), N'連江縣北竿鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (158, N'連江縣', N'東引鄉', CAST(120.490300000000000 AS Decimal(18, 15)), CAST(26.366101000000000 AS Decimal(18, 15)), N'連江縣東引鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (159, N'連江縣', N'南竿鄉', CAST(119.931128000000000 AS Decimal(18, 15)), CAST(26.154321000000000 AS Decimal(18, 15)), N'連江縣南竿鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (160, N'連江縣', N'莒光鄉', CAST(119.938877000000000 AS Decimal(18, 15)), CAST(25.972980000000000 AS Decimal(18, 15)), N'連江縣莒光鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (161, N'雲林縣', N'二崙鄉', CAST(120.396459800000000 AS Decimal(18, 15)), CAST(23.792552100000000 AS Decimal(18, 15)), N'雲林縣二崙鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (162, N'雲林縣', N'口湖鄉', CAST(120.141371100000000 AS Decimal(18, 15)), CAST(23.553653950000000 AS Decimal(18, 15)), N'雲林縣口湖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (163, N'雲林縣', N'土庫鎮', CAST(120.364725200000000 AS Decimal(18, 15)), CAST(23.691106650000000 AS Decimal(18, 15)), N'雲林縣土庫鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (164, N'雲林縣', N'大埤鄉', CAST(120.425559200000000 AS Decimal(18, 15)), CAST(23.645597100000000 AS Decimal(18, 15)), N'雲林縣大埤鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (165, N'雲林縣', N'元長鄉', CAST(120.327961700000000 AS Decimal(18, 15)), CAST(23.642430950000000 AS Decimal(18, 15)), N'雲林縣元長鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (166, N'雲林縣', N'斗六市', CAST(120.560004400000000 AS Decimal(18, 15)), CAST(23.706518830000000 AS Decimal(18, 15)), N'雲林縣斗六市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (167, N'雲林縣', N'斗南鎮', CAST(120.482635600000000 AS Decimal(18, 15)), CAST(23.670663930000000 AS Decimal(18, 15)), N'雲林縣斗南鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (168, N'雲林縣', N'水林鄉', CAST(120.235273400000000 AS Decimal(18, 15)), CAST(23.561628490000000 AS Decimal(18, 15)), N'雲林縣水林鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (169, N'雲林縣', N'北港鎮', CAST(120.294016400000000 AS Decimal(18, 15)), CAST(23.592195280000000 AS Decimal(18, 15)), N'雲林縣北港鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (170, N'雲林縣', N'古坑鄉', CAST(120.611735100000000 AS Decimal(18, 15)), CAST(23.625454690000000 AS Decimal(18, 15)), N'雲林縣古坑鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (171, N'雲林縣', N'四湖鄉', CAST(120.206469900000000 AS Decimal(18, 15)), CAST(23.642068750000000 AS Decimal(18, 15)), N'雲林縣四湖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (172, N'雲林縣', N'西螺鎮', CAST(120.458079500000000 AS Decimal(18, 15)), CAST(23.779421090000000 AS Decimal(18, 15)), N'雲林縣西螺鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (173, N'雲林縣', N'東勢鄉', CAST(120.256417300000000 AS Decimal(18, 15)), CAST(23.696123240000000 AS Decimal(18, 15)), N'雲林縣東勢鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (174, N'雲林縣', N'林內鄉', CAST(120.615501800000000 AS Decimal(18, 15)), CAST(23.755720900000000 AS Decimal(18, 15)), N'雲林縣林內鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (175, N'雲林縣', N'虎尾鎮', CAST(120.429306100000000 AS Decimal(18, 15)), CAST(23.716615450000000 AS Decimal(18, 15)), N'雲林縣虎尾鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (176, N'雲林縣', N'崙背鄉', CAST(120.333976900000000 AS Decimal(18, 15)), CAST(23.778497910000000 AS Decimal(18, 15)), N'雲林縣崙背鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (177, N'雲林縣', N'麥寮鄉', CAST(120.243533000000000 AS Decimal(18, 15)), CAST(23.788170560000000 AS Decimal(18, 15)), N'雲林縣麥寮鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (178, N'雲林縣', N'莿桐鄉', CAST(120.529041900000000 AS Decimal(18, 15)), CAST(23.769738940000000 AS Decimal(18, 15)), N'雲林縣莿桐鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (179, N'雲林縣', N'臺西鄉', CAST(120.205495200000000 AS Decimal(18, 15)), CAST(23.716008150000000 AS Decimal(18, 15)), N'雲林縣臺西鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (180, N'雲林縣', N'褒忠鄉', CAST(120.311612200000000 AS Decimal(18, 15)), CAST(23.716132040000000 AS Decimal(18, 15)), N'雲林縣褒忠鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (181, N'新北市', N'八里區', CAST(121.413835900000000 AS Decimal(18, 15)), CAST(25.138127630000000 AS Decimal(18, 15)), N'新北市八里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (182, N'新北市', N'三芝區', CAST(121.515558000000000 AS Decimal(18, 15)), CAST(25.231598910000000 AS Decimal(18, 15)), N'新北市三芝區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (183, N'新北市', N'三重區', CAST(121.487097700000000 AS Decimal(18, 15)), CAST(25.062816510000000 AS Decimal(18, 15)), N'新北市三重區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (184, N'新北市', N'三峽區', CAST(121.416309400000000 AS Decimal(18, 15)), CAST(24.882097660000000 AS Decimal(18, 15)), N'新北市三峽區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (185, N'新北市', N'土城區', CAST(121.445737000000000 AS Decimal(18, 15)), CAST(24.964251020000000 AS Decimal(18, 15)), N'新北市土城區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (186, N'新北市', N'中和區', CAST(121.493674400000000 AS Decimal(18, 15)), CAST(24.990880390000000 AS Decimal(18, 15)), N'新北市中和區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (187, N'新北市', N'五股區', CAST(121.433213900000000 AS Decimal(18, 15)), CAST(25.096147460000000 AS Decimal(18, 15)), N'新北市五股區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (188, N'新北市', N'平溪區', CAST(121.757881700000000 AS Decimal(18, 15)), CAST(25.026070680000000 AS Decimal(18, 15)), N'新北市平溪區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (189, N'新北市', N'永和區', CAST(121.516745000000000 AS Decimal(18, 15)), CAST(25.008101990000000 AS Decimal(18, 15)), N'新北市永和區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (190, N'新北市', N'石門區', CAST(121.569276100000000 AS Decimal(18, 15)), CAST(25.265180790000000 AS Decimal(18, 15)), N'新北市石門區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (191, N'新北市', N'石碇區', CAST(121.647227700000000 AS Decimal(18, 15)), CAST(24.947141070000000 AS Decimal(18, 15)), N'新北市石碇區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (192, N'新北市', N'汐止區', CAST(121.654699200000000 AS Decimal(18, 15)), CAST(25.073313220000000 AS Decimal(18, 15)), N'新北市汐止區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (193, N'新北市', N'坪林區', CAST(121.724223000000000 AS Decimal(18, 15)), CAST(24.910970730000000 AS Decimal(18, 15)), N'新北市坪林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (194, N'新北市', N'林口區', CAST(121.352723500000000 AS Decimal(18, 15)), CAST(25.100086800000000 AS Decimal(18, 15)), N'新北市林口區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (195, N'新北市', N'板橋區', CAST(121.457967500000000 AS Decimal(18, 15)), CAST(25.011864530000000 AS Decimal(18, 15)), N'新北市板橋區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (196, N'新北市', N'金山區', CAST(121.605263900000000 AS Decimal(18, 15)), CAST(25.217145940000000 AS Decimal(18, 15)), N'新北市金山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (197, N'新北市', N'泰山區', CAST(121.416278500000000 AS Decimal(18, 15)), CAST(25.055497740000000 AS Decimal(18, 15)), N'新北市泰山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (198, N'新北市', N'烏來區', CAST(121.541480600000000 AS Decimal(18, 15)), CAST(24.788242950000000 AS Decimal(18, 15)), N'新北市烏來區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (199, N'新北市', N'貢寮區', CAST(121.918246600000000 AS Decimal(18, 15)), CAST(25.024856410000000 AS Decimal(18, 15)), N'新北市貢寮區')
GO
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (200, N'新北市', N'淡水區', CAST(121.463904000000000 AS Decimal(18, 15)), CAST(25.189076360000000 AS Decimal(18, 15)), N'新北市淡水區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (201, N'新北市', N'深坑區', CAST(121.620062400000000 AS Decimal(18, 15)), CAST(24.997675060000000 AS Decimal(18, 15)), N'新北市深坑區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (202, N'新北市', N'新店區', CAST(121.531656500000000 AS Decimal(18, 15)), CAST(24.930390080000000 AS Decimal(18, 15)), N'新北市新店區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (203, N'新北市', N'新莊區', CAST(121.436753500000000 AS Decimal(18, 15)), CAST(25.035830300000000 AS Decimal(18, 15)), N'新北市新莊區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (204, N'新北市', N'瑞芳區', CAST(121.823201800000000 AS Decimal(18, 15)), CAST(25.098129300000000 AS Decimal(18, 15)), N'新北市瑞芳區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (205, N'新北市', N'萬里區', CAST(121.643930700000000 AS Decimal(18, 15)), CAST(25.175724570000000 AS Decimal(18, 15)), N'新北市萬里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (206, N'新北市', N'樹林區', CAST(121.401034000000000 AS Decimal(18, 15)), CAST(24.979706090000000 AS Decimal(18, 15)), N'新北市樹林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (207, N'新北市', N'雙溪區', CAST(121.832982200000000 AS Decimal(18, 15)), CAST(24.996983940000000 AS Decimal(18, 15)), N'新北市雙溪區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (208, N'新北市', N'蘆洲區', CAST(121.471246100000000 AS Decimal(18, 15)), CAST(25.089271730000000 AS Decimal(18, 15)), N'新北市蘆洲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (209, N'新北市', N'鶯歌區', CAST(121.346626900000000 AS Decimal(18, 15)), CAST(24.956625800000000 AS Decimal(18, 15)), N'新北市鶯歌區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (210, N'新竹市', N'北區', CAST(120.949123300000000 AS Decimal(18, 15)), CAST(24.822695420000000 AS Decimal(18, 15)), N'新竹市北區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (211, N'新竹市', N'東區', CAST(120.992750500000000 AS Decimal(18, 15)), CAST(24.790281740000000 AS Decimal(18, 15)), N'新竹市東區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (212, N'新竹市', N'香山區', CAST(120.923672700000000 AS Decimal(18, 15)), CAST(24.771043420000000 AS Decimal(18, 15)), N'新竹市香山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (213, N'新竹縣', N'五峰鄉', CAST(121.138949500000000 AS Decimal(18, 15)), CAST(24.578054000000000 AS Decimal(18, 15)), N'新竹縣五峰鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (214, N'新竹縣', N'北埔鄉', CAST(121.064274500000000 AS Decimal(18, 15)), CAST(24.672074050000000 AS Decimal(18, 15)), N'新竹縣北埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (215, N'新竹縣', N'尖石鄉', CAST(121.281934100000000 AS Decimal(18, 15)), CAST(24.594932350000000 AS Decimal(18, 15)), N'新竹縣尖石鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (216, N'新竹縣', N'竹北市', CAST(120.994870400000000 AS Decimal(18, 15)), CAST(24.838162090000000 AS Decimal(18, 15)), N'新竹縣竹北市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (217, N'新竹縣', N'竹東鎮', CAST(121.075363200000000 AS Decimal(18, 15)), CAST(24.730758020000000 AS Decimal(18, 15)), N'新竹縣竹東鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (218, N'新竹縣', N'芎林鄉', CAST(121.104639400000000 AS Decimal(18, 15)), CAST(24.765711600000000 AS Decimal(18, 15)), N'新竹縣芎林鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (219, N'新竹縣', N'峨眉鄉', CAST(121.011080900000000 AS Decimal(18, 15)), CAST(24.678111970000000 AS Decimal(18, 15)), N'新竹縣峨眉鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (220, N'新竹縣', N'湖口鄉', CAST(121.051724200000000 AS Decimal(18, 15)), CAST(24.885663410000000 AS Decimal(18, 15)), N'新竹縣湖口鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (221, N'新竹縣', N'新埔鎮', CAST(121.093988600000000 AS Decimal(18, 15)), CAST(24.841339590000000 AS Decimal(18, 15)), N'新竹縣新埔鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (222, N'新竹縣', N'新豐鄉', CAST(120.995603300000000 AS Decimal(18, 15)), CAST(24.907312980000000 AS Decimal(18, 15)), N'新竹縣新豐鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (223, N'新竹縣', N'橫山鄉', CAST(121.146973200000000 AS Decimal(18, 15)), CAST(24.707809200000000 AS Decimal(18, 15)), N'新竹縣橫山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (224, N'新竹縣', N'關西鎮', CAST(121.186622100000000 AS Decimal(18, 15)), CAST(24.785146810000000 AS Decimal(18, 15)), N'新竹縣關西鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (225, N'新竹縣', N'寶山鄉', CAST(120.999160500000000 AS Decimal(18, 15)), CAST(24.736973510000000 AS Decimal(18, 15)), N'新竹縣寶山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (226, N'嘉義市', N'西區', CAST(120.424872400000000 AS Decimal(18, 15)), CAST(23.479155290000000 AS Decimal(18, 15)), N'嘉義市西區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (227, N'嘉義市', N'東區', CAST(120.470624400000000 AS Decimal(18, 15)), CAST(23.481703340000000 AS Decimal(18, 15)), N'嘉義市東區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (228, N'嘉義縣', N'大林鎮', CAST(120.480786500000000 AS Decimal(18, 15)), CAST(23.598908270000000 AS Decimal(18, 15)), N'嘉義縣大林鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (229, N'嘉義縣', N'大埔鄉', CAST(120.589646600000000 AS Decimal(18, 15)), CAST(23.288484260000000 AS Decimal(18, 15)), N'嘉義縣大埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (230, N'嘉義縣', N'中埔鄉', CAST(120.536531200000000 AS Decimal(18, 15)), CAST(23.404089980000000 AS Decimal(18, 15)), N'嘉義縣中埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (231, N'嘉義縣', N'六腳鄉', CAST(120.271472800000000 AS Decimal(18, 15)), CAST(23.510209840000000 AS Decimal(18, 15)), N'嘉義縣六腳鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (232, N'嘉義縣', N'太保市', CAST(120.344000900000000 AS Decimal(18, 15)), CAST(23.472919100000000 AS Decimal(18, 15)), N'嘉義縣太保市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (233, N'嘉義縣', N'水上鄉', CAST(120.414735700000000 AS Decimal(18, 15)), CAST(23.429112870000000 AS Decimal(18, 15)), N'嘉義縣水上鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (234, N'嘉義縣', N'布袋鎮', CAST(120.177749800000000 AS Decimal(18, 15)), CAST(23.374942760000000 AS Decimal(18, 15)), N'嘉義縣布袋鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (235, N'嘉義縣', N'民雄鄉', CAST(120.444279800000000 AS Decimal(18, 15)), CAST(23.542553470000000 AS Decimal(18, 15)), N'嘉義縣民雄鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (236, N'嘉義縣', N'朴子市', CAST(120.253897700000000 AS Decimal(18, 15)), CAST(23.446106050000000 AS Decimal(18, 15)), N'嘉義縣朴子市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (237, N'嘉義縣', N'竹崎鄉', CAST(120.596577100000000 AS Decimal(18, 15)), CAST(23.503765270000000 AS Decimal(18, 15)), N'嘉義縣竹崎鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (238, N'嘉義縣', N'東石鄉', CAST(120.173868200000000 AS Decimal(18, 15)), CAST(23.468660590000000 AS Decimal(18, 15)), N'嘉義縣東石鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (239, N'嘉義縣', N'阿里山', CAST(120.759617300000000 AS Decimal(18, 15)), CAST(23.440776190000000 AS Decimal(18, 15)), N'嘉義縣阿里山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (240, N'嘉義縣', N'梅山鄉', CAST(120.638745900000000 AS Decimal(18, 15)), CAST(23.555354650000000 AS Decimal(18, 15)), N'嘉義縣梅山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (241, N'嘉義縣', N'鹿草鄉', CAST(120.304546800000000 AS Decimal(18, 15)), CAST(23.408117360000000 AS Decimal(18, 15)), N'嘉義縣鹿草鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (242, N'嘉義縣', N'番路鄉', CAST(120.607533500000000 AS Decimal(18, 15)), CAST(23.427656690000000 AS Decimal(18, 15)), N'嘉義縣番路鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (243, N'嘉義縣', N'新港鄉', CAST(120.348287300000000 AS Decimal(18, 15)), CAST(23.545812950000000 AS Decimal(18, 15)), N'嘉義縣新港鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (244, N'嘉義縣', N'溪口鄉', CAST(120.401028200000000 AS Decimal(18, 15)), CAST(23.593530890000000 AS Decimal(18, 15)), N'嘉義縣溪口鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (245, N'嘉義縣', N'義竹鄉', CAST(120.223943300000000 AS Decimal(18, 15)), CAST(23.345758720000000 AS Decimal(18, 15)), N'嘉義縣義竹鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (246, N'彰化縣', N'二水鄉', CAST(120.628589000000000 AS Decimal(18, 15)), CAST(23.809240200000000 AS Decimal(18, 15)), N'彰化縣二水鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (247, N'彰化縣', N'二林鎮', CAST(120.404225000000000 AS Decimal(18, 15)), CAST(23.916214050000000 AS Decimal(18, 15)), N'彰化縣二林鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (248, N'彰化縣', N'大村鄉', CAST(120.558686600000000 AS Decimal(18, 15)), CAST(23.992092060000000 AS Decimal(18, 15)), N'彰化縣大村鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (249, N'彰化縣', N'大城鄉', CAST(120.311328400000000 AS Decimal(18, 15)), CAST(23.850692760000000 AS Decimal(18, 15)), N'彰化縣大城鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (250, N'彰化縣', N'北斗鎮', CAST(120.533156600000000 AS Decimal(18, 15)), CAST(23.867574000000000 AS Decimal(18, 15)), N'彰化縣北斗鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (251, N'彰化縣', N'永靖鄉', CAST(120.541603200000000 AS Decimal(18, 15)), CAST(23.921395070000000 AS Decimal(18, 15)), N'彰化縣永靖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (252, N'彰化縣', N'田中鎮', CAST(120.590347100000000 AS Decimal(18, 15)), CAST(23.857238720000000 AS Decimal(18, 15)), N'彰化縣田中鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (253, N'彰化縣', N'田尾鄉', CAST(120.522324400000000 AS Decimal(18, 15)), CAST(23.900560650000000 AS Decimal(18, 15)), N'彰化縣田尾鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (254, N'彰化縣', N'竹塘鄉', CAST(120.413664500000000 AS Decimal(18, 15)), CAST(23.850587200000000 AS Decimal(18, 15)), N'彰化縣竹塘鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (255, N'彰化縣', N'伸港鄉', CAST(120.486449000000000 AS Decimal(18, 15)), CAST(24.163671070000000 AS Decimal(18, 15)), N'彰化縣伸港鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (256, N'彰化縣', N'秀水鄉', CAST(120.504118400000000 AS Decimal(18, 15)), CAST(24.032494050000000 AS Decimal(18, 15)), N'彰化縣秀水鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (257, N'彰化縣', N'和美鎮', CAST(120.511204500000000 AS Decimal(18, 15)), CAST(24.113795350000000 AS Decimal(18, 15)), N'彰化縣和美鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (258, N'彰化縣', N'社頭鄉', CAST(120.602166100000000 AS Decimal(18, 15)), CAST(23.905364130000000 AS Decimal(18, 15)), N'彰化縣社頭鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (259, N'彰化縣', N'芳苑鄉', CAST(120.353922600000000 AS Decimal(18, 15)), CAST(23.953790600000000 AS Decimal(18, 15)), N'彰化縣芳苑鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (260, N'彰化縣', N'花壇鄉', CAST(120.559765500000000 AS Decimal(18, 15)), CAST(24.030068750000000 AS Decimal(18, 15)), N'彰化縣花壇鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (261, N'彰化縣', N'芬園鄉', CAST(120.629441400000000 AS Decimal(18, 15)), CAST(24.006287940000000 AS Decimal(18, 15)), N'彰化縣芬園鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (262, N'彰化縣', N'員林市', CAST(120.593073000000000 AS Decimal(18, 15)), CAST(23.956504480000000 AS Decimal(18, 15)), N'彰化縣員林市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (263, N'彰化縣', N'埔心鄉', CAST(120.534280200000000 AS Decimal(18, 15)), CAST(23.952775210000000 AS Decimal(18, 15)), N'彰化縣埔心鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (264, N'彰化縣', N'埔鹽鄉', CAST(120.459462600000000 AS Decimal(18, 15)), CAST(23.992044170000000 AS Decimal(18, 15)), N'彰化縣埔鹽鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (265, N'彰化縣', N'埤頭鄉', CAST(120.467564200000000 AS Decimal(18, 15)), CAST(23.882341180000000 AS Decimal(18, 15)), N'彰化縣埤頭鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (266, N'彰化縣', N'鹿港鎮', CAST(120.438549100000000 AS Decimal(18, 15)), CAST(24.082866850000000 AS Decimal(18, 15)), N'彰化縣鹿港鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (267, N'彰化縣', N'溪州鄉', CAST(120.522490400000000 AS Decimal(18, 15)), CAST(23.827251850000000 AS Decimal(18, 15)), N'彰化縣溪州鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (268, N'彰化縣', N'溪湖鎮', CAST(120.483173900000000 AS Decimal(18, 15)), CAST(23.951714560000000 AS Decimal(18, 15)), N'彰化縣溪湖鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (269, N'彰化縣', N'彰化市', CAST(120.569420800000000 AS Decimal(18, 15)), CAST(24.075329090000000 AS Decimal(18, 15)), N'彰化縣彰化市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (270, N'彰化縣', N'福興鄉', CAST(120.431051100000000 AS Decimal(18, 15)), CAST(24.030216740000000 AS Decimal(18, 15)), N'彰化縣福興鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (271, N'彰化縣', N'線西鄉', CAST(120.452157000000000 AS Decimal(18, 15)), CAST(24.131581270000000 AS Decimal(18, 15)), N'彰化縣線西鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (272, N'臺中市', N'大甲區', CAST(120.635790100000000 AS Decimal(18, 15)), CAST(24.378271610000000 AS Decimal(18, 15)), N'臺中市大甲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (273, N'臺中市', N'大安區', CAST(120.591440700000000 AS Decimal(18, 15)), CAST(24.365095550000000 AS Decimal(18, 15)), N'臺中市大安區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (274, N'臺中市', N'大肚區', CAST(120.554324300000000 AS Decimal(18, 15)), CAST(24.144675040000000 AS Decimal(18, 15)), N'臺中市大肚區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (275, N'臺中市', N'大里區', CAST(120.692626100000000 AS Decimal(18, 15)), CAST(24.095757420000000 AS Decimal(18, 15)), N'臺中市大里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (276, N'臺中市', N'大雅區', CAST(120.641181800000000 AS Decimal(18, 15)), CAST(24.227041810000000 AS Decimal(18, 15)), N'臺中市大雅區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (277, N'臺中市', N'中區', CAST(120.680598000000000 AS Decimal(18, 15)), CAST(24.141685660000000 AS Decimal(18, 15)), N'臺中市中區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (278, N'臺中市', N'太平區', CAST(120.773421700000000 AS Decimal(18, 15)), CAST(24.114773750000000 AS Decimal(18, 15)), N'臺中市太平區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (279, N'臺中市', N'北屯區', CAST(120.736231900000000 AS Decimal(18, 15)), CAST(24.184002980000000 AS Decimal(18, 15)), N'臺中市北屯區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (280, N'臺中市', N'北區', CAST(120.680952100000000 AS Decimal(18, 15)), CAST(24.158639850000000 AS Decimal(18, 15)), N'臺中市北區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (281, N'臺中市', N'外埔區', CAST(120.665063900000000 AS Decimal(18, 15)), CAST(24.335510710000000 AS Decimal(18, 15)), N'臺中市外埔區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (282, N'臺中市', N'石岡區', CAST(120.790382200000000 AS Decimal(18, 15)), CAST(24.264932990000000 AS Decimal(18, 15)), N'臺中市石岡區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (283, N'臺中市', N'后里區', CAST(120.714612700000000 AS Decimal(18, 15)), CAST(24.309624830000000 AS Decimal(18, 15)), N'臺中市后里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (284, N'臺中市', N'西屯區', CAST(120.627013100000000 AS Decimal(18, 15)), CAST(24.183088950000000 AS Decimal(18, 15)), N'臺中市西屯區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (285, N'臺中市', N'西區', CAST(120.664757900000000 AS Decimal(18, 15)), CAST(24.143910820000000 AS Decimal(18, 15)), N'臺中市西區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (286, N'臺中市', N'沙鹿區', CAST(120.583862800000000 AS Decimal(18, 15)), CAST(24.234252120000000 AS Decimal(18, 15)), N'臺中市沙鹿區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (287, N'臺中市', N'和平區', CAST(121.140185000000000 AS Decimal(18, 15)), CAST(24.276202770000000 AS Decimal(18, 15)), N'臺中市和平區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (288, N'臺中市', N'東區', CAST(120.697086500000000 AS Decimal(18, 15)), CAST(24.137332090000000 AS Decimal(18, 15)), N'臺中市東區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (289, N'臺中市', N'東勢區', CAST(120.840140100000000 AS Decimal(18, 15)), CAST(24.249526370000000 AS Decimal(18, 15)), N'臺中市東勢區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (290, N'臺中市', N'南屯區', CAST(120.617737900000000 AS Decimal(18, 15)), CAST(24.141655240000000 AS Decimal(18, 15)), N'臺中市南屯區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (291, N'臺中市', N'南區', CAST(120.664617800000000 AS Decimal(18, 15)), CAST(24.121141070000000 AS Decimal(18, 15)), N'臺中市南區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (292, N'臺中市', N'烏日區', CAST(120.629330500000000 AS Decimal(18, 15)), CAST(24.083927100000000 AS Decimal(18, 15)), N'臺中市烏日區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (293, N'臺中市', N'神岡區', CAST(120.673332100000000 AS Decimal(18, 15)), CAST(24.265680080000000 AS Decimal(18, 15)), N'臺中市神岡區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (294, N'臺中市', N'梧棲區', CAST(120.530125900000000 AS Decimal(18, 15)), CAST(24.245524310000000 AS Decimal(18, 15)), N'臺中市梧棲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (295, N'臺中市', N'清水區', CAST(120.580909400000000 AS Decimal(18, 15)), CAST(24.292057430000000 AS Decimal(18, 15)), N'臺中市清水區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (296, N'臺中市', N'新社區', CAST(120.831322800000000 AS Decimal(18, 15)), CAST(24.177692890000000 AS Decimal(18, 15)), N'臺中市新社區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (297, N'臺中市', N'潭子區', CAST(120.710997000000000 AS Decimal(18, 15)), CAST(24.211711210000000 AS Decimal(18, 15)), N'臺中市潭子區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (298, N'臺中市', N'龍井區', CAST(120.528372800000000 AS Decimal(18, 15)), CAST(24.200628920000000 AS Decimal(18, 15)), N'臺中市龍井區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (299, N'臺中市', N'豐原區', CAST(120.737571500000000 AS Decimal(18, 15)), CAST(24.249902980000000 AS Decimal(18, 15)), N'臺中市豐原區')
GO
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (300, N'臺中市', N'霧峰區', CAST(120.720198900000000 AS Decimal(18, 15)), CAST(24.043327850000000 AS Decimal(18, 15)), N'臺中市霧峰區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (301, N'臺北市', N'士林區', CAST(121.550847300000000 AS Decimal(18, 15)), CAST(25.125467040000000 AS Decimal(18, 15)), N'臺北市士林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (302, N'臺北市', N'大同區', CAST(121.513041700000000 AS Decimal(18, 15)), CAST(25.063424330000000 AS Decimal(18, 15)), N'臺北市大同區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (303, N'臺北市', N'大安區', CAST(121.543444600000000 AS Decimal(18, 15)), CAST(25.026770120000000 AS Decimal(18, 15)), N'臺北市大安區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (304, N'臺北市', N'中山區', CAST(121.538159700000000 AS Decimal(18, 15)), CAST(25.069699170000000 AS Decimal(18, 15)), N'臺北市中山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (305, N'臺北市', N'中正區', CAST(121.519883900000000 AS Decimal(18, 15)), CAST(25.032404870000000 AS Decimal(18, 15)), N'臺北市中正區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (306, N'臺北市', N'內湖區', CAST(121.592382800000000 AS Decimal(18, 15)), CAST(25.083706230000000 AS Decimal(18, 15)), N'臺北市內湖區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (307, N'臺北市', N'文山區', CAST(121.573608200000000 AS Decimal(18, 15)), CAST(24.988579340000000 AS Decimal(18, 15)), N'臺北市文山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (308, N'臺北市', N'北投區', CAST(121.517799200000000 AS Decimal(18, 15)), CAST(25.148068200000000 AS Decimal(18, 15)), N'臺北市北投區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (309, N'臺北市', N'松山區', CAST(121.557587600000000 AS Decimal(18, 15)), CAST(25.059991010000000 AS Decimal(18, 15)), N'臺北市松山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (310, N'臺北市', N'信義區', CAST(121.571669700000000 AS Decimal(18, 15)), CAST(25.030620830000000 AS Decimal(18, 15)), N'臺北市信義區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (311, N'臺北市', N'南港區', CAST(121.609757300000000 AS Decimal(18, 15)), CAST(25.036009340000000 AS Decimal(18, 15)), N'臺北市南港區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (312, N'臺北市', N'萬華區', CAST(121.497985800000000 AS Decimal(18, 15)), CAST(25.028589900000000 AS Decimal(18, 15)), N'臺北市萬華區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (313, N'臺東縣', N'大武鄉', CAST(120.899170300000000 AS Decimal(18, 15)), CAST(22.383595220000000 AS Decimal(18, 15)), N'臺東縣大武鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (314, N'臺東縣', N'太麻里', CAST(120.979764300000000 AS Decimal(18, 15)), CAST(22.590980820000000 AS Decimal(18, 15)), N'臺東縣太麻里鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (315, N'臺東縣', N'成功鎮', CAST(121.353798300000000 AS Decimal(18, 15)), CAST(23.126637160000000 AS Decimal(18, 15)), N'臺東縣成功鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (316, N'臺東縣', N'池上鄉', CAST(121.218450100000000 AS Decimal(18, 15)), CAST(23.092487140000000 AS Decimal(18, 15)), N'臺東縣池上鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (317, N'臺東縣', N'卑南鄉', CAST(121.001552100000000 AS Decimal(18, 15)), CAST(22.764944530000000 AS Decimal(18, 15)), N'臺東縣卑南鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (318, N'臺東縣', N'延平鄉', CAST(120.983190200000000 AS Decimal(18, 15)), CAST(22.903431740000000 AS Decimal(18, 15)), N'臺東縣延平鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (319, N'臺東縣', N'東河鄉', CAST(121.251791700000000 AS Decimal(18, 15)), CAST(22.980069210000000 AS Decimal(18, 15)), N'臺東縣東河鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (320, N'臺東縣', N'金峰鄉', CAST(120.857038400000000 AS Decimal(18, 15)), CAST(22.581616870000000 AS Decimal(18, 15)), N'臺東縣金峰鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (321, N'臺東縣', N'長濱鄉', CAST(121.426172500000000 AS Decimal(18, 15)), CAST(23.334768990000000 AS Decimal(18, 15)), N'臺東縣長濱鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (322, N'臺東縣', N'海端鄉', CAST(121.017567200000000 AS Decimal(18, 15)), CAST(23.114785280000000 AS Decimal(18, 15)), N'臺東縣海端鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (323, N'臺東縣', N'鹿野鄉', CAST(121.156037600000000 AS Decimal(18, 15)), CAST(22.951256660000000 AS Decimal(18, 15)), N'臺東縣鹿野鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (324, N'臺東縣', N'達仁鄉', CAST(120.835523900000000 AS Decimal(18, 15)), CAST(22.384307180000000 AS Decimal(18, 15)), N'臺東縣達仁鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (325, N'臺東縣', N'綠島鄉', CAST(121.490195100000000 AS Decimal(18, 15)), CAST(22.660175370000000 AS Decimal(18, 15)), N'臺東縣綠島鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (326, N'臺東縣', N'臺東市', CAST(121.110364700000000 AS Decimal(18, 15)), CAST(22.751657210000000 AS Decimal(18, 15)), N'臺東縣臺東市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (327, N'臺東縣', N'關山鎮', CAST(121.176619700000000 AS Decimal(18, 15)), CAST(23.037806840000000 AS Decimal(18, 15)), N'臺東縣關山鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (328, N'臺東縣', N'蘭嶼鄉', CAST(121.550832800000000 AS Decimal(18, 15)), CAST(22.046168350000000 AS Decimal(18, 15)), N'臺東縣蘭嶼鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (329, N'臺南市', N'七股區', CAST(120.100585400000000 AS Decimal(18, 15)), CAST(23.123265780000000 AS Decimal(18, 15)), N'臺南市七股區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (330, N'臺南市', N'下營區', CAST(120.264840000000000 AS Decimal(18, 15)), CAST(23.231039780000000 AS Decimal(18, 15)), N'臺南市下營區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (331, N'臺南市', N'大內區', CAST(120.398814700000000 AS Decimal(18, 15)), CAST(23.144821520000000 AS Decimal(18, 15)), N'臺南市大內區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (332, N'臺南市', N'山上區', CAST(120.370977000000000 AS Decimal(18, 15)), CAST(23.096893290000000 AS Decimal(18, 15)), N'臺南市山上區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (333, N'臺南市', N'中西區', CAST(120.192874000000000 AS Decimal(18, 15)), CAST(22.995944580000000 AS Decimal(18, 15)), N'臺南市中西區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (334, N'臺南市', N'仁德區', CAST(120.241878800000000 AS Decimal(18, 15)), CAST(22.941309310000000 AS Decimal(18, 15)), N'臺南市仁德區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (335, N'臺南市', N'六甲區', CAST(120.380025900000000 AS Decimal(18, 15)), CAST(23.227267200000000 AS Decimal(18, 15)), N'臺南市六甲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (336, N'臺南市', N'北門區', CAST(120.126235700000000 AS Decimal(18, 15)), CAST(23.277770800000000 AS Decimal(18, 15)), N'臺南市北門區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (337, N'臺南市', N'北區', CAST(120.206873500000000 AS Decimal(18, 15)), CAST(23.010121790000000 AS Decimal(18, 15)), N'臺南市北區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (338, N'臺南市', N'左鎮區', CAST(120.412391700000000 AS Decimal(18, 15)), CAST(23.026046110000000 AS Decimal(18, 15)), N'臺南市左鎮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (339, N'臺南市', N'永康區', CAST(120.254279500000000 AS Decimal(18, 15)), CAST(23.027295320000000 AS Decimal(18, 15)), N'臺南市永康區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (340, N'臺南市', N'玉井區', CAST(120.460962200000000 AS Decimal(18, 15)), CAST(23.114809260000000 AS Decimal(18, 15)), N'臺南市玉井區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (341, N'臺南市', N'白河區', CAST(120.457856500000000 AS Decimal(18, 15)), CAST(23.351320680000000 AS Decimal(18, 15)), N'臺南市白河區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (342, N'臺南市', N'安平區', CAST(120.164994900000000 AS Decimal(18, 15)), CAST(22.990084370000000 AS Decimal(18, 15)), N'臺南市安平區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (343, N'臺南市', N'安定區', CAST(120.229623500000000 AS Decimal(18, 15)), CAST(23.099749270000000 AS Decimal(18, 15)), N'臺南市安定區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (344, N'臺南市', N'安南區', CAST(120.152618900000000 AS Decimal(18, 15)), CAST(23.048696810000000 AS Decimal(18, 15)), N'臺南市安南區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (345, N'臺南市', N'西港區', CAST(120.200230900000000 AS Decimal(18, 15)), CAST(23.124918930000000 AS Decimal(18, 15)), N'臺南市西港區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (346, N'臺南市', N'佳里區', CAST(120.178593000000000 AS Decimal(18, 15)), CAST(23.166994100000000 AS Decimal(18, 15)), N'臺南市佳里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (347, N'臺南市', N'官田區', CAST(120.347991800000000 AS Decimal(18, 15)), CAST(23.190985480000000 AS Decimal(18, 15)), N'臺南市官田區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (348, N'臺南市', N'東山區', CAST(120.444121100000000 AS Decimal(18, 15)), CAST(23.278318700000000 AS Decimal(18, 15)), N'臺南市東山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (349, N'臺南市', N'東區', CAST(120.228185800000000 AS Decimal(18, 15)), CAST(22.981782020000000 AS Decimal(18, 15)), N'臺南市東區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (350, N'臺南市', N'南化區', CAST(120.544122300000000 AS Decimal(18, 15)), CAST(23.115111100000000 AS Decimal(18, 15)), N'臺南市南化區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (351, N'臺南市', N'南區', CAST(120.190374300000000 AS Decimal(18, 15)), CAST(22.955618630000000 AS Decimal(18, 15)), N'臺南市南區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (352, N'臺南市', N'後壁區', CAST(120.348508100000000 AS Decimal(18, 15)), CAST(23.362014780000000 AS Decimal(18, 15)), N'臺南市後壁區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (353, N'臺南市', N'柳營區', CAST(120.354920500000000 AS Decimal(18, 15)), CAST(23.268870010000000 AS Decimal(18, 15)), N'臺南市柳營區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (354, N'臺南市', N'將軍區', CAST(120.127695800000000 AS Decimal(18, 15)), CAST(23.208344130000000 AS Decimal(18, 15)), N'臺南市將軍區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (355, N'臺南市', N'麻豆區', CAST(120.241308000000000 AS Decimal(18, 15)), CAST(23.182480330000000 AS Decimal(18, 15)), N'臺南市麻豆區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (356, N'臺南市', N'善化區', CAST(120.298827400000000 AS Decimal(18, 15)), CAST(23.140310720000000 AS Decimal(18, 15)), N'臺南市善化區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (357, N'臺南市', N'新化區', CAST(120.335796400000000 AS Decimal(18, 15)), CAST(23.033945450000000 AS Decimal(18, 15)), N'臺南市新化區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (358, N'臺南市', N'新市區', CAST(120.292394100000000 AS Decimal(18, 15)), CAST(23.083194960000000 AS Decimal(18, 15)), N'臺南市新市區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (359, N'臺南市', N'新營區', CAST(120.295406700000000 AS Decimal(18, 15)), CAST(23.301524880000000 AS Decimal(18, 15)), N'臺南市新營區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (360, N'臺南市', N'楠西區', CAST(120.517030400000000 AS Decimal(18, 15)), CAST(23.178858540000000 AS Decimal(18, 15)), N'臺南市楠西區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (361, N'臺南市', N'學甲區', CAST(120.184186500000000 AS Decimal(18, 15)), CAST(23.252198050000000 AS Decimal(18, 15)), N'臺南市學甲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (362, N'臺南市', N'龍崎區', CAST(120.386937300000000 AS Decimal(18, 15)), CAST(22.954822760000000 AS Decimal(18, 15)), N'臺南市龍崎區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (363, N'臺南市', N'歸仁區', CAST(120.293062700000000 AS Decimal(18, 15)), CAST(22.946794690000000 AS Decimal(18, 15)), N'臺南市歸仁區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (364, N'臺南市', N'關廟區', CAST(120.334282100000000 AS Decimal(18, 15)), CAST(22.955779090000000 AS Decimal(18, 15)), N'臺南市關廟區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (365, N'臺南市', N'鹽水區', CAST(120.248297700000000 AS Decimal(18, 15)), CAST(23.297986220000000 AS Decimal(18, 15)), N'臺南市鹽水區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (366, N'澎湖縣', N'七美鄉', CAST(119.433930000000000 AS Decimal(18, 15)), CAST(23.201080000000000 AS Decimal(18, 15)), N'澎湖縣七美鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (367, N'澎湖縣', N'白沙鄉', CAST(119.592510000000000 AS Decimal(18, 15)), CAST(23.641780000000000 AS Decimal(18, 15)), N'澎湖縣白沙鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (368, N'澎湖縣', N'西嶼鄉', CAST(119.507830000000000 AS Decimal(18, 15)), CAST(23.599750000000000 AS Decimal(18, 15)), N'澎湖縣西嶼鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (369, N'澎湖縣', N'馬公市', CAST(119.592340000000000 AS Decimal(18, 15)), CAST(23.555340000000000 AS Decimal(18, 15)), N'澎湖縣馬公市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (370, N'澎湖縣', N'望安鄉', CAST(119.504060000000000 AS Decimal(18, 15)), CAST(23.369040000000000 AS Decimal(18, 15)), N'澎湖縣望安鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (371, N'澎湖縣', N'湖西鄉', CAST(119.644620000000000 AS Decimal(18, 15)), CAST(23.573640000000000 AS Decimal(18, 15)), N'澎湖縣湖西鄉')
SET IDENTITY_INSERT [dbo].[CityAreas] OFF
GO
SET IDENTITY_INSERT [dbo].[Citys] ON 

INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (1, N'100', N'臺北市', CAST(25.032969873738880 AS Decimal(18, 15)), CAST(121.565416580278850 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (2, N'200', N'基隆市', CAST(25.127600097250900 AS Decimal(18, 15)), CAST(121.739182959439290 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (3, N'207', N'新北市', CAST(25.016985170720580 AS Decimal(18, 15)), CAST(121.462785210471600 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (4, N'209', N'連江縣', CAST(26.160242070310530 AS Decimal(18, 15)), CAST(119.951665319196960 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (5, N'260', N'宜蘭縣', CAST(24.759115446286220 AS Decimal(18, 15)), CAST(121.753739484759340 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (6, N'290', N'釣魚臺', CAST(25.744006589830168 AS Decimal(18, 15)), CAST(123.474513994865150 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (7, N'300', N'新竹市', CAST(24.813828845173630 AS Decimal(18, 15)), CAST(120.967478706811480 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (8, N'302', N'新竹縣', CAST(24.761498021236925 AS Decimal(18, 15)), CAST(121.031956282073250 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (9, N'320', N'桃園市', CAST(24.991707591523866 AS Decimal(18, 15)), CAST(121.298958333590950 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (10, N'350', N'苗栗縣', CAST(24.560161309304515 AS Decimal(18, 15)), CAST(120.821424813348160 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (11, N'400', N'臺中市', CAST(24.147737364215230 AS Decimal(18, 15)), CAST(120.673648363630020 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (12, N'500', N'彰化縣', CAST(23.963058076008580 AS Decimal(18, 15)), CAST(120.515182068233770 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (13, N'540', N'南投縣', CAST(23.960998600250665 AS Decimal(18, 15)), CAST(120.971863541971560 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (14, N'600', N'嘉義市', CAST(23.480073598896038 AS Decimal(18, 15)), CAST(120.449108296805720 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (15, N'602', N'嘉義縣', CAST(23.451840409353192 AS Decimal(18, 15)), CAST(120.255462028714050 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (16, N'630', N'雲林縣', CAST(23.709204361746450 AS Decimal(18, 15)), CAST(120.431337240887230 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (17, N'700', N'臺南市', CAST(22.999900159667950 AS Decimal(18, 15)), CAST(120.226877302795360 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (18, N'800', N'高雄市', CAST(22.628784552656917 AS Decimal(18, 15)), CAST(120.301646015772060 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (19, N'817', N'南海島', CAST(10.721038940045405 AS Decimal(18, 15)), CAST(115.839429187310320 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (20, N'880', N'澎湖縣', CAST(23.571189301169140 AS Decimal(18, 15)), CAST(119.579314503948350 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (21, N'890', N'金門縣', CAST(24.449374619015440 AS Decimal(18, 15)), CAST(118.376636219215630 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (22, N'900', N'屏東縣', CAST(22.674677369906558 AS Decimal(18, 15)), CAST(120.492308863654940 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (23, N'950', N'臺東縣', CAST(22.797244475393537 AS Decimal(18, 15)), CAST(121.071369076386080 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (24, N'970', N'花蓮縣', CAST(23.987161563098663 AS Decimal(18, 15)), CAST(121.601570991277270 AS Decimal(18, 15)), N'')
SET IDENTITY_INSERT [dbo].[Citys] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (1, 1, N'01', N'My OB', N'myob.png', N'https://www.myob.com/au', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (2, 1, N'02', N'BELIMO', N'belimo.png', N'https://www.belimo.com/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (3, 1, N'03', N'Life Groups', N'lifegroups.png', N'https://www.life.church/lifegroups/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (4, 1, N'04', N'Lilly', N'lilly.png', N'https://www.lilly.com/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (5, 1, N'05', N'Citrus', N'citrus.png', N'https://www.citrus.com/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (6, 1, N'06', N'Trustly', N'trustly.png', N'https://www.trustly.net/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (7, 1, N'07', N'Oldendorff', N'oldendorff.png', N'https://www.oldendorff.com/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (8, 1, N'08', N'Grabyo', N'grabyo.png', N'https://about.grabyo.com/', N'')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[CodeBases] ON 

INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (1, 0, N'AddressBook', N'通訊錄類別', N'Friend', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (2, 0, N'Brand', N'品牌', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (3, 0, N'Calendar', N'行事曆類別', N'Public', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (4, 1, N'CloseDate', N'關帳類別', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (6, 1, N'Color', N'顏色', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (5, 1, N'Company', N'公司類別', N'Company', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (7, 0, N'Customer', N'客戶分類', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (8, 0, N'FormStatus', N'表單狀態', N'New', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (9, 1, N'Gender', N'性別', N'M', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (10, 1, N'Log', N'日誌類別', N'Login', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (11, 0, N'Material', N'材質', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (12, 0, N'Member', N'會員分類', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (13, 1, N'Message', N'訊息類別', N'User', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (14, 1, N'News', N'最新消息類別', N'Post', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (15, 1, N'Notification', N'通知類別', N'System', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (16, 0, N'Photo', N'照片類別', N'Cloth', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (17, 1, N'Program', N'程式類別', N'Program', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (18, 1, N'ResignReason', N'離職原因', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (19, 1, N'Sheet', N'單據狀態', N'New', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (20, 1, N'Size', N'尺寸', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (21, 1, N'Target', N'對象', N'O', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (22, 1, N'Tax', N'稅別', N'O', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (23, 1, N'TodoList', N'待辦事項', N'O', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (24, 0, N'User', N'使用者類別', N'Official', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (25, 0, N'Vacation', N'假日類別', N'Personal', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (26, 0, N'Vendor', N'廠商分類', N'', N'')
SET IDENTITY_INSERT [dbo].[CodeBases] OFF
GO
SET IDENTITY_INSERT [dbo].[CodeDatas] ON 

INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (1, 1, N'AddressBook', N'', N'01', N'Friend', N'朋友', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (2, 1, N'AddressBook', N'', N'02', N'Family', N'家庭', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (3, 1, N'AddressBook', N'', N'03', N'Colleague', N'同事', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (4, 1, N'AddressBook', N'', N'03', N'Colleague', N'親戚', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (5, 1, N'Calendar', N'', N'01', N'Public', N'公開行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (6, 1, N'Calendar', N'', N'02', N'Private', N'私人行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (7, 1, N'Calendar', N'', N'03', N'Visit', N'拜訪行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (8, 1, N'Calendar', N'', N'04', N'Travel', N'旅遊行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (9, 1, N'Calendar', N'', N'05', N'Wedding', N'婚禮行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (10, 1, N'Calendar', N'', N'06', N'Funeral', N'喪禮行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (11, 1, N'Calendar', N'', N'07', N'Birthday', N'生日行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (12, 1, N'Calendar', N'', N'08', N'Opening', N'開業行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (13, 1, N'Calendar', N'', N'09', N'Residential', N'入宅行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (14, 1, N'Calendar', N'', N'10', N'Party', N'派對行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (15, 1, N'Calendar', N'', N'11', N'Congratulate', N'祝賀行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (16, 1, N'Calendar', N'', N'12', N'Exam', N'考試行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (17, 1, N'Calendar', N'', N'13', N'Competition', N'競賽行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (18, 1, N'Calendar', N'', N'14', N'Fun', N'玩樂行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (19, 1, N'Calendar', N'', N'15', N'Food', N'餐飲行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (20, 1, N'Calendar', N'', N'16', N'Class', N'上課行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (21, 1, N'Calendar', N'', N'17', N'Study', N'進修行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (22, 1, N'Company', N'', N'01', N'Company', N'公司', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (23, 1, N'Company', N'', N'02', N'Customer', N'客戶', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (24, 1, N'Company', N'', N'03', N'Vendor', N'廠商', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (86, 1, N'Customer', N'', N'01', N'Normal', N'正常客戶', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (87, 1, N'Customer', N'', N'02', N'Reject', N'拒往客戶', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (88, 1, N'Customer', N'', N'03', N'UnValid', N'待驗客戶', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (25, 1, N'FormStatus', N'', N'01', N'New', N'新增', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (26, 1, N'FormStatus', N'', N'02', N'Approve', N'核准', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (27, 1, N'FormStatus', N'', N'03', N'Reject', N'駁回', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (28, 1, N'FormStatus', N'', N'04', N'Pause', N'暫停', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (29, 1, N'Gender', N'', N'01', N'M', N'男', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (30, 1, N'Gender', N'', N'02', N'F', N'女', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (31, 1, N'Gender', N'', N'03', N'O', N'其它', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (32, 1, N'Log', N'', N'01', N'Login', N'登入', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (33, 1, N'Log', N'', N'02', N'Lout', N'登出', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (34, 1, N'Log', N'', N'03', N'Open', N'開啟程式', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (35, 1, N'Log', N'', N'04', N'Eamil', N'寄出郵件', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (36, 1, N'Log', N'', N'05', N'Upload', N'上傳檔案', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (37, 1, N'Log', N'', N'06', N'Create', N'新增記錄', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (38, 1, N'Log', N'', N'07', N'Delete', N'刪除記錄', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (39, 1, N'Log', N'', N'08', N'Edit', N'修改記錄', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (40, 1, N'News', N'', N'01', N'Post', N'一般', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (41, 1, N'News', N'', N'02', N'Action', N'活動', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (42, 1, N'News', N'', N'03', N'Rewards', N'獎勵', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (43, 1, N'News', N'', N'04', N'Punishments', N'懲處', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (44, 1, N'News', N'', N'05', N'Promotion', N'晋升', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (45, 1, N'News', N'', N'06', N'Mis', N'資訊室', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (92, 1, N'Photo', N'', N'01', N'Cloth', N'服飾', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (93, 1, N'Photo', N'', N'02', N'Hat', N'帽子', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (94, 1, N'Photo', N'', N'03', N'Shoe', N'鞋子', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (46, 1, N'Program', N'', N'01', N'P', N'程式', N'fas fa-table', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (47, 1, N'Program', N'', N'02', N'R', N'報表', N'fas fa-print', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (48, 1, N'Program', N'', N'03', N'G', N'圖表', N'fas fa-chart-line', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (49, 1, N'Program', N'', N'04', N'S', N'行事曆', N'fas fa-calendar-alt', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (50, 1, N'Program', N'', N'05', N'A', N'分析', N'fas fa-search', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (51, 1, N'ResignReason', N'', N'01', N'Private', N'個人因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (52, 1, N'ResignReason', N'', N'02', N'Family', N'家庭因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (53, 1, N'ResignReason', N'', N'03', N'Job', N'工作因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (54, 1, N'ResignReason', N'', N'04', N'Future', N'前程發展', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (55, 1, N'ResignReason', N'', N'05', N'Director', N'主管因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (56, 1, N'ResignReason', N'', N'99', N'Other', N'其它因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (57, 1, N'Sheet', N'', N'01', N'New', N'新單據', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (58, 1, N'Sheet', N'', N'02', N'Confirm', N'確認', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (59, 1, N'Sheet', N'', N'03', N'Abolish', N'作廢', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (60, 1, N'Tax', N'', N'01', N'O', N'外加稅', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (61, 1, N'Tax', N'', N'02', N'I', N'內含稅', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (62, 1, N'Tax', N'', N'03', N'Z', N'零稅率', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (63, 1, N'TodoList', N'', N'01', N'Normal', N'一般', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (64, 1, N'TodoList', N'', N'02', N'Work', N'工作', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (65, 1, N'TodoList', N'', N'03', N'Project', N'專案', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (66, 1, N'TodoList', N'', N'04', N'Class', N'上課', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (67, 1, N'TodoList', N'', N'05', N'Exam', N'考試', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (68, 1, N'TodoList', N'', N'06', N'Hospital', N'醫療', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (69, 1, N'TodoList', N'', N'07', N'Action', N'活動', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (70, 1, N'TodoList', N'', N'08', N'Food', N'飲食', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (71, 1, N'TodoList', N'', N'09', N'Other', N'其它', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (72, 1, N'Vacation', N'', N'01', N'Personal', N'事假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (73, 1, N'Vacation', N'', N'02', N'Sick', N'病假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (74, 1, N'Vacation', N'', N'03', N'Public', N'公假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (75, 1, N'Vacation', N'', N'04', N'Takecare', N'家庭照顧假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (76, 1, N'Vacation', N'', N'05', N'Injuried', N'普通偒病假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (77, 1, N'Vacation', N'', N'06', N'Menstrual', N'生理假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (78, 1, N'Vacation', N'', N'07', N'Marry', N'婚假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (79, 1, N'Vacation', N'', N'08', N'Bereavement', N'喪假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (80, 1, N'Vacation', N'', N'09', N'Maternity', N'產假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (81, 1, N'Vacation', N'', N'10', N'Prenatal', N'產前假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (82, 1, N'Vacation', N'', N'11', N'Abortion', N'流產假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (83, 1, N'Vacation', N'', N'12', N'Paternity', N'陪產假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (84, 1, N'Vacation', N'', N'13', N'Special', N'特休假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (85, 1, N'Vacation', N'', N'14', N'Compensatory', N'補休假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (89, 1, N'Vendor', N'', N'01', N'Meterial', N'材料供應商', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (90, 1, N'Vendor', N'', N'02', N'Device', N'設備供應商', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (91, 1, N'Vendor', N'', N'03', N'Repair', N'維修商', N'', N'')
SET IDENTITY_INSERT [dbo].[CodeDatas] OFF
GO
SET IDENTITY_INSERT [dbo].[Companys] ON 

INSERT [dbo].[Companys] ([Id], [IsDefault], [IsEnabled], [CodeNo], [CompNo], [CompName], [ShortName], [EngName], [EngShortName], [RegisterDate], [BossName], [ContactName], [CompTel], [ContactTel], [CompFax], [CompID], [ContactEmail], [CompAddress], [CompUrl], [TwitterUrl], [FacebookUrl], [InstagramUrl], [SkypeUrl], [LinkedinUrl], [Latitude], [Longitude], [AboutusText], [SupportText], [ReturnText], [ShippingText], [PaymentText], [Remark]) VALUES (1, 1, 1, N'Company', N'C001', N'好好用科技股份有限公司', N'好好用科技', N'GoodUse Technology Co., Ltd.', N'GoodUse', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'王大明', N'陳小姐', N'02-12345678', N'02-12345678 分機: 234', N'02-66668888', N'12345678', N'min@gmail.com', N'台北市中正區忠孝東路一段1號', N'https://tw.yahoo.com/', N'https://twitter.com/?lang=zh-Hant', N'https://www.facebook.com/', N'https://www.instagram.com/', N'https://www.skype.com/zh-Hant/', N'https://tw.linkedin.com/', CAST(25.040000000000000 AS Decimal(20, 15)), CAST(121.520000000000000 AS Decimal(20, 15)), N'<span style="font-weight: bold;">本公司創立於民國100年，是一間全新的公司，主要從事資訊網通、軟體加值、資料處理等各項服務，秉持著 『幸福企業』的經營理念，追求企業與員工一起成長，共創雙贏。</span></br></br>
<span style="font-weight: bold;">本公司目前所提供之產品服務項目為：</span></br>
■網路相關設備</br>
■網路架構規劃與建置</br>
■網路系統偵測</br>
■管理網路資訊伺服器</br>
■網路維護管理</br>
■電力/監控/空調系統規劃及施工</br>
■資料處理及各項軟體研發銷售</br>
■雲端規劃(主機雲、儲存雲、桌面雲、無線雲)</br></br>
對於未來趨勢的願景發展，本公司期許能成為一家『資通訊科技』、『資訊網路安全』、『雲端網路』之專業加值服務公司，除了在資訊網路安全的架構上，提供各界全方位多元化整體解決方案；更希望能在企業e化的進程中，協助客戶整合各方的優點，提供多元化的資訊整合解決方案，為客戶創造更優勢的競爭力、締造無限的商機，期許能成為一家『資通訊科技』、『資訊網路安全』之專業加值服務公司，並且和世界知名大廠合作以成長學習，希冀能以本身的專業與經驗提供給所有願意給我們機會的客戶最好與最可靠的服務，我們會以務實踏實穩建經營的理念讓我們成為客戶值得信賴的依靠。</br></br>
<span style="font-weight: bold;">本公司具有下列專業證照，並提供下列相關主要服務：</span></br>
思科網路證照：CCNP、CCNA…等。</br>
微軟網路證照：MCSE、MCP、MCP+I…等。</br>
Unix、Linux證照：SUN-Certified、RHCE、RHCT…等。</br>
弱電配線證照：通信技術(電信線路)乙、丙級技術士，網路架設乙、丙級技術士。</br>
勞工安衛證照：丙種勞工安全衛生業務主管。</br>
其他：HP ASE、VMware VTSP、資安…等。</br></br>
<span style="font-weight: bold;">本公司主要客戶：</span></br>
政府機關、國營事業、大專院校及飯店業等。</br></br>
<span style="font-weight: bold;">為何選擇我們</span></br>
豐富的資通訊整合經驗、永遠比客戶多設想一步、持續精進與客戶一同成長，發展雙贏與成功的契機。</br></br>
<span style="font-weight: bold;">我們的豐富經驗</span></br>
從網路通訊、資料儲存設備軟硬體整合....將以更齊備更創新的產品、更完整的資訊與技術服務，提供各界全方位的TOTAL SOLUTION；多元化的高C/P值資訊整合解決方案，為企業創造更優勢的競爭力、締造無限的商機', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Companys] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [CountryNo], [CountryName], [Remark]) VALUES (1, N'us', N'美國', NULL)
INSERT [dbo].[Country] ([Id], [CountryNo], [CountryName], [Remark]) VALUES (2, N'jp', N'日本', NULL)
INSERT [dbo].[Country] ([Id], [CountryNo], [CountryName], [Remark]) VALUES (3, N'de', N'德國', NULL)
INSERT [dbo].[Country] ([Id], [CountryNo], [CountryName], [Remark]) VALUES (4, N'tw', N'台灣', NULL)
INSERT [dbo].[Country] ([Id], [CountryNo], [CountryName], [Remark]) VALUES (5, N'za', N'南非', NULL)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [CategoryNo], [CourseNo], [CourseName], [StatusCode], [RegisterStartDate], [RegisterEndDate], [OpenStartDate], [OpenEndDate], [TeacherNo], [CourseAmount], [TotalHours], [CourseCode], [CourseOutline], [Remark]) VALUES (5, N'BUS', N'BUS202301', N'', N'O', CAST(N'2023-08-01' AS Date), CAST(N'2023-08-31' AS Date), CAST(N'2023-09-01' AS Date), CAST(N'2023-10-01' AS Date), N'T001', 4500, 10, N'O', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseCase] ON 

INSERT [dbo].[CourseCase] ([Id], [StatusCode], [CaseDate], [ConfirmTime], [CaseTime], [StudentNo], [StudentName], [TeacherNo], [TeacherName], [CourseNo], [CourseName], [TimeSection], [WeekSection], [UserMemo], [Remark]) VALUES (10039, N'N', CAST(N'2023-10-03' AS Date), NULL, N'20231003191925', N'S020', N'花花', N'T002', N'Jean Wilson', N'ENGSPK', N'英文口說', N'09:00 / 10:00 / 16:00 / 17:00 / 20:00', N'一 / 二 / 日', NULL, NULL)
INSERT [dbo].[CourseCase] ([Id], [StatusCode], [CaseDate], [ConfirmTime], [CaseTime], [StudentNo], [StudentName], [TeacherNo], [TeacherName], [CourseNo], [CourseName], [TimeSection], [WeekSection], [UserMemo], [Remark]) VALUES (10041, N'N', CAST(N'2023-10-03' AS Date), NULL, N'20231003233709', N'U005', N'楊小風', N'T004', N'Jim Chou', N'JPNSPK', N'日文口說', N'09:00 / 16:00 / 17:00 / 18:00 / 20:00', N'一 / 二 / 六 / 日', N'測試~~~', NULL)
SET IDENTITY_INSERT [dbo].[CourseCase] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseCode] ON 

INSERT [dbo].[CourseCode] ([Id], [CodeNo], [CodeName], [Remark]) VALUES (1, N'C', N'Course', NULL)
INSERT [dbo].[CourseCode] ([Id], [CodeNo], [CodeName], [Remark]) VALUES (2, N'O', N'ON LINE', NULL)
INSERT [dbo].[CourseCode] ([Id], [CodeNo], [CodeName], [Remark]) VALUES (3, N'T', N'OUTSIDE', NULL)
SET IDENTITY_INSERT [dbo].[CourseCode] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseStatus] ON 

INSERT [dbo].[CourseStatus] ([Id], [StatusNo], [StatusName], [Remark]) VALUES (1, N'N', N'New Case', NULL)
INSERT [dbo].[CourseStatus] ([Id], [StatusNo], [StatusName], [Remark]) VALUES (2, N'C', N'Confirm', NULL)
INSERT [dbo].[CourseStatus] ([Id], [StatusNo], [StatusName], [Remark]) VALUES (3, N'E', N'End', NULL)
INSERT [dbo].[CourseStatus] ([Id], [StatusNo], [StatusName], [Remark]) VALUES (4, N'A', N'Abandon', NULL)
SET IDENTITY_INSERT [dbo].[CourseStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (1, N'D001', N'總理室', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (2, N'D002', N'管理部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (3, N'D003', N'人事部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (4, N'D004', N'財務部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (5, N'D005', N'營業部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (6, N'D006', N'廠務部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (7, N'D007', N'品管部', N'')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (1, 1, N'E001', N'李佩萍', N'F', N'D002', N'T005', CAST(N'2000-06-17' AS Date), CAST(N'2012-12-10' AS Date), NULL, N'e001@gmail.com', N'0953578127', N'桃園市桃園區永安北路12號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (2, 1, N'E002', N'李牧惟', N'M', N'D003', N'T008', CAST(N'2000-11-18' AS Date), CAST(N'2012-01-20' AS Date), NULL, N'e002@gmail.com', N'0989730162', N'彰化縣田中鎮鎮政二街33號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (3, 1, N'E003', N'龐宜婷', N'F', N'D005', N'T008', CAST(N'1981-03-24' AS Date), CAST(N'2016-12-22' AS Date), NULL, N'e003@gmail.com', N'0918554216', N'臺北市中正區桃源街25號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (4, 1, N'E004', N'王馨慧', N'F', N'D001', N'T001', CAST(N'2002-11-28' AS Date), CAST(N'2020-05-19' AS Date), NULL, N'e004@gmail.com', N'0954504718', N'臺東縣臺東市臨海路8號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (5, 1, N'E005', N'黃淑珍', N'F', N'D001', N'T001', CAST(N'1982-09-16' AS Date), CAST(N'2019-12-07' AS Date), NULL, N'e005@gmail.com', N'0919367690', N'嘉義縣朴子市牛挑灣20號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (6, 1, N'E006', N'何芃湖', N'M', N'D006', N'T004', CAST(N'1992-10-20' AS Date), CAST(N'2019-04-29' AS Date), NULL, N'e006@gmail.com', N'0926230410', N'雲林縣虎尾鎮民主九路12號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (7, 1, N'E007', N'黃瑤茹', N'F', N'D004', N'T004', CAST(N'1980-03-16' AS Date), CAST(N'2012-05-20' AS Date), NULL, N'e007@gmail.com', N'0930817172', N'臺南市東區崇德三十二街26號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (8, 1, N'E008', N'陳憶合', N'M', N'D001', N'T002', CAST(N'2000-10-02' AS Date), CAST(N'2021-09-06' AS Date), NULL, N'e008@gmail.com', N'0963468582', N'苗栗縣造橋鄉陽明街27號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (9, 1, N'E009', N'楊柏青', N'M', N'D001', N'T003', CAST(N'1991-04-27' AS Date), CAST(N'2013-09-15' AS Date), NULL, N'e009@gmail.com', N'0912902140', N'臺南市新市區善新大道13號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (10, 1, N'E010', N'王子瑄', N'M', N'D007', N'T006', CAST(N'1995-07-28' AS Date), CAST(N'2021-08-18' AS Date), NULL, N'e010@gmail.com', N'0986920912', N'彰化縣彰化市永安街6號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (11, 1, N'E011', N'陳愛駿', N'M', N'D002', N'T001', CAST(N'2009-09-07' AS Date), CAST(N'2011-10-16' AS Date), NULL, N'e011@gmail.com', N'0931988987', N'桃園市桃園區吉多街27號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (12, 1, N'E012', N'丁秀芬', N'F', N'D001', N'T003', CAST(N'1990-07-06' AS Date), CAST(N'2020-01-12' AS Date), NULL, N'e012@gmail.com', N'0933793452', N'臺中市梧棲區自強四街34號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (13, 1, N'E013', N'林岳啟', N'M', N'D001', N'T005', CAST(N'1990-11-18' AS Date), CAST(N'2017-12-30' AS Date), NULL, N'e013@gmail.com', N'0971925781', N'新竹縣寶山鄉大坪路16號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (14, 1, N'E014', N'李芝辛', N'M', N'D005', N'T004', CAST(N'1983-02-19' AS Date), CAST(N'2022-11-09' AS Date), NULL, N'e014@gmail.com', N'0911421405', N'雲林縣西螺鎮河南10號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (15, 1, N'E015', N'黃苡薇', N'F', N'D002', N'T006', CAST(N'1993-04-27' AS Date), CAST(N'2022-05-13' AS Date), NULL, N'e015@gmail.com', N'0924664677', N'苗栗縣苑裡鎮介壽路11號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (16, 1, N'E016', N'林丞奇', N'M', N'D003', N'T003', CAST(N'1994-07-26' AS Date), CAST(N'2022-02-07' AS Date), NULL, N'e016@gmail.com', N'0913379262', N'彰化縣鹿港鎮中山路13號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (17, 1, N'E017', N'陳俊賢', N'M', N'D004', N'T005', CAST(N'1999-07-06' AS Date), CAST(N'2017-03-07' AS Date), NULL, N'e017@gmail.com', N'0919716304', N'臺東縣卑南鄉試驗場24號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (18, 1, N'E018', N'王珮如', N'F', N'D001', N'T005', CAST(N'2006-04-23' AS Date), CAST(N'2013-05-07' AS Date), NULL, N'e018@gmail.com', N'0934631845', N'臺中市東區南京四街34號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (19, 1, N'E019', N'劉怡靜', N'F', N'D003', N'T004', CAST(N'1987-11-07' AS Date), CAST(N'2014-09-10' AS Date), NULL, N'e019@gmail.com', N'0928170645', N'南投縣竹山鎮田南巷23號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (20, 1, N'E020', N'錢偉夫', N'M', N'D006', N'T007', CAST(N'2007-10-30' AS Date), CAST(N'2020-11-23' AS Date), NULL, N'e020@gmail.com', N'0924088248', N'宜蘭縣三星鄉大德中路35號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (21, 1, N'E021', N'詹雅新', N'M', N'D004', N'T006', CAST(N'1989-05-12' AS Date), CAST(N'2014-10-07' AS Date), NULL, N'e021@gmail.com', N'0931853358', N'臺南市安定區安新一路25號', N'')
INSERT [dbo].[Employees] ([Id], [IsValid], [EmpNo], [EmpName], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [Remark]) VALUES (22, 1, N'E022', N'何聖雲', N'M', N'D007', N'T006', CAST(N'1990-11-16' AS Date), CAST(N'2015-07-24' AS Date), NULL, N'e022@gmail.com', N'0961878114', N'桃園市平鎮區平東路21號', N'')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[ForumBoards] ON 

INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (1, 1, N'01', N'Course', N'課程內容討論區', N'Course', N'這是有關課程內容討論區', N'', N'7AA4C85D-1D45-47FD-9F03-FFB9E692560A')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (2, 1, N'02', N'DataBase', N'資料庫討論區', N'DataBase', N'這是有關資料庫討論區', N'', N'4EDC5176-0B44-4514-94E6-0924745B9E33')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (3, 1, N'03', N'DevExpress', N'DevExpress', N'DevExpress', N'這是有關 DevExpress 討論區', N'', N'23EF8971-C2C8-430D-AF00-9364DD0112E0')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (4, 1, N'04', N'DevStudio', N'DevStudio', N'DevStudio', N'這是有關 DevStudio 討論區', N'', N'7F2859B8-83E1-453B-9452-A540EAC9ED5A')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (5, 1, N'05', N'Discussion', N'一般討論區', N'Discussion', N'這是有關一般討論區', N'', N'0B42E465-8052-4929-A750-791B785E80A6')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (6, 1, N'06', N'Interview', N'面試討論區', N'Interview', N'這是有關面試討論區', N'', N'AC1ADEEA-0596-4E97-B537-7341AEEC9B46')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (7, 1, N'07', N'MVC', N'ASP.NET MVC', N'MVC', N'這是有關 ASP.NET MVC 討論區', N'', N'4FBF9E64-BA9E-4807-BE2C-31A4E05D2BEE')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (8, 1, N'08', N'Outsourcing', N'外包討論區', N'Outsourcing', N'這是有關外包討論區', N'', N'76D8038C-EE7C-4F59-B288-B9518E0BB93C')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (9, 1, N'09', N'ProductSale', N'商品銷售', N'ProductSale', N'這是有關商品銷售', N'', N'BB4BA678-03C0-4874-9CE2-F6470FA16808')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (10, 1, N'10', N'Questions', N'疑難雜症討論區', N'Questions', N'這是有關疑難雜症討論區', N'', N'82BEE660-B4C8-49F8-902E-438CDF4EF628')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (11, 1, N'11', N'RWD', N'RWD 討論區', N'RWD', N'這是有關 RWD 討論區', N'', N'D3D26731-7555-4DAD-8A71-A28574A89C8C')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (12, 1, N'12', N'WebForm', N'ASP.NET WebForm', N'WebForm', N'這是有關 ASP.NET WebForm 討論區', N'', N'06E0D03B-6C4C-4A2D-BE33-BB6FFB9FE274')
SET IDENTITY_INSERT [dbo].[ForumBoards] OFF
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([Id], [LangNo], [LangName], [Remark]) VALUES (2, N'en-US', N'English', N'')
INSERT [dbo].[Languages] ([Id], [LangNo], [LangName], [Remark]) VALUES (1, N'zh-TW', N'繁體中文', N'')
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
SET IDENTITY_INSERT [dbo].[Modules] ON 

INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (11, 1, 0, N'Admin', N'01', N'ABAS', N'基本資料', N'fas fa-book', NULL)
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (13, 1, 0, N'Admin', N'02', N'AUSR', N'帳號管理', N'fas fa-user', N' ')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (15, 1, 0, N'Admin', N'03', N'ASEC', N'權限管理', N'fas fa-book', N' ')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (16, 1, 0, N'Admin', N'04', N'ASYS', N'系統管理', N'fas fa-cog', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (1, 1, 0, N'Mis', N'01', N'MBAS', N'基本資料', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (2, 1, 0, N'Mis', N'02', N'MUSR', N'帳號管理', N'fas fa-user', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (3, 1, 0, N'Mis', N'03', N'MSEC', N'權限管理', N'fas fa-shield-alt', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (4, 1, 0, N'Mis', N'04', N'MSYS', N'系統管理', N'fas fa-cog', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (5, 1, 0, N'Mis', N'05', N'MCOD', N'程式產生', N'fas fa-code', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (6, 1, 0, N'User', N'01', N'UBAS', N'基本資料', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (18, 1, 0, N'User', N'02', N'UUSR', N'帳號管理', N'fas fa-user', N' ')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (7, 1, 0, N'User', N'03', N'UORG', N'組織管理', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (8, 1, 0, N'User', N'04', N'UHOM', N'首頁管理', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (9, 1, 0, N'User', N'05', N'UORD', N'訂單管理', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (19, 1, 0, N'User', N'06', N'USYS', N'系統管理', N'fas fa-cog', N'')
SET IDENTITY_INSERT [dbo].[Modules] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (2, N'Cloth', N'Coat', N'外套', N'1000-3000元', CAST(N'2000-01-01' AS Date), N'外套，又稱為外衣，是穿在最外面的服裝。外套的體積一般比較大，長衣袖，在穿着時可覆蓋上身的其他衣服。
外套前端有鈕釦或者拉鍊以便穿着，外套一般用作保暖或抵擋雨水的用途。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (5, N'Cloth', N'Dress', N'洋裝', N'3000-15000元', CAST(N'2000-01-01' AS Date), N'洋裝，意思是西式服飾，多指女子服裝而言，多適用於正式場合穿著。每次在出席需要好好打扮的活動之前，總會讓人煩惱到底該穿什麼才不會尷尬又能展現時髦品味。其實在婚禮、聚餐、派對等這種有點正式又可以盛裝打扮的特殊場合中，「洋裝」就是那個能輕鬆解決問題的穿搭選擇，無論是夢幻可愛的甜美感、個性十足的帥氣造型，或簡約俐落的高質感風格，都能以一件洋裝簡單搞定。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (4, N'Cloth', N'Jacket', N'夾克', N'2000-5000元', CAST(N'2000-01-01' AS Date), N'夾克（Jackets，又名Outdoor Jackets），音譯為夾克，户外運動必備裝備之一。
夾克之所以能成為所有户外愛好者的首選外衣，是由其全天候的功能決定的。夾克並不神秘，就是夾克衫，但由於這種功能性服飾從國外傳到中國時，國人為了和普通衣服區別開來，就從其“意譯”上入手，叫做“夾克”。
夾克最早用於在登高海拔雪山時離頂峯還有2~3小時路程的最後衝鋒，這時會脱去羽絨服，卸下大揹包，只穿一件較輕便的衣服輕裝前進，這就是“夾克”中文名字的由來。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (3, N'Cloth', N'Suit', N'西裝', N'5000-35000元', CAST(N'2000-01-01' AS Date), N'西裝，又稱西服、洋裝。
西裝是一種舶來文化。在中國，人們多把有翻領和駁頭，三個衣兜，且衣長在臀圍線以下源自西方的上衣稱作“西服”。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (1, N'Cloth', N'TShirt', N'T恤', N'500-2000元', CAST(N'2000-01-01' AS Date), N'T恤（體恤），又稱T恤衫（體恤衫）、丅字衫，是春夏季人們最喜歡的服裝之一，特別是烈日炎炎，酷暑難耐的盛夏，T恤衫以其自然、舒適、瀟灑又不失莊重之感的優點而逐步替代昔日男士們穿件背心或汗衫外加一件短袖襯衫或香港衫的模式出現社交場合，成為人們樂於穿着的時令服裝。已成為全球男女老幼均愛穿着的時髦裝。據説全世界年銷售量已高達數十億件，與牛仔褲構成了全球最流行、穿着人數最多的服裝。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (7, N'Hat', N'Christmas', N'聖誕帽', N'200-1500元', CAST(N'2000-01-01' AS Date), N'聖誕節是世界各地都相當重視的節日之一，這天不僅要與家人好友相聚之外，還有著許多的聖誕慶祝活動等著你參與，聖誕節活動，像是知名的新北耶誕城、統一時代百貨的聖誕節造景，從桃園、台中、高雄都有舉辦一系列的聖誕節慶祝活動。這時可以搭配聖誔帽來配合打扮。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (6, N'Hat', N'Cowboy', N'牛仔帽', N'300-800元', CAST(N'2000-01-01' AS Date), N'最早的牛仔帽為因應美國中西部的氣候，多以毛氈（F e l t）製作，可以御風擋雨，以功能性為主；時尚牛仔帽，則是取牛仔帽帥氣野性的外型，以裝飾性為主，牛仔帽則是不流失的經典，使用材質上也有很大的變化。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (8, N'Hat', N'Sport', N'運動帽', N'100-500元', CAST(N'2000-01-01' AS Date), N'運動帽，結構簡單，製造容易，是一種旅遊、運動等所必需經常用品。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (10, N'Shoe', N'Casual', N'休閒鞋', N'500-3000元', CAST(N'2000-01-01' AS Date), N'休閒鞋是鞋類的一種，主要特色是以一種簡單，舒適的設計理念，滿足人們日常生活穿着的需求。休閒鞋的概念、內涵和功能便與這種新生活理想和方式緊密相關。人們藉助休閒鞋的造型、品牌及內涵去修飾裝扮自己、展示自己，從中獲得一種審美愉悦和象徵性的精神滿足。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (11, N'Shoe', N'HighHeels', N'高跟鞋', N'1000-5000元', CAST(N'2000-01-01' AS Date), N'高跟鞋是一種高跟的鞋，在17世紀是男性的增高鞋，後成為女鞋。高跟鞋有許多種不同款式。在西方高跟鞋最初出現的時候，是為了方便人們騎馬時雙腳能夠扣緊馬鐙。直到16世紀末高跟鞋才成為貴族的時尚，一些身材矮小的男性，開始藉助高跟鞋來讓自己看起來更高大。將高跟鞋的鞋跟增粗，高度適當調低，就成了男性也適用的日常高跟鞋。當中最有名的，就屬身材矮小的路易十四為了令自己看來更高大、更威武、更具自信，於是就讓鞋匠為他的鞋裝上4吋高的鞋跟，並把跟部漆成紅色以示其尊貴身份。除了各種皮革，人們為了追求高跟鞋的優雅華貴，將昂貴的金屬和珠寶運用在高跟鞋的面料上。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (9, N'Shoe', N'Leather', N'皮鞋', N'500-6000元', CAST(N'2000-01-01' AS Date), N'皮鞋（leather shoe）是指以天然皮革為鞋面，以皮革或橡膠、塑料、PU發泡、PVC等為鞋底，經縫鞝、膠粘或注塑等工藝加工成型的鞋類。皮鞋的特點是透氣、吸濕，具有良好的衞生性能，是各類鞋靴中品位最高的鞋。
幾千年前，人類的祖先就有了穿鞋的習慣，用獸皮裹足、從皮造履到現代皮鞋，皮鞋的歷史相當悠久。在中國，現代皮鞋的生產還只有120多年的歷史，但由於皮鞋的造型、款式、結構以及穿着功能都勝其它鞋類，因此，皮鞋生產發展迅猛。當今，皮鞋已成為人們最喜愛的一種鞋類，成為美化人民生活的大宗商品之一，在服飾類中成為“舉足輕重”的產品。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (12, N'Shoe', N'Running', N'慢跑鞋', N'600-3000元', CAST(N'2000-01-01' AS Date), N'慢跑鞋，屬於一種運動鞋，專門適用於慢跑。慢跑，可以説是最容易進行而且效果相當不錯的運動之一。一雙專業的慢跑鞋，應該具備舒適透氣、高避震系統、提供支撐力、全方位抓地力等功能，才能讓你在運動時更為輕鬆，也是防止你的身體遭受到運動傷害的重要措施。
舒適性透氣，這很重要，因為慢跑是長時間的運動，因此腳容易出汗。這樣最好就要選非皮質的運動鞋，像網面內夾透氣海綿的鞋面是最好選擇。高避震，這點可以對你的腳做緩衝保護——發泡底或氣墊底是個不錯的選擇，具有均勻的着力面。支撐力是要能很好的和腳服帖，要選擇很和腳的碼。鞋底面要選擇抓地能力強的，像汽車輪紋路的有很好的抓地度，切忌不要選擇膠釘鞋底，雖然有最強的抓地性但是不適合慢跑運動，容易扭腳。還有一點。慢跑鞋一定要輕便！讓腳感覺不到有太多的重力最好。', N'')
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
SET IDENTITY_INSERT [dbo].[PricingDetails] ON 

INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (7, N'Business', 1, N'01', N'雲端支付平台', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (8, N'Business', 1, N'02', N'雲端行動刷卡', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (9, N'Business', 1, N'03', N'雲端智慧終端', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (10, N'Business', 0, N'04', N'雲端智慧小鋪', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (11, N'Business', 0, N'05', N'雲端營運管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (12, N'Business', 0, N'06', N'雲端會員管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (13, N'Developer', 1, N'01', N'雲端支付平台', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (14, N'Developer', 1, N'02', N'雲端行動刷卡', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (15, N'Developer', 1, N'03', N'雲端智慧終端', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (16, N'Developer', 1, N'04', N'雲端智慧小鋪', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (17, N'Developer', 0, N'05', N'雲端營運管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (18, N'Developer', 0, N'06', N'雲端會員管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (1, N'Free', 1, N'01', N'雲端支付平台', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (2, N'Free', 1, N'02', N'雲端行動刷卡', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (3, N'Free', 0, N'03', N'雲端智慧終端', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (4, N'Free', 0, N'04', N'雲端智慧小鋪', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (5, N'Free', 0, N'05', N'雲端營運管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (6, N'Free', 0, N'06', N'雲端會員管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (19, N'Ultimate', 1, N'01', N'雲端支付平台', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (20, N'Ultimate', 1, N'02', N'雲端行動刷卡', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (21, N'Ultimate', 1, N'03', N'雲端智慧終端', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (22, N'Ultimate', 1, N'04', N'雲端智慧小鋪', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (23, N'Ultimate', 1, N'05', N'雲端營運管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (24, N'Ultimate', 1, N'06', N'雲端會員管理', N'')
SET IDENTITY_INSERT [dbo].[PricingDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Pricings] ON 

INSERT [dbo].[Pricings] ([Id], [IsEnabled], [IsAdvanced], [IsRecommend], [SortNo], [PricingNo], [PricingName], [ProdPrice], [CycleName], [Remark]) VALUES (1, 1, 0, 0, N'01', N'Free', N'免費版', 0, N'月', N'')
INSERT [dbo].[Pricings] ([Id], [IsEnabled], [IsAdvanced], [IsRecommend], [SortNo], [PricingNo], [PricingName], [ProdPrice], [CycleName], [Remark]) VALUES (2, 1, 0, 1, N'02', N'Business', N'商業版', 500, N'月', N'')
INSERT [dbo].[Pricings] ([Id], [IsEnabled], [IsAdvanced], [IsRecommend], [SortNo], [PricingNo], [PricingName], [ProdPrice], [CycleName], [Remark]) VALUES (3, 1, 0, 0, N'03', N'Developer', N'開發版', 800, N'月', N'')
INSERT [dbo].[Pricings] ([Id], [IsEnabled], [IsAdvanced], [IsRecommend], [SortNo], [PricingNo], [PricingName], [ProdPrice], [CycleName], [Remark]) VALUES (4, 1, 1, 0, N'04', N'Ultimate', N'終極版', 1000, N'月', N'')
SET IDENTITY_INSERT [dbo].[Pricings] OFF
GO
SET IDENTITY_INSERT [dbo].[Programs] ON 

INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (61, 1, 1, 1, N'Admin', N'ABAS', N'01', N'ABASP001', N'角色基本資料維護', N'P', N'Admin', N'ABASP001_Role', N'Init', NULL, 10, NULL)
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (74, 1, 1, 1, N'Admin', N'ABAS', N'02', N'ABASP002', N'科目大分類資料維護', N'P', N'Admin', N'ABASP002_Category1s', N'Init', NULL, 10, NULL)
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (76, 1, 1, 1, N'Admin', N'ABAS', N'03', N'ABASP003', N'科目小分類資料維護', N'P', N'Admin', N'ABASP003_Category2s', N'Init', NULL, 10, NULL)
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (77, 1, 1, 1, N'Admin', N'ABAS', N'04', N'ABASP004', N'課程基本資料維護', N'P', N'Admin', N'ABASP004_Category3s', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (78, 1, 1, 1, N'Admin', N'ABAS', N'05', N'ABASP005', N'課程狀態資料維護', N'P', N'Admin', N'ABASP005_CourseStatus', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (79, 1, 1, 1, N'Admin', N'ABAS', N'06', N'ABASP006', N'國家基本資料維護', N'P', N'Admin', N'ABASP006_Country', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (80, 1, 1, 1, N'Admin', N'ABAS', N'07', N'ABASP007', N'教師課程分類資料維護', N'P', N'Admin', N'ABASP007_UserCategorys', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (83, 1, 1, 1, N'Admin', N'ASYS', N'01', N'ASYSP001', N'課程專案基本資料維護', N'P', N'Admin', N'ASYSP001_CourseCase', N'Init', NULL, 10, NULL)
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (81, 1, 1, 1, N'Admin', N'AUSR', N'01', N'AUSRP001', N'使用者資料維護', N'P', N'Admin', N'AUSRP001_User', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (82, 1, 1, 1, N'Admin', N'AUSR', N'02', N'AUSRP002', N'管理者資料維護', N'P', N'Admin', N'AUSRP002_Mis', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (1, 1, 1, 1, N'Mis', N'MBAS', N'01', N'MBASP001', N'角色基本資料維護', N'P', N'Mis', N'MBASP001_Role', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (4, 1, 1, 1, N'Mis', N'MBAS', N'02', N'MBASP002', N'科目大分類資料維護', N'P', N'Mis', N'MBASP002_Category1s', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (2, 1, 1, 1, N'Mis', N'MBAS', N'03', N'MBASP003', N'科目小分類資料維護', N'P', N'Mis', N'MBASP003_Category2s', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (3, 1, 1, 1, N'Mis', N'MBAS', N'04', N'MBASP004', N'課程基本資料維護', N'P', N'Mis', N'MBASP004_Category3s', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (5, 1, 1, 1, N'Mis', N'MBAS', N'05', N'MBASP005', N'課程狀態資料維護', N'P', N'Mis', N'MBASP005_CourseStatus', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (67, 1, 1, 1, N'Mis', N'MBAS', N'06', N'MBASP006', N'國家基本資料維護', N'P', N'Mis', N'MBASP006_Country', N'Init', NULL, 10, NULL)
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (71, 1, 1, 1, N'Mis', N'MBAS', N'07', N'MBASP007', N'教師課程分類資料維護', N'P', N'Mis', N'MBASP007_UserCategorys', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (6, 1, 1, 1, N'Mis', N'MCOD', N'01', N'MCODP001', N'Metadata 產生器', N'P', N'Mis', N'MCODP001_Metadata', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (7, 1, 1, 1, N'Mis', N'MCOD', N'02', N'MCODP002', N'Repository 產生器', N'P', N'Mis', N'MCODP002_Repository', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (8, 1, 1, 1, N'Mis', N'MCOD', N'03', N'MCODP003', N'Controller 產生器', N'P', N'Mis', N'MCODP003_Controller', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (9, 1, 1, 1, N'Mis', N'MCOD', N'04', N'MCODP004', N'View 產生器', N'P', N'Mis', N'MCODP004_View', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (10, 1, 1, 1, N'Mis', N'MCOD', N'05', N'MCODP005', N'單檔維護產生器', N'P', N'Mis', N'MCODP005_Single', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (11, 1, 1, 1, N'Mis', N'MCOD', N'06', N'MCODP006', N'單筆維護產生器', N'P', N'Mis', N'MCODP006_SingleForm', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (12, 1, 1, 1, N'Mis', N'MCOD', N'07', N'MCODP007', N'表頭單明細產生器', N'P', N'Mis', N'MCODP007_MultiForm', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (13, 1, 1, 1, N'Mis', N'MCOD', N'08', N'MCODP008', N'表頭多明細產生器', N'P', N'Mis', N'MCODP008_MultiTabForm', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (14, 1, 1, 1, N'Mis', N'MCOD', N'09', N'MCODP009', N'報表產生器', N'P', N'Mis', N'MCODP009_Report', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (15, 1, 1, 1, N'Mis', N'MCOD', N'10', N'MCODP010', N'圖表產生器', N'P', N'Mis', N'MCODP010_Chart', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (16, 1, 1, 1, N'Mis', N'MCOD', N'11', N'MCODP011', N'行事曆產生器', N'P', N'Mis', N'MCODP011_Scheduler', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (17, 1, 1, 1, N'Mis', N'MCOD', N'99', N'MCODP099', N'預設欄位名稱維護', N'P', N'Mis', N'MCODP099_PropertyName', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (18, 1, 1, 1, N'Mis', N'MSEC', N'01', N'MSECP001', N'程式權限設定', N'P', N'Mis', N'MSECP001_PrgSecurity', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (19, 1, 1, 1, N'Mis', N'MSEC', N'02', N'MSECP002', N'使用者權限設定', N'P', N'Mis', N'MSECP002_UserSecurity', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (66, 1, 1, 1, N'Mis', N'MSYS', N'00', N'MSYSP000', N'課程專案基本資料維護', N'P', N'Mis', N'MSYSP000_CourseCase', N'Init', NULL, 10, NULL)
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (20, 1, 1, 1, N'Mis', N'MSYS', N'01', N'MSYSP001', N'模組基本資料維護', N'P', N'Mis', N'MSYSP001_Module', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (21, 1, 1, 1, N'Mis', N'MSYS', N'02', N'MSYSP002', N'程式基本資料維護', N'P', N'Mis', N'MSYSP002_Program', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (22, 1, 1, 1, N'Mis', N'MSYS', N'03', N'MSYSP003', N'日誌記錄資料查詢', N'Q', N'Mis', N'MSYSP003_Log', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (23, 1, 1, 1, N'Mis', N'MSYS', N'04', N'MSYSP004', N'首頁輸播圖設定', N'P', N'Mis', N'MSYSP004_Carousel', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (24, 1, 1, 1, N'Mis', N'MSYS', N'99', N'MSYSP099', N'專案系統參數設定', N'P', N'Mis', N'MSYSP099_Application', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (25, 1, 1, 1, N'Mis', N'MUSR', N'01', N'MUSRP001', N'使用者資料維護', N'P', N'Mis', N'MUSRP001_User', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (26, 1, 1, 1, N'Mis', N'MUSR', N'02', N'MUSRP002', N'管理者資料維護', N'P', N'Mis', N'MUSRP002_Mis', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (27, 1, 1, 1, N'User', N'UBAS', N'01', N'UBASP001', N'角色基本資料維護', N'P', N'User', N'UBASP001_Role', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (28, 1, 1, 1, N'User', N'UBAS', N'02', N'UBASP002', N'科目大分類資料維護', N'P', N'User', N'UBASP002_Category1s', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (29, 1, 1, 1, N'User', N'UBAS', N'03', N'UBASP003', N'科目小分類資料維護', N'P', N'User', N'UBASP003_Category2s', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (30, 1, 1, 1, N'User', N'UBAS', N'04', N'UBASP004', N'課程基本資料維護', N'P', N'User', N'UBASP004_Category3s', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (31, 1, 1, 1, N'User', N'UBAS', N'05', N'UBASP005', N'課程狀態資料維護', N'P', N'User', N'UBASP005_CourseStatus', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (84, 1, 1, 1, N'User', N'UBAS', N'06', N'UBASP006', N'國家基本資料維護', N'P', N'User', N'UBASP006_Country', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (85, 1, 1, 1, N'User', N'UBAS', N'07', N'UBASP007', N'教師課程分類資料維護', N'P', N'User', N'UBASP007_UserCategorys', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (32, 1, 1, 1, N'User', N'UHOM', N'01', N'UHOMP001', N'公司介紹資料維護', N'P', N'User', N'UHOMP001_AboutUs', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (33, 1, 1, 1, N'User', N'UHOM', N'02', N'UHOMP002', N'產品代表客戶介紹', N'P', N'User', N'UHOMP002_Client', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (34, 1, 1, 1, N'User', N'UHOM', N'03', N'UHOMP003', N'最新消息資料維護', N'P', N'User', N'UHOMP003_News', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (35, 1, 1, 1, N'User', N'UHOM', N'04', N'UHOMP004', N'圖片展示資料維護', N'P', N'User', N'UHOMP004_Photo', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (36, 1, 1, 1, N'User', N'UHOM', N'05', N'UHOMP005', N'商品價格資料維護', N'P', N'User', N'UHOMP005_Pricing', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (37, 1, 1, 1, N'User', N'UHOM', N'06', N'UHOMP006', N'公司服務資料維護', N'P', N'User', N'UHOMP006_Service', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (38, 1, 1, 1, N'User', N'UORD', N'01', N'UORDP001', N'未結訂單資料維護', N'P', N'User', N'UORDP001_OrderUnClose', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (39, 1, 1, 1, N'User', N'UORD', N'02', N'UORDP002', N'已結訂單資料維護', N'P', N'User', N'UORDP002_OrderClosed', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (40, 1, 1, 1, N'User', N'UORD', N'03', N'UORDP003', N'商品基本資料維護', N'P', N'User', N'UORDP003_Product', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (41, 1, 1, 1, N'User', N'UORD', N'04', N'UORDP004', N'促銷商品資料維護', N'P', N'User', N'UORDP004_Promotion', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (42, 1, 1, 1, N'User', N'UORD', N'05', N'UORDP005', N'商品分類資料維護', N'P', N'User', N'UORDP005_Category', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (43, 1, 1, 1, N'User', N'UORD', N'06', N'UORDP006', N'訂單狀態資料維護', N'P', N'User', N'UORDP006_OrdersStatus', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (44, 1, 1, 1, N'User', N'UORD', N'07', N'UORDP007', N'付款方式資料維護', N'P', N'User', N'UORDP007_Payment', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (45, 1, 1, 1, N'User', N'UORD', N'08', N'UORDP008', N'出貨方式資料維護', N'P', N'User', N'UORDP008_Shipping', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (46, 1, 1, 1, N'User', N'UORG', N'01', N'UORGP001', N'公司基本資料維護', N'P', N'User', N'UORGP001_Company', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (47, 1, 1, 1, N'User', N'UORG', N'02', N'UORGP002', N'部門基本資料維護', N'P', N'User', N'UORGP002_Department', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (48, 1, 1, 1, N'User', N'UORG', N'03', N'UORGP003', N'職稱基本資料維護', N'P', N'User', N'UORGP003_Title', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (49, 1, 1, 1, N'User', N'UORG', N'04', N'UORGP004', N'員工基本資料維護', N'P', N'User', N'UORGP004_Employee', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (50, 1, 1, 1, N'User', N'UORG', N'05', N'UORGP005', N'公司休假行事曆維護', N'P', N'User', N'UORGP005_Vacation', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (51, 1, 1, 1, N'User', N'UORG', N'06', N'UORGP006', N'公司分機表資料維護', N'P', N'User', N'UORGP006_ExtensionTable', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (88, 1, 1, 1, N'User', N'USYS', N'01', N'USYSP001', N'課程專案基本資料維護', N'P', N'User', N'USYSP001_CourseCase', N'Init', NULL, 10, NULL)
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (87, 1, 1, 1, N'User', N'UUSR', N'01', N'UUSRP001', N'使用者資料維護', N'P', N'User', N'UUSRP001_User', N'Init', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (86, 1, 1, 1, N'User', N'UUSR', N'02', N'UUSRP002', N'管理者資料維護', N'P', N'User', N'UUSRP002_Mis', N'Init', N'', 10, N'')
SET IDENTITY_INSERT [dbo].[Programs] OFF
GO
SET IDENTITY_INSERT [dbo].[PropertyNames] ON 

INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (1, N'AboutusText', N'公司簡介', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (2, N'ActionName', N'動作', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (3, N'AppName', N'應用程式名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (4, N'AppVersion', N'應用程式版本', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (5, N'AreaName', N'區域', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (6, N'ArticleCount', N'文章數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (7, N'BarcodeNo', N'條碼編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (8, N'Birthday', N'出生日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (9, N'BoardName', N'版面名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (10, N'BoardNo', N'版面編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (11, N'BossName', N'負責人', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (12, N'CategoryName', N'分類名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (13, N'CategoryNo', N'分類編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (14, N'CityName', N'縣市名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (15, N'ClientName', N'客戶名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (16, N'ColorName', N'行程顏色', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (17, N'CompAddress', N'公司地址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (18, N'CompFax', N'公司傳真', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (19, N'CompID', N'統一編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (20, N'CompName', N'公司名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (21, N'CompNo', N'公司編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (22, N'CompTel', N'公司電話', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (23, N'CompUrl', N'公司網址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (24, N'ContactAddress', N'連絡地址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (25, N'ContactEmail', N'電子信箱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (26, N'ContactName', N'連絡人', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (27, N'ContactTel', N'連絡電話', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (28, N'ContentText', N'商品內容', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (29, N'ControllerName', N'控制器', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (30, N'CostPrice', N'成本單價', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (31, N'CustName', N'客戶名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (32, N'CustNo', N'客戶代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (33, N'CycleName', N'週期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (34, N'DeptName', N'部門名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (35, N'DeptNo', N'部門代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (36, N'Description', N'詳細描述', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (37, N'DescriptionText', N'內容描述', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (38, N'DetailName', N'明細名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (39, N'DetailText', N'明細說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (40, N'DiscountPrice', N'折扣單價', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (41, N'DisplayName', N'顯示名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (42, N'EmpName', N'員工姓名', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (43, N'EmpNo', N'員工編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (44, N'EncryptionMode', N'啟用加密', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (45, N'EndDate', N'結束日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (46, N'EndHour', N'時始小時', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (47, N'EndMinute', N'時始分鐘', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (48, N'EndTime', N'結束時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (49, N'EngName', N'英文名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (50, N'EngShortName', N'英文簡稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (51, N'EventEnd', N'結束日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (52, N'EventStart', N'開始日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (53, N'ExtName', N'分機名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (54, N'ExtNo', N'分機', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (55, N'FacebookID', N'Facebook ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (56, N'FacebookUrl', N'Facebook', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (57, N'FirstName', N'姓氏', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (58, N'GenderCode', N'性別', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (59, N'GenderName', N'性別', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (60, N'GuidNo', N'唯一值', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (61, N'HeaderName', N'主要標題', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (62, N'IconName', N'圖示名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (63, N'ImageUrl', N'圖片位址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (64, N'InstagramID', N'Instagram ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (65, N'InstagramUrl', N'Instagram', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (66, N'IsActive', N'啟動', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (67, N'IsAdd', N'新增', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (68, N'IsClosed', N'結案', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (69, N'IsConfirm', N'審核', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (70, N'IsDefault', N'預設', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (71, N'IsDelete', N'刪除', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (72, N'IsDownload', N'下載', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (73, N'IsEdit', N'修改', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (74, N'IsEnabled', N'啟用', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (75, N'IsFullday', N'全天行程', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (76, N'IsInvalid', N'作廢', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (77, N'IsPrint', N'列印', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (78, N'IsUndo', N'解除', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (79, N'IsUpload', N'上傳', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (80, N'IsValid', N'合法', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (81, N'IsWorkflow', N'簽核', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (82, N'ItemName', N'項目名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (83, N'LangName', N'語言名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (84, N'LangNo', N'語言代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (85, N'LanguageNo', N'預設語言', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (86, N'LastName', N'名字', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (87, N'Latitude', N'緯度(Lat)', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (88, N'LeaveDate', N'離職日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (89, N'LineID', N'LINE ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (90, N'LinkedInID', N'LinkedIn ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (91, N'LinkedinUrl', N'Linkedin', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (92, N'LogDate', N'日誌日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (93, N'LogNo', N'日誌編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (94, N'LogQty', N'數量', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (95, N'LogTime', N'日誌時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (96, N'Longitude', N'經度(Long)', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (97, N'MailAppPassword', N'應用程式密碼', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (98, N'MailHostPort', N'郵件埠號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (99, N'MailHostUrl', N'郵件伺服器', N'')
GO
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (100, N'MailSenderEmail', N'郵件寄件郵件', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (101, N'MailSenderName', N'郵件寄件名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (102, N'MailUseSSL', N'郵件啟用SSL', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (103, N'ModuleName', N'模組名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (104, N'ModuleNo', N'模組代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (105, N'MoreUrl', N'更多網址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (106, N'OnboardDate', N'到職日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (107, N'OrderAmount', N'未稅金額', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (108, N'ParentGuid', N'父階編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (109, N'ParentId', N'父Id', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (110, N'ParentNo', N'父編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (111, N'ParmValue', N'參數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (112, N'Password', N'登入密碼', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (113, N'PaymentName', N'付款名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (114, N'PaymentNo', N'付款編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (115, N'PaymentText', N'付款說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (116, N'PlaceAddress', N'地點地址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (117, N'PlaceName', N'地點名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (118, N'PowerBy', N'設計公司', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (119, N'PrgName', N'程式名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (120, N'PrgNo', N'程式代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (121, N'PricingName', N'單價名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (122, N'PricingNo', N'單價編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (123, N'ProdName', N'商品名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (124, N'ProdNo', N'商品編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (125, N'ProdPrice', N'商品單價', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (126, N'Programs', N'程式數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (127, N'PublishDate', N'發佈日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (128, N'ReceiverAddress', N'收件地址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (129, N'ReceiverEmail', N'收件郵件', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (130, N'ReceiverName', N'收件人員', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (131, N'RegisterDate', N'登記日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (132, N'Remark', N'備註', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (133, N'ReplyCount', N'回覆數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (134, N'ReplyGuid', N'回覆編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (135, N'ResourceText', N'攜帶物品', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (136, N'ReturnText', N'退貨說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (137, N'RoleName', N'角色名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (138, N'RoleNo', N'角色', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (139, N'RoomNo', N'會議室號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (140, N'SalePrice', N'銷售單價', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (141, N'SheetDate', N'單據日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (142, N'SheetNo', N'單據編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (143, N'ShippingName', N'交貨名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (144, N'ShippingNo', N'交貨方式', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (145, N'ShippingText', N'運送說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (146, N'ShortName', N'公司簡稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (147, N'SkypeUrl', N'Skype', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (148, N'SortNo', N'排序', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (149, N'StartDate', N'開始日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (150, N'StartHour', N'時始小時', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (151, N'StartMinute', N'時始分鐘', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (152, N'StartTime', N'開始時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (153, N'StatusCode', N'狀態', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (154, N'SubjectContent', N'內容明細', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (155, N'SubjectDate', N'發佈時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (156, N'SubjectName', N'主旨', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (157, N'SubjectTime', N'發佈時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (158, N'SupportText', N'服務說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (159, N'TargetCode', N'對象類別', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (160, N'TargetName', N'使用者', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (161, N'TargetNo', N'對象代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (162, N'TaxAmount', N'稅額', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (163, N'TitleName', N'標題名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (164, N'TitleNo', N'職稱編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (165, N'TotalAmount', N'合計金額', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (166, N'TwitterID', N'Twitter ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (167, N'TwitterUrl', N'Twitter', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (168, N'TypeName', N'類別名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (169, N'TypeNo', N'類別代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (170, N'UserName', N'發佈人員', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (171, N'UserNo', N'代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (172, N'Users', N'人數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (173, N'VacYear', N'年度', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (174, N'ValidateCode', N'驗證碼', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (175, N'VendorNo', N'廠商編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (176, N'WebSiteUrl', N'網站位址', N'')
SET IDENTITY_INSERT [dbo].[PropertyNames] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (12, 1, N'Admin', N'總權限者', NULL)
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (5, 0, N'Customer', N'客戶', NULL)
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (6, 1, N'Demo', N'測試', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (3, 0, N'Member', N'會員', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (2, 1, N'Mis', N'管理者', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (8, 1, N'Student', N'學生', NULL)
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (7, 1, N'Teacher', N'老師', NULL)
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (1, 1, N'User', N'使用者', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (4, 0, N'Vendor', N'廠商', N'')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (1, 1, N'01', N'雲端支付平台', N'雲端串接、管理各類型支付、票券、會員、點數等相關設定，統一對帳規格，簡化不同服務串接的繁複程序。', N'fas fa-cloud', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (2, 1, N'02', N'雲端行動刷卡', N'結合多元支付及電子發票的簡易收銀，直覺操作最貼心，最懂中小商家的店經理。', N'fas fa-credit-card', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (3, 1, N'03', N'雲端智慧終端', N'結合收銀、點餐、多元支付、會員經營與櫃台行銷活動，提供多合一的物聯網應用，為您創造更佳的顧客互動方式。', N'fas fa-terminal', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (4, 1, N'04', N'雲端智慧小鋪', N'透過雲端平台管理門店事務，滿足各業態店務管理需求，無論是單店經營、連鎖體系或複合商場皆可導入。', N'fas fa-store', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (5, 1, N'05', N'雲端營運管理', N'整合各商場營運資訊與專櫃廠商服務，雲端同步各項帳務、電子發票與支付資訊，即時提供完整的商場消費及營運分析報表，聰明管理零時差。', N'fas fa-cogs', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (6, 1, N'06', N'雲端會員管理', N'雲端會員虛實整合，提供紅利積點、消費明細、票券優惠等個人化服務，鞏固顧客忠誠度，有效提升回購率', N'fas fa-user-tie', N'')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (1, N'01', N'team01', N'麥肯齊‧鮑爾斯', N'MACKENZIE BOWERS', N'M', N'管理部', N'經理', N'#', N'#', N'#', N'#', N'#', N'mackenzie.bowers@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (2, N'02', N'team02', N'艾達‧希金斯', N'ADA HIGGINS', N'F', N'市場部', N'協理', N'#', N'#', N'#', N'#', N'#', N'ada.higgins@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (3, N'03', N'team03', N'理查德‧夏季', N'RICHARD SUMMERS', N'M', N'行銷部', N'副理', N'#', N'#', N'#', N'#', N'#', N'richard.summers@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (4, N'04', N'team04', N'奧布麗‧鮑曼', N'AUBREE BOWMAN', N'F', N'資管部', N'經理', N'#', N'#', N'#', N'#', N'#', N'aubree.browman@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (5, N'05', N'team05', N'約瑟夫琳‧達德利', N'JOSELYN DUDLEY', N'F', N'財務部', N'經理', N'#', N'#', N'#', N'#', N'#', N'joselyn.dudley@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (6, N'06', N'team06', N'伊萊賈‧漢普頓', N'ELIJAH HAMPTON', N'M', N'行政部', N'副理', N'#', N'#', N'#', N'#', N'#', N'elijah.hampton@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (7, N'07', N'team07', N'泰‧佈雷', N'TY BRAY', N'M', N'法務部', N'經理', N'#', N'#', N'#', N'#', N'#', N'ty.bray@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (8, N'08', N'team08', N'派珀‧葛瑞芬', N'PIPER GRIFFIN', N'F', N'業務部', N'協理', N'#', N'#', N'#', N'#', N'#', N'piper.griffin@gooduse.com.tw', N'', N'')
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
SET IDENTITY_INSERT [dbo].[Titles] ON 

INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (1, N'T001', N'董事長', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (2, N'T002', N'副董事長', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (3, N'T003', N'總經理', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (4, N'T004', N'副總經理', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (5, N'T005', N'協理', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (6, N'T006', N'副理', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (7, N'T007', N'課長', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (8, N'T008', N'專員', N'')
SET IDENTITY_INSERT [dbo].[Titles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserCategorys] ON 

INSERT [dbo].[UserCategorys] ([Id], [UserNo], [CategoryNo], [Remark]) VALUES (1, N'T001', N'ENGBUS', NULL)
INSERT [dbo].[UserCategorys] ([Id], [UserNo], [CategoryNo], [Remark]) VALUES (2, N'T001', N'ENGLIC', NULL)
INSERT [dbo].[UserCategorys] ([Id], [UserNo], [CategoryNo], [Remark]) VALUES (3, N'T002', N'ENGSPK', NULL)
INSERT [dbo].[UserCategorys] ([Id], [UserNo], [CategoryNo], [Remark]) VALUES (4, N'T002', N'ENGLIC', NULL)
INSERT [dbo].[UserCategorys] ([Id], [UserNo], [CategoryNo], [Remark]) VALUES (5, N'T003', N'ENGBUS', NULL)
INSERT [dbo].[UserCategorys] ([Id], [UserNo], [CategoryNo], [Remark]) VALUES (8, N'T004', N'JPNSPK', NULL)
INSERT [dbo].[UserCategorys] ([Id], [UserNo], [CategoryNo], [Remark]) VALUES (9, N'T003', N'ENGKID', NULL)
SET IDENTITY_INSERT [dbo].[UserCategorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (1039, 1, N'A100', N'林俊男', N'9e909fd512af96ae937d5dc3f0b35babc6d4ce15ae95850f63504565d24d64cc', NULL, N'Admin', N'M', N'tw', NULL, NULL, NULL, NULL, NULL, NULL, N'tony@apmtech.com.tw', NULL, N'台北市中正區100忠孝東路一段85號12樓之4', N'', N'', NULL, NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (14, 1, N'Doraemon', N'葉大雄', N'e7bf35da90a7c6d80b19bf4287f9588384553c680e541ad13c8b08073e45066b', NULL, N'Student', N'M', N'jp', NULL, NULL, N'0', NULL, NULL, NULL, N'odypass@gmail.com', N'09864996355555', N'台北市', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (8, 1, N'JoeWang', N'王喬伊', N'212ff49d91dfda984e51b2c1e300706bc7d782ca1c1129167bb7584d5bb99953', N'Normal', N'Customer', N'M', N'us', N'D001', NULL, N'0', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'odypass@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', NULL, N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (1, 1, N'M001', N'王大明', N'5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', N'Official', N'Mis', N'M', N'us', N'D001', NULL, N'0', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'odypass@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'431A773049E941D2A1096F224CE12815', N'', NULL, NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (32, 1, N'M002', N'李則言', N'1fab8c68a11623fdd1937fe0da687eaf3d92acc380cead1eac23cd3e8400d445', NULL, N'Mis', N'M', N'jp', NULL, NULL, N'0', CAST(N'2015-06-10' AS Date), NULL, NULL, N'odypass@gmail.com', N'0945454545', N'台北市', N'', N'', N'', NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (36, 1, N'M003', N'kay', N'7b861411c69d00e66887391229aa4d85332dda4fb35a591a8806708971ee7b44', NULL, N'Mis', N'M', N'us', NULL, NULL, NULL, CAST(N'2023-09-16' AS Date), NULL, NULL, N'odypass@gmail.com', N'0912346678', N'台北市', N'', N'', N'', NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (7, 1, N'MikeLee', N'李麥克', N'12345', N'Meterial', N'Vendor', N'M', N'us', N'D001', NULL, N'0', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'odypass@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', NULL, N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (12, 1, N'odypass', N'Hanna.H', N'64545d05410d81fda37fbeda6f3de2071c13697568b99f6cd82d41223989aa74', NULL, N'Admin', N'F', N'de', N'D001', NULL, N'0', CAST(N'1993-07-26' AS Date), NULL, NULL, N'odypass@gmail.com', N'0976566499', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (11, 0, N'S001', N'花橘子', NULL, NULL, N'Student', N'F', N'jp', NULL, NULL, N'0', NULL, NULL, NULL, N'odypass@gmail.com', N'0912346678', NULL, NULL, NULL, NULL, N'測試')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (24, 0, N'S003', N'洪在行', N'12345', NULL, N'Student', N'M', N'tw', NULL, NULL, NULL, NULL, NULL, NULL, N'odypass@gmail.com', N'09123456789', N'台北市北投區至善路152號', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (23, 1, N'S008', N'洪小天', N'70723b7a5c9e9949f7582908675202a891896da0511f498c0bb252a7ef164a38', NULL, N'Student', N'M', N'us', NULL, NULL, N'0', CAST(N'2023-09-06' AS Date), NULL, NULL, N'odypass@gmail.com', N'0912346678', NULL, N'', N'', N'', NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (22, 1, N'S020', N'花花', N'12345', NULL, N'Student', N'F', N'us', NULL, NULL, N'0', CAST(N'2023-09-21' AS Date), NULL, NULL, N'odypass@gmail.com', N'0912346678', NULL, N'', N'', N'', NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (39, 1, N'S100', N'林俊男', N'3a78abbcfe4f704ee5642c92b36e0ce22525c753b31586198894c709a1e3bb9f', NULL, N'Student', N'M', N'tw', NULL, NULL, NULL, NULL, NULL, NULL, N'tony@apmtech.com.tw', N'02-7726-7688', N'台北市中正區100忠孝東路一段85號12樓之4', N'', N'', NULL, N'測試帳號')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (9, 1, N'T001', N'Trisa Mayer', N'e78d6e358171a045d54a628e52c664755d2003250e554d6490a2e3b5794d20a2', NULL, N'Teacher', N'M', N'us', N'D001', NULL, N'3', NULL, NULL, NULL, N'odypass@gmail.com', N'0912346678', NULL, NULL, NULL, N'<p>Trisa是一位具有廣泛的商業和教育豐富經驗的英語教師，擁有康奈爾大學（Cornell University）的商業碩士學位，並且在商業領域工作了多年。</p>

<p>她將她的商業知識和教學技巧相結合，以幫助許多學生提高他們的英語語言技能。</p>

<p>Trisa的教學風格以專業、實用和互動性為特點。她明白商業英語不僅僅是語法和詞彙，還包括商業溝通技巧、專業寫作、演示技巧以及跨文化溝通的重要性。</p>

<p>她的課程設計充滿了實際商業場景的案例研究，並且強調學生在商業環境中的應用能力。</p>

<p>作為一位專業商業老師，Trisa擅長幫助學生準備商業英語相關的考試，如商業英語證書考試（BEC）或其他商業英語考試。她提供針對性的指導和實踐測試，以確保學生在這些考試中表現出色。</p>

<p>Trisa也注重建立一個鼓勵學生參與和討論的學習環境。她鼓勵學生提出問題、分享他們的商業經驗，並進行模擬商業場景的角色扮演。這有助於學生更好地理解商業英語的實際應用。</p>
', NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (10, 1, N'T002', N'Jean Wilson', N'9ba7d0652682e1fe75b90bd1ea8a1a69e679a0039c80fc9c85e10e2ff7ddc793', NULL, N'Teacher', N'F', N'us', N'D001', NULL, N'5', NULL, NULL, NULL, N'odypass@gmail.com', N'0912346678', NULL, NULL, NULL, N'<p>Jean Wilson是一位來自美國的英文教育者，擁有多年的教學經驗。她專注於教授英文口說技巧和協助學生順利通過各種英文證照考試。她以互動性、個性化和啟發性的教學風格而聞名，努力幫助學生在英語溝通中更自信、更流利，同時取得成功的學習成果。</p>

<p><strong>教學專長</strong></p>

<p>在英文口說方面，Jean相信有效的語言學習需要不斷的口語實踐。她的課程包括會話技巧、發音改善、口語表達能力和討論技巧。無論學生是初學者還是希望提升流利度的進階學習者，她都能夠根據學生的需求量身訂製課程。</p>

<p>在英文證照考試方面，Jean提供全方位的考試準備，包括TOEFL、IELTS、Cambridge證書等。她將提供模擬考試、策略指導和考試技巧，確保學生在考試中表現出色。</p>

<p><strong>教學方法</strong></p>

<p>Jean採用互動式的教學方法，鼓勵學生積極參與課堂，透過角色扮演、實際情境對話和即時反饋，幫助學生提升英文口說能力。她的課程強調實際應用，讓學生能夠在真實情境中自信地運用所學內容。</p>

<p><strong>學習目標</strong></p>

<p>Jean的教學目標是幫助學生不僅掌握英語的基本技能，還能夠自信地運用英語進行溝通，無論是在日常生活中還是在學術和職業領域。她期待能夠與學生攜手，實現他們的英語學習目標，並協助他們成功地通過英文證照考試。如果您有任何問題或需要進一步了解Jean的課程，請隨時聯絡她。她期待在課堂上見到學生，並一同實現他們的學習目標。</p>
', NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (17, 1, N'T003', N'Olivia Johnson', N'963606fbc3791a6c3053264f977ce910821a69680e5e41de99e6b3f04d7d0471', NULL, N'Teacher', N'F', N'za', NULL, NULL, N'4', CAST(N'1987-08-08' AS Date), NULL, NULL, N'odypass@gmail.com', N'09789456123', NULL, NULL, NULL, N'<p>Olivia Johnson是一位來自南非的優秀女老師，擁有多年的教學經驗。她專攻於商業英文和兒童英文的教學，擁有獨特的教學風格和方法，以幫助學生在不同年齡和需求的情境下，取得成功的學習成果。</p>

<p><strong>商業英文教學</strong></p>

<p>Olivia在商業英文方面擁有廣泛的專業知識，她的課程旨在幫助專業人士和企業界學生提高英語溝通能力。她專注於商業會話、專業英文書寫、演講技巧和商業溝通策略。不論您是希望提升職場英語技能，還是需要幫助在國際商業環境中脫穎而出，Olivia都能夠根據您的需求提供度身定制的課程。</p>

<p><strong>兒童英文教學</strong></p>

<p>對於兒童英文教學，Olivia充滿耐心和關懷，並以創意和互動方式設計課程，使孩子們能夠輕鬆愉快地學習英語。她的課程包括英語遊戲、故事時間、歌曲和互動活動，旨在啟發兒童的語言學習興趣，提高他們的聽說能力和語言表達技巧。Olivia相信兒童教育需要樂趣和參與，她致力於營造一個愉快的學習環境。</p>

<p><strong>教學方法</strong></p>

<p>Olivia的教學方法強調互動、實際應用和個性化學習。她鼓勵學生參與課堂互動，並提供即時反饋，以確保學生在課程中積極參與並不斷進步。</p>

<p><strong>學習目標</strong></p>

<p>Olivia的目標是幫助學生充分發揮潛力，實現他們的學習目標。她追求的不僅是語言技能的提升，還有對英語學習的信心和樂趣的培養。如果您正在尋找一位優秀的商業英文或兒童英文教育者，Olivia Johnson絕對是您的理想選擇。如果您有任何問題或需要進一步了解她的課程，請隨時聯絡她，她期待能夠與您一同啟發和支持您的英語學習旅程。</p>
', N'喜歡面對面教課')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (25, 1, N'T004', N'James Zhou', N'877b4011250e9bc6afe05dcddfa93ec093139527a094a8fb0f8f6f80bf0cce2e', NULL, N'Teacher', N'M', N'tw', NULL, NULL, N'2', CAST(N'1997-06-21' AS Date), NULL, NULL, N'odypass@gmail.com', N'0912346678', NULL, N'', N'', N'', NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (40, 1, N'T100', N'林俊男', N'ea52f8f988a42577529a9704628f46ffe758170e8c7e7f020e052d5a6d074d74', NULL, N'Teacher', N'M', N'tw', NULL, NULL, N'5', NULL, NULL, NULL, N'tony@apmtech.com.tw', NULL, N'台北市中正區100忠孝東路一段85號12樓之4', N'', N'', N'測試帳號', N'測試帳號')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (2, 1, N'U001', N'楊小天', N'5712a0a6ed3e13c23aba4ab512acba88b519b259e45568bc39ae79d15999a11b', N'Official', N'User', N'M', N'us', N'D001', NULL, N'5', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'odypass@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', NULL, N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (3, 1, N'U002', N'王小華', N'12345', N'Official', N'User', N'F', N'tw', N'D001', NULL, N'5', CAST(N'1987-02-02' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'odypass@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', NULL, NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (4, 1, N'U003', N'陳小國', N'12345', N'Official', N'User', N'M', N'tw', N'D001', NULL, N'5', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'odypass@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', NULL, NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (5, 1, N'U004', N'許小信', N'12345', N'Official', N'User', N'M', N'jp', N'D001', NULL, N'5', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'odypass@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', NULL, NULL)
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [CountryNo], [DeptNo], [TitleNo], [ReviewStar], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [ContentText], [Remark]) VALUES (6, 1, N'U005', N'楊小風', N'92d7e018f36a80e56bddede6c46175d694f7a7b580ee0c693eca78484522e957', N'Official', N'Member', N'F', N'us', N'D001', NULL, N'0', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'odypass@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', NULL, N'')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [PK_AboutUs]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[AboutUs] ADD  CONSTRAINT [PK_AboutUs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_AboutUsDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[AboutUsDetails] ADD  CONSTRAINT [PK_AboutUsDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_AddressBooks]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[AddressBooks] ADD  CONSTRAINT [PK_AddressBooks] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Applications]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Applications] ADD  CONSTRAINT [PK_Applications] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Calendars]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [PK_Calendars] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Carousels]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Carousels] ADD  CONSTRAINT [PK_Carousels] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Carts]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Carts] ADD  CONSTRAINT [PK_Carts] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Categorys]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [PK_Categorys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_CityAreas]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[CityAreas] ADD  CONSTRAINT [PK_CityAreas] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Citys]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Citys] ADD  CONSTRAINT [PK_Citys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Clients]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [PK_Clients] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_CloseDates]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[CloseDates] ADD  CONSTRAINT [PK_CloseDates] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_CodeBases]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[CodeBases] ADD  CONSTRAINT [PK_CodeBases] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_CodeDatas]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[CodeDatas] ADD  CONSTRAINT [PK_CodeDatas] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Companys]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Companys] ADD  CONSTRAINT [PK_Companys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Departments]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [PK_Departments] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Employees]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [PK_Employees] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ExtensionTables]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[ExtensionTables] ADD  CONSTRAINT [PK_ExtensionTables] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Featureds]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Featureds] ADD  CONSTRAINT [PK_Featureds] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_FormDetail]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[FormDetail] ADD  CONSTRAINT [PK_FormDetail] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_FormMaster]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[FormMaster] ADD  CONSTRAINT [PK_FormMaster] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ForumBoards]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[ForumBoards] ADD  CONSTRAINT [PK_ForumBoards] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Forums]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Forums] ADD  CONSTRAINT [PK_Forums] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_InvDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[InvDetails] ADD  CONSTRAINT [PK_InvDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Inventorys]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Inventorys] ADD  CONSTRAINT [PK_Inventorys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_InventorysDetail]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[InventorysDetail] ADD  CONSTRAINT [PK_InventorysDetail] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_InventorysType]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[InventorysType] ADD  CONSTRAINT [PK_InventorysType] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_InvMasters]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[InvMasters] ADD  CONSTRAINT [PK_InvMasters] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Languages]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [PK_Languages] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Logs]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Logs] ADD  CONSTRAINT [PK_Logs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_MapPositions]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[MapPositions] ADD  CONSTRAINT [PK_MapPositions] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Messages]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [PK_Messages] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Modules]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [PK_Modules] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_News]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [PK_News] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_NewsLetter]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[NewsLetter] ADD  CONSTRAINT [PK_NewsLetter] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Notifications]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [PK_Notifications] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_OrderDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [PK_OrderDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Orders]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [PK_Orders] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_OrdersStatus]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[OrdersStatus] ADD  CONSTRAINT [PK_OrdersStatus] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Payments]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Payments] ADD  CONSTRAINT [PK_Payments] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Photos]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Photos] ADD  CONSTRAINT [PK_Photos] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_PricingDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[PricingDetails] ADD  CONSTRAINT [PK_PricingDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Pricings]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Pricings] ADD  CONSTRAINT [PK_Pricings] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductFeatureds]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[ProductFeatureds] ADD  CONSTRAINT [PK_ProductFeatureds] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductInventorys]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[ProductInventorys] ADD  CONSTRAINT [PK_ProductInventorys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductPropertys]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[ProductPropertys] ADD  CONSTRAINT [PK_ProductPropertys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductRelations]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[ProductRelations] ADD  CONSTRAINT [PK_ProductRelations] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Products]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [PK_Products] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Programs]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Programs] ADD  CONSTRAINT [PK_Programs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Promotions]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Promotions] ADD  CONSTRAINT [PK_Promotions] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_PropertyNames]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[PropertyNames] ADD  CONSTRAINT [PK_PropertyNames] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Propertys]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Propertys] ADD  CONSTRAINT [PK_Propertys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Roles]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [PK_Roles] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Securitys]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [PK_Securitys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Services]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [PK_Services] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Shippings]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Shippings] ADD  CONSTRAINT [PK_Shippings] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Teams]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Teams] ADD  CONSTRAINT [PK_Teams] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Titles]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Titles] ADD  CONSTRAINT [PK_Titles] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_TodoLists]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[TodoLists] ADD  CONSTRAINT [PK_TodoLists] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Users]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [PK_Users] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Vacations]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Vacations] ADD  CONSTRAINT [PK_Vacations] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Warehouses]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[Warehouses] ADD  CONSTRAINT [PK_Warehouses] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_WorkflowDetails]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[WorkflowDetails] ADD  CONSTRAINT [PK_WorkflowDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_WorkflowMasters]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[WorkflowMasters] ADD  CONSTRAINT [PK_WorkflowMasters] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_WorkflowRoles]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[WorkflowRoles] ADD  CONSTRAINT [PK_WorkflowRoles] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_RoleUsers]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[WorkflowRoleUsers] ADD  CONSTRAINT [PK_RoleUsers] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_WorkflowRoutes]    Script Date: 2023/10/4 下午 11:52:24 ******/
ALTER TABLE [dbo].[WorkflowRoutes] ADD  CONSTRAINT [PK_WorkflowRoutes] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ForumBoards] ADD  CONSTRAINT [DF_ForumBoards_GuidNo]  DEFAULT (newid()) FOR [GuidNo]
GO
ALTER TABLE [dbo].[Forums] ADD  CONSTRAINT [DF_Forums_GuidNo]  DEFAULT (newid()) FOR [GuidNo]
GO
ALTER TABLE [dbo].[WorkflowDetails] ADD  CONSTRAINT [DF_WorkflowDetails_GuidNo]  DEFAULT (newid()) FOR [GuidNo]
GO
ALTER TABLE [dbo].[WorkflowMasters] ADD  CONSTRAINT [DF_WorkflowMasters_GuidNo]  DEFAULT (newid()) FOR [GuidNo]
GO

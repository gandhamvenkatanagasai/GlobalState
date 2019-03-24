USE [AddPost]
GO
/****** Object:  Table [dbo].[Master_CityNameDetails]    Script Date: 3/24/2019 5:27:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_CityNameDetails](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_CityNameDetails] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_CommunityDetails]    Script Date: 3/24/2019 5:27:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_CommunityDetails](
	[CommunityId] [int] IDENTITY(1,1) NOT NULL,
	[CommunityName] [nvarchar](50) NOT NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Master_CommunityDetails] PRIMARY KEY CLUSTERED 
(
	[CommunityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_CountryNameDetails]    Script Date: 3/24/2019 5:27:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_CountryNameDetails](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_CountryNameDetails] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_MenuItems]    Script Date: 3/24/2019 5:27:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_MenuItems](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[ParentId] [int] NULL,
	[IsApprovalRequired] [bit] NOT NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_MainMenuItems] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_NotificationTypeDetails]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_NotificationTypeDetails](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_NotificationTypeDetails] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_RoleDetails]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_RoleDetails](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Settings]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Settings](
	[SettingId] [int] IDENTITY(1,1) NOT NULL,
	[SettingName] [nvarchar](50) NOT NULL,
	[SettingTypeId] [int] NOT NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Master_Settings] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_SettingTypes]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_SettingTypes](
	[SettingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SettingTypeName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Master_SettingTypes] PRIMARY KEY CLUSTERED 
(
	[SettingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_StateNameDetails]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_StateNameDetails](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NOT NULL,
	[CountryId] [int] NOT NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_StateNameDetails] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_AddDetails]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_AddDetails](
	[AddId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Header] [nvarchar](50) NOT NULL,
	[DescriptionId] [int] NOT NULL,
	[AddressId] [int] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[MaxDaysToLive] [int] NOT NULL,
	[IsCommunitySpecific] [bit] NOT NULL,
	[TerminationDate] [datetime] NOT NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_AddDetails] PRIMARY KEY CLUSTERED 
(
	[AddId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_DescriptionDetails]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_DescriptionDetails](
	[DescriptionId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_DescriptionDetails] PRIMARY KEY CLUSTERED 
(
	[DescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_ImageDetails]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_ImageDetails](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[AddId] [int] NOT NULL,
	[Imagedata] [varchar](max) NULL,
	[ImageName] [varchar](70) NULL,
 CONSTRAINT [PK_Post_ImageDetails] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Notifications]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Header] [nvarchar](50) NOT NULL,
	[DescriptionId] [int] NOT NULL,
	[AddressId] [int] NULL,
	[MaxDaysToLive] [int] NULL,
	[TerminationDate] [datetime] NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_AddressDetails]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_AddressDetails](
	[AddressId] [int] NOT NULL,
	[AddressLine1] [nvarchar](300) NOT NULL,
	[AddressLine2] [nvarchar](300) NULL,
	[CountryId] [int] NOT NULL,
	[StateId] [int] NULL,
	[CityId] [int] NOT NULL,
	[Zip] [nvarchar](20) NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_AddressDetails] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_LoginDetails]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_LoginDetails](
	[LId] [int] IDENTITY(1,1) NOT NULL,
	[RId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[IsEmailVerified] [bit] NOT NULL,
	[IsMobileVerified] [bit] NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_LoginDetails] PRIMARY KEY CLUSTERED 
(
	[LId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_SettingsPreferance]    Script Date: 3/24/2019 5:27:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_SettingsPreferance](
	[UserSettingId] [int] NOT NULL,
	[SettingId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Preference] [nvarchar](50) NULL,
 CONSTRAINT [PK_User_SettingsPreferance] PRIMARY KEY CLUSTERED 
(
	[UserSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_UserDetails]    Script Date: 3/24/2019 5:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_UserDetails](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[AddressId] [int] NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[OtherContact] [nvarchar](50) NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[RoleId] [int] NULL,
	[CraetedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Post_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_ViewerDetails]    Script Date: 3/24/2019 5:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_ViewerDetails](
	[ViewerId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[AddId] [int] NOT NULL,
	[IpAddress] [nvarchar](50) NULL,
	[ViewedOn] [datetime] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Post_ViewerDetails] PRIMARY KEY CLUSTERED 
(
	[ViewerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Master_CityNameDetails] ADD  CONSTRAINT [DF_Post_CityNameDetails_CraetedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Master_CityNameDetails] ADD  CONSTRAINT [DF_Post_CityNameDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_CityNameDetails] ADD  CONSTRAINT [DF_Post_CityNameDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_CityNameDetails] ADD  CONSTRAINT [DF_Post_CityNameDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_CityNameDetails] ADD  CONSTRAINT [DF_Post_CityNameDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Master_CommunityDetails] ADD  CONSTRAINT [DF_Master_CommunityDetails_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Master_CommunityDetails] ADD  CONSTRAINT [DF_Table_1_CreatedBy1]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_CommunityDetails] ADD  CONSTRAINT [DF_Master_CommunityDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_CommunityDetails] ADD  CONSTRAINT [DF_Master_CommunityDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_CommunityDetails] ADD  CONSTRAINT [DF_Master_CommunityDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Master_CountryNameDetails] ADD  CONSTRAINT [DF_Post_CountryNameDetails_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Master_CountryNameDetails] ADD  CONSTRAINT [DF_Post_CountryNameDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_CountryNameDetails] ADD  CONSTRAINT [DF_Post_CountryNameDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_CountryNameDetails] ADD  CONSTRAINT [DF_Post_CountryNameDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_CountryNameDetails] ADD  CONSTRAINT [DF_Post_CountryNameDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Master_MenuItems] ADD  CONSTRAINT [DF_Post_MainMenuItems_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Master_MenuItems] ADD  CONSTRAINT [DF_Post_MainMenuItems_IsApprovalReuired]  DEFAULT ((1)) FOR [IsApprovalRequired]
GO
ALTER TABLE [dbo].[Master_MenuItems] ADD  CONSTRAINT [DF_Post_MainMenuItems_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Master_MenuItems] ADD  CONSTRAINT [DF_Post_MainMenuItems_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_MenuItems] ADD  CONSTRAINT [DF_Post_MainMenuItems_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_MenuItems] ADD  CONSTRAINT [DF_Post_MainMenuItems_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_MenuItems] ADD  CONSTRAINT [DF_Post_MainMenuItems_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Master_NotificationTypeDetails] ADD  CONSTRAINT [DF_Post_NotificationTypeDetails_CraetedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Master_NotificationTypeDetails] ADD  CONSTRAINT [DF_Post_NotificationTypeDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_NotificationTypeDetails] ADD  CONSTRAINT [DF_Post_NotificationTypeDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_NotificationTypeDetails] ADD  CONSTRAINT [DF_Post_NotificationTypeDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_NotificationTypeDetails] ADD  CONSTRAINT [DF_Post_NotificationTypeDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Master_RoleDetails] ADD  CONSTRAINT [DF_Post_Role_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Master_RoleDetails] ADD  CONSTRAINT [DF_Post_Role_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_RoleDetails] ADD  CONSTRAINT [DF_Post_Role_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_RoleDetails] ADD  CONSTRAINT [DF_Post_Role_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_RoleDetails] ADD  CONSTRAINT [DF_Post_RoleDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Master_Settings] ADD  CONSTRAINT [DF_Master_Settings_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Master_Settings] ADD  CONSTRAINT [DF_Master_Settings_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_Settings] ADD  CONSTRAINT [DF_Master_Settings_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_Settings] ADD  CONSTRAINT [DF_Master_Settings_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_Settings] ADD  CONSTRAINT [DF_Master_Settings_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Master_SettingTypes] ADD  CONSTRAINT [DF_Master_SettingTypes_CraetedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Master_SettingTypes] ADD  CONSTRAINT [DF_Master_SettingTypes_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_SettingTypes] ADD  CONSTRAINT [DF_Master_SettingTypes_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_SettingTypes] ADD  CONSTRAINT [DF_Master_SettingTypes_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_SettingTypes] ADD  CONSTRAINT [DF_Master_SettingTypes_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Master_StateNameDetails] ADD  CONSTRAINT [DF_Post_StateNameDetails_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Master_StateNameDetails] ADD  CONSTRAINT [DF_Post_StateNameDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Master_StateNameDetails] ADD  CONSTRAINT [DF_Post_StateNameDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Master_StateNameDetails] ADD  CONSTRAINT [DF_Post_StateNameDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Master_StateNameDetails] ADD  CONSTRAINT [DF_Post_StateNameDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Post_AddDetails] ADD  CONSTRAINT [DF_Post_AddDetails_IsApproved]  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[Post_AddDetails] ADD  CONSTRAINT [DF_Post_AddDetails_MaxDaysToLive]  DEFAULT ((10)) FOR [MaxDaysToLive]
GO
ALTER TABLE [dbo].[Post_AddDetails] ADD  CONSTRAINT [DF_Post_AddDetails_IsCommunitySpecific]  DEFAULT ((0)) FOR [IsCommunitySpecific]
GO
ALTER TABLE [dbo].[Post_AddDetails] ADD  CONSTRAINT [DF_Post_AddDetails_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Post_AddDetails] ADD  CONSTRAINT [DF_Post_AddDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Post_AddDetails] ADD  CONSTRAINT [DF_Post_AddDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Post_AddDetails] ADD  CONSTRAINT [DF_Post_AddDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Post_AddDetails] ADD  CONSTRAINT [DF_Post_AddDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Post_DescriptionDetails] ADD  CONSTRAINT [DF_Post_DescriptionDetails_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Post_DescriptionDetails] ADD  CONSTRAINT [DF_Post_DescriptionDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Post_DescriptionDetails] ADD  CONSTRAINT [DF_Post_DescriptionDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Post_DescriptionDetails] ADD  CONSTRAINT [DF_Post_DescriptionDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Post_DescriptionDetails] ADD  CONSTRAINT [DF_Post_DescriptionDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Post_Notifications] ADD  CONSTRAINT [DF_Post_Notifications_MaxDaysToLive]  DEFAULT ((10)) FOR [MaxDaysToLive]
GO
ALTER TABLE [dbo].[Post_Notifications] ADD  CONSTRAINT [DF_Post_Notifications_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[Post_Notifications] ADD  CONSTRAINT [DF_Post_Notifications_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Post_Notifications] ADD  CONSTRAINT [DF_Post_Notifications_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Post_Notifications] ADD  CONSTRAINT [DF_Post_Notifications_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Post_Notifications] ADD  CONSTRAINT [DF_Post_Notifications_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[User_AddressDetails] ADD  CONSTRAINT [DF_Post_AddressDetails_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[User_AddressDetails] ADD  CONSTRAINT [DF_Post_AddressDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_AddressDetails] ADD  CONSTRAINT [DF_Post_AddressDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[User_AddressDetails] ADD  CONSTRAINT [DF_Post_AddressDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[User_AddressDetails] ADD  CONSTRAINT [DF_Post_AddressDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[User_LoginDetails] ADD  CONSTRAINT [DF_Post_LoginDetails_IsVerified]  DEFAULT ((0)) FOR [IsEmailVerified]
GO
ALTER TABLE [dbo].[User_LoginDetails] ADD  CONSTRAINT [DF_Post_LoginDetails_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[User_LoginDetails] ADD  CONSTRAINT [DF_Post_LoginDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_LoginDetails] ADD  CONSTRAINT [DF_Post_LoginDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[User_LoginDetails] ADD  CONSTRAINT [DF_Post_LoginDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[User_LoginDetails] ADD  CONSTRAINT [DF_Post_LoginDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[User_UserDetails] ADD  CONSTRAINT [DF_Post_UserDetails_CraetedDate]  DEFAULT (getdate()) FOR [CraetedDate]
GO
ALTER TABLE [dbo].[User_UserDetails] ADD  CONSTRAINT [DF_Post_UserDetails_CreatedBy]  DEFAULT (suser_name()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_UserDetails] ADD  CONSTRAINT [DF_Post_UserDetails_UpdatedBy]  DEFAULT (suser_name()) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[User_UserDetails] ADD  CONSTRAINT [DF_Post_UserDetails_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[User_UserDetails] ADD  CONSTRAINT [DF_Post_UserDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[User_ViewerDetails] ADD  CONSTRAINT [DF_Post_ViewerDetails_Count]  DEFAULT ((1)) FOR [Count]
GO
ALTER TABLE [dbo].[Master_CommunityDetails]  WITH CHECK ADD  CONSTRAINT [FK_Master_CommunityDetails_Master_CountryNameDetails] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Master_CountryNameDetails] ([CountryId])
GO
ALTER TABLE [dbo].[Master_CommunityDetails] CHECK CONSTRAINT [FK_Master_CommunityDetails_Master_CountryNameDetails]
GO
ALTER TABLE [dbo].[Master_CommunityDetails]  WITH CHECK ADD  CONSTRAINT [FK_Master_CommunityDetails_Master_StateNameDetails] FOREIGN KEY([StateId])
REFERENCES [dbo].[Master_StateNameDetails] ([StateId])
GO
ALTER TABLE [dbo].[Master_CommunityDetails] CHECK CONSTRAINT [FK_Master_CommunityDetails_Master_StateNameDetails]
GO
ALTER TABLE [dbo].[Master_Settings]  WITH CHECK ADD  CONSTRAINT [FK_Master_Settings_Master_SettingTypes] FOREIGN KEY([SettingTypeId])
REFERENCES [dbo].[Master_SettingTypes] ([SettingTypeId])
GO
ALTER TABLE [dbo].[Master_Settings] CHECK CONSTRAINT [FK_Master_Settings_Master_SettingTypes]
GO
ALTER TABLE [dbo].[Master_StateNameDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_StateNameDetails_Post_CountryNameDetails] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Master_CountryNameDetails] ([CountryId])
GO
ALTER TABLE [dbo].[Master_StateNameDetails] CHECK CONSTRAINT [FK_Post_StateNameDetails_Post_CountryNameDetails]
GO
ALTER TABLE [dbo].[Post_AddDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_AddDetails_Post_AddressDetails] FOREIGN KEY([AddressId])
REFERENCES [dbo].[User_AddressDetails] ([AddressId])
GO
ALTER TABLE [dbo].[Post_AddDetails] CHECK CONSTRAINT [FK_Post_AddDetails_Post_AddressDetails]
GO
ALTER TABLE [dbo].[Post_AddDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_AddDetails_Post_DescriptionDetails] FOREIGN KEY([DescriptionId])
REFERENCES [dbo].[Post_DescriptionDetails] ([DescriptionId])
GO
ALTER TABLE [dbo].[Post_AddDetails] CHECK CONSTRAINT [FK_Post_AddDetails_Post_DescriptionDetails]
GO
ALTER TABLE [dbo].[Post_AddDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_AddDetails_Post_MainMenuItems] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Master_MenuItems] ([ItemId])
GO
ALTER TABLE [dbo].[Post_AddDetails] CHECK CONSTRAINT [FK_Post_AddDetails_Post_MainMenuItems]
GO
ALTER TABLE [dbo].[Post_AddDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_AddDetails_Post_MenuItems] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Master_MenuItems] ([ItemId])
GO
ALTER TABLE [dbo].[Post_AddDetails] CHECK CONSTRAINT [FK_Post_AddDetails_Post_MenuItems]
GO
ALTER TABLE [dbo].[Post_ImageDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_ImageDetails_Post_AddDetails] FOREIGN KEY([AddId])
REFERENCES [dbo].[Post_AddDetails] ([AddId])
GO
ALTER TABLE [dbo].[Post_ImageDetails] CHECK CONSTRAINT [FK_Post_ImageDetails_Post_AddDetails]
GO
ALTER TABLE [dbo].[Post_Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Post_Notifications_Post_NotificationTypeDetails] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Master_NotificationTypeDetails] ([TypeId])
GO
ALTER TABLE [dbo].[Post_Notifications] CHECK CONSTRAINT [FK_Post_Notifications_Post_NotificationTypeDetails]
GO
ALTER TABLE [dbo].[User_AddressDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_AddressDetails_Post_CityNameDetails] FOREIGN KEY([CityId])
REFERENCES [dbo].[Master_CityNameDetails] ([CityId])
GO
ALTER TABLE [dbo].[User_AddressDetails] CHECK CONSTRAINT [FK_Post_AddressDetails_Post_CityNameDetails]
GO
ALTER TABLE [dbo].[User_AddressDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_AddressDetails_Post_CountryNameDetails] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Master_CountryNameDetails] ([CountryId])
GO
ALTER TABLE [dbo].[User_AddressDetails] CHECK CONSTRAINT [FK_Post_AddressDetails_Post_CountryNameDetails]
GO
ALTER TABLE [dbo].[User_AddressDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_AddressDetails_Post_StateNameDetails] FOREIGN KEY([StateId])
REFERENCES [dbo].[Master_StateNameDetails] ([StateId])
GO
ALTER TABLE [dbo].[User_AddressDetails] CHECK CONSTRAINT [FK_Post_AddressDetails_Post_StateNameDetails]
GO
ALTER TABLE [dbo].[User_LoginDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_LoginDetails_Post_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Master_RoleDetails] ([RoleId])
GO
ALTER TABLE [dbo].[User_LoginDetails] CHECK CONSTRAINT [FK_Post_LoginDetails_Post_Role]
GO
ALTER TABLE [dbo].[User_LoginDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_LoginDetails_Post_UserDetails] FOREIGN KEY([RId])
REFERENCES [dbo].[User_UserDetails] ([UserId])
GO
ALTER TABLE [dbo].[User_LoginDetails] CHECK CONSTRAINT [FK_Post_LoginDetails_Post_UserDetails]
GO
ALTER TABLE [dbo].[User_SettingsPreferance]  WITH CHECK ADD  CONSTRAINT [FK_User_SettingsPreferance_Master_Settings] FOREIGN KEY([SettingId])
REFERENCES [dbo].[Master_Settings] ([SettingId])
GO
ALTER TABLE [dbo].[User_SettingsPreferance] CHECK CONSTRAINT [FK_User_SettingsPreferance_Master_Settings]
GO
ALTER TABLE [dbo].[User_SettingsPreferance]  WITH CHECK ADD  CONSTRAINT [FK_User_SettingsPreferance_User_UserDetails] FOREIGN KEY([UserId])
REFERENCES [dbo].[User_UserDetails] ([UserId])
GO
ALTER TABLE [dbo].[User_SettingsPreferance] CHECK CONSTRAINT [FK_User_SettingsPreferance_User_UserDetails]
GO
ALTER TABLE [dbo].[User_UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_UserDetails_Post_AddressDetails] FOREIGN KEY([AddressId])
REFERENCES [dbo].[User_AddressDetails] ([AddressId])
GO
ALTER TABLE [dbo].[User_UserDetails] CHECK CONSTRAINT [FK_Post_UserDetails_Post_AddressDetails]
GO
ALTER TABLE [dbo].[User_UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_UserDetails_Post_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Master_RoleDetails] ([RoleId])
GO
ALTER TABLE [dbo].[User_UserDetails] CHECK CONSTRAINT [FK_Post_UserDetails_Post_Role]
GO
ALTER TABLE [dbo].[User_ViewerDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_ViewerDetails_Post_AddDetails] FOREIGN KEY([AddId])
REFERENCES [dbo].[Post_AddDetails] ([AddId])
GO
ALTER TABLE [dbo].[User_ViewerDetails] CHECK CONSTRAINT [FK_Post_ViewerDetails_Post_AddDetails]
GO
ALTER TABLE [dbo].[User_ViewerDetails]  WITH CHECK ADD  CONSTRAINT [FK_Post_ViewerDetails_Post_UserDetails] FOREIGN KEY([UserId])
REFERENCES [dbo].[User_UserDetails] ([UserId])
GO
ALTER TABLE [dbo].[User_ViewerDetails] CHECK CONSTRAINT [FK_Post_ViewerDetails_Post_UserDetails]
GO
/****** Object:  StoredProcedure [dbo].[Sp_manageCityDetails]    Script Date: 3/24/2019 5:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_manageCityDetails](
@action int,
@CityId int=null,
@City nvarchar(50)=null,
@CreatedDate datetime=null,
@CreatedBy nvarchar(50)=null,
@UpdatedBy nvarchar(50)=null,
@UpdatedDate datetime=null,
@Active bit=1)
as
begin
if(@action=1)
begin
--insert
insert into Master_CityNameDetails
 (City,CreatedDate,CreatedBy,Active) 
 values(@City,GETDATE(),@CreatedBy,@Active)
select * from Master_CityNameDetails 
end
if(@action=2)
--update
begin
update Master_CityNameDetails set City=@City , 
Active=@Active,UpdatedDate=GETDATE(),UpdatedBy=@UpdatedBy where  CityId=@CityId
select 1 'res', 'City is Updated.' Message, @City as City
end
if(@action=3)
--delete
begin
update Master_CityNameDetails set Active=0 where CityId=@CityId
select 1 'res', 'City is Deleted.' Message, @CityId as CityId
end
if(@action=4)
--select 
begin
select * from Master_CityNameDetails
end
if(@action=5)
--select 
begin
select * from Master_CityNameDetails where Active=1;
end
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_manageMaster_SettingTypes]    Script Date: 3/24/2019 5:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_manageMaster_SettingTypes](
@action int,
@TypeId int=null,
@Type nvarchar(50)=null,
@CreatedDate datetime=null,
@CreatedBy nvarchar(50)=null,
@UpdatedBy nvarchar(50)=null,
@UpdatedDate datetime=null,
@Active bit=1)
as
begin
if(@action=1)
begin
--insert
if not exists(select TypeId from Master_NotificationTypeDetails where Type=@Type)
begin
insert into Master_NotificationTypeDetails
 (Type,CreatedDate,CreatedBy,Active) 
 values(@Type,GETDATE(),@CreatedBy,@Active)
select * from Master_NotificationTypeDetails 
end
else
begin
select -1 'res', 'This NotificationType : '+@Type+'  is already exists.' Message
end
end
if(@action=2)
--update
begin
if not exists(select TypeId from Master_NotificationTypeDetails where Type=@Type and TypeId!=@TypeId)
begin
update Master_NotificationTypeDetails set Type=@Type , 
Active=@Active,UpdatedDate=GETDATE(),UpdatedBy=@UpdatedBy where  TypeId=@TypeId
select 1 'res', 'NotificationType is Updated.' Message, @Type as Type
end
else begin  select -1 'res', 'This NotificationType : '+@Type+' is already exists.' Message, @TypeId as SettingTypeId end

end
if(@action=3)
--delete
begin
select 1 'res', 'NotificationType is Deleted.' Message, @TypeId as SettingTypeId
end
if(@action=4)
--select 
begin
select * from Master_NotificationTypeDetails
end
if(@action=5)
--select 
begin
select * from Master_NotificationTypeDetails where Active=1;
end
end
GO
/****** Object:  StoredProcedure [dbo].[USP_UserAccount]    Script Date: 3/24/2019 5:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[USP_UserAccount] (
@action int,
@Username nvarchar(50)=null,
@Password nvarchar(50)=null,
@FirstName nvarchar(50)=null,
@MiddleName nvarchar(50)=null,
@LastName nvarchar(50)=null,
@Mobile nvarchar(50)=null,
@RId int,
@RoleId int)
as
begin

if(@action=1)
begin
if exists(select UserName from User_LoginDetails where UserName=@Username and Password=@Password)
begin 
select LId,UserName, 1 res,1 status, 'Is Exists' message 
from User_LoginDetails where UserName=@Username and Password=@Password 
end
else
begin
select -1 res,-1 status, 'Login Detail are invalid.' message
end
end

if(@action=2)
begin
if not exists(select UserName from User_LoginDetails where UserName=@Username)
begin 
insert into User_LoginDetails( UserName,Password,RId,RoleId,CraetedDate)
values (@Username,@Password,@RId,@RoleId,GETDATE())
insert into User_UserDetails (FirstName,MiddleName,LastName,Mobile,CraetedDate) values(@FirstName,@MiddleName,@LastName,@Mobile,GETDATE())
select 1 res,1 status, 'Registered Successfully.' message
end
else
begin
select -1 res,-1 status, 'Username or Email Id is already Exists.' message
end
end

end
GO

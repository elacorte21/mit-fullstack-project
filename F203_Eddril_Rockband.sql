USE [F203_Eddril_Rockband]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17/09/2020 9:15:27 am ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[MembershipId] [nvarchar](20) NOT NULL,
	[MembershipName] [nchar](50) NULL,
	[MemberDiscount] [int] NULL,
	[MembershipDesc] [nvarchar](max) NULL,
	[MembershipImage] [nvarchar](20) NULL,
	[MembershipCost] [float] NULL,
	[Expiry] [int] NULL,
 CONSTRAINT [PK_Membership] PRIMARY KEY CLUSTERED 
(
	[MembershipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](256) NULL,
	[SessionId] [nvarchar](128) NULL,
	[OrderStatusId] [int] NULL,
	[DateOfSession] [datetime] NULL,
	[DateOfOrder] [datetime] NULL,
	[DateOfShipping] [datetime] NULL,
	[TransactionId] [int] NULL,
	[Notes] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[DeliveryAddress] [nvarchar](150) NULL,
	[Phone] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](255) NULL,
	[CardOwner] [nvarchar](50) NULL,
	[CardType] [nvarchar](20) NULL,
	[ExpiryDate] [datetime] NULL,
	[GrandTotal] [money] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderId] [int] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[ProductId] [nvarchar](20) NULL,
	[Quantity] [int] NULL,
	[UnitCost] [money] NULL,
	[DiscountedCost] [money] NULL,
	[DiscountPercent] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusId] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [nvarchar](20) NOT NULL,
	[CategoryId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ImageFileName] [nvarchar](20) NULL,
	[UnitCost] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[IsDownload] [bit] NOT NULL,
	[DownloadFileName] [nvarchar](20) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[ReviewId] [int] NOT NULL,
	[ProductId] [nvarchar](20) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerEmail] [nvarchar](50) NULL,
	[Rating] [int] NULL,
	[Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscribe]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscribe](
	[SubscribeId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](256) NULL,
	[SessionId] [nvarchar](128) NULL,
	[SubscribeStatusId] [int] NULL,
	[DateOfSession] [datetime] NULL,
	[DateOfOrder] [datetime] NULL,
	[TransactionId] [int] NULL,
	[Notes] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[DeliveryAddress] [nvarchar](150) NULL,
	[Phone] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](255) NULL,
	[CardOwner] [nvarchar](50) NULL,
	[CardType] [nvarchar](20) NULL,
	[ExpiryDate] [datetime] NULL,
 CONSTRAINT [PK_Subscribe] PRIMARY KEY CLUSTERED 
(
	[SubscribeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscribeDetail]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscribeDetail](
	[SubscribeId] [int] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[MembershipId] [nvarchar](20) NULL,
	[Username] [nvarchar](256) NULL,
	[Quantity] [int] NULL,
	[MembershipCost] [money] NULL,
 CONSTRAINT [PK_SubscribeDetail] PRIMARY KEY CLUSTERED 
(
	[SubscribeId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscribeStatus]    Script Date: 17/09/2020 9:15:28 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscribeStatus](
	[SubscribeStatusId] [int] NOT NULL,
	[SubscribeStatusDescription] [nvarchar](255) NULL,
 CONSTRAINT [PK_SubscribeStatus] PRIMARY KEY CLUSTERED 
(
	[SubscribeStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'91446bf0-a9c2-4eac-8e52-c93fe737660c', N'Admin', N'ADMIN', N'1977084e-1806-498d-b9c0-e5e948941a9b')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fb381af3-9bd2-4ddd-86b4-524e8d54dd70', N'91446bf0-a9c2-4eac-8e52-c93fe737660c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'046036a2-ce95-48b1-b582-8d5492251510', N'user4@example.com', N'USER4@EXAMPLE.COM', N'user4@example.com', N'USER4@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEKYyE0CNW7cmaXUTiIykN+J/ADtAmEu2h0afKDTEQzatbsudvOfPQAAiN54eZDQHjQ==', N'UMHEOE7B3UDCCIWBM6XMSGUEXO4H4UWA', N'e0e48658-833f-4347-80dc-df3a1f4c52b9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4c2ecf8f-a119-4c58-a670-566fc5e0e650', N'user2@example.com', N'USER2@EXAMPLE.COM', N'user2@example.com', N'USER2@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEHYBo7ZEi+xFtfoV4hEQFvNzlSYE3AinuuslPrGiC6VSZKRT8YPXfon8KJ39H3v2uQ==', N'UNDDY4J6BQZDXAD7ZUXBFFFDPRMIGAGY', N'7341e86a-fb44-4d78-810a-93f77aab90fd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'64ec5db4-f090-427d-a62d-6c57b81a160c', N'user1@example.com', N'USER1@EXAMPLE.COM', N'user1@example.com', N'USER1@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEDXeOHaScCQsh+T/HtuYLHRWrTqH8YE6MF82UQmID78LLdvaG4WSsd88ogqd5HIn8Q==', N'52C6SPCTTJPUQFYJOEVDQS4V6RBVZ3AT', N'a5286130-16f9-4c8c-826d-661faa58c505', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8664530a-ad83-4e8d-98b0-17d092809ba4', N'user3@example.com', N'USER3@EXAMPLE.COM', N'user3@example.com', N'USER3@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEDQ3MKcpJlhZopgGQV7q/ihMbCr50HsblX4cZVAzDnpbQudUn05kMqL5Ylb0xOP66A==', N'D4A5SDKOGPHBEUJA5GKHL3XK2AZZB3IG', N'3202df1c-db74-4b17-84a8-e9e5d3ce9cd2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fb381af3-9bd2-4ddd-86b4-524e8d54dd70', N'admin@example.com', N'ADMIN@EXAMPLE.COM', N'admin@example.com', N'ADMIN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAENDGsuWdmZ2Ls99BSevG9tyYVnBGiC7oFKgI7XHbVdb49FjPWS9WdICbLMl+52mU9g==', N'SZ5HXCGGYZE7ALRW4FOCSGGTSEMPVGNX', N'4094c351-7713-4334-b672-879192e41cd2', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Music')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Clothing')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Accessories')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Tickets')
GO
INSERT [dbo].[Membership] ([MembershipId], [MembershipName], [MemberDiscount], [MembershipDesc], [MembershipImage], [MembershipCost], [Expiry]) VALUES (N'M001', N'Bronze                                            ', 6, N'Get 6% discount', N'icon-member-b.svg', 165, 1)
INSERT [dbo].[Membership] ([MembershipId], [MembershipName], [MemberDiscount], [MembershipDesc], [MembershipImage], [MembershipCost], [Expiry]) VALUES (N'M002', N'Silver                                            ', 9, N'Get 9% discount', N'icon-member-s.svg', 190, 30)
INSERT [dbo].[Membership] ([MembershipId], [MembershipName], [MemberDiscount], [MembershipDesc], [MembershipImage], [MembershipCost], [Expiry]) VALUES (N'M003', N'Gold                                              ', 14, N'Get 14% discount', N'icon-member-g.svg', 240, 365)
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [GrandTotal]) VALUES (48, N'user3@example.com', N'b887698e-c0ec-5e4a-d4d5-b148d09ce27e', 0, CAST(N'2020-09-16T13:26:51.733' AS DateTime), CAST(N'2020-09-16T13:26:51.733' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[Order] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [GrandTotal]) VALUES (49, N'user4@example.com', N'b719264e-ead8-b912-306e-d22e4d451cd0', 3, CAST(N'2020-09-16T13:41:03.273' AS DateTime), CAST(N'2020-09-16T13:41:48.723' AS DateTime), NULL, 1000377, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 15.0000)
INSERT [dbo].[Order] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [GrandTotal]) VALUES (50, N'user1@example.com', N'b719264e-ead8-b912-306e-d22e4d451cd0', 3, CAST(N'2020-09-16T13:42:10.037' AS DateTime), CAST(N'2020-09-16T13:44:18.407' AS DateTime), NULL, 1000378, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 18.8000)
INSERT [dbo].[Order] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [GrandTotal]) VALUES (51, N'user2@example.com', N'b719264e-ead8-b912-306e-d22e4d451cd0', 3, CAST(N'2020-09-16T13:46:11.217' AS DateTime), CAST(N'2020-09-16T13:46:47.150' AS DateTime), NULL, 1000379, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 18.2000)
INSERT [dbo].[Order] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [GrandTotal]) VALUES (52, N'user3@example.com', N'b719264e-ead8-b912-306e-d22e4d451cd0', 3, CAST(N'2020-09-16T13:48:08.977' AS DateTime), CAST(N'2020-09-16T13:48:28.340' AS DateTime), NULL, 1000380, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 17.2000)
INSERT [dbo].[Order] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [GrandTotal]) VALUES (53, N'user1@example.com', N'a2cfbe94-4a94-e1a0-78c5-ecb7ad8a335c', 3, CAST(N'2020-09-16T14:48:35.257' AS DateTime), CAST(N'2020-09-16T14:48:50.077' AS DateTime), NULL, 1000382, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 9.4000)
INSERT [dbo].[Order] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [GrandTotal]) VALUES (54, NULL, N'153b9a7f-5121-f73c-25d0-3d7205015bbe', 0, CAST(N'2020-09-16T03:34:09.963' AS DateTime), CAST(N'2020-09-16T03:34:09.963' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderId], [LineNumber], [ProductId], [Quantity], [UnitCost], [DiscountedCost], [DiscountPercent]) VALUES (48, 1, N'GEP005', 1, 12.0000, 10.3200, 14)
INSERT [dbo].[OrderDetail] ([OrderId], [LineNumber], [ProductId], [Quantity], [UnitCost], [DiscountedCost], [DiscountPercent]) VALUES (48, 2, N'GEP001', 1, 20.0000, 20.0000, 0)
INSERT [dbo].[OrderDetail] ([OrderId], [LineNumber], [ProductId], [Quantity], [UnitCost], [DiscountedCost], [DiscountPercent]) VALUES (49, 1, N'GEP003', 1, 15.0000, 15.0000, 0)
INSERT [dbo].[OrderDetail] ([OrderId], [LineNumber], [ProductId], [Quantity], [UnitCost], [DiscountedCost], [DiscountPercent]) VALUES (50, 1, N'GEP001', 1, 20.0000, 18.8000, 6)
INSERT [dbo].[OrderDetail] ([OrderId], [LineNumber], [ProductId], [Quantity], [UnitCost], [DiscountedCost], [DiscountPercent]) VALUES (51, 1, N'GEP001', 1, 20.0000, 18.2000, 9)
INSERT [dbo].[OrderDetail] ([OrderId], [LineNumber], [ProductId], [Quantity], [UnitCost], [DiscountedCost], [DiscountPercent]) VALUES (52, 1, N'GEP001', 1, 20.0000, 17.2000, 14)
INSERT [dbo].[OrderDetail] ([OrderId], [LineNumber], [ProductId], [Quantity], [UnitCost], [DiscountedCost], [DiscountPercent]) VALUES (53, 1, N'GEP006', 1, 10.0000, 9.4000, 6)
GO
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (0, N'New Empty Order')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (1, N'Being Assembled - in shopping cart')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (2, N'User confirms and Credit Card checks out Ok')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (3, N'User confirms and Credit Card is BAD.  Process stops there.')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (4, N'Goods all shipped, seller collects money.')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (5, N'Goods partly shipped, seller collects part of the money, send email explaining the situation, get missing goods on "back-order"')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (6, N'Customer is annoyed because Goods partly shipped.  Sends them back.  Seller needs to reverse Credit Card payment ( = refund).')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (7, N'Customer OK with part-delivery – Later, remaining goods sent out from back-order and Seller collects remaining money.')
GO
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [ImageFileName], [UnitCost], [Description], [IsDownload], [DownloadFileName]) VALUES (N'GEP001', 1, N'Glorious End CD', N'cd.jpg', 20, NULL, 0, NULL)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [ImageFileName], [UnitCost], [Description], [IsDownload], [DownloadFileName]) VALUES (N'GEP002', 4, N'Concert Ticket', N'ticket.jpg', 15, NULL, 0, NULL)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [ImageFileName], [UnitCost], [Description], [IsDownload], [DownloadFileName]) VALUES (N'GEP003', 2, N'Glorious End Shirt', N'shirt.jpg', 15, NULL, 0, NULL)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [ImageFileName], [UnitCost], [Description], [IsDownload], [DownloadFileName]) VALUES (N'GEP004', 2, N'Glorious End Jacket', N'jacket.jpg', 35, NULL, 0, NULL)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [ImageFileName], [UnitCost], [Description], [IsDownload], [DownloadFileName]) VALUES (N'GEP005', 2, N'Glorious End Tank', N'tank.jpg', 12, NULL, 0, NULL)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [ImageFileName], [UnitCost], [Description], [IsDownload], [DownloadFileName]) VALUES (N'GEP006', 3, N'Glorious End Cap', N'cap.jpg', 10, NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Subscribe] ON 

INSERT [dbo].[Subscribe] ([SubscribeId], [Username], [SessionId], [SubscribeStatusId], [DateOfSession], [DateOfOrder], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate]) VALUES (14, N'user2@example.com', N'5d591cdd-aa2f-fbaf-4109-6ba53f5c6bac', 3, NULL, CAST(N'2020-09-12T22:55:57.000' AS DateTime), 1000354, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', CAST(N'2020-09-11T22:55:57.423' AS DateTime))
INSERT [dbo].[Subscribe] ([SubscribeId], [Username], [SessionId], [SubscribeStatusId], [DateOfSession], [DateOfOrder], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate]) VALUES (15, N'user3@example.com', N'5d591cdd-aa2f-fbaf-4109-6ba53f5c6bac', 3, NULL, CAST(N'2020-09-12T22:56:28.000' AS DateTime), 1000355, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', CAST(N'2021-09-12T22:56:28.127' AS DateTime))
INSERT [dbo].[Subscribe] ([SubscribeId], [Username], [SessionId], [SubscribeStatusId], [DateOfSession], [DateOfOrder], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate]) VALUES (19, N'user1@example.com', N'af0e3b66-95f5-6172-5afe-b4205a6ade3c', 3, NULL, CAST(N'2020-09-15T23:16:46.397' AS DateTime), 1000367, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', CAST(N'2020-09-01T23:16:46.393' AS DateTime))
INSERT [dbo].[Subscribe] ([SubscribeId], [Username], [SessionId], [SubscribeStatusId], [DateOfSession], [DateOfOrder], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate]) VALUES (22, N'user2@example.com', N'a2cfbe94-4a94-e1a0-78c5-ecb7ad8a335c', 3, NULL, CAST(N'2020-09-16T14:45:58.917' AS DateTime), 1000381, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', CAST(N'2020-10-16T14:45:58.913' AS DateTime))
SET IDENTITY_INSERT [dbo].[Subscribe] OFF
GO
INSERT [dbo].[SubscribeDetail] ([SubscribeId], [LineNumber], [MembershipId], [Username], [Quantity], [MembershipCost]) VALUES (14, 1, N'M002', N'user2@example.com', 1, 190.0000)
INSERT [dbo].[SubscribeDetail] ([SubscribeId], [LineNumber], [MembershipId], [Username], [Quantity], [MembershipCost]) VALUES (15, 1, N'M003', N'user3@example.com', 1, 240.0000)
INSERT [dbo].[SubscribeDetail] ([SubscribeId], [LineNumber], [MembershipId], [Username], [Quantity], [MembershipCost]) VALUES (19, 1, N'M001', N'user1@example.com', 1, 165.0000)
INSERT [dbo].[SubscribeDetail] ([SubscribeId], [LineNumber], [MembershipId], [Username], [Quantity], [MembershipCost]) VALUES (22, 1, N'M002', N'user2@example.com', 1, 190.0000)
GO
INSERT [dbo].[SubscribeStatus] ([SubscribeStatusId], [SubscribeStatusDescription]) VALUES (0, N'New Empty Order')
INSERT [dbo].[SubscribeStatus] ([SubscribeStatusId], [SubscribeStatusDescription]) VALUES (1, N'Being Assembled - in shopping cart')
INSERT [dbo].[SubscribeStatus] ([SubscribeStatusId], [SubscribeStatusDescription]) VALUES (2, N'User confirms and Credit Card checks out Ok')
INSERT [dbo].[SubscribeStatus] ([SubscribeStatusId], [SubscribeStatusDescription]) VALUES (3, N'User confirms and Credit Card is BAD.  Process stops there.')
INSERT [dbo].[SubscribeStatus] ([SubscribeStatusId], [SubscribeStatusDescription]) VALUES (4, N'Goods all shipped, seller collects money.')
INSERT [dbo].[SubscribeStatus] ([SubscribeStatusId], [SubscribeStatusDescription]) VALUES (5, N'Goods partly shipped, seller collects part of the money, send email explaining the situation, get missing goods on "back-order"')
INSERT [dbo].[SubscribeStatus] ([SubscribeStatusId], [SubscribeStatusDescription]) VALUES (6, N'Customer is annoyed because Goods partly shipped.  Sends them back.  Seller needs to reverse Credit Card payment ( = refund).')
INSERT [dbo].[SubscribeStatus] ([SubscribeStatusId], [SubscribeStatusDescription]) VALUES (7, N'Customer OK with part-delivery – Later, remaining goods sent out from back-order and Seller collects remaining money.')
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderStatus] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([OrderStatusId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Orders_OrderStatus]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_OrderDetail] FOREIGN KEY([OrderId], [LineNumber])
REFERENCES [dbo].[OrderDetail] ([OrderId], [LineNumber])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_OrderDetail]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Reviews_Products]
GO
ALTER TABLE [dbo].[Subscribe]  WITH CHECK ADD  CONSTRAINT [FK_Subscribe_SubscribeStatus] FOREIGN KEY([SubscribeStatusId])
REFERENCES [dbo].[SubscribeStatus] ([SubscribeStatusId])
GO
ALTER TABLE [dbo].[Subscribe] CHECK CONSTRAINT [FK_Subscribe_SubscribeStatus]
GO
ALTER TABLE [dbo].[SubscribeDetail]  WITH CHECK ADD  CONSTRAINT [FK_SubscribeDetail_Membership] FOREIGN KEY([MembershipId])
REFERENCES [dbo].[Membership] ([MembershipId])
GO
ALTER TABLE [dbo].[SubscribeDetail] CHECK CONSTRAINT [FK_SubscribeDetail_Membership]
GO
ALTER TABLE [dbo].[SubscribeDetail]  WITH CHECK ADD  CONSTRAINT [FK_SubscribeDetail_Subscribe] FOREIGN KEY([SubscribeId])
REFERENCES [dbo].[Subscribe] ([SubscribeId])
GO
ALTER TABLE [dbo].[SubscribeDetail] CHECK CONSTRAINT [FK_SubscribeDetail_Subscribe]
GO

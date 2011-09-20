USE [VidPub]
GO
/****** Object:  Table [dbo].[Productions]    Script Date: 09/09/2011 13:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Slug] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Author] [nvarchar](50) NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[ReleasedOn] [date] NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Productions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 09/09/2011 13:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](255) NOT NULL,
	[ShopifyID] [int] NOT NULL,
	[ShopifyName] [nvarchar](255) NOT NULL,
	[Discount] [money] NULL,
	[CreatedAt] [datetime] NULL,
	[CancelReason] [nvarchar](255) NULL,
	[UpdatedAt] [datetime] NULL,
	[Subtotal] [nchar](10) NOT NULL,
	[Token] [nvarchar](255) NULL,
	[Total] [money] NOT NULL,
	[TaxIncluded] [bit] NULL,
	[LandingPage] [nvarchar](255) NULL,
	[ShopifyNumber] [nvarchar](255) NULL,
	[ReferringSite] [nvarchar](255) NULL,
	[Note] [nvarchar](255) NULL,
	[Gateway] [nvarchar](255) NULL,
	[FulfillmentStatus] [nvarchar](255) NULL,
	[FinancialStatus] [nvarchar](255) NULL,
	[Currency] [nvarchar](4) NULL,
	[ClosedAt] [datetime] NULL,
	[AcceptsMarketing] [bit] NULL,
	[Tax] [money] NULL,
	[ReferralID] [nvarchar](255) NULL,
	[IP] [nvarchar](255) NULL,
	[Weight] [int] NULL,
	[Email] [nvarchar](255) NOT NULL,
	[CancelledAt] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 09/09/2011 13:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[First] [nvarchar](50) NOT NULL,
	[Last] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[HighriseID] [int] NULL,
	[CustomerType] [nvarchar](50) NOT NULL,
	[StreamUntil] [date] NULL,
	[DownloadUntil] [date] NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/09/2011 13:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[HashedPassword] [nvarchar](50) NULL,
	[LastLogin] [date] NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[Token] [nvarchar](255) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 09/09/2011 13:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Subscription] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 09/09/2011 13:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Price] [money] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[RequiresShipping] [bit] NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Grams] [int] NULL,
	[SKU] [nvarchar](255) NOT NULL,
	[FulfillmentStatus] [nvarchar](255) NULL,
	[Vendor] [nvarchar](255) NULL,
	[FulfillmentService] [nvarchar](255) NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Episodes]    Script Date: 09/09/2011 13:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Episodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductionID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ReleasedOn] [date] NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Episodes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers_Productions]    Script Date: 09/09/2011 13:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_Productions](
	[CustomerID] [int] NOT NULL,
	[ProductionID] [int] NOT NULL,
 CONSTRAINT [PK_Customers_Productions] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[ProductionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Customer_CreatedOn]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customer_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Customer_UpdatedOn]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customer_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Episodes_Number]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_Number]  DEFAULT ((0)) FOR [Number]
GO
/****** Object:  Default [DF_Episodes_CreatedOn]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Episodes_UpdatedOn]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Productions_Price]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Productions] ADD  CONSTRAINT [DF_Productions_Price]  DEFAULT ((0)) FOR [Price]
GO
/****** Object:  Default [DF_Productions_CreatedOn]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Productions] ADD  CONSTRAINT [DF_Productions_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Productions_CreatedOn1]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Productions] ADD  CONSTRAINT [DF_Productions_CreatedOn1]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Subscription_CreatedOn]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Subscriptions] ADD  CONSTRAINT [DF_Subscription_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Subscription_UpdatedOn]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Subscriptions] ADD  CONSTRAINT [DF_Subscription_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Users_CreatedAt]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF_Users_UpdatedAt]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UpdatedAt]  DEFAULT (getdate()) FOR [UpdatedAt]
GO
/****** Object:  ForeignKey [FK_Customers_Productions_Customer]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Customers_Productions]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Productions_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Customers_Productions] CHECK CONSTRAINT [FK_Customers_Productions_Customer]
GO
/****** Object:  ForeignKey [FK_Customers_Productions_Productions]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Customers_Productions]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Productions_Productions] FOREIGN KEY([ProductionID])
REFERENCES [dbo].[Productions] ([ID])
GO
ALTER TABLE [dbo].[Customers_Productions] CHECK CONSTRAINT [FK_Customers_Productions_Productions]
GO
/****** Object:  ForeignKey [FK_Episodes_Productions]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Episodes]  WITH CHECK ADD  CONSTRAINT [FK_Episodes_Productions] FOREIGN KEY([ProductionID])
REFERENCES [dbo].[Productions] ([ID])
GO
ALTER TABLE [dbo].[Episodes] CHECK CONSTRAINT [FK_Episodes_Productions]
GO
/****** Object:  ForeignKey [FK_OrderItems_Orders]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
/****** Object:  ForeignKey [FK_Subscription_Customer]    Script Date: 09/09/2011 13:23:14 ******/
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Subscriptions] CHECK CONSTRAINT [FK_Subscription_Customer]
GO

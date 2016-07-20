GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 7/19/2016 12:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactType](
	[ID] [tinyint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContactType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/19/2016 12:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[PostalCode] [varchar](30) NULL,
	[ContactPhone] [varchar](30) NULL,
	[TimeZone] [tinyint] NULL,
	[Created] [datetime2](7) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[ContactEmail] [varchar](255) NULL,
	[ContactName] [varchar](255) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplierCommunication]    Script Date: 7/19/2016 12:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierCommunication](
	[ID] [int] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Comment] [varchar](max) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[ReasonForContact] [varchar](50) NULL,
	[ContactType] [tinyint] NOT NULL,
 CONSTRAINT [PK_SupplierCommunication] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplierNote]    Script Date: 7/19/2016 12:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierNote](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Note] [varchar](max) NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[SupplierCommunication]  WITH CHECK ADD  CONSTRAINT [FK_SupplierCommunication_ContactType] FOREIGN KEY([ContactType])
REFERENCES [dbo].[ContactType] ([ID])
GO
ALTER TABLE [dbo].[SupplierCommunication] CHECK CONSTRAINT [FK_SupplierCommunication_ContactType]
GO
ALTER TABLE [dbo].[SupplierCommunication]  WITH CHECK ADD  CONSTRAINT [FK_SupplierCommunication_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[SupplierCommunication] CHECK CONSTRAINT [FK_SupplierCommunication_Supplier]
GO
ALTER TABLE [dbo].[SupplierNote]  WITH CHECK ADD  CONSTRAINT [FK_SupplierNote_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[SupplierNote] CHECK CONSTRAINT [FK_SupplierNote_Supplier]
GO

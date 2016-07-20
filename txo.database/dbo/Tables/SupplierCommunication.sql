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
ALTER TABLE [dbo].[SupplierCommunication]  WITH CHECK ADD  CONSTRAINT [FK_SupplierCommunication_ContactType] FOREIGN KEY([ContactType])
REFERENCES [dbo].[ContactType] ([ID])
GO

ALTER TABLE [dbo].[SupplierCommunication] CHECK CONSTRAINT [FK_SupplierCommunication_ContactType]
GO
ALTER TABLE [dbo].[SupplierCommunication]  WITH CHECK ADD  CONSTRAINT [FK_SupplierCommunication_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO

ALTER TABLE [dbo].[SupplierCommunication] CHECK CONSTRAINT [FK_SupplierCommunication_Supplier]
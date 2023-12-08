ALTER TABLE [dbo].[orders_items] DROP CONSTRAINT [FK_orders_items_products]
GO

ALTER TABLE [dbo].[orders_items] DROP CONSTRAINT [FK_orders_items_orders]
GO

/****** Object:  Table [dbo].[orders_items]    Script Date: 08.12.2023 18:15:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders_items]') AND type IN (N'U'))
DROP TABLE [dbo].[orders_items]
GO

/****** Object:  Table [dbo].[orders_items]    Script Date: 08.12.2023 18:15:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orders_items](
	[orderid] [INT] NOT NULL,
	[sku] [NVARCHAR](20) NOT NULL,
	[qty] [INT] NOT NULL,
	[unit_price] [MONEY] NOT NULL,
 CONSTRAINT [PK_orders_items] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC,
	[sku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[orders_items]  WITH CHECK ADD  CONSTRAINT [FK_orders_items_orders] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([orderid])
GO

ALTER TABLE [dbo].[orders_items] CHECK CONSTRAINT [FK_orders_items_orders]
GO

ALTER TABLE [dbo].[orders_items]  WITH CHECK ADD  CONSTRAINT [FK_orders_items_products] FOREIGN KEY([sku])
REFERENCES [dbo].[products] ([sku])
GO

ALTER TABLE [dbo].[orders_items] CHECK CONSTRAINT [FK_orders_items_products]
GO



/****** Object:  Table [dbo].[orders]    Script Date: 08.12.2023 18:09:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders]') AND type IN (N'U'))
DROP TABLE [dbo].[orders]
GO

/****** Object:  Table [dbo].[orders]    Script Date: 08.12.2023 18:09:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orders](
	[orderid] [INT] NOT NULL,
	[customerid] [INT] NOT NULL,
	[ordered] [DATETIME] NOT NULL,
	[shipped] [DATETIME] NOT NULL,
	[items] [NVARCHAR](100) NOT NULL,
	[total] [MONEY] NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



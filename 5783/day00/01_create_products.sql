/****** Object:  Table [dbo].[products]    Script Date: 08.12.2023 18:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[products]') AND type IN (N'U'))
DROP TABLE [dbo].[products]
GO

/****** Object:  Table [dbo].[products]    Script Date: 08.12.2023 18:07:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[products](
	[sku] [NVARCHAR](20) NOT NULL,
	[desc] [NVARCHAR](MAX) NOT NULL,
	[wholesale_cost] [MONEY] NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[sku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



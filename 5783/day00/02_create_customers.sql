/****** Object:  Table [dbo].[customers]    Script Date: 08.12.2023 18:14:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customers]') AND type IN (N'U'))
DROP TABLE [dbo].[customers]
GO

/****** Object:  Table [dbo].[customers]    Script Date: 08.12.2023 18:14:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customers](
	[customerid] [INT] NOT NULL,
	[name] [NVARCHAR](100) NOT NULL,
	[first] [NVARCHAR](100) NULL,
	[last] [NVARCHAR](100) NULL,
	[address] [NVARCHAR](100) NOT NULL,
	[citystatezip] [NVARCHAR](100) NOT NULL,
	[birthdate] [DATE] NOT NULL,
	[phone] [NVARCHAR](20) NOT NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[customerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



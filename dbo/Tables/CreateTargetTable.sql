USE [HigiMiddleware]
GO

/****** Object:  Table [dbo].[Target]    Script Date: 4/12/2017 6:51:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Target](
	[ClientId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Token] [varchar](50) NOT NULL,
	[Endpoint] [varchar](max) NOT NULL,
	[DateTimeCreated] [datetime] NOT NULL,
 CONSTRAINT [pk_logs] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



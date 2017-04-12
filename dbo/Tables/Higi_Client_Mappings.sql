USE [HigiMiddleware]
GO

/****** Object:  Table [dbo].[Higi_Client_Mappings]    Script Date: 4/12/2017 7:15:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Higi_Client_Mappings](
	[MapId] [int] identity(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[HigiUserId] [int] NOT NULL,
	[ClientUserId] [int] NOT NULL,
	[DateTimeCreated] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Higi_Client_Mappings]  WITH CHECK ADD  CONSTRAINT [FK_ClientID] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Target] ([ClientId])
GO

ALTER TABLE [dbo].[Higi_Client_Mappings] CHECK CONSTRAINT [FK_ClientID]
GO



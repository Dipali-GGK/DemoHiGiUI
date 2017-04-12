USE [HigiMiddleware]
GO
/****** Object:  StoredProcedure [dbo].[InsertTarget]    Script Date: 4/12/2017 7:04:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	Create InsertTarget stored procedure
*/

CREATE procedure [dbo].[prInsertTarget] 
(
    @i_ClientID int,
	@i_Name varchar(50),
	@i_Token varchar(50),
	@i_EndPoint varchar(max)
	
)
as

INSERT INTO [dbo].[Target]
           ([ClientId]
           ,[Name]
           ,[Token]
           ,[Endpoint]
           ,[DateTimeCreated])
values
(
	@i_ClientID,
	@i_Name,
	@i_Token,
	@i_EndPoint,
	GETDATE()
)


USE [HigiMiddleware]
GO
/****** Object:  StoredProcedure [dbo].[Higi_Client_Mappings]   Script Date: 4/12/2017 7:04:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	Create [Higi_Client_Mappings] stored procedure
*/

CREATE procedure [dbo].[prInsertHigi_Client_Mappings] 
(
    @i_ClientID int,
	@i_HigiUserId int,
	@i_ClientUserId int
)
as

INSERT INTO [dbo].[Higi_Client_Mappings]
(
           [ClientId]
           ,[HigiUserId]
           ,[ClientUserId]
           ,[DateTimeCreated])
values
(
	@i_ClientID,
	@i_HigiUserId,
	@i_ClientUserId,
	
	GETDATE()
)


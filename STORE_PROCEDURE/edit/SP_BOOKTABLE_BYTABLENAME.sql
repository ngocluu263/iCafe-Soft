USE [iCafe]
GO
/****** Object:  StoredProcedure [dbo].[SP_BOOKTABLE_BYTABLENAME]    Script Date: 25/04/2015 9:39:56 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Hoàng,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_BOOKTABLE_BYTABLENAME]
	@TableName nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT BTableID,CusName,CusPhone,ZoneName,BookTime,EndTime,NumPeople,TableName,Deposit,iCafe_BookTable.Descript,[Status] 
	from iCafe_Customer,iCafe_Table,iCafe_Zone,iCafe_BookTable
	where iCafe_Customer.CusID=iCafe_BookTable.CusID
	and iCafe_Table.TableID=iCafe_BookTable.TableID
	and iCafe_Zone.ZoneID=iCafe_BookTable.ZoneID
	and iCafe_Table.TableName=@TableName
	and	Status!=1
END


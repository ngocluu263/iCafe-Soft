USE [iCafe]
GO
/****** Object:  StoredProcedure [dbo].[SP_BOOKTABLE_BYTABLEID]    Script Date: 06/05/2015 6:12:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Hoàng,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_BOOKTABLE_BYTABLEID]
	@TableID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT BTableID,iCafe_Table.TableID,iCafe_BookTable.CusID,CusName,CusPhone,ZoneName,BookTime,EndTime,NumPeople,TableName,Deposit,iCafe_BookTable.Descript,[Status]
	from iCafe_Customer,iCafe_Table,iCafe_Zone,iCafe_BookTable
	where iCafe_Customer.CusID=iCafe_BookTable.CusID
	and iCafe_Table.TableID=iCafe_BookTable.TableID
	and iCafe_Zone.ZoneID=iCafe_BookTable.ZoneID
	and iCafe_BookTable.TableID=@TableID
	and	Status!=1
END


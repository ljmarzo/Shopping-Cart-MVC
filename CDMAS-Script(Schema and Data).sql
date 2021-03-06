﻿USE [master]
GO
/****** Object:  Database [CDMarzoAutoShop]    Script Date: 12/03/2017 18:36:20 ******/
CREATE DATABASE [CDMarzoAutoShop] ON  PRIMARY 
( NAME = N'CDMarzoAutoShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLEXPRESS\MSSQL\DATA\CDMarzoAutoShop.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CDMarzoAutoShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLEXPRESS\MSSQL\DATA\CDMarzoAutoShop_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CDMarzoAutoShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CDMarzoAutoShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CDMarzoAutoShop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ARITHABORT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_CLOSE ON
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CDMarzoAutoShop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CDMarzoAutoShop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET  ENABLE_BROKER
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CDMarzoAutoShop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET  READ_WRITE
GO
ALTER DATABASE [CDMarzoAutoShop] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CDMarzoAutoShop] SET  MULTI_USER
GO
ALTER DATABASE [CDMarzoAutoShop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CDMarzoAutoShop] SET DB_CHAINING OFF
GO
USE [CDMarzoAutoShop]
GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[ContactNo] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DelivOption] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerInfo] ON
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [Total]) VALUES (22, N'Lj', N'ABC', N'Sabang', N'123', N'ABC@gmail.com', N'Pick-Up', N'Delivered', 0)
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [Total]) VALUES (25, N'asd', N'asd', N'asd', N'asd', N'asd', N'asd', N'Pending', 2600)
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [Total]) VALUES (26, N'Vergel', N'Formon', N'Lumbang, Lipa City', N'123', N'bcd@gmail.com', N'Cash-On-Delivery', N'Confirmed', 930)
SET IDENTITY_INSERT [dbo].[CustomerInfo] OFF
/****** Object:  Table [dbo].[Sales]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[GrossSales] [decimal](18, 2) NULL,
	[NetSales] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Sales] ([GrossSales], [NetSales]) VALUES (CAST(236520.00 AS Decimal(18, 2)), CAST(220210.00 AS Decimal(18, 2)))
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderInfo](
	[oID] [int] IDENTITY(1,1) NOT NULL,
	[DatePurchased] [datetime] NOT NULL,
	[Qty] [int] NOT NULL,
	[Subtotal] [float] NOT NULL,
	[NetTotal] [float] NOT NULL,
	[cID] [int] NULL,
	[iID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[oID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderInfo] ON
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (117, CAST(0x0000A83D0078359A AS DateTime), 5, 850, 630, 23, 1)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (118, CAST(0x0000A83D00783E9C AS DateTime), 3, 1650, 1464, 23, 2)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (119, CAST(0x0000A83D00784847 AS DateTime), 1, 3730, 3088, 23, 19)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (120, CAST(0x0000A83D007A5A46 AS DateTime), 1, 800, 756, 25, 4)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (121, CAST(0x0000A83D007B2389 AS DateTime), 10, 1800, 1320, 25, 6)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (122, CAST(0x0000A83D007F34AA AS DateTime), 3, 540, 396, 26, 6)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (124, CAST(0x0000A83D007F7797 AS DateTime), 1, 220, 170, 26, 7)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (125, CAST(0x0000A83D007F8063 AS DateTime), 1, 170, 126, 26, 1)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (130, CAST(0x0000A83D008FA674 AS DateTime), 2, 9360, 7726, 27, 18)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (131, CAST(0x0000A83D00923D89 AS DateTime), 4, 340, 252, 27, 1)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (132, CAST(0x0000A83D00A73E0F AS DateTime), 1, 250, 200, 27, 3)
SET IDENTITY_INSERT [dbo].[OrderInfo] OFF
/****** Object:  Table [dbo].[Item]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[iName] [nvarchar](150) NOT NULL,
	[iDescription] [nvarchar](500) NULL,
	[iSRP] [float] NOT NULL,
	[iNetPrice] [float] NOT NULL,
	[iAQty] [int] NOT NULL,
	[iSQty] [int] NULL,
	[iCategory] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Item] ON
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (1, N'Quartz 2500 SAE 40 API-SF (1L)', N'1 Liter. Monograde oil for gasoline engine.
', 170, 126, 45, 8, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (2, N'Quartz 2500 SAE 40 API-SF (G)', N'Gallon. Monograde oil for gasoline engine.', 550, 488, 42, 8, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (3, N'Quartz 5000 20W50 API-SN (1L)', N'1 Liter. Gasoline/diesel engine(Ford GM, PSA, BMW, VW, Audio, Mercedes-Benz) Premium high performance multigrade oil for passenger car engine.', 250, 200, 43, 7, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (4, N'Quartz 5000 20W50 API-SN (G)', N'Gallon. Gasoline/diesel engine(Ford GM, PSA, BMW, VW, Audio, Mercedes-Benz) Premium high performance multigrade oil for passenger car engine.', 800, 756, 49, 1, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (5, N'Rubia C 40 API-CD (1L)', N'1 Liter. Monograde oil for Diesel Engines/All Diesel turbocharged or normally aspiratid engines', 160, 111, 50, 0, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (6, N'Rubia C 40 API-CD (G)', N'Gallon. Monograde oil for Diesel Engines/All Diesel turbocharged or normally aspiratid engines', 180, 132, 37, 13, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (7, N'Rubia XT 40 15W40 CF-4/SJ (1L)', N'1 Liter. Multi-grade oil for  diesel engine,turbochanged or not, in severe service conditions in all seasons Suited for exended drain intervals(up to 30,000 km according to manufactures).', 220, 170, 49, 1, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (8, N'Rubia XT 40 15W40 CF-4/SJ (G)', N'Gallon. Multi-grade oil for  diesel engine,turbochanged or not, in severe service conditions in all seasons Suited for exended drain intervals(up to 30,000 km according to manufactures).', 720, 668, 50, 0, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (9, N'Bosch OF-101 (0 986 AF1 044 - 4P1)', N'Application: Toyota Revo (Diesel), Toyota 4-Runner (Diesel), Toyota Hi-Ace (Diesel), Toyotal Hi-Lux (Diesel), Ford Everest (Diesel), Ford Ranger Trekker (Diesel).', 175, 162, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (10, N'Bosch OF-110 (0 986 AF1 041 - 4P1)', N'Application: Toyota Corolla / Corolla Altis, Toyota Vios, Toyota Echo / Yaris, Toyota Corona, Toyota Carmy, Toyota RAV4.', 150, 130, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (11, N'Bosch OF-209 (0 986 AF1 067 - 4P1)', N'Application: Nissan Patrol 4.2 (Diesel), Nissan Urvan (Diesel), Nissan Frontier Pick-Up (Diesel)', 190, 175, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (12, N'Bosch OF-204 (0 986 AF1 052 - 4P1)', N'Nissan Patrol 3.2 (Safari Series, SD33 Engine), Nissan Pick-Up 2.5 (SD25 Engine).', 300, 260, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (13, N'Bosch OF-306 (0 986 AF1 036 - 4P1)', N'Application: Mitsubishi Pajero (Deisel), Mitsubishi L200 (Deisel),Mitsubishi L300 (Deisel)Mitsubishi Adventure(Deisel).', 370, 338, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (14, N'Bosch OF-313 (0 986 AF1 084 - 4P1)', N'Application: Mitsubishi Pajero FieldMaster.', 455, 422, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (15, N'Bosch OF-305 (0 986 AF1 040 - 4P1)', N'Secondary Filter, Mitsubishi Canter (4D30 Engine).', 210, 175, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (16, N'Bosch OF-412 (0 986 AF1 074 - 4P1)', N'Application: Isuzu Trooper (4JH1 Engine), Isuzu Trooper (4JH1-T Engine).', 375, 325, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (17, N'Bosch OF-512 (0 986 AF1 055 - 4P1)', N'Application: Isuzu Fuego,Isuzu Hi-lander(old),Isuzu (4JB1/4JA1Engine).', 260, 240, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (18, N'MOTOLITE Enduro 15 DIN44', N'DIN44', 4680, 3863, 48, 2, N'Battery')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (19, N'MOTOLITE Enduro 15 NS40', N'NS40', 3730, 3088, 48, 2, N'Battery')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (20, N'MOTOLITE Enduro 15 NS60', N'ALS/ARS', 4260, 3518, 50, 0, N'Battery')
SET IDENTITY_INSERT [dbo].[Item] OFF
/****** Object:  StoredProcedure [dbo].[CreateItem]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateItem] 
	@NAME NVARCHAR(150),
	@DESCRIPTION NVARCHAR(500),
	@SRP FLOAT,
	@NETPRICE FLOAT,
	@AQty INT,
	@CATEGORY NVARCHAR(50)

AS
BEGIN
	INSERT INTO [dbo].[Item] ([iName], [iDescription], [iSRP],[iNetPrice], [iAQty],[iCategory])
	VALUES (@NAME,@DESCRIPTION,@SRP,@NETPRICE,@AQty,@CATEGORY);
END
GO
/****** Object:  StoredProcedure [dbo].[CreateCustomerInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateCustomerInfo] 
	
	@FIRSTNAME NVARCHAR(50),
	@LASTNAME NVARCHAR(50),
	@ADDRESS NVARCHAR(150),
	@CONTACTNO NVARCHAR(50),
	@EMAIL NVARCHAR(50),
	@DELIVOPTION NVARCHAR(50)
	
AS
BEGIN
INSERT INTO [dbo].[CustomerInfo] (FirstName,LastName,[Address],ContactNo,Email,DelivOption,[Status],Total) VALUES(@FIRSTNAME, @LASTNAME, @ADDRESS, @CONTACTNO, @EMAIL, @DELIVOPTION, 'Pending','0');
END
BEGIN
UPDATE dbo.CustomerInfo SET Total = (SELECT SUM(Subtotal) FROM OrderInfo WHERE cID =(Select MAX(cID) from dbo.CustomerInfo))
WHERE cID =(Select MAX(cID) from dbo.CustomerInfo)
END
GO
/****** Object:  StoredProcedure [dbo].[CancelOrder]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CancelOrder] 
	
	@oID AS INT
	
AS
BEGIN
UPDATE Item SET iAQty = iAQty + (SELECT Qty FROM OrderInfo WHERE oID = @oID) WHERE iID = (SELECT iID FROM OrderInfo WHERE oID = @oID)
END
BEGIN
UPDATE Item SET iSQty = iSQty - (SELECT Qty FROM OrderInfo WHERE oID = @oID) WHERE iID = (SELECT iID FROM OrderInfo WHERE oID = @oID)
END
BEGIN
UPDATE CustomerInfo SET [Status] = 'Cancelled' WHERE (Select cID FROM OrderInfo WHERE oID = @oID) = @oID
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrderInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOrderInfo] 
	
	@oID AS INT
	
AS
BEGIN
DELETE FROM [dbo].[OrderInfo] WHERE oID = @oID	
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomerInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCustomerInfo] 
	
	@cID AS INT
	
AS
BEGIN
DELETE FROM [dbo].[CustomerInfo] WHERE cID = @cID	
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStatus]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateStatus] (
@CID INT,
@STATUS NVARCHAR(50)
)

AS BEGIN
UPDATE dbo.CustomerInfo SET[Status] = @STATUS  WHERE cID = @CID
ENd
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateOrderInfo] 
	
	@oID INT,
	@Qty INT
	
AS

--EXEC dbo.sp_UpdateiAQty2
--@sp_oID = @oID
--EXEC dbo.sp_UpdateiSQty2
--@sp_oID = @oID
----BEGIN
--UPDATE Item SET iAQty = (iAQty + (SELECT Qty from OrderInfo WHERE iID = (Select TOP 1 iID from OrderInfo where oID = @oID)))
--	WHERE iID in (Select iID from OrderInfo where oID = @oID)
--END
--BEGIN
--UPDATE Item SET iSQty = (iSQty - (SELECT Qty from OrderInfo WHERE iID = (Select TOP 1 iID from OrderInfo where oID = @oID))) 
--	WHERE iID = (Select iID from OrderInfo where oID = @oID)
--END
BEGIN
UPDATE OrderInfo SET Qty = @Qty WHERE oID = @oID
END
--BEGIN
--UPDATE Item SET iAQty = (iAQty - @Qty) where iID = (Select iID from OrderInfo where oID = @oID)
----END
--BEGIN
--UPDATE OrderInfo SET Subtotal = ((Select iSRP from Item where iID =(Select iID from OrderInfo where oID = @oID))*@Qty) WHERE oID = @oID
--END
--BEGIN
--UPDATE OrderInfo SET NetTotal = ((Select Subtotal from OrderInfo where iID = (Select iID from OrderInfo where oID = @oID)) -((Select iNetPrice from dbo.Item where iID = (Select iID from OrderInfo where oID = @oID))*@Qty)) WHERE iID = (Select iID from OrderInfo where oID = @oID)
--END
--BEGIN
--UPDATE dbo.Item SET iSQty += @Qty WHERE iID =(Select iID from OrderInfo where oID = @oID)
----END
--BEGIN
--UPDATE dbo.CustomerInfo SET Total = (SELECT SUM(Subtotal) FROM OrderInfo WHERE cID =(Select MAX(cID)+1 from dbo.CustomerInfo))
--END
GO
/****** Object:  StoredProcedure [dbo].[UpdateItem]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateItem] 
	@IID INT,
	@NAME NVARCHAR(150),
	@DESCRIPTION NVARCHAR(500),
	@SRP FLOAT,
	@NETPRICE FLOAT,
	@AQty INT,
	@CATEGORY NVARCHAR(50)

AS
BEGIN
UPDATE [dbo].[Item] 
SET

	iName = @NAME,
	iDescription = @DESCRIPTION,
	iSRP = @SRP,
	iNetPrice = @NETPRICE,
	iAQty = @AQty,
	iCategory = @CATEGORY

WHERE
	iID = @iID;
END
GO
/****** Object:  StoredProcedure [dbo].[updateallaqty]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateallaqty]
@Aqty int
as
begin 
update Item set iAQty = @Aqty 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateNetSales]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateNetSales]
 as begin
 UPDATE dbo.Sales SET NetSales = GrossSales - (SELECT SUM(NetTotal) FROM OrderInfo )
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateiSQty2]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateiSQty2]
 @sp_oID int
 as begin
 UPDATE Item SET iSQty -= (SELECT Qty from OrderInfo WHERE iID = (Select iID from OrderInfo where oID = @sp_oID))
WHERE iID = (Select iID from OrderInfo where oID = @sp_oID)
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateiSQty1]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateiSQty1]
 @sp_iID int,
 @sp_Qty int
 as begin
 UPDATE dbo.Item SET iSQty += @sp_Qty WHERE iID = @sp_iID
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateiAQty2]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateiAQty2]
@sp_oID int
as begin
UPDATE Item SET iAQty += (SELECT Qty from OrderInfo WHERE iID = (Select TOP 1 iID from OrderInfo where oID = @sp_oID))
WHERE iID in (Select iID from OrderInfo where oID = @sp_oID)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateiAQty1]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateiAQty1]
@sp_iID int,
@sp_Qty int
as begin
UPDATE Item SET iAQty = (iAQty - @sp_Qty) where iID = @sp_iID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateGrossSales]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateGrossSales]
 as begin
 UPDATE dbo.Sales SET GrossSales = (SELECT SUM(SubTotal) FROM OrderInfo )
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_NetTotal]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_NetTotal]
 @sp_iID int,
 @sp_Qty int
 as begin
 UPDATE OrderInfo SET NetTotal = ((Select Subtotal from OrderInfo where iID = @sp_iID) -((Select iNetPrice from dbo.Item where iID = @sp_iID)*@sp_Qty)) where iID = @sp_iID
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateTotal]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CreateTotal]
 as begin UPDATE dbo.CustomerInfo SET Total = (SELECT SUM(Subtotal) FROM OrderInfo WHERE cID =(Select MAX(cID) from dbo.CustomerInfo)+1) WHERE cID = (Select MAX(cID) from dbo.CustomerInfo)+1
 end
GO
/****** Object:  StoredProcedure [dbo].[ShowTotalSales]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShowTotalSales]
AS BEGIN
SELECT * FROM Sales
END
GO
/****** Object:  StoredProcedure [dbo].[ShowSales]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[ShowSales]
As
Begin
Select * from Sales
End
GO
/****** Object:  StoredProcedure [dbo].[ShowOrderInfoByOID]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ShowOrderInfoByOID]
(
@oID INT
)
as begin
SELECT o.oID, o.DatePurchased, c.FirstName,c.LastName,o.iID, i.iName, o.Qty, o.Subtotal, o.NetTotal
FROM [dbo].[OrderInfo] o
JOIN CustomerInfo c
ON o.cID = c.cID
JOIN Item i
ON o.iID = i.iID
ORDER BY o.cID;
--(select iName from item where iID =(select iID from orderinfo where oID = @oID)),Qty,Subtotal from orderinfo where oID = @oID
end
GO
/****** Object:  StoredProcedure [dbo].[ShowOrderInfoByCID]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ShowOrderInfoByCID]
(
@cID INT
)
as begin


SELECT o.oID, o.iID, i.iName, o.Qty, o.Subtotal
FROM OrderInfo o
--JOIN CustomerInfo c
--ON o.CID = c.cID
JOIN Item i
ON o.iID = i.iID
WHERE o.cID = @cID
ORDER BY o.cID;
end
GO
/****** Object:  StoredProcedure [dbo].[ShowCustomerInfoByCID]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShowCustomerInfoByCID]
(
@CID int
)
AS BEGIN
SELECT * FROM dbo.CustomerInfo WHERE cID = @CID
end
GO
/****** Object:  StoredProcedure [dbo].[ShowAllSales]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShowAllSales] 
	
AS
--BEGIN
--INSERT INTO [dbo].[Sales] (GrossSales, NetSales) 
--VALUES ((SELECT SUM(Subtotal) FROM OrderInfo),(SELECT SUM(NetTotal) FROM OrderInfo))
--END

BEGIN
SELECT i.iName,  o.Qty, i.iSRP,o.Subtotal, i.iNetPrice,o.NetTotal, o.DatePurchased 
FROM OrderInfo o
JOIN Item i
ON o.iID = i.iID
END
BEGIN
UPDATE Sales SET GrossSales += (Select SUM(Subtotal)FROM OrderInfo), NetSales += (Select SUM(NetTotal) FROM OrderInfo)
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveOrderInfoByCID]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveOrderInfoByCID] 
	
	
AS
BEGIN
SELECT  o.oID, o.iID, i.iName, o.Qty, o.Subtotal
FROM OrderInfo o
--JOIN CustomerInfo c
--ON o.CID = (Select MAX (cID) FROM CustomerInfo) + 1
JOIN Item i
ON o.iID = i.iID
WHERE o.cID = (Select MAX (cID) FROM CustomerInfo) + 1
ORDER BY o.cID;
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveItemByName]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveItemByName] 
	
	@NAME AS NVARCHAR(150)	
	
AS
BEGIN
SELECT * FROM [dbo].[Item] WHERE iNAME like '%'+@NAME+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveItemByCategory]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveItemByCategory] 
	
	@ICATEGORY AS NVARCHAR(50)	
	
AS
BEGIN
SELECT * FROM [dbo].[Item] where iCategory like '%'+@ICATEGORY+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveAllOrderInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveAllOrderInfo] 
	
AS
BEGIN
SELECT o.oID, o.DatePurchased, c.FirstName,c.LastName,o.iID, i.iName, o.Qty, o.Subtotal, o.NetTotal
FROM [dbo].[OrderInfo] o
JOIN CustomerInfo c
ON o.cID = c.cID
JOIN Item i
ON o.iID = i.iID
ORDER BY o.cID;
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveAllItem]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveAllItem] 
	
AS
BEGIN
SELECT * FROM [dbo].[Item];
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveAllCustomerInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveAllCustomerInfo] 
AS
BEGIN
SELECT * FROM [dbo].[CustomerInfo]
END
GO
/****** Object:  StoredProcedure [dbo].[CreateOrderInfo]    Script Date: 12/03/2017 18:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateOrderInfo] 
	
	@iID INT,
	@Qty INT
	
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO [dbo].[OrderInfo] (DatePurchased, Qty, cID, iID, Subtotal, NetTotal)
VALUES(getdate(),@Qty,((Select MAX(cID) from dbo.CustomerInfo)+1), (Select TOP 1 iID from dbo.Item where iID = @iID),
 ((Select iSRP from Item where iID = @iID)*@Qty),(Select iNetPrice from dbo.Item where iID = @iID)*@Qty)
 

 EXEC dbo.sp_UpdateiAQty1
 @sp_iID = @iID,
 @sp_Qty = @Qty
 
 EXEC sp_UpdateiSQty1
 @sp_iID = @iID,
 @sp_Qty = @Qty
 
 --EXEC sp_NetTotal
 --@sp_iID = @iID,
 --@sp_Qty = @Qty
 
 EXEC sp_CreateTotal
 
 EXEC sp_UpdateNetSales
 
 EXEC sp_UpdateGrossSales
 
 
END

--BEGIN
--UPDATE Item SET iAQty = (iAQty - @Qty) where iID = @iID
--END
--BEGIN
--UPDATE OrderInfo SET NetTotal = ((Select Subtotal from OrderInfo where iID = @iID) -((Select iNetPrice from dbo.Item where iID = @iID)*@Qty)) where iID = @iID
--END
--BEGIN
--UPDATE dbo.Item SET iSQty += @Qty WHERE iID = @iID
--END
--BEGIN
--UPDATE dbo.CustomerInfo SET Total = (SELECT SUM(Subtotal) FROM OrderInfo WHERE cID =(Select MAX(cID) from dbo.CustomerInfo)+1)
--END
--BEGIN
--INSERT INTO [dbo].[Sales] (GrossSales, NetSales) 
--VALUES ((SELECT SUM(Subtotal) FROM OrderInfo),'0')
--END
--BEGIN
--UPDATE dbo.Sales SET NetSales = GrossSales - (SELECT SUM(NetTotal) FROM OrderInfo )
--END
GO

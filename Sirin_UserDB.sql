USE [RF_User]
GO
/****** Object:  Table [dbo].[tbl_Sirin_BanHistory_Account]    Script Date: 25.01.2023 16:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_BanHistory_Account](
	[AccountSerial] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Duration] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Reason] [varchar](128) NOT NULL,
	[Writer] [varchar](128) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Sirin_BanHistory_HWID]    Script Date: 25.01.2023 16:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_BanHistory_HWID](
	[HWID] [binary](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Duration] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Reason] [varchar](128) NOT NULL,
	[Writer] [varchar](128) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Sirin_HWID]    Script Date: 20.01.2023 17:11:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_HWID](
	[Serial] [int] IDENTITY(1,1) NOT NULL,
	[HWID] [binary](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastConnDate] [datetime] NOT NULL,
	[BanEndDate] [datetime] NOT NULL,
	[ChatLockEndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Sirin_HWID] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_tbl_Sirin_HWID] UNIQUE NONCLUSTERED 
(
	[HWID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Sirin_Account_Staff]    Script Date: 20.01.2023 17:11:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_Account_Staff](
	[Serial] [int] IDENTITY(2000000000,1) NOT NULL,
	[B64Login] [varchar](89) NOT NULL,
	[Password] [binary](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastConnDate] [datetime] NOT NULL,
	[BanEndDate] [datetime] NOT NULL,
	[ChatLockEndDate] [datetime] NOT NULL,
	[BillingEndDate] [datetime] NOT NULL,
	[PremiumEndDate] [datetime] NOT NULL,
	[BillingType] [tinyint] NOT NULL,
	[CashCoin] [int] NOT NULL,
	[Use2ndFactor] [bit] NOT NULL,
	[SharedSecret] [binary](10) NOT NULL,
	[Grade] [tinyint] NOT NULL,
	[SubGrade] [tinyint] NOT NULL,
	[CanCapture] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Sirin_Account_Staff] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_tbl_Sirin_Account_Staff] UNIQUE NONCLUSTERED 
(
	[B64Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Sirin_Account_Player]    Script Date: 20.01.2023 17:11:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_Account_Player](
	[Serial] [int] IDENTITY(1,1) NOT NULL,
	[B64Login] [varchar](89) NOT NULL,
	[Password] [binary](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastConnDate] [datetime] NOT NULL,
	[BanEndDate] [datetime] NOT NULL,
	[ChatLockEndDate] [datetime] NOT NULL,
	[BillingEndDate] [datetime] NOT NULL,
	[PremiumEndDate] [datetime] NOT NULL,
	[BillingType] [tinyint] NOT NULL,
	[CashCoin] [int] NOT NULL,
	[Use2ndFactor] [bit] NOT NULL,
	[SharedSecret] [binary](10) NOT NULL,
 CONSTRAINT [PK_tbl_Sirin_Account_Player] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_tbl_Sirin_Account_Player] UNIQUE NONCLUSTERED 
(
	[B64Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Sirin_TrustedHWID]    Script Date: 20.01.2023 17:11:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_TrustedHWID](
	[AccountSerial] [int] NOT NULL,
	[HWID] [binary](32) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Sirin_HWIDHistory]    Script Date: 24.01.2023 14:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_HWIDHistory](
	[AccountSerial] [int] NOT NULL,
	[HWID] [binary](32) NOT NULL,
	[LastConnDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_Sirin_BanHistory_Account] ADD  CONSTRAINT [DF_tbl_Sirin_BanHistory_Account_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_BanHistory_Account] ADD  CONSTRAINT [DF_tbl_Sirin_BanHistory_Account_Duration]  DEFAULT ((0)) FOR [Duration]
GO
ALTER TABLE [dbo].[tbl_Sirin_BanHistory_Account] ADD  CONSTRAINT [DF_tbl_Sirin_BanHistory_Account_Reason]  DEFAULT ('') FOR [Reason]
GO
ALTER TABLE [dbo].[tbl_Sirin_BanHistory_Account] ADD  CONSTRAINT [DF_tbl_Sirin_BanHistory_Account_Writer]  DEFAULT ('') FOR [Writer]
GO
ALTER TABLE [dbo].[tbl_Sirin_BanHistory_HWID] ADD  CONSTRAINT [DF_tbl_Sirin_BanHistory_HWID_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_BanHistory_HWID] ADD  CONSTRAINT [DF_tbl_Sirin_BanHistory_HWID_Duration]  DEFAULT ((0)) FOR [Duration]
GO
ALTER TABLE [dbo].[tbl_Sirin_BanHistory_HWID] ADD  CONSTRAINT [DF_tbl_Sirin_BanHistory_HWID_Reason]  DEFAULT ('') FOR [Reason]
GO
ALTER TABLE [dbo].[tbl_Sirin_BanHistory_HWID] ADD  CONSTRAINT [DF_tbl_Sirin_BanHistory_HWID_Writer]  DEFAULT ('') FOR [Writer]
GO
ALTER TABLE [dbo].[tbl_Sirin_HWID] ADD  CONSTRAINT [DF_tbl_tbl_Sirin_HWID_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_HWID] ADD  CONSTRAINT [DF_tbl_tbl_Sirin_HWID_LastConnDate]  DEFAULT (getdate()) FOR [LastConnDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_HWID] ADD  CONSTRAINT [DF_tbl_tbl_Sirin_HWID_BanEndDate]  DEFAULT ('1990-01-01') FOR [BanEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_HWID] ADD  CONSTRAINT [DF_tbl_tbl_Sirin_HWID_ChatLockEndDate]  DEFAULT ('1990-01-01') FOR [ChatLockEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_Password]  DEFAULT (0x0000000000000000000000000000000000000000000000000000000000000000) FOR [Password]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_LastConnDate]  DEFAULT ('1990-01-01') FOR [LastConnDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_BanEndDate]  DEFAULT ('1990-01-01') FOR [BanEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_ChatLockEndDate]  DEFAULT ('1990-01-01') FOR [ChatLockEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_BillingEndDate]  DEFAULT ('1990-01-01') FOR [BillingEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_PremiumEndDate]  DEFAULT ('1990-01-01') FOR [PremiumEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_BillingType]  DEFAULT ((0)) FOR [BillingType]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_CashCoin]  DEFAULT ((0)) FOR [CashCoin]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_Use2ndFactor]  DEFAULT ((0)) FOR [Use2ndFactor]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_SharedSecret]  DEFAULT (0x00000000000000000000) FOR [SharedSecret]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_Grade]  DEFAULT ((0)) FOR [Grade]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_SubGrade]  DEFAULT ((0)) FOR [SubGrade]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Staff] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Staff_CanCapture]  DEFAULT ((0)) FOR [CanCapture]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_Password]  DEFAULT (0x0000000000000000000000000000000000000000000000000000000000000000) FOR [Password]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_LastConnDate]  DEFAULT ('1990-01-01') FOR [LastConnDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_BanEndDate]  DEFAULT ('1990-01-01') FOR [BanEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_ChatLockEndDate]  DEFAULT ('1990-01-01') FOR [ChatLockEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_BillingEndDate]  DEFAULT ('1990-01-01') FOR [BillingEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_PremiumEndDate]  DEFAULT ('1990-01-01') FOR [PremiumEndDate]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_BillingType]  DEFAULT ((0)) FOR [BillingType]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_CashCoin]  DEFAULT ((0)) FOR [CashCoin]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_Use2ndFactor]  DEFAULT ((0)) FOR [Use2ndFactor]
GO
ALTER TABLE [dbo].[tbl_Sirin_Account_Player] ADD  CONSTRAINT [DF_tbl_Sirin_Account_Player_SharedSecret]  DEFAULT (0x00000000000000000000) FOR [SharedSecret]
GO
ALTER TABLE [dbo].[tbl_Sirin_HWIDHistory] ADD  CONSTRAINT [DF_tbl_Sirin_HWIDHistory_LastConnDate]  DEFAULT (getdate()) FOR [LastConnDate]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_InsertStaffAccount]
@id varchar(89),
@pw binary(32),
@gr tinyint,
@sgr tinyint,
@capture bit
AS
INSERT INTO tbl_Sirin_Account_Staff(B64Login, [Password], Grade, SubGrade, CanCapture) VALUES(@id, @pw, @gr, @sgr, @capture)


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_InsertPlayerAccount]
@id varchar(89),
@pw binary(32)
AS
INSERT INTO tbl_Sirin_Account_Player(B64Login, [Password]) VALUES(@id, @pw)


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectStaffAccountByLogin]
@id varchar(89)
AS
SELECT [Serial],
convert(char(89), [B64Login]),
[Password],
[CreateDate],
[LastConnDate],
[BanEndDate],
[ChatLockEndDate],
[BillingEndDate],
[PremiumEndDate],
[BillingType],
[CashCoin],
[Use2ndFactor],
[SharedSecret],
[Grade],
[SubGrade],
[CanCapture] FROM tbl_Sirin_Account_Staff WHERE B64Login = @id


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectPlayerAccountByLogin]
@id varchar(89)
AS
SELECT [Serial],
convert(char(89), [B64Login]),
[Password],
[CreateDate],
[LastConnDate],
[BanEndDate],
[ChatLockEndDate],
[BillingEndDate],
[PremiumEndDate],
[BillingType],
[CashCoin],
[Use2ndFactor],
[SharedSecret] FROM tbl_Sirin_Account_Player WHERE B64Login = @id


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectStaffAccountByPW]
@id varchar(89),
@pw binary(32)
AS
SELECT [Serial],
convert(char(89), [B64Login]),
[Password],
[CreateDate],
[LastConnDate],
[BanEndDate],
[ChatLockEndDate],
[BillingEndDate],
[PremiumEndDate],
[BillingType],
[CashCoin],
[Use2ndFactor],
[SharedSecret],
[Grade],
[SubGrade],
[CanCapture] FROM tbl_Sirin_Account_Staff WHERE B64Login = @id AND [Password] = @pw


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectPlayerAccountByPW]
@id varchar(89),
@pw binary(32)
AS
SELECT [Serial],
convert(char(89), [B64Login]),
[Password],
[CreateDate],
[LastConnDate],
[BanEndDate],
[ChatLockEndDate],
[BillingEndDate],
[PremiumEndDate],
[BillingType],
[CashCoin],
[Use2ndFactor],
[SharedSecret] FROM tbl_Sirin_Account_Player WHERE B64Login = @id AND [Password] = @pw


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectStaffAccountBySerial]
@serial int
AS
SELECT [Serial],
convert(char(89), [B64Login]),
[Password],
[CreateDate],
[LastConnDate],
[BanEndDate],
[ChatLockEndDate],
[BillingEndDate],
[PremiumEndDate],
[BillingType],
[CashCoin],
[Use2ndFactor],
[SharedSecret],
[Grade],
[SubGrade],
[CanCapture] FROM tbl_Sirin_Account_Staff WHERE Serial = @serial


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectPlayerAccountBySerial]
@serial int
AS
SELECT [Serial],
convert(char(89), [B64Login]),
[Password],
[CreateDate],
[LastConnDate],
[BanEndDate],
[ChatLockEndDate],
[BillingEndDate],
[PremiumEndDate],
[BillingType],
[CashCoin],
[Use2ndFactor],
[SharedSecret] FROM tbl_Sirin_Account_Player WHERE Serial = @serial


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectHWID]
@hwid binary(32)
AS
SELECT [Serial],
[HWID],
[CreateDate],
[LastConnDate],
[BanEndDate],
[ChatLockEndDate] FROM tbl_Sirin_HWID WHERE HWID = @hwid


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectHWIDHistoryBySerial]
@serial int
AS
SELECT [AccountSerial],
[HWID],
[LastConnDate] FROM tbl_Sirin_HWIDHistory WHERE AccountSerial = @serial


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectHWIDHistoryByHWID]
@hwid binary(32)
AS
SELECT [AccountSerial],
[HWID],
[LastConnDate] FROM tbl_Sirin_HWIDHistory WHERE HWID = @hwid


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectHWIDHistoryBySerialLast]
@serial int
AS
SELECT TOP 1 [AccountSerial],
[HWID],
[LastConnDate] FROM tbl_Sirin_HWIDHistory WHERE AccountSerial = @serial order by LastConnDate Desc


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectHWIDHistoryByHWIDLast]
@hwid binary(32)
AS
SELECT TOP 1 [AccountSerial],
[HWID],
[LastConnDate] FROM tbl_Sirin_HWIDHistory WHERE HWID = @hwid order by LastConnDate Desc


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_UpdateAccountPasswordByPW]
@serial int,
@old_pw binary(32),
@new_pw binary(32)
AS

if @serial >= 2000000000
	UPDATE tbl_Sirin_Account_Staff SET [Password] = @new_pw WHERE Serial = @serial AND [Password] = @old_pw;
else
	UPDATE tbl_Sirin_Account_Player SET [Password] = @new_pw WHERE Serial = @serial AND [Password] = @old_pw;


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_UpdateAccountPasswordBySerial]
@serial int,
@new_pw binary(32)
AS

if @serial >= 2000000000
	UPDATE tbl_Sirin_Account_Staff SET [Password] = @new_pw WHERE Serial = @serial;
else
	UPDATE tbl_Sirin_Account_Player SET [Password] = @new_pw WHERE Serial = @serial;


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_UpdateAccount2FA]
@serial int,
@secret binary(10),
@enable bit
AS

if @serial >= 2000000000
	UPDATE tbl_Sirin_Account_Staff SET Use2ndFactor = @enable, SharedSecret = @secret WHERE Serial = @serial;
else
	UPDATE tbl_Sirin_Account_Player SET Use2ndFactor = @enable, SharedSecret = @secret WHERE Serial = @serial;


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_UpdateLastConnect]
@serial int,
@hwid binary(32)
AS
set nocount on

declare @last_login datetime

set @last_login = GETDATE();

if @serial >= 2000000000
	UPDATE tbl_Sirin_Account_Staff SET LastConnDate = @last_login WHERE Serial = @serial;
else
	UPDATE tbl_Sirin_Account_Player SET LastConnDate = @last_login WHERE Serial = @serial;

UPDATE tbl_Sirin_HWID SET LastConnDate = @last_login WHERE HWID = @hwid

if @@ROWCOUNT < 1
	INSERT INTO tbl_Sirin_HWID(HWID) VALUES(@hwid);

SELECT * FROM tbl_Sirin_HWIDHistory WHERE AccountSerial = @serial AND HWID = @hwid

if @@ROWCOUNT < 1
	INSERT INTO tbl_Sirin_HWIDHistory(AccountSerial, HWID) VALUES(@serial, @hwid);
else
	UPDATE tbl_Sirin_HWIDHistory set LastConnDate = @last_login where AccountSerial = @serial AND HWID = @hwid;


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectTrustedHWID]
@serial int,
@hwid binary(32)
AS
SELECT [AccountSerial],
[HWID] FROM tbl_Sirin_TrustedHWID WHERE AccountSerial = @serial AND HWID = @hwid


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_InsertTrustedHWID]
@serial int,
@hwid binary(32)
AS
INSERT INTO tbl_Sirin_TrustedHWID(AccountSerial, HWID) VALUES(@serial, @hwid)


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_DeleteTrustedHWID]
@serial int,
@hwid binary(32)
AS
DELETE FROM tbl_Sirin_TrustedHWID WHERE AccountSerial = @serial AND HWID = @hwid


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_DeleteAllTrustedHWID]
@serial int
AS
DELETE FROM tbl_Sirin_TrustedHWID WHERE AccountSerial = @serial


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_UpdateAccountLock]
@serial int,
@lock_type tinyint,
@duration int,
@reason varchar(128),
@writer varchar(128)
AS
SET NOCOUNT ON

declare @end_date datetime

if @duration < 0
	set @duration = 0;

set @end_date = DATEADD(second, @duration, GETDATE())

if @serial >= 2000000000
begin
if @lock_type = 0
	UPDATE tbl_Sirin_Account_Staff SET BanEndDate = @end_date WHERE Serial = @serial;
else
	UPDATE tbl_Sirin_Account_Staff SET ChatLockEndDate = @end_date WHERE Serial = @serial;
end
else
begin
if @lock_type = 0
	UPDATE tbl_Sirin_Account_Player SET BanEndDate = @end_date WHERE Serial = @serial;
else
	UPDATE tbl_Sirin_Account_Player SET ChatLockEndDate = @end_date WHERE Serial = @serial;
end

if @@ROWCOUNT >= 1
begin
	insert into tbl_Sirin_BanHistory_Account(AccountSerial, Duration, [Type], Reason, Writer) values(@serial, @duration, @lock_type, @reason, @writer)
	return 1
end
return 0


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_UpdateHWIDLock]
@hwid binary(32),
@lock_type tinyint,
@duration int,
@reason varchar(128),
@writer varchar(128)
AS
SET NOCOUNT ON

declare @end_date datetime

if @duration < 0
	set @duration = 0;

set @end_date = DATEADD(second, @duration, GETDATE())

if @lock_type = 0
	UPDATE tbl_Sirin_HWID SET BanEndDate = @end_date WHERE HWID = @hwid;
else
	UPDATE tbl_Sirin_HWID SET ChatLockEndDate = @end_date WHERE HWID = @hwid;

if @@ROWCOUNT >= 1
begin
	insert into tbl_Sirin_BanHistory_HWID(HWID, Duration, [Type], Reason, Writer) values(@hwid, @duration, @lock_type, @reason, @writer)
	return 1
end
return 0


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectBanHistory_AccountBySerial]
@serial int
AS
SELECT [AccountSerial],
[CreateDate],
[Duration],
[Type],
[Reason],
[Writer] FROM tbl_Sirin_BanHistory_Account WHERE AccountSerial = @serial


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectBanHistory_Account]
AS
SELECT [AccountSerial],
[CreateDate],
[Duration],
[Type],
[Reason],
[Writer] FROM tbl_Sirin_BanHistory_Account


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectBanHistory_HWIDByHWID]
@hwid binary(32)
AS
SELECT [HWID],
[CreateDate],
[Duration],
[Type],
[Reason],
[Writer] FROM tbl_Sirin_BanHistory_HWID WHERE HWID = @hwid


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectBanHistory_HWID]
AS
SELECT [HWID],
[CreateDate],
[Duration],
[Type],
[Reason],
[Writer] FROM tbl_Sirin_BanHistory_HWID


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_CopyBanData]
AS
declare @serial int,
@start_date datetime,
@end_date datetime,
@cur_date datetime,
@duration int,
@kind tinyint,
@ban_added int

set @cur_date = GETDATE()
set @ban_added = 0

declare my_cursor cursor
	local static READ_ONLY FORWARD_ONLY
for
	select distinct nAccountSerial,  dtStartDate, nPeriod, nKind from tbl_UserBan

open my_cursor
fetch next from my_cursor into @serial, @start_date, @duration, @kind
while @@FETCH_STATUS = 0
begin
	set @end_date = dateadd(hour, @duration, @start_date)

	if @serial >= 2000000000 and @end_date > @cur_date
	begin
		if @kind = 0
		begin
			update tbl_Sirin_Account_Staff set BanEndDate = @end_date where Serial = @serial
			set @ban_added  = @ban_added  + 1
		end
		else
		begin
			update tbl_Sirin_Account_Staff set ChatLockEndDate = @end_date where Serial = @serial
			set @ban_added  = @ban_added  + 1
		end
	end
	else
	begin
		if @kind = 0
		begin
			update tbl_Sirin_Account_Player set BanEndDate = @end_date where Serial = @serial
			set @ban_added  = @ban_added  + 1
		end
		else
		begin
			update tbl_Sirin_Account_Player set ChatLockEndDate = @end_date where Serial = @serial
			set @ban_added  = @ban_added  + 1
		end
	end
	
	fetch next from my_cursor into @serial, @start_date, @duration, @kind
end

close my_cursor
deallocate my_cursor
return @ban_added

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectAllOldPlayerAccounts]
AS
SELECT Serial, convert(char(32), id), createtime, lastlogintime FROM tbl_UserAccount


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectAllOldGMAccounts]
AS
SELECT Serial, convert(char(32), id), convert(char(32), PW), CreateDT, LastLoginDT, Grade, SubGrade FROM tbl_StaffAccount


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_CopyPlayerAccount]
@serial int,
@id varchar(89),
@pw binary(32),
@createdt datetime,
@laslogindt datetime
AS
SET IDENTITY_INSERT dbo.tbl_Sirin_Account_Player ON
INSERT INTO tbl_Sirin_Account_Player(Serial, B64Login, [Password], CreateDate, LastConnDate) VALUES(@serial, @id, @pw, @createdt, @laslogindt)
SET IDENTITY_INSERT dbo.tbl_Sirin_Account_Player OFF

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_CopyGMAccount]
@serial int,
@id varchar(89),
@pw binary(32),
@createdt datetime,
@laslogindt datetime,
@grade tinyint,
@subgrade tinyint
AS
SET IDENTITY_INSERT dbo.tbl_Sirin_Account_Staff ON
INSERT INTO tbl_Sirin_Account_Staff(Serial, B64Login, [Password], CreateDate, LastConnDate, Grade, SubGrade) VALUES(@serial, @id, @pw, @createdt, @laslogindt, @grade, @subgrade)
SET IDENTITY_INSERT dbo.tbl_Sirin_Account_Staff OFF

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*you need to set actual table with account passwords and proper column names*/
CREATE PROCEDURE [dbo].[Sirin_SelectOldPlayerAccountPassword]
@id varchar(89),
@pw binary(89) output
AS
SELECT @pw = [password] from tbl_RFTestAccount where id = convert(binary, @id)

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_CashLog_Err](
	[userSerial] int NOT NULL,
	[character] [varchar](17) NOT NULL,
	[pscode] [varchar](8) NOT NULL,
	[quantity] [int] NOT NULL,
	[server] [varchar](33) NOT NULL,
	[scode] [bigint] NOT NULL,
	[price] [int] NOT NULL,
	[dcrate] [int] NOT NULL,
	[Date] [datetime] NOT NULL CONSTRAINT [DF_tbl_Sirin_CashLog_Err_Date]  DEFAULT (getdate()),
	[status] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Sirin_CashLog](
	[userSerial] int NOT NULL,
	[character] [varchar](17) NOT NULL,
	[pscode] [varchar](8) NOT NULL,
	[quantity] [int] NOT NULL,
	[server] [varchar](33) NOT NULL,
	[scode] [bigint] NOT NULL,
	[price] [int] NOT NULL,
	[dcrate] [int] NOT NULL,
	[Date] [datetime] NOT NULL CONSTRAINT [DF_tbl_Sirin_CashLog_Date]  DEFAULT (getdate()),
	[status] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_AddCash]
	@serial	int,
	@add_cash int,
	@cash_left	int	OUTPUT
AS

set nocount on

declare @cashBalance int

set @cash_left = 0

if @serial >= 2000000000
begin
	select @cashBalance = CashCoin FROM tbl_Sirin_Account_Staff where Serial = @serial;
	set @cashBalance = @cashBalance + @add_cash;

	if @cashBalance < 0
		set @cashBalance = 0;
	
	update tbl_Sirin_Account_Staff set CashCoin = @cashBalance where Serial = @serial;
	set @cash_left = @cashBalance;
end
else
begin
	select @cashBalance = CashCoin FROM tbl_Sirin_Account_Player where Serial = @serial;
	set @cashBalance = @cashBalance + @add_cash;

	if @cashBalance < 0
		set @cashBalance = 0;
	
	update tbl_Sirin_Account_Player set CashCoin = @cashBalance where Serial = @serial;
	set @cash_left = @cashBalance;
end
return 0


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_AddPremiumSeconds]
	@serial	int,
	@add_seconds int,
	@account_status	int	OUTPUT
AS

set nocount on

declare @end_time DATETIME,
@cur_time DATETIME,
@billing_end_time DATETIME,
@billing_type tinyint

set @cur_time = GETDATE()

if @serial >= 2000000000
begin
	select @end_time = PremiumEndDate, @billing_end_time = BillingEndDate, @billing_type = BillingType FROM tbl_Sirin_Account_Staff where Serial = @serial;

	if @end_time > @cur_time and @add_seconds > 0
	begin
		set @end_time = dateadd(second, @add_seconds, @end_time);
		update tbl_Sirin_Account_Staff set PremiumEndDate = @end_time where Serial = @serial;
	end
	else
	if @end_time <= @cur_time and @add_seconds > 0
	begin
		set @end_time = dateadd(second, @add_seconds, @cur_time);
		update tbl_Sirin_Account_Staff set PremiumEndDate = @end_time where Serial = @serial;
	end
end
else
begin
	select @end_time = PremiumEndDate, @billing_end_time = BillingEndDate, @billing_type = BillingType FROM tbl_Sirin_Account_Player where Serial = @serial;

	if @end_time > @cur_time and @add_seconds > 0
	begin
		set @end_time = dateadd(second, @add_seconds, @end_time);
		update tbl_Sirin_Account_Player set PremiumEndDate = @end_time where Serial = @serial;
	end
	else
	if @end_time <= @cur_time and @add_seconds > 0
	begin
		set @end_time = dateadd(second, @add_seconds, @cur_time);
		update tbl_Sirin_Account_Player set PremiumEndDate = @end_time where Serial = @serial;
	end
end

if @billing_type = 1 and @serial < 2000000000
begin
	if @billing_end_time < @cur_time
		set @account_status = 0;
	else if @cur_time >= @end_time
		set @account_status = 1;
	else
		set @account_status = 2;
end
else
begin
	if @cur_time >= @end_time
		set @account_status = 1;
	else
		set @account_status = 2;
end

return 0


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_Cancel]
	@serial		int
,	@scode 		bigint 
,	@cashamount	int output
AS

set nocount on

DECLARE 
@totalAmount int,
@cashBalance int,
@accountserial int,
@s_price int,
@s_quantity int,
@s_dcrate int

set @totalAmount = 0
set @cashBalance = 0
set @accountserial = 0
set @cashamount = 0
set @s_price = 0
set @s_quantity = 0
set @s_dcrate = 0

select @s_price = price, @s_quantity = quantity, @s_dcrate = dcrate from tbl_Sirin_CashLog where scode = @scode

if @s_price = 0 or @s_quantity = 0
begin
	return 1
end

if @serial >= 2000000000
	select @cashBalance = CashCoin from tbl_Sirin_Account_Staff where Serial = @serial;
else
	select @cashBalance = CashCoin from tbl_Sirin_Account_Player where Serial = @serial;

set @cashamount = @cashBalance;

if @@error <> 0
begin
	return 2
end

set @totalAmount = @s_price * @s_quantity

if @s_dcrate < 100
begin
	set @cashBalance = @cashBalance + (@totalAmount * ((100.0 - @s_dcrate) / 100));
	delete from tbl_Sirin_CashLog where scode = @scode;
end
else
begin
	set @cashBalance = @cashbalance + @totalAmount - @s_dcrate;
	delete from tbl_Sirin_CashLog where scode = @scode;
end

if @@error <> 0
begin
	return 3
end

if @serial >= 2000000000
	update tbl_Sirin_Account_Staff set CashCoin = @cashBalance where Serial = @serial;
else
	update tbl_Sirin_Account_Player set CashCoin = @cashBalance where Serial = @serial;

if @@error <> 0
begin
	return 4
end

set @cashamount = @cashBalance;
return 0

GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_ChargeBalance]
	@serial			int
,	@s_character	varchar(17) 
,	@s_pscode		varchar(8)
,	@s_quantity		int
,	@s_server		varchar (33) 
,	@s_scode 		bigint 
,	@s_price 		int 
,	@s_dcrate 		int 
,	@s_cashamount	int output
AS

set nocount on

DECLARE 
@totalAmount int,
@cashBalance int

set @totalAmount = 0
set @cashBalance = 0
set @s_cashamount = 0

if @serial >= 2000000000
	select @cashBalance = CashCoin from tbl_Sirin_Account_Staff where Serial = @serial;
else
	select @cashBalance = CashCoin from tbl_Sirin_Account_Player where Serial = @serial;

set @s_cashamount = @cashBalance;
set @totalAmount = @s_price * @s_quantity;

if @@error <> 0 or @s_quantity < 1 or @s_quantity > 99 or @s_price < 1
begin
	insert into tbl_Sirin_CashLog_Err (userSerial, character, pscode, quantity, server, scode, price, dcrate, status)
		values (@serial, @s_character, @s_pscode, @s_quantity, @s_server, @s_scode, @s_price, @s_dcrate, @cashBalance);
	return 2
end

if @s_dcrate < 100 and (@totalAmount * ((100.0 - @s_dcrate) / 100)) <= @cashBalance
begin
	set @cashBalance = @cashBalance - (@totalAmount * ((100.0 - @s_dcrate) / 100));
	insert into tbl_Sirin_CashLog (userSerial, character, pscode, quantity, server, scode, price, dcrate, status)
		values (@serial, @s_character, @s_pscode, @s_quantity, @s_server, @s_scode, @s_price, @s_dcrate, @cashBalance);
end
else if (@cashBalance + @s_dcrate) >= @totalAmount
begin
	set @cashBalance = @cashbalance - @totalAmount + @s_dcrate;
	insert into tbl_Sirin_CashLog (userSerial, character, pscode, quantity, server, scode, price, dcrate, status)
		values (@serial, @s_character, @s_pscode, @s_quantity, @s_server, @s_scode, @s_price, @s_dcrate, @cashBalance);
end
else
begin
	return 3
end

if @serial >= 2000000000
	update tbl_Sirin_Account_Staff set CashCoin = @cashBalance where Serial = @serial;
else
	update tbl_Sirin_Account_Player set CashCoin = @cashBalance where Serial = @serial;
	
set @s_cashamount = @cashBalance;
return 0

GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_CheckAccountStatus]
@serial		int,
@account_status int output
AS

set nocount on

declare @end_time DATETIME,
@cur_time DATETIME,
@billing_end_time DATETIME,
@billing_type tinyint

set @cur_time = GETDATE()

if @serial >= 2000000000
	select @end_time = PremiumEndDate, @billing_end_time = BillingEndDate, @billing_type = BillingType FROM tbl_Sirin_Account_Staff where Serial = @serial;
else
	select @end_time = PremiumEndDate, @billing_end_time = BillingEndDate, @billing_type = BillingType FROM tbl_Sirin_Account_Player where Serial = @serial;

if @billing_type = 1 and @serial < 2000000000
begin
	if @billing_end_time < @cur_time
		set @account_status = 0;
	else if @cur_time >= @end_time
		set @account_status = 1;
	else
		set @account_status = 2;
end
else
begin
	if @cur_time >= @end_time
		set @account_status = 1;
	else
		set @account_status = 2;
end

return 0


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_CheckBalance]
	@serial int,
	@s_cash_amount	int	OUTPUT
AS

SET NOCOUNT ON

set @s_cash_amount = 0

if @serial >= 2000000000
	select @s_cash_amount = CashCoin from tbl_Sirin_Account_Staff where Serial = @serial;
else
	select @s_cash_amount = CashCoin from tbl_Sirin_Account_Player where Serial = @serial;

return 0


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectCashLogBySerial]
@serial int
AS
SELECT 	[userSerial],
[character],
[pscode],
[quantity],
[server],
[scode],
[price],
[dcrate],
[Date],
[status] FROM tbl_Sirin_CashLog WHERE userSerial = @serial


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectCashLog]
AS
SELECT 	[userSerial],
[character],
[pscode],
[quantity],
[server],
[scode],
[price],
[dcrate],
[Date],
[status] FROM tbl_Sirin_CashLog


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sirin_SelectCashLog_Err]
AS
SELECT 	[userSerial],
[character],
[pscode],
[quantity],
[server],
[scode],
[price],
[dcrate],
[Date],
[status] FROM tbl_Sirin_CashLog_Err


GO
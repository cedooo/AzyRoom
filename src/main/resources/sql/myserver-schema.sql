create database if not exists 'myserver';
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AgentCon]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[AgentCon]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Alarmtel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Alarmtel]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ArmMiMaQr]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ArmMiMaQr]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ArmSmsInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ArmSmsInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BAKWcomponent]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BAKWcomponent]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BAKWindowjm]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BAKWindowjm]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Commonfun]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Commonfun]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DDDay]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DDDay]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DDTimer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DDTimer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DDWeek]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DDWeek]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DhVideoCon]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DhVideoCon]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20130913]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20130913]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151005]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151005]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151006]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151006]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151007]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151007]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151008]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151008]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151009]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151009]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151010]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151010]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151011]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151011]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151012]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151012]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151013]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151013]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151014]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151014]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151015]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151015]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151016]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151016]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151017]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151017]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151018]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151018]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151019]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151019]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151020]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151020]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151021]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151021]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151022]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151022]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151023]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151023]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151024]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151024]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151025]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151025]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151026]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151026]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151027]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151027]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151028]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151028]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151029]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151029]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151030]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151030]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151031]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151031]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151101]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151101]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151102]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151102]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[His20151103]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[His20151103]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JfCdName]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[JfCdName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JfDevIns]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[JfDevIns]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JfDevice]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[JfDevice]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MenJinBM]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MenJinBM]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MenJinCard]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MenJinCard]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MenJinCom]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MenJinCom]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MenJinKzq]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MenJinKzq]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MenJinQx]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MenJinQx]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MenJinSd]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MenJinSd]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MenJinSq]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MenJinSq]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MenJinZl]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MenJinZl]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyAlarmtse]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyAlarmtse]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyComCj]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyComCj]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyComConf]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyComConf]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyComKz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyComKz]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyCserver]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyCserver]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyDataRef]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyDataRef]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyDsDxGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyDsDxGroup]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyDsSend]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyDsSend]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyDsSjGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyDsSjGroup]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyDsTime]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyDsTime]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyDsWeek]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyDsWeek]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyOPCSConfig]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyOPCSConfig]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyOpcIConfig]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyOpcIConfig]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyPcCon]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyPcCon]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyRecSys]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyRecSys]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MySnmpConf]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MySnmpConf]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MySnmpOid]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MySnmpOid]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MySysPara]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MySysPara]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyTcpIpCj]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyTcpIpCj]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyTcpIpConfig]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyTcpIpConfig]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyTcpIpKz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyTcpIpKz]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyTreeBution]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyTreeBution]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyVersion]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyVersion]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyViewList]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyViewList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyZKUnLock]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyZKUnLock]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyZkDpart]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyZkDpart]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyZkGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyZkGroup]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyZkMachine]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyZkMachine]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyZkTimer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyZkTimer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyZkUser]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyZkUser]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MyZkZlInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MyZkZlInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usermanger]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Usermanger]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Useroper]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Useroper]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[alarmevent]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[alarmevent]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[history]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[history]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[jfdevkz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[jfdevkz]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[valuetable]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[valuetable]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[viewlist]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[viewlist]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[wcomponent]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[wcomponent]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[windowjm]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[windowjm]
GO

CREATE TABLE [dbo].[AgentCon] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[cdname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[servername] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[serverport] [int] NULL ,
	[sersjkip] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[sersjkname] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Status] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Alarmtel] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[armbh] [int] NOT NULL ,
	[armna] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[armph] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[armsm] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ArmMiMaQr] (
	[autoid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[devname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[insname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[adatetime] [datetime] NULL ,
	[telpho] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[status] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ArmSmsInfo] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[adatetime] [datetime] NULL ,
	[neirong] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[telpho] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[status] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[BAKWcomponent] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[wname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[kjindex] [int] NULL ,
	[kjcname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[kjobject] [image] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[BAKWindowjm] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[wcname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[wname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[wtitle] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[wcolor] [int] NULL ,
	[wtag] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Commonfun] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[data] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[DDDay] (
	[groupid] [int] IDENTITY (1, 1) NOT NULL ,
	[Number] [int] NULL ,
	[Name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[STimer] [varchar] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[ETimer] [varchar] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[Armbh] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DDTimer] (
	[timeid] [int] IDENTITY (1, 1) NOT NULL ,
	[number] [int] NULL ,
	[starttime] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[endtime] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DDWeek] (
	[weekid] [int] IDENTITY (1, 1) NOT NULL ,
	[number] [int] NULL ,
	[ddname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayG1] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayG2] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayG3] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayG4] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayG5] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayG6] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayG0] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DhVideoCon] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[dhname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[dhipadr] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[dhuser] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[dhpass] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[dhport] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20130913] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151005] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151006] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151007] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151008] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151009] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151010] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151011] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151012] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151013] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151014] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151015] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151016] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151017] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151018] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151019] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151020] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151021] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151022] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151023] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151024] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151025] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151026] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151027] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151028] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151029] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151030] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151031] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151101] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151102] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[His20151103] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JfCdName] (
	[jfid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[armid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[armld] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[armjc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[acess] [varchar] (1000) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JfDevIns] (
	[insid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insname] [varchar] (60) COLLATE Chinese_PRC_CI_AS NULL ,
	[varid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[insunit] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[auuzh] [float] NULL ,
	[auuld] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[auujc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[auuxx] [varchar] (140) COLLATE Chinese_PRC_CI_AS NULL ,
	[aupzh] [float] NULL ,
	[aupld] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[aupjc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[aupxx] [varchar] (140) COLLATE Chinese_PRC_CI_AS NULL ,
	[adwzh] [float] NULL ,
	[adwld] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[adwjc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[adwxx] [varchar] (140) COLLATE Chinese_PRC_CI_AS NULL ,
	[addzh] [float] NULL ,
	[addld] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[addjc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[addxx] [varchar] (140) COLLATE Chinese_PRC_CI_AS NULL ,
	[ddzbh] [int] NULL ,
	[kname] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[knumb] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[hiscc] [bit] NULL ,
	[hisbh] [float] NULL ,
	[sfksz] [bit] NULL ,
	[armgl] [int] NULL ,
	[armsd] [int] NULL ,
	[armdj] [int] NULL ,
	[armdz] [int] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[alarm] [bit] NULL ,
	[yansh] [int] NULL ,
	[idvar] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[idva1] [float] NULL ,
	[idva2] [float] NULL ,
	[idvx1] [varchar] (140) COLLATE Chinese_PRC_CI_AS NULL ,
	[idvx2] [varchar] (140) COLLATE Chinese_PRC_CI_AS NULL ,
	[ynarm] [bit] NULL ,
	[dvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[kzflag] [bit] NULL ,
	[kzvalue] [float] NULL ,
	[armglid] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,
	[htype] [int] NULL ,
	[hvaluen] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JfDevice] (
	[devid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[armid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[armld] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[armjc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[acess] [varchar] (1000) COLLATE Chinese_PRC_CI_AS NULL ,
	[devtype] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MenJinBM] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[Bmid] [int] NULL ,
	[BuMen] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MenJinCard] (
	[CardId] [int] IDENTITY (1, 1) NOT NULL ,
	[CardNum] [int] NULL ,
	[BmId] [int] NULL ,
	[RyName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[TuPian] [image] NULL ,
	[qxid] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[Carnm] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[carmm] [varchar] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz2] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz4] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz10] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz15] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz13] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz14] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz11] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz12] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[qxz16] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MenJinCom] (
	[ComId] [int] IDENTITY (1, 1) NOT NULL ,
	[ComName] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MenJinKzq] (
	[kzqid] [int] IDENTITY (1, 1) NOT NULL ,
	[comid] [int] NULL ,
	[addr] [int] NULL ,
	[kzqname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[door1] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[door2] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[door3] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[door4] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[door1kz] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door2kz] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door3kz] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door4kz] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door1ys] [int] NULL ,
	[door2ys] [int] NULL ,
	[door3ys] [int] NULL ,
	[door4ys] [int] NULL ,
	[mjzlid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Txsbvar] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door1km] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door2km] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door3km] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door4km] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door1gm] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door2gm] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door3gm] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[door4gm] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[doorzk] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MenJinQx] (
	[autoid] [int] IDENTITY (1, 1) NOT NULL ,
	[qxid] [varchar] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[kzqid] [int] NULL ,
	[xinqi1] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[xinqi2] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[xinqi3] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[xinqi4] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[xinqi5] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[xinqi6] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[xinqi7] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[men1] [bit] NULL ,
	[men2] [bit] NULL ,
	[men3] [bit] NULL ,
	[men4] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MenJinSd] (
	[autoid] [int] IDENTITY (1, 1) NOT NULL ,
	[sdid] [varchar] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[kzqid] [int] NULL ,
	[startime] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[stoptime] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MenJinSq] (
	[autoid] [int] IDENTITY (1, 1) NOT NULL ,
	[sqid] [varchar] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[kzqid] [int] NULL ,
	[sd1] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[sd2] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[sd3] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MenJinZl] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[ZDateTime] [datetime] NULL ,
	[CardNum] [int] NULL ,
	[Status] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[RyName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuMen] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[MenName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyAlarmtse] (
	[autoid] [int] IDENTITY (1, 1) NOT NULL ,
	[armbh] [int] NULL ,
	[armmc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[tel01] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[sms01] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[eml01] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[acess] [varchar] (2000) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyComCj] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[comid] [int] NULL ,
	[num] [int] NULL ,
	[cmd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[varlist] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,
	[funname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[funsub] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[datatype] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[endcode] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[status] [bit] NULL ,
	[cmdtime] [int] NULL ,
	[failvar] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[mname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[mhead] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyComConf] (
	[comid] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[bps] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[data] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[parity] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[stop] [varchar] (5) COLLATE Chinese_PRC_CI_AS NULL ,
	[rts] [bit] NULL ,
	[dtr] [bit] NULL ,
	[status] [bit] NULL ,
	[Readimeout] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyComKz] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[comid] [int] NULL ,
	[num] [int] NULL ,
	[cmd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[funname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[funsub] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[datatype] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[endcode] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[cmdtime] [int] NULL ,
	[ystime] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyCserver] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[sname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sjkip] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sjkna] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[serip] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[serpo] [int] NULL ,
	[StxId] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyDataRef] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[DataRef] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyDsDxGroup] (
	[dxid] [int] IDENTITY (1, 1) NOT NULL ,
	[dxgid] [int] NULL ,
	[dxname] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[dxzhuhe] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyDsSend] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[dxId] [int] NULL ,
	[DMiaos] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[DVarIns] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,
	[DVarId] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyDsSjGroup] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[GroupNum] [int] NULL ,
	[GroupName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Grouphm] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyDsTime] (
	[Dsid] [int] IDENTITY (1, 1) NOT NULL ,
	[dhour] [int] NULL ,
	[dmint] [int] NULL ,
	[flag] [bit] NULL ,
	[GroupDx] [int] NULL ,
	[GroupSj] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyDsWeek] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[Week] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Weeknum] [int] NULL ,
	[Flag] [bit] NULL ,
	[Whour] [int] NULL ,
	[Wmint] [int] NULL ,
	[GroupDx] [int] NULL ,
	[GroupSj] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyOPCSConfig] (
	[opcid] [int] IDENTITY (1, 1) NOT NULL ,
	[opcip] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[opcname] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[opcflag] [bit] NULL ,
	[opcfail] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyOpcIConfig] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[opcid] [int] NULL ,
	[opcitem] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[opcvarid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[opcflag] [bit] NULL ,
	[opctype] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[opcfunname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[opcfunsub] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyPcCon] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[ipaddr] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[txfailid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Pname] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[flagYn] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyRecSys] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[chnum] [int] NULL ,
	[cname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[recyd] [bit] NULL ,
	[reclx] [bit] NULL ,
	[recds] [bit] NULL ,
	[reccf] [bit] NULL ,
	[recdd] [int] NULL ,
	[recid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MySnmpConf] (
	[snmpid] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[failvar] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[timeout] [int] NULL ,
	[retry] [int] NULL ,
	[status] [bit] NULL ,
	[ipaddr] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[mima] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MySnmpOid] (
	[oidid] [int] IDENTITY (1, 1) NOT NULL ,
	[bianhao] [int] NULL ,
	[snmpid] [int] NULL ,
	[snmpoid] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[varlist] [varchar] (240) COLLATE Chinese_PRC_CI_AS NULL ,
	[snmpopr] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[funname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[funsub] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[DataType] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MySysPara] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[armhdjg] [int] NULL ,
	[armtdjg] [int] NULL ,
	[armtdcs] [int] NULL ,
	[armdxjg] [int] NULL ,
	[armdxcs] [int] NULL ,
	[armemjg] [int] NULL ,
	[armemfs] [int] NULL ,
	[armccjg] [int] NULL ,
	[armglcs] [int] NULL ,
	[hisccjg] [int] NULL ,
	[txsbgcs] [int] NULL ,
	[txsbzhi] [varchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[zdcjsjf] [bit] NULL ,
	[sjbfyjg] [int] NULL ,
	[sjbfmyr] [int] NULL ,
	[portnum] [int] NULL ,
	[hisdays] [int] NULL ,
	[aevents] [int] NULL ,
	[opertos] [int] NULL ,
	[Menjins] [int] NULL ,
	[Emluser] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Emladdr] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[EmlSmtp] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[EmlPass] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DuanXin] [varchar] (5) COLLATE Chinese_PRC_CI_AS NULL ,
	[Bfdiret] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Recpath] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[TelType] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ArmZdhf] [int] NULL ,
	[DxCanShu] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[DxCenter] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[ArmQrYn] [bit] NULL ,
	[ArmQrMm] [int] NULL ,
	[ArmHljg] [int] NULL ,
	[ModemLx] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[zdscbj] [bit] NULL ,
	[Mjtype] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[DHvideo] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyTcpIpCj] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[proid] [int] NULL ,
	[num] [int] NULL ,
	[cmd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[varlist] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,
	[funname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[funsub] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[datatype] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[endcode] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[status] [bit] NULL ,
	[cmdtime] [int] NULL ,
	[failvar] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[mname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[mhead] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyTcpIpConfig] (
	[proid] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[ipaddr] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[port] [int] NULL ,
	[wlid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[txid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[status] [bit] NULL ,
	[ptype] [varchar] (15) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyTcpIpKz] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[proid] [int] NULL ,
	[num] [int] NULL ,
	[cmd] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[funname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[funsub] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[datatype] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[endcode] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[cmdtime] [int] NULL ,
	[ystime] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyTreeBution] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[Nonum] [int] NULL ,
	[bjimage] [image] NULL ,
	[buttoin] [image] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyVersion] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[version] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyViewList] (
	[listid] [int] IDENTITY (1, 1) NOT NULL ,
	[listindex] [int] NULL ,
	[listtext] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[listlevl] [int] NULL ,
	[listaces] [varchar] (1000) COLLATE Chinese_PRC_CI_AS NULL ,
	[listtag] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyZKUnLock] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[mid] [int] NULL ,
	[knum] [int] NULL ,
	[kgr1] [int] NULL ,
	[kgr2] [int] NULL ,
	[kgr3] [int] NULL ,
	[kgr4] [int] NULL ,
	[kgr5] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyZkDpart] (
	[bid] [int] IDENTITY (1, 1) NOT NULL ,
	[bname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyZkGroup] (
	[qid] [int] IDENTITY (1, 1) NOT NULL ,
	[mid] [int] NULL ,
	[qnum] [int] NULL ,
	[qverify] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[qtime1] [int] NULL ,
	[qtime2] [int] NULL ,
	[qtime3] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyZkMachine] (
	[mid] [int] IDENTITY (1, 1) NOT NULL ,
	[mname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[mtype] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[mip] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[mport] [int] NULL ,
	[mcom] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[mbaud] [int] NULL ,
	[mnumber] [int] NULL ,
	[Mdelay] [int] NULL ,
	[mtxid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[mkzid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[mstaus] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[mzlid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[mkzqt] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyZkTimer] (
	[sid] [int] IDENTITY (1, 1) NOT NULL ,
	[mid] [int] NULL ,
	[snum] [int] NULL ,
	[sdtimes1] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimee1] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimes2] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimee2] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimes3] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimee3] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimes4] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimee4] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimes5] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimee5] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimes6] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimee6] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimes7] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sdtimee7] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyZkUser] (
	[uid] [int] IDENTITY (1, 1) NOT NULL ,
	[unum] [int] NULL ,
	[uname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[udengj] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ubumen] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[upass] [varchar] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[ucard] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ufiger] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[uprivi] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[ugroup] [int] NULL ,
	[utime1] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[utime2] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[utime3] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[uverify] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[uface] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyZkZlInfo] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[zuid] [int] NULL ,
	[zdate] [datetime] NULL ,
	[zstaus] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[zdname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[zrname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[zbumen] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Usermanger] (
	[username] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[password] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[bumen] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[usertu] [image] NULL ,
	[access] [int] NULL ,
	[xingming] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Csjr] [bit] NULL ,
	[Cexit] [bit] NULL ,
	[Csys] [bit] NULL ,
	[Carm] [bit] NULL ,
	[Cssz] [bit] NULL ,
	[Cmjs] [bit] NULL ,
	[Cuse] [bit] NULL ,
	[Cbjc] [bit] NULL ,
	[Clsc] [bit] NULL ,
	[Cczc] [bit] NULL ,
	[Cmjc] [bit] NULL ,
	[Ckzh] [bit] NULL ,
	[Srun] [bit] NULL ,
	[Sstop] [bit] NULL ,
	[SExit] [bit] NULL ,
	[Sxtcs] [bit] NULL ,
	[Ssbgl] [bit] NULL ,
	[Sxypz] [bit] NULL ,
	[Shspz] [bit] NULL ,
	[Ssjdd] [bit] NULL ,
	[Szbsz] [bit] NULL ,
	[Stxpz] [bit] NULL ,
	[Syhgl] [bit] NULL ,
	[Ssjbf] [bit] NULL ,
	[Ssjhf] [bit] NULL ,
	[Sbtde] [bit] NULL ,
	[SConf] [bit] NULL ,
	[ArmQr] [bit] NULL ,
	[CQuanx] [varchar] (1000) COLLATE Chinese_PRC_CI_AS NULL ,
	[userid] [int] IDENTITY (1, 1) NOT NULL ,
	[SDsdx] [bit] NULL ,
	[CQxjm] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[CQxdev] [text] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Useroper] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[xingming] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[odatetime] [datetime] NULL ,
	[oneirong] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[alarmevent] (
	[armid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[adatetime] [datetime] NULL ,
	[avalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[atype] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[arate] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[Qdatetime] [datetime] NULL ,
	[QUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ajcdatetime] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[history] (
	[hisid] [int] IDENTITY (1, 1) NOT NULL ,
	[jfid] [int] NULL ,
	[devid] [int] NULL ,
	[insid] [int] NULL ,
	[hdatetime] [datetime] NULL ,
	[hvalue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[jfdevkz] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[kzvarid] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[kzpara] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[valuetable] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[ddzbh] [int] NOT NULL ,
	[insvalue0] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[insvalue1] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[viewlist] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[vlist] [image] NULL ,
	[ilist] [image] NULL ,
	[MHeight] [int] NULL ,
	[MWidth] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[wcomponent] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[wname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[kjindex] [int] NULL ,
	[kjcname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[kjobject] [image] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[windowjm] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[wcname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[wname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[wtitle] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[wcolor] [int] NULL ,
	[wtag] [int] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AgentCon] WITH NOCHECK ADD 
	CONSTRAINT [PK_AgentCon] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Alarmtel] WITH NOCHECK ADD 
	CONSTRAINT [PK_Alarmtel] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ArmMiMaQr] WITH NOCHECK ADD 
	CONSTRAINT [PK_ArmMiMaQr] PRIMARY KEY  CLUSTERED 
	(
		[autoid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ArmSmsInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_ArmSmsInfo] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BAKWcomponent] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BAKWindowjm] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Commonfun] WITH NOCHECK ADD 
	CONSTRAINT [PK_subfun] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DDDay] WITH NOCHECK ADD 
	CONSTRAINT [PK_TimerGroup] PRIMARY KEY  CLUSTERED 
	(
		[groupid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DDTimer] WITH NOCHECK ADD 
	CONSTRAINT [PK_DDTimer] PRIMARY KEY  CLUSTERED 
	(
		[timeid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DDWeek] WITH NOCHECK ADD 
	CONSTRAINT [PK_DDWeek] PRIMARY KEY  CLUSTERED 
	(
		[weekid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DhVideoCon] WITH NOCHECK ADD 
	CONSTRAINT [PK_DhVideoCon] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20130913] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151005] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151006] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151007] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151008] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151009] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151010] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151011] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151012] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151013] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151014] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151015] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151016] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151017] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151018] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151019] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151020] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151021] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151022] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151023] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151024] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151025] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151026] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151027] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151028] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151029] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151030] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151031] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151101] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151102] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[His20151103] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JfCdName] WITH NOCHECK ADD 
	CONSTRAINT [PK_JfcdName] PRIMARY KEY  CLUSTERED 
	(
		[jfid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JfDevIns] WITH NOCHECK ADD 
	CONSTRAINT [PK_deviceins] PRIMARY KEY  CLUSTERED 
	(
		[insid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JfDevice] WITH NOCHECK ADD 
	CONSTRAINT [PK_JfDevice] PRIMARY KEY  CLUSTERED 
	(
		[devid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MenJinBM] WITH NOCHECK ADD 
	CONSTRAINT [PK_MenJinBM] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MenJinCard] WITH NOCHECK ADD 
	CONSTRAINT [PK_MenJinCard] PRIMARY KEY  CLUSTERED 
	(
		[CardId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MenJinCom] WITH NOCHECK ADD 
	CONSTRAINT [PK_MenJinCom] PRIMARY KEY  CLUSTERED 
	(
		[ComId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MenJinKzq] WITH NOCHECK ADD 
	CONSTRAINT [PK_MenJinKzq] PRIMARY KEY  CLUSTERED 
	(
		[kzqid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MenJinQx] WITH NOCHECK ADD 
	CONSTRAINT [PK_MenJinQx] PRIMARY KEY  CLUSTERED 
	(
		[autoid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MenJinSd] WITH NOCHECK ADD 
	CONSTRAINT [PK_MenJinSd] PRIMARY KEY  CLUSTERED 
	(
		[autoid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MenJinSq] WITH NOCHECK ADD 
	CONSTRAINT [PK_MenJinSq] PRIMARY KEY  CLUSTERED 
	(
		[autoid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MenJinZl] WITH NOCHECK ADD 
	CONSTRAINT [PK_MenJinZl] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyAlarmtse] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyAlarmtse] PRIMARY KEY  CLUSTERED 
	(
		[autoid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyComCj] WITH NOCHECK ADD 
	CONSTRAINT [PK_commandcj] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyComConf] WITH NOCHECK ADD 
	CONSTRAINT [PK_proconfig] PRIMARY KEY  CLUSTERED 
	(
		[comid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyComKz] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyComKz] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyCserver] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyCserver] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyDataRef] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyDataRef] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyDsDxGroup] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyDsDxGroup] PRIMARY KEY  CLUSTERED 
	(
		[dxid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyDsSend] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyDsSend] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyDsSjGroup] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyDsSjGroup] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyDsTime] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyDsTime] PRIMARY KEY  CLUSTERED 
	(
		[Dsid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyDsWeek] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyDsWeek] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyOPCSConfig] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyOPCSConfig] PRIMARY KEY  CLUSTERED 
	(
		[opcid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyOpcIConfig] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyOpcIConfig] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyPcCon] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyPcCon] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyRecSys] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyRecSys] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MySnmpConf] WITH NOCHECK ADD 
	CONSTRAINT [PK_MySnmpConfig] PRIMARY KEY  CLUSTERED 
	(
		[snmpid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MySnmpOid] WITH NOCHECK ADD 
	CONSTRAINT [PK_MySnmpOid] PRIMARY KEY  CLUSTERED 
	(
		[oidid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MySysPara] WITH NOCHECK ADD 
	CONSTRAINT [PK_MySysPara] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyTcpIpCj] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyTcpIpCj] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyTcpIpConfig] WITH NOCHECK ADD 
	CONSTRAINT [PK_tcpipconfig] PRIMARY KEY  CLUSTERED 
	(
		[proid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyTcpIpKz] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyTcpIpKz] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyTreeBution] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyTreeBution] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyVersion] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyVersion] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyViewList] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyViewList] PRIMARY KEY  CLUSTERED 
	(
		[listid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyZKUnLock] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyZKUnLock] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyZkDpart] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyZkDpart] PRIMARY KEY  CLUSTERED 
	(
		[bid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyZkGroup] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyZkGroup] PRIMARY KEY  CLUSTERED 
	(
		[qid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyZkMachine] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyZkMachine] PRIMARY KEY  CLUSTERED 
	(
		[mid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyZkTimer] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyZkTimer] PRIMARY KEY  CLUSTERED 
	(
		[sid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyZkUser] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyZkUser] PRIMARY KEY  CLUSTERED 
	(
		[uid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MyZkZlInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_MyZkZlInfo] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Usermanger] WITH NOCHECK ADD 
	CONSTRAINT [PK_usermanger] PRIMARY KEY  CLUSTERED 
	(
		[username]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Useroper] WITH NOCHECK ADD 
	CONSTRAINT [PK_useroper] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[alarmevent] WITH NOCHECK ADD 
	CONSTRAINT [PK_alarm] PRIMARY KEY  CLUSTERED 
	(
		[armid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[history] WITH NOCHECK ADD 
	CONSTRAINT [PK_history] PRIMARY KEY  CLUSTERED 
	(
		[hisid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[jfdevkz] WITH NOCHECK ADD 
	CONSTRAINT [PK_jfdevkz] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[valuetable] WITH NOCHECK ADD 
	CONSTRAINT [PK_valuetable] PRIMARY KEY  CLUSTERED 
	(
		[ddzbh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[viewlist] WITH NOCHECK ADD 
	CONSTRAINT [PK_viewlist] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[wcomponent] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[windowjm] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[AgentCon] ADD 
	CONSTRAINT [DF_AgentCon_servername] DEFAULT ('127.0.0.1') FOR [servername],
	CONSTRAINT [DF_AgentCon_serverport] DEFAULT (2048) FOR [serverport],
	CONSTRAINT [DF_AgentCon_sersjkip] DEFAULT ('127.0.0.1') FOR [sersjkip],
	CONSTRAINT [DF_AgentCon_sersjkname] DEFAULT ('myserver') FOR [sersjkname],
	CONSTRAINT [DF_AgentCon_Status] DEFAULT (1) FOR [Status]
GO

ALTER TABLE [dbo].[Commonfun] ADD 
	CONSTRAINT [DF_subfun_data] DEFAULT ('On Error Resume Next') FOR [data]
GO

ALTER TABLE [dbo].[DDDay] ADD 
	CONSTRAINT [DF_TimerGroup_number] DEFAULT (1) FOR [Number],
	CONSTRAINT [DF_DDDay_STimer1] DEFAULT ('0:00:00') FOR [STimer],
	CONSTRAINT [DF_DDDay_ETimer1] DEFAULT ('23:59:59') FOR [ETimer],
	CONSTRAINT [DF_DDDay_Armbh] DEFAULT (1) FOR [Armbh]
GO

ALTER TABLE [dbo].[DDTimer] ADD 
	CONSTRAINT [DF_DDTimer_timegroup] DEFAULT (1) FOR [number],
	CONSTRAINT [DF_DDTimer_starttime] DEFAULT ('0:00:00') FOR [starttime],
	CONSTRAINT [DF_DDTimer_endtime] DEFAULT ('23:59:59') FOR [endtime]
GO

ALTER TABLE [dbo].[DDWeek] ADD 
	CONSTRAINT [DF_DDWeek_number] DEFAULT (1) FOR [number],
	CONSTRAINT [DF_DDWeek_num1] DEFAULT (1) FOR [DayG1],
	CONSTRAINT [DF_DDWeek_num2] DEFAULT (1) FOR [DayG2],
	CONSTRAINT [DF_DDWeek_num3] DEFAULT (1) FOR [DayG3],
	CONSTRAINT [DF_DDWeek_num4] DEFAULT (1) FOR [DayG4],
	CONSTRAINT [DF_DDWeek_num5] DEFAULT (1) FOR [DayG5],
	CONSTRAINT [DF_DDWeek_num6] DEFAULT (1) FOR [DayG6],
	CONSTRAINT [DF_DDWeek_num7] DEFAULT (1) FOR [DayG0]
GO

ALTER TABLE [dbo].[DhVideoCon] ADD 
	CONSTRAINT [DF__DhVideoCo__dhnam__64D8AAFD] DEFAULT ('图像名称') FOR [dhname],
	CONSTRAINT [DF__DhVideoCo__dhuse__65CCCF36] DEFAULT ('admin') FOR [dhuser],
	CONSTRAINT [DF__DhVideoCo__dhpas__66C0F36F] DEFAULT ('admin') FOR [dhpass],
	CONSTRAINT [DF__DhVideoCo__dhpor__67B517A8] DEFAULT (37777) FOR [dhport]
GO

ALTER TABLE [dbo].[JfCdName] ADD 
	CONSTRAINT [DF__JfCdName__acess__6FD55C5D] DEFAULT ('(admin)') FOR [acess]
GO

ALTER TABLE [dbo].[JfDevIns] ADD 
	CONSTRAINT [DF_JfDevIns_jfid] DEFAULT (0) FOR [jfid],
	CONSTRAINT [DF_JfDevIns_devid] DEFAULT (0) FOR [devid],
	CONSTRAINT [DF_Jfdevins_lssjc] DEFAULT (1) FOR [hiscc],
	CONSTRAINT [DF_Jfdevins_lssjb] DEFAULT (1) FOR [hisbh],
	CONSTRAINT [DF_Jfdevins_sfksz] DEFAULT (1) FOR [sfksz],
	CONSTRAINT [DF_JfDevIns_armgl] DEFAULT (3) FOR [armgl],
	CONSTRAINT [DF_Jfdevins_armsd] DEFAULT (0) FOR [armsd],
	CONSTRAINT [DF_Jfdevins_armdj] DEFAULT (1) FOR [armdj],
	CONSTRAINT [DF_JfDevIns_armdz] DEFAULT (1) FOR [armdz],
	CONSTRAINT [DF_JfDevIns_alarm] DEFAULT (0) FOR [alarm],
	CONSTRAINT [DF_JfDevIns_ynarm] DEFAULT (0) FOR [ynarm],
	CONSTRAINT [DF__JfDevIns__htype__699D601A] DEFAULT (0) FOR [htype]
GO

ALTER TABLE [dbo].[JfDevice] ADD 
	CONSTRAINT [DF__JfDevice__acess__70C98096] DEFAULT ('(admin)') FOR [acess]
GO

ALTER TABLE [dbo].[MenJinCard] ADD 
	CONSTRAINT [DF_MenJinCard_qxid] DEFAULT ('01') FOR [qxid],
	CONSTRAINT [DF__MenJinCard__qxz2__71BDA4CF] DEFAULT ('01') FOR [qxz2],
	CONSTRAINT [DF__MenJinCard__qxz4__47B25C6A] DEFAULT ('01') FOR [qxz4],
	CONSTRAINT [DF__MenJinCar__qxz10__48A680A3] DEFAULT ('01') FOR [qxz10],
	CONSTRAINT [DF__MenJinCar__qxz15__499AA4DC] DEFAULT ('01') FOR [qxz15],
	CONSTRAINT [DF__MenJinCar__qxz13__4A8EC915] DEFAULT ('01') FOR [qxz13],
	CONSTRAINT [DF__MenJinCar__qxz14__4B82ED4E] DEFAULT ('01') FOR [qxz14],
	CONSTRAINT [DF__MenJinCar__qxz11__4C771187] DEFAULT ('01') FOR [qxz11],
	CONSTRAINT [DF__MenJinCar__qxz12__4D6B35C0] DEFAULT ('01') FOR [qxz12],
	CONSTRAINT [DF__MenJinCar__qxz16__522FEADD] DEFAULT ('01') FOR [qxz16]
GO

ALTER TABLE [dbo].[MenJinKzq] ADD 
	CONSTRAINT [DF_MenJinKzq_addr] DEFAULT (1) FOR [addr],
	CONSTRAINT [DF_MenJinKzq_door1] DEFAULT ('门1') FOR [door1],
	CONSTRAINT [DF_MenJinKzq_door2] DEFAULT ('门2') FOR [door2],
	CONSTRAINT [DF_MenJinKzq_door3] DEFAULT ('门3') FOR [door3],
	CONSTRAINT [DF_MenJinKzq_door4] DEFAULT ('门4') FOR [door4],
	CONSTRAINT [DF_MenJinKzq_door1ys] DEFAULT (5) FOR [door1ys],
	CONSTRAINT [DF_MenJinKzq_door2ys] DEFAULT (5) FOR [door2ys],
	CONSTRAINT [DF_MenJinKzq_door3ys] DEFAULT (5) FOR [door3ys],
	CONSTRAINT [DF_MenJinKzq_door4ys] DEFAULT (5) FOR [door4ys],
	CONSTRAINT [DF_MenJinKzq_mjzlid] DEFAULT ('MJID') FOR [mjzlid]
GO

ALTER TABLE [dbo].[MenJinQx] ADD 
	CONSTRAINT [DF_MenJinQx_xinqi1] DEFAULT ('01') FOR [xinqi1],
	CONSTRAINT [DF_MenJinQx_xinqi2] DEFAULT ('01') FOR [xinqi2],
	CONSTRAINT [DF_MenJinQx_xinqi3] DEFAULT ('01') FOR [xinqi3],
	CONSTRAINT [DF_MenJinQx_xinqi4] DEFAULT ('01') FOR [xinqi4],
	CONSTRAINT [DF_MenJinQx_xinqi5] DEFAULT ('01') FOR [xinqi5],
	CONSTRAINT [DF_MenJinQx_xinqi6] DEFAULT ('01') FOR [xinqi6],
	CONSTRAINT [DF_MenJinQx_xinqi7] DEFAULT ('01') FOR [xinqi7],
	CONSTRAINT [DF_MenJinQx_men1] DEFAULT (1) FOR [men1],
	CONSTRAINT [DF_MenJinQx_men2] DEFAULT (1) FOR [men2],
	CONSTRAINT [DF_MenJinQx_men3] DEFAULT (1) FOR [men3],
	CONSTRAINT [DF_MenJinQx_men4] DEFAULT (1) FOR [men4]
GO

ALTER TABLE [dbo].[MenJinSd] ADD 
	CONSTRAINT [DF_MenJinSd_startime] DEFAULT ('00:00:00') FOR [startime],
	CONSTRAINT [DF_MenJinSd_stoptime] DEFAULT ('23:59:59') FOR [stoptime]
GO

ALTER TABLE [dbo].[MenJinSq] ADD 
	CONSTRAINT [DF_MenJinSq_sd1] DEFAULT ('01') FOR [sd1],
	CONSTRAINT [DF_MenJinSq_sd2] DEFAULT ('01') FOR [sd2],
	CONSTRAINT [DF_MenJinSq_sd3] DEFAULT ('01') FOR [sd3]
GO

ALTER TABLE [dbo].[MyAlarmtse] ADD 
	CONSTRAINT [DF_MyAlarmtse_armdj] DEFAULT (1) FOR [armbh]
GO

ALTER TABLE [dbo].[MyComCj] ADD 
	CONSTRAINT [DF_command_type] DEFAULT (0) FOR [comid],
	CONSTRAINT [DF_MyComCj_num] DEFAULT (1) FOR [num],
	CONSTRAINT [DF_MyComCj_cmd] DEFAULT ('') FOR [cmd],
	CONSTRAINT [DF_MyComCj_varlist] DEFAULT ('') FOR [varlist],
	CONSTRAINT [DF_MyComCj_funname] DEFAULT ('') FOR [funname],
	CONSTRAINT [DF_MyComCj_funsub] DEFAULT ('') FOR [funsub],
	CONSTRAINT [DF_command_cmdtype] DEFAULT ('ASCII') FOR [datatype],
	CONSTRAINT [DF_commandcj_endcode] DEFAULT ('EOF') FOR [endcode],
	CONSTRAINT [DF_commandcj_status] DEFAULT (1) FOR [status],
	CONSTRAINT [DF_commandcj_cjtime] DEFAULT (1000) FOR [cmdtime],
	CONSTRAINT [DF_MyComCj_failvar] DEFAULT ('') FOR [failvar]
GO

ALTER TABLE [dbo].[MyComConf] ADD 
	CONSTRAINT [DF_proconfig_proname] DEFAULT ('COM1') FOR [name],
	CONSTRAINT [DF_proconfig_bps] DEFAULT (9600) FOR [bps],
	CONSTRAINT [DF_proconfig_data] DEFAULT ('8') FOR [data],
	CONSTRAINT [DF_proconfig_parity] DEFAULT ('None') FOR [parity],
	CONSTRAINT [DF_proconfig_stop] DEFAULT ('1') FOR [stop],
	CONSTRAINT [DF_proconfig_rts] DEFAULT (0) FOR [rts],
	CONSTRAINT [DF_proconfig_dtr] DEFAULT (0) FOR [dtr],
	CONSTRAINT [DF_proconfig_status] DEFAULT (1) FOR [status],
	CONSTRAINT [DF_MyComConf_Readimeout] DEFAULT (100) FOR [Readimeout]
GO

ALTER TABLE [dbo].[MyComKz] ADD 
	CONSTRAINT [DF_MyComKz_comid] DEFAULT (1) FOR [comid],
	CONSTRAINT [DF_MyComKz_num] DEFAULT (1) FOR [num],
	CONSTRAINT [DF_MyComKz_cmd] DEFAULT ('') FOR [cmd],
	CONSTRAINT [DF_MyComKz_funname] DEFAULT ('') FOR [funname],
	CONSTRAINT [DF_MyComKz_funsub] DEFAULT ('') FOR [funsub],
	CONSTRAINT [DF_MyComKz_datatype] DEFAULT ('ASCII') FOR [datatype],
	CONSTRAINT [DF_MyComKz_endcode] DEFAULT ('EOF') FOR [endcode],
	CONSTRAINT [DF_MyComKz_cmdtime] DEFAULT (1000) FOR [cmdtime],
	CONSTRAINT [DF_MyComKz_ystime] DEFAULT (0) FOR [ystime]
GO

ALTER TABLE [dbo].[MyCserver] ADD 
	CONSTRAINT [DF_MyCserver_sname] DEFAULT ('集中监控一') FOR [sname],
	CONSTRAINT [DF_MyCserver_sjkip] DEFAULT ('127.0.0.1') FOR [sjkip],
	CONSTRAINT [DF_MyCserver_sjkna] DEFAULT ('myserver') FOR [sjkna],
	CONSTRAINT [DF_MyCserver_serip] DEFAULT ('127.0.0.1') FOR [serip],
	CONSTRAINT [DF_MyCserver_serpo] DEFAULT (54321) FOR [serpo]
GO

ALTER TABLE [dbo].[MyDataRef] ADD 
	CONSTRAINT [DF__MyDataRef__DataR__6D6DF0FE] DEFAULT (0) FOR [DataRef]
GO

ALTER TABLE [dbo].[MyDsDxGroup] ADD 
	CONSTRAINT [DF__MyDsDxGro__dxgid__73A5ED41] DEFAULT (1) FOR [dxgid],
	CONSTRAINT [DF__MyDsDxGro__dxnam__749A117A] DEFAULT ('短信组') FOR [dxname]
GO

ALTER TABLE [dbo].[MyDsTime] ADD 
	CONSTRAINT [DF__MyDsTime__dhour__7B470F09] DEFAULT (8) FOR [dhour],
	CONSTRAINT [DF__MyDsTime__dmint__7C3B3342] DEFAULT (0) FOR [dmint],
	CONSTRAINT [DF__MyDsTime__flag__7D2F577B] DEFAULT (1) FOR [flag],
	CONSTRAINT [DF__MyDsTime__GroupD__7E237BB4] DEFAULT (1) FOR [GroupDx],
	CONSTRAINT [DF__MyDsTime__GroupS__7F179FED] DEFAULT (1) FOR [GroupSj]
GO

ALTER TABLE [dbo].[MyDsWeek] ADD 
	CONSTRAINT [DF__MyDsWeek__Week__01F40C98] DEFAULT ('星期一') FOR [Week],
	CONSTRAINT [DF__MyDsWeek__Weeknu__02E830D1] DEFAULT (1) FOR [Weeknum],
	CONSTRAINT [DF__MyDsWeek__Flag__03DC550A] DEFAULT (1) FOR [Flag],
	CONSTRAINT [DF__MyDsWeek__Whour__04D07943] DEFAULT (8) FOR [Whour],
	CONSTRAINT [DF__MyDsWeek__Wmint__05C49D7C] DEFAULT (0) FOR [Wmint],
	CONSTRAINT [DF__MyDsWeek__GroupD__06B8C1B5] DEFAULT (1) FOR [GroupDx],
	CONSTRAINT [DF__MyDsWeek__GroupS__07ACE5EE] DEFAULT (1) FOR [GroupSj]
GO

ALTER TABLE [dbo].[MyOPCSConfig] ADD 
	CONSTRAINT [DF__MyOPCSCon__opcip__750F12C6] DEFAULT ('Local') FOR [opcip],
	CONSTRAINT [DF__MyOPCSCon__opcfl__760336FF] DEFAULT (1) FOR [opcflag]
GO

ALTER TABLE [dbo].[MyOpcIConfig] ADD 
	CONSTRAINT [DF__MyOpcICon__opcfl__704A5DA9] DEFAULT (1) FOR [opcflag],
	CONSTRAINT [DF__MyOpcICon__opcty__713E81E2] DEFAULT ('datacoll') FOR [opctype],
	CONSTRAINT [DF__MyOpcICon__opcfu__7232A61B] DEFAULT ('On Error Resume Next') FOR [opcfunsub]
GO

ALTER TABLE [dbo].[MyPcCon] ADD 
	CONSTRAINT [DF_MyPcCon_ipaddr] DEFAULT ('127.0.0.1') FOR [ipaddr],
	CONSTRAINT [DF__MyPcCon__flagYn__77EB7F71] DEFAULT (1) FOR [flagYn]
GO

ALTER TABLE [dbo].[MyRecSys] ADD 
	CONSTRAINT [DF_MyRecSys_reclx] DEFAULT (0) FOR [recyd],
	CONSTRAINT [DF_MyRecSys_recds] DEFAULT (0) FOR [reclx],
	CONSTRAINT [DF_MyRecSys_reccf] DEFAULT (0) FOR [recds],
	CONSTRAINT [DF_MyRecSys_reccf_1] DEFAULT (0) FOR [reccf],
	CONSTRAINT [DF_MyRecSys_recdd] DEFAULT (0) FOR [recdd]
GO

ALTER TABLE [dbo].[MySnmpConf] ADD 
	CONSTRAINT [DF_MySnmpConf_timeout] DEFAULT (3000) FOR [timeout],
	CONSTRAINT [DF_MySnmpConf_retry] DEFAULT (1) FOR [retry],
	CONSTRAINT [DF_MySnmpConf_status] DEFAULT (1) FOR [status]
GO

ALTER TABLE [dbo].[MySnmpOid] ADD 
	CONSTRAINT [DF_MySnmpOid_snmpopr] DEFAULT ('GET') FOR [snmpopr],
	CONSTRAINT [DF_MySnmpOid_DataType] DEFAULT ('数值') FOR [DataType]
GO

ALTER TABLE [dbo].[MySysPara] ADD 
	CONSTRAINT [DF_MySysPara_armsjjg] DEFAULT (1) FOR [armhdjg],
	CONSTRAINT [DF_MySysPara_armtcjg] DEFAULT (3) FOR [armtdjg],
	CONSTRAINT [DF_MySysPara_armclcs] DEFAULT (3) FOR [armtdcs],
	CONSTRAINT [DF_MySysPara_armdxjg] DEFAULT (3) FOR [armdxjg],
	CONSTRAINT [DF_MySysPara_armdxcs] DEFAULT (3) FOR [armdxcs],
	CONSTRAINT [DF_MySysPara_armemjg] DEFAULT (3) FOR [armemjg],
	CONSTRAINT [DF_MySysPara_armemfs] DEFAULT (3) FOR [armemfs],
	CONSTRAINT [DF_MySysPara_armccjg] DEFAULT (30) FOR [armccjg],
	CONSTRAINT [DF_MySysPara_armglcs] DEFAULT (3) FOR [armglcs],
	CONSTRAINT [DF_MySysPara_hisccjg] DEFAULT (30) FOR [hisccjg],
	CONSTRAINT [DF_MySysPara_txsbgcs] DEFAULT (10) FOR [txsbgcs],
	CONSTRAINT [DF_MySysPara_hisjgcs] DEFAULT (0) FOR [zdcjsjf],
	CONSTRAINT [DF_MySysPara_sjbeyjg] DEFAULT (1) FOR [sjbfyjg],
	CONSTRAINT [DF_MySysPara_sjbfmyr] DEFAULT (1) FOR [sjbfmyr],
	CONSTRAINT [DF_MySysPara_portnum] DEFAULT (1234) FOR [portnum],
	CONSTRAINT [DF_MySysPara_hisdays] DEFAULT (30) FOR [hisdays],
	CONSTRAINT [DF_MySysPara_aevents] DEFAULT (30) FOR [aevents],
	CONSTRAINT [DF_MySysPara_opertos] DEFAULT (30) FOR [opertos],
	CONSTRAINT [DF_MySysPara_Menjins] DEFAULT (30) FOR [Menjins],
	CONSTRAINT [DF_MySysPara_ArmQrMm] DEFAULT (0) FOR [ArmQrMm],
	CONSTRAINT [DF_MySysPara_ArmHljg] DEFAULT (30) FOR [ArmHljg],
	CONSTRAINT [DF_MySysPara_ModemLx] DEFAULT ('GSM') FOR [ModemLx],
	CONSTRAINT [DF__MySysPara__zdscb__78DFA3AA] DEFAULT (0) FOR [zdscbj]
GO

ALTER TABLE [dbo].[MyTcpIpCj] ADD 
	CONSTRAINT [DF_MyTcpIpCj_datatype] DEFAULT ('ASCII') FOR [datatype],
	CONSTRAINT [DF_MyTcpIpCj_endcode] DEFAULT ('EOF') FOR [endcode],
	CONSTRAINT [DF_MyTcpIpCj_status] DEFAULT (1) FOR [status],
	CONSTRAINT [DF_MyTcpIpCj_cmdtime] DEFAULT (1000) FOR [cmdtime]
GO

ALTER TABLE [dbo].[MyTcpIpConfig] ADD 
	CONSTRAINT [DF_MyTcpIpConfig_status] DEFAULT (1) FOR [status],
	CONSTRAINT [DF__MyTcpIpCo__ptype__79D3C7E3] DEFAULT ('Client') FOR [ptype]
GO

ALTER TABLE [dbo].[MyTcpIpKz] ADD 
	CONSTRAINT [DF_MyTcpIpKz_datatype] DEFAULT ('ASCII') FOR [datatype],
	CONSTRAINT [DF_MyTcpIpKz_endcode] DEFAULT ('EOF') FOR [endcode],
	CONSTRAINT [DF_MyTcpIpKz_cmdtime] DEFAULT (1000) FOR [cmdtime],
	CONSTRAINT [DF_MyTcpIpKz_ystime] DEFAULT (0) FOR [ystime]
GO

ALTER TABLE [dbo].[MyZKUnLock] ADD 
	CONSTRAINT [DF__MyZKUnLock__kgr1__1D1D0420] DEFAULT (0) FOR [kgr1],
	CONSTRAINT [DF__MyZKUnLock__kgr2__1E112859] DEFAULT (0) FOR [kgr2],
	CONSTRAINT [DF__MyZKUnLock__kgr3__1F054C92] DEFAULT (0) FOR [kgr3],
	CONSTRAINT [DF__MyZKUnLock__kgr4__1FF970CB] DEFAULT (0) FOR [kgr4],
	CONSTRAINT [DF__MyZKUnLock__kgr5__20ED9504] DEFAULT (0) FOR [kgr5]
GO

ALTER TABLE [dbo].[MyZkGroup] ADD 
	CONSTRAINT [DF__MyZkGroup__qveri__7DA458C7] DEFAULT ('指纹') FOR [qverify],
	CONSTRAINT [DF__MyZkGroup__qtime__7E987D00] DEFAULT (1) FOR [qtime1],
	CONSTRAINT [DF__MyZkGroup__qtime__7F8CA139] DEFAULT (1) FOR [qtime2],
	CONSTRAINT [DF__MyZkGroup__qtime__0080C572] DEFAULT (1) FOR [qtime3]
GO

ALTER TABLE [dbo].[MyZkMachine] ADD 
	CONSTRAINT [DF__MyZkMachi__mname__035D321D] DEFAULT ('门') FOR [mname],
	CONSTRAINT [DF__MyZkMachi__mtype__04515656] DEFAULT ('TCP/IP') FOR [mtype],
	CONSTRAINT [DF__MyZkMachine__mip__05457A8F] DEFAULT ('127.0.0.1') FOR [mip],
	CONSTRAINT [DF__MyZkMachi__mport__06399EC8] DEFAULT (4370) FOR [mport],
	CONSTRAINT [DF__MyZkMachin__mcom__072DC301] DEFAULT ('COM1') FOR [mcom],
	CONSTRAINT [DF__MyZkMachi__mbaud__0821E73A] DEFAULT (115200) FOR [mbaud],
	CONSTRAINT [DF__MyZkMachi__mnumb__09160B73] DEFAULT (1) FOR [mnumber],
	CONSTRAINT [DF__MyZkMachi__Mdela__0A0A2FAC] DEFAULT (5) FOR [Mdelay],
	CONSTRAINT [DF__MyZkMachi__mkzqt__59F10836] DEFAULT ('F2') FOR [mkzqt]
GO

ALTER TABLE [dbo].[MyZkTimer] ADD 
	CONSTRAINT [DF__MyZkTimer__snum__0CE69C57] DEFAULT (1) FOR [snum],
	CONSTRAINT [DF__MyZkTimer__sdtim__0DDAC090] DEFAULT ('00:00') FOR [sdtimes1],
	CONSTRAINT [DF__MyZkTimer__sdtim__0ECEE4C9] DEFAULT ('23:59') FOR [sdtimee1],
	CONSTRAINT [DF__MyZkTimer__sdtim__0FC30902] DEFAULT ('00:00') FOR [sdtimes2],
	CONSTRAINT [DF__MyZkTimer__sdtim__10B72D3B] DEFAULT ('23:59') FOR [sdtimee2],
	CONSTRAINT [DF__MyZkTimer__sdtim__11AB5174] DEFAULT ('00:00') FOR [sdtimes3],
	CONSTRAINT [DF__MyZkTimer__sdtim__129F75AD] DEFAULT ('23:59') FOR [sdtimee3],
	CONSTRAINT [DF__MyZkTimer__sdtim__139399E6] DEFAULT ('00:00') FOR [sdtimes4],
	CONSTRAINT [DF__MyZkTimer__sdtim__1487BE1F] DEFAULT ('23:59') FOR [sdtimee4],
	CONSTRAINT [DF__MyZkTimer__sdtim__157BE258] DEFAULT ('00:00') FOR [sdtimes5],
	CONSTRAINT [DF__MyZkTimer__sdtim__16700691] DEFAULT ('23:59') FOR [sdtimee5],
	CONSTRAINT [DF__MyZkTimer__sdtim__17642ACA] DEFAULT ('00:00') FOR [sdtimes6],
	CONSTRAINT [DF__MyZkTimer__sdtim__18584F03] DEFAULT ('23:59') FOR [sdtimee6],
	CONSTRAINT [DF__MyZkTimer__sdtim__194C733C] DEFAULT ('00:00') FOR [sdtimes7],
	CONSTRAINT [DF__MyZkTimer__sdtim__1A409775] DEFAULT ('23:59') FOR [sdtimee7]
GO

ALTER TABLE [dbo].[MyZkUser] ADD 
	CONSTRAINT [DF__MyZkUser__udengj__23CA01AF] DEFAULT ('普通用户') FOR [udengj],
	CONSTRAINT [DF__MyZkUser__ugroup__24BE25E8] DEFAULT (1) FOR [ugroup],
	CONSTRAINT [DF__MyZkUser__utime1__25B24A21] DEFAULT (1) FOR [utime1],
	CONSTRAINT [DF__MyZkUser__utime2__26A66E5A] DEFAULT (0) FOR [utime2],
	CONSTRAINT [DF__MyZkUser__utime3__279A9293] DEFAULT (0) FOR [utime3],
	CONSTRAINT [DF__MyZkUser__uverif__288EB6CC] DEFAULT ('指纹') FOR [uverify]
GO

ALTER TABLE [dbo].[Usermanger] ADD 
	CONSTRAINT [DF_usermanger_access] DEFAULT (2) FOR [access],
	CONSTRAINT [DF_Usermanger_Csjr] DEFAULT (0) FOR [Csjr],
	CONSTRAINT [DF_Usermanger_Cexit] DEFAULT (0) FOR [Cexit],
	CONSTRAINT [DF_Usermanger_Csys] DEFAULT (0) FOR [Csys],
	CONSTRAINT [DF_Usermanger_Carm] DEFAULT (0) FOR [Carm],
	CONSTRAINT [DF_Usermanger_Cssz] DEFAULT (0) FOR [Cssz],
	CONSTRAINT [DF_Usermanger_Cmjs] DEFAULT (0) FOR [Cmjs],
	CONSTRAINT [DF_Usermanger_Cuse] DEFAULT (0) FOR [Cuse],
	CONSTRAINT [DF_Usermanger_Cbjc] DEFAULT (0) FOR [Cbjc],
	CONSTRAINT [DF_Usermanger_Clsc] DEFAULT (0) FOR [Clsc],
	CONSTRAINT [DF_Usermanger_Cczc] DEFAULT (0) FOR [Cczc],
	CONSTRAINT [DF_Usermanger_Cmjc] DEFAULT (0) FOR [Cmjc],
	CONSTRAINT [DF_Usermanger_Ckzh] DEFAULT (0) FOR [Ckzh],
	CONSTRAINT [DF_Usermanger_Srun] DEFAULT (1) FOR [Srun],
	CONSTRAINT [DF_Usermanger_Sstop] DEFAULT (0) FOR [Sstop],
	CONSTRAINT [DF_Usermanger_SExit] DEFAULT (0) FOR [SExit],
	CONSTRAINT [DF_Usermanger_Sxtcs] DEFAULT (0) FOR [Sxtcs],
	CONSTRAINT [DF_Usermanger_Ssbgl] DEFAULT (0) FOR [Ssbgl],
	CONSTRAINT [DF_Usermanger_Sxypz] DEFAULT (0) FOR [Sxypz],
	CONSTRAINT [DF_Usermanger_Shspz] DEFAULT (0) FOR [Shspz],
	CONSTRAINT [DF_Usermanger_Ssjdd] DEFAULT (0) FOR [Ssjdd],
	CONSTRAINT [DF_Usermanger_Szbsz] DEFAULT (0) FOR [Szbsz],
	CONSTRAINT [DF_Usermanger_Stxpz] DEFAULT (0) FOR [Stxpz],
	CONSTRAINT [DF_Usermanger_Syhgl] DEFAULT (0) FOR [Syhgl],
	CONSTRAINT [DF_Usermanger_Ssjbf] DEFAULT (0) FOR [Ssjbf],
	CONSTRAINT [DF_Usermanger_Ssjhf] DEFAULT (0) FOR [Ssjhf],
	CONSTRAINT [DF_Usermanger_Sbtde] DEFAULT (0) FOR [Sbtde],
	CONSTRAINT [DF_Usermanger_SConf] DEFAULT (0) FOR [SConf],
	CONSTRAINT [DF_Usermanger_ArmQr] DEFAULT (0) FOR [ArmQr],
	CONSTRAINT [DF__Usermange__SDsdx__0F4E07B6] DEFAULT (0) FOR [SDsdx]
GO

ALTER TABLE [dbo].[alarmevent] ADD 
	CONSTRAINT [DF_alarmevent_jfid] DEFAULT (1) FOR [jfid],
	CONSTRAINT [DF_alarmevent_devid] DEFAULT (1) FOR [devid],
	CONSTRAINT [DF_alarmevent_insid] DEFAULT (1) FOR [insid]
GO

ALTER TABLE [dbo].[history] ADD 
	CONSTRAINT [DF_history_jfid] DEFAULT (1) FOR [jfid],
	CONSTRAINT [DF_history_devid] DEFAULT (1) FOR [devid],
	CONSTRAINT [DF_history_insid] DEFAULT (1) FOR [insid]
GO


exec sp_addextendedproperty N'MS_Description', null, N'user', N'dbo', N'table', N'JfDevIns', N'column', N'insid'


GO


exec sp_addextendedproperty N'MS_Description', null, N'user', N'dbo', N'table', N'MenJinKzq', N'column', N'addr'


GO


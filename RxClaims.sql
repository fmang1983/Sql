USE [Test]
GO

/****** Object:  Table [dbo].[RxClaims]    Script Date: 10/28/2019 1:21:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RxClaims](
	[PatientKey] [int] NULL,
	[DrugKey] [varchar](50) NULL,
	[ServiceDate] [date] NULL,
	[Supply] [int] NULL,
	[Reversal] [bit] NULL
) ON [PRIMARY]
GO



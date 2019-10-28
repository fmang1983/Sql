USE [Test]
GO

/****** Object:  Table [dbo].[Patient]    Script Date: 10/28/2019 1:20:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Patient](
	[PatientKey] [int] NULL,
	[First Name] [nchar](10) NULL,
	[Last Name] [nchar](10) NULL,
	[Age] [int] NULL,
	[Zip] [int] NULL
) ON [PRIMARY]
GO



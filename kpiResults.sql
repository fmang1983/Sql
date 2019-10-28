USE [Test]
GO

/****** Object:  Table [dbo].[kpi_results]    Script Date: 10/28/2019 1:19:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[kpi_results](
	[DateKey] [varchar](50) NULL,
	[PatientKey] [int] NULL,
	[KPI] [int] NULL
) ON [PRIMARY]
GO



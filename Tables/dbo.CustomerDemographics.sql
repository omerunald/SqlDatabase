CREATE TABLE [dbo].[CustomerDemographics] (
  [CustomerTypeID] [nchar](10) NOT NULL,
  [CustomerDesc] [ntext] NULL,
  CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY NONCLUSTERED ([CustomerTypeID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
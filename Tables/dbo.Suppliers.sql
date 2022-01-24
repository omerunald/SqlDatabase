﻿CREATE TABLE [dbo].[Suppliers] (
  [SupplierID] [int] IDENTITY,
  [CompanyName] [nvarchar](40) NOT NULL,
  [ContactName] [nvarchar](30) NULL,
  [ContactTitle] [nvarchar](30) NULL,
  [Address] [nvarchar](60) NULL,
  [City] [nvarchar](15) NULL,
  [Region] [nvarchar](15) NULL,
  [PostalCode] [nvarchar](10) NULL,
  [Country] [nvarchar](15) NULL,
  [Phone] [nvarchar](24) NULL,
  [Fax] [nvarchar](24) NULL,
  [HomePage] [ntext] NULL,
  CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SupplierID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [CompanyName]
  ON [dbo].[Suppliers] ([CompanyName])
  ON [PRIMARY]
GO

CREATE INDEX [PostalCode]
  ON [dbo].[Suppliers] ([PostalCode])
  ON [PRIMARY]
GO
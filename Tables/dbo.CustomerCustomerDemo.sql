CREATE TABLE [dbo].[CustomerCustomerDemo] (
  [CustomerID] [nchar](5) NOT NULL,
  [CustomerTypeID] [nchar](10) NOT NULL,
  CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED ([CustomerID], [CustomerTypeID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomerCustomerDemo]
  ADD CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY ([CustomerTypeID]) REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID])
GO

ALTER TABLE [dbo].[CustomerCustomerDemo]
  ADD CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO
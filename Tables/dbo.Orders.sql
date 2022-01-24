CREATE TABLE [dbo].[Orders] (
  [OrderID] [int] IDENTITY,
  [CustomerID] [nchar](5) NULL,
  [EmployeeID] [int] NULL,
  [OrderDate] [datetime] NULL,
  [RequiredDate] [datetime] NULL,
  [ShippedDate] [datetime] NULL,
  [ShipVia] [int] NULL,
  [Freight] [money] NULL CONSTRAINT [DF_Orders_Freight] DEFAULT (0),
  [ShipName] [nvarchar](40) NULL,
  [ShipAddress] [nvarchar](60) NULL,
  [ShipCity] [nvarchar](15) NULL,
  [ShipRegion] [nvarchar](15) NULL,
  [ShipPostalCode] [nvarchar](10) NULL,
  [ShipCountry] [nvarchar](15) NULL,
  CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID])
)
ON [PRIMARY]
GO

CREATE INDEX [CustomerID]
  ON [dbo].[Orders] ([CustomerID])
  ON [PRIMARY]
GO

CREATE INDEX [CustomersOrders]
  ON [dbo].[Orders] ([CustomerID])
  ON [PRIMARY]
GO

CREATE INDEX [EmployeeID]
  ON [dbo].[Orders] ([EmployeeID])
  ON [PRIMARY]
GO

CREATE INDEX [EmployeesOrders]
  ON [dbo].[Orders] ([EmployeeID])
  ON [PRIMARY]
GO

CREATE INDEX [OrderDate]
  ON [dbo].[Orders] ([OrderDate])
  ON [PRIMARY]
GO

CREATE INDEX [ShippedDate]
  ON [dbo].[Orders] ([ShippedDate])
  ON [PRIMARY]
GO

CREATE INDEX [ShippersOrders]
  ON [dbo].[Orders] ([ShipVia])
  ON [PRIMARY]
GO

CREATE INDEX [ShipPostalCode]
  ON [dbo].[Orders] ([ShipPostalCode])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Orders] WITH NOCHECK
  ADD CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO

ALTER TABLE [dbo].[Orders] WITH NOCHECK
  ADD CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID])
GO

ALTER TABLE [dbo].[Orders] WITH NOCHECK
  ADD CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY ([ShipVia]) REFERENCES [dbo].[Shippers] ([ShipperID])
GO
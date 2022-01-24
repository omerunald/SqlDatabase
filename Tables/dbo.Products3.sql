CREATE TABLE [dbo].[Products3] (
  [ProductID] [int] IDENTITY,
  [ProductName] [nvarchar](40) NOT NULL,
  [SupplierID] [int] NULL,
  [CategoryID] [int] NULL,
  [QuantityPerUnit] [nvarchar](20) NULL,
  [UnitPrice] [money] NULL,
  [UnitsInStock] [smallint] NULL,
  [UnitsOnOrder] [smallint] NULL,
  [ReorderLevel] [smallint] NULL,
  [Discontinued] [bit] NOT NULL
)
ON [PRIMARY]
GO
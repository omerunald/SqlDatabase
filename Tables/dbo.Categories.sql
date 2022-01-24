CREATE TABLE [dbo].[Categories] (
  [CategoryID] [int] IDENTITY,
  [CategoryName] [nvarchar](15) NOT NULL,
  [Description] [ntext] NULL,
  [Picture] [image] NULL,
  CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [CategoryName]
  ON [dbo].[Categories] ([CategoryName])
  ON [PRIMARY]
GO
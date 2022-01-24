CREATE TABLE [dbo].[PersonelListe] (
  [Id] [int] IDENTITY,
  [Ad] [varchar](50) NULL,
  [Soyad] [varchar](50) NULL,
  CONSTRAINT [PK_PersonelListe] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
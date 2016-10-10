CREATE TABLE [dbo].[Review] (
    [ID]        INT  IDENTITY (1, 1) NOT NULL,
    [ProductID] INT  NOT NULL,
    [Stars]     INT  NULL,
    [Body]      TEXT NULL,
    [Author]    TEXT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Gems] ([ID])
);


CREATE TABLE [dbo].[Gems] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] TEXT           NOT NULL,
    [Name]        NVARCHAR (50)  NOT NULL,
    [Price]       MONEY          NOT NULL,
    [CanPurchase] BIT            NOT NULL,
    [SoldOut]     BIT            NOT NULL,
    [Image]       VARCHAR (MAX)  NULL,
    [Review]      NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


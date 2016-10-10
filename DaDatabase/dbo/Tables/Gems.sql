CREATE TABLE [dbo].[Gems] (
    [ID]          INT IDENTITY (1,1) NOT NULL,
    [Description] TEXT          NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [Price]       MONEY         NOT NULL,
    [CanPurchase] BIT           NOT NULL,
    [SoldOut] BIT NOT NULL, 
	Image VARCHAR(MAX)
    PRIMARY KEY CLUSTERED ([ID] ASC)
);
CREATE TABLE [dbo].[Person] (
    [FirstName] NVARCHAR (50) NOT NULL,
    [LastName]  NVARCHAR (50) NOT NULL,
    [Enlisted]  BIT           NOT NULL,
    [ID]        INT           NOT NULL,
    [DoB]       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


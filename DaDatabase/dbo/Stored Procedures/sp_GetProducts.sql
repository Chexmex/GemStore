CREATE PROCEDURE sp_GetProducts AS
SELECT
	ID,
	CanPurchase,
	SoldOut,
	Name,
	[Description],
	Price,
	[Image]
FROM
	Gems
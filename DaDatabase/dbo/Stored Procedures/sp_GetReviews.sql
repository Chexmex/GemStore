CREATE PROCEDURE sp_GetReviews 
(
	@ProductID int
)
AS
SELECT
Stars,
Author,
Body
FROM
Review
WHERE
ProductID=@productID
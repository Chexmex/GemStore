
ALTER TABLE
	Gems
ADD
	Image VARCHAR(MAX)
GO

SELECT 
	*
FROM
	Review
GO

DROP TABLE 
	Review
GO

INSERT INTO 
	Gems(Name,Price,[Description],SoldOut,CanPurchase,[Image])
VALUES
	('Dodecahedron', 2.95, 'Some gems have hidden qualities beyond their lusture, beyond their shine.... Dodecahedron is one of those gems',
	0,1,'/Content/Dodecahedron.png'),
	('Ruby', 49.95, 'Rubys are for ballers and kings', 0,1,'/Content/ruby.png'),
	('Diamond', 99.95, 'Dont waste diamonds on hoes -Minecraft',0,1,'/Content/diamond.png'),
	('Opal',1.95,'Like the name of my girlfriends cat', 0,1,'/Content/opal.png'),
	('Gold Bars', 999.95, 'Heavy enough to beat a grown man to death with', 0,1,'/Content/goldbars.png'),
	('Chaos Emeralds', 20000, 'Sonic the Hedgehog is always after them Chaos Emeralds',0,1,'/Content/chaos.png'),
	('Sapphire',299.95,'Like the eyes of a Blue-eyed White Dragon', 0,1,'/Content/sapphire.png')
GO

INSERT INTO
	Review(ProductID, Body,Stars,Author)
VALUES
	((SELECT ID FROM Gems WHERE name = 'Dodecahedron'), 'I love this product', 5, 'James Jameson'),
	((SELECT ID FROM Gems WHERE name = 'Ruby'), 'Red like the blood of my enemies', 4, 'Khrone the Blood God'),
	((SELECT ID FROM Gems WHERE name = 'Diamond'), 'I slept with my wife''s sister and this seems to have fixed things', 5, 'Cheaty McCheaterson'),
	((SELECT ID FROM Gems WHERE name = 'Opal'), 'I''m really more of a dog person', 3, 'Clayton Halaska'),
	((SELECT ID FROM Gems WHERE name = 'Gold Bars'), 'I already have way to many of these who would actually shell out money to buy these?!', 1, 'King Midas'),
	((SELECT ID FROM Gems WHERE name = 'Chaos Emeralds'), 'Used them to save Earth, four stars since they were the reason earth was in danger in the first place', 4, 'Sonic the Hedgehog'),
	((SELECT ID FROM Gems WHERE name = 'Sapphire'), 'Not as cool as Cavaleiros do Zodiaco but ok', 3, 'Gabe')
GO

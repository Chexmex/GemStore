/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

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
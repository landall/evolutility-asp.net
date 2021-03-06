/*   Wine Cellar */
/*  www.evolutility.org - (c) 2011 Olivier Giulieri  */
/*
	This file is part of Evolutility CRUD Framework.
	Source link <http://www.evolutility.org/download/download.aspx>

	Evolutility is free software: you can redistribute it and/or modify
	it under the terms of the GNU Affero General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	Evolutility is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU Affero General Public License
	along with Evolutility. If not, see <http://www.gnu.org/licenses/>.
*/

/************* Creating Tables ***************************************/
CREATE TABLE [Wine] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NULL ,
	[Publish] [bit] NULL ,
	[Name] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Appellation] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PictureFileName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GrapeID] [int] NULL ,
	[Vintage] [int] NULL ,
	[Winery] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TypeID] [int] NOT NULL ,
	[BuyingDate] [datetime] NULL ,
	[Price] [money] NULL ,
	[CurrentValue] [money] NULL ,
	[Robe] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Nose] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Taste] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Notes] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BottleID] [int] NULL ,
	[BottlesIni] [int] NULL ,
	[BottlesR] [int] NULL ,
	[YearDrink] [int] NULL ,
	[YearDrinkEnd] [int] NULL ,
	[YearPeak] [int] NULL ,
	[YearPeakEnd] [int] NULL ,
	[Food] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ScoreID] [int] NOT NULL ,
	[ScoreParker] [int] NULL ,
	[ScoreWineSpec] [int] NULL ,
	[Comments] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CountryID] [int] NULL ,
	[Region] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Area] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CommentCount] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [WineBottle] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [WineCountry] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[pix] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [WineDegustation] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NULL ,
	[Publish] [bit] NULL ,
	[dDate] [datetime] NULL ,
	[WineID] [int] NOT NULL ,
	[Robe] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Nose] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Taste] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Notes] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CommentCount] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [WineGrape] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [WineScore] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[pix] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [WineType] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[pix] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [Wine] WITH NOCHECK ADD 
	CONSTRAINT [PK_Wine] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [WineBottle] WITH NOCHECK ADD 
	CONSTRAINT [PK_WineBottle] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [WineCountry] WITH NOCHECK ADD 
	CONSTRAINT [PK_WineCountry] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [WineDegustation] WITH NOCHECK ADD 
	CONSTRAINT [PK_WineDegustation] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [WineGrape] WITH NOCHECK ADD 
	CONSTRAINT [PK_WineGrape] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [WineScore] WITH NOCHECK ADD 
	CONSTRAINT [PK_WineScore] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [WineType] WITH NOCHECK ADD 
	CONSTRAINT [PK_WineType] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [Wine] WITH NOCHECK ADD 
	CONSTRAINT [DF_Wine_UserID] DEFAULT (1) FOR [UserID],
	CONSTRAINT [DF_Wine_Publish] DEFAULT (1) FOR [Publish],
	CONSTRAINT [DF_Wine_Name] DEFAULT ('[Untitled]') FOR [Name],
	CONSTRAINT [DF_Wine_CommentCount] DEFAULT (0) FOR [CommentCount]
GO

ALTER TABLE [WineDegustation] WITH NOCHECK ADD 
	CONSTRAINT [DF_WineDegustation_UserID] DEFAULT (1) FOR [UserID],
	CONSTRAINT [DF_WineDegustation_Publish] DEFAULT (1) FOR [Publish],
	CONSTRAINT [DF_WineDegustation_ddate] DEFAULT (getdate()) FOR [dDate],
	CONSTRAINT [DF_WineDegustation_CommentCount] DEFAULT (0) FOR [CommentCount]
GO

 CREATE  INDEX [Wine_UserID] ON [Wine]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [Wine_Name] ON [Wine]([Name]) ON [PRIMARY]
GO


CREATE VIEW WineList
AS
SELECT ID, name+' '+ltrim(str(vintage)) AS name
FROM wine

GO

CREATE TRIGGER Wine_Delete ON Wine
FOR DELETE 
AS
DECLARE @WineID  int
SELECT @WineID=ID FROM deleted;
DELETE FROM WineDegustation
WHERE WineDegustation.WineID = @WineID; 

GO

/************* Seed data ***************************************/

/*** Populates WineType ***/
INSERT INTO WineType (name, pix) VALUES ('N/A', 'wineno.gif');
INSERT INTO WineType (name, pix) VALUES ('Red', 'winered.gif');
INSERT INTO WineType (name, pix) VALUES ('White', 'winewhite.gif');
INSERT INTO WineType (name, pix) VALUES ('Sweet', 'winesweet.gif');
INSERT INTO WineType (name, pix) VALUES ('Sparkling', 'winespark.gif');
INSERT INTO WineType (name, pix) VALUES ('Rose', 'winerose.gif');

GO

/*** Populates WineBottle ***/
INSERT INTO WineBottle (name) VALUES ('750 ml');
INSERT INTO WineBottle (name) VALUES ('500 ml');
INSERT INTO WineBottle (name) VALUES ('375 cl');
INSERT INTO WineBottle (name) VALUES ('1.5 L');
INSERT INTO WineBottle (name) VALUES ('3.0 L');
INSERT INTO WineBottle (name) VALUES ('6.0 L');
INSERT INTO WineBottle (name) VALUES ('8.0 L'); 

GO
/*** Populates WineGrape ***/
INSERT INTO WineGrape (name) VALUES ('Chardonnay');
INSERT INTO WineGrape (name) VALUES ('Shiraz');
INSERT INTO WineGrape (name) VALUES ('Merlot');
INSERT INTO WineGrape (name) VALUES ('Pinot Noir');
INSERT INTO WineGrape (name) VALUES ('Cabernet');
INSERT INTO WineGrape (name) VALUES ('Zinfandel');
INSERT INTO WineGrape (name) VALUES ('Sauvignon');
INSERT INTO WineGrape (name) VALUES ('Cabernet Sauvignon');
INSERT INTO WineGrape (name) VALUES ('Aligoté');
INSERT INTO WineGrape (name) VALUES ('Alvarinho');
INSERT INTO WineGrape (name) VALUES ('Blanc Fumé');
INSERT INTO WineGrape (name) VALUES ('Bual');
INSERT INTO WineGrape (name) VALUES ('Carignan');
INSERT INTO WineGrape (name) VALUES ('Chasselas');
INSERT INTO WineGrape (name) VALUES ('Chemin Blanc');
INSERT INTO WineGrape (name) VALUES ('Cinsault');
INSERT INTO WineGrape (name) VALUES ('Clairette');
INSERT INTO WineGrape (name) VALUES ('Colombard');
INSERT INTO WineGrape (name) VALUES ('Counoise');
INSERT INTO WineGrape (name) VALUES ('Fendant');
INSERT INTO WineGrape (name) VALUES ('Folle Blanche');
INSERT INTO WineGrape (name) VALUES ('Fürmint');
INSERT INTO WineGrape (name) VALUES ('Gamay');
INSERT INTO WineGrape (name) VALUES ('Gewürztraminer');
INSERT INTO WineGrape (name) VALUES ('Grauburgunder');
INSERT INTO WineGrape (name) VALUES ('Grechetto');
INSERT INTO WineGrape (name) VALUES ('Grenache Blanc');
INSERT INTO WineGrape (name) VALUES ('Grenache Noir');
INSERT INTO WineGrape (name) VALUES ('Gros Plan');
INSERT INTO WineGrape (name) VALUES ('Grüner Veltliner');
INSERT INTO WineGrape (name) VALUES ('Italienischer Riestling');
INSERT INTO WineGrape (name) VALUES ('Kadarka');
INSERT INTO WineGrape (name) VALUES ('Kerner');
INSERT INTO WineGrape (name) VALUES ('Macabeo');
INSERT INTO WineGrape (name) VALUES ('Malmsey');
INSERT INTO WineGrape (name) VALUES ('Malvasier');
INSERT INTO WineGrape (name) VALUES ('Marsanne');
INSERT INTO WineGrape (name) VALUES ('Melon de Bourgogne');
INSERT INTO WineGrape (name) VALUES ('Mourvèdre');
INSERT INTO WineGrape (name) VALUES ('Müller-Thurgau');
INSERT INTO WineGrape (name) VALUES ('Muscadelle');
INSERT INTO WineGrape (name) VALUES ('Muscadet');
INSERT INTO WineGrape (name) VALUES ('Musca');
INSERT INTO WineGrape (name) VALUES ('Musca d''Alsace');
INSERT INTO WineGrape (name) VALUES ('Muskateller');
INSERT INTO WineGrape (name) VALUES ('Nebbiolo');
INSERT INTO WineGrape (name) VALUES ('Palomino');
INSERT INTO WineGrape (name) VALUES ('Pedro Ximérez');
INSERT INTO WineGrape (name) VALUES ('Petit Verdot');
INSERT INTO WineGrape (name) VALUES ('Pinot Blanc');
INSERT INTO WineGrape (name) VALUES ('Pinot Gris');
INSERT INTO WineGrape (name) VALUES ('Pinot Noir');
INSERT INTO WineGrape (name) VALUES ('Pinotage');
INSERT INTO WineGrape (name) VALUES ('Riesling');
INSERT INTO WineGrape (name) VALUES ('Ruländer');
INSERT INTO WineGrape (name) VALUES ('Sangiovese');
INSERT INTO WineGrape (name) VALUES ('Sauvignon Blanc');
INSERT INTO WineGrape (name) VALUES ('Scheurebe');
INSERT INTO WineGrape (name) VALUES ('Sémilion');
INSERT INTO WineGrape (name) VALUES ('Sercial');
INSERT INTO WineGrape (name) VALUES ('Seyval Blanc');
INSERT INTO WineGrape (name) VALUES ('Siegerrebe');
INSERT INTO WineGrape (name) VALUES ('Silvaner');
INSERT INTO WineGrape (name) VALUES ('Spätburgunder');
INSERT INTO WineGrape (name) VALUES ('Steen');
INSERT INTO WineGrape (name) VALUES ('Syrah');
INSERT INTO WineGrape (name) VALUES ('Tempranillo');
INSERT INTO WineGrape (name) VALUES ('Tokay');
INSERT INTO WineGrape (name) VALUES ('Traminer');
INSERT INTO WineGrape (name) VALUES ('Trebbiano');
INSERT INTO WineGrape (name) VALUES ('Ugni Blanc');
INSERT INTO WineGrape (name) VALUES ('Verdejo');
INSERT INTO WineGrape (name) VALUES ('Verdelho');
INSERT INTO WineGrape (name) VALUES ('Vermentino');
INSERT INTO WineGrape (name) VALUES ('Vernaccia');
INSERT INTO WineGrape (name) VALUES ('Viognier');
INSERT INTO WineGrape (name) VALUES ('Viura');
INSERT INTO WineGrape (name) VALUES ('Weißburgunder');

GO

/*** Populates WineCountry ***/
INSERT INTO WineCountry (name)  VALUES ('NR');
INSERT INTO WineCountry (name)  VALUES ('Argentina');
INSERT INTO WineCountry (name)  VALUES ('Austria');
INSERT INTO WineCountry (name)  VALUES ('Bulgaria');
INSERT INTO WineCountry (name)  VALUES ('Canada');
INSERT INTO WineCountry (name)  VALUES ('Chile');
INSERT INTO WineCountry (name)  VALUES ('Cyprus');
INSERT INTO WineCountry (name)  VALUES ('France');
INSERT INTO WineCountry (name)  VALUES ('Germany');
INSERT INTO WineCountry (name)  VALUES ('Greece');
INSERT INTO WineCountry (name)  VALUES ('Hungary');
INSERT INTO WineCountry (name)  VALUES ('Italy');
INSERT INTO WineCountry (name)  VALUES ('Luxembourg');
INSERT INTO WineCountry (name)  VALUES ('New Zealand');
INSERT INTO WineCountry (name)  VALUES ('Portugal');
INSERT INTO WineCountry (name)  VALUES ('South Africa');
INSERT INTO WineCountry (name)  VALUES ('Spain');
INSERT INTO WineCountry (name)  VALUES ('Switzerland');
INSERT INTO WineCountry (name)  VALUES ('United States'); 

GO

/*** Populates WineScore ***/
INSERT INTO WineScore (name, pix) VALUES ('NR', 's00.gif');
INSERT INTO WineScore (name, pix) VALUES ('', 's0.gif');
INSERT INTO WineScore (name, pix) VALUES ('*', 's1.gif');
INSERT INTO WineScore (name, pix) VALUES ('**', 's2.gif');
INSERT INTO WineScore (name, pix) VALUES ('***', 's3.gif');
INSERT INTO WineScore (name, pix) VALUES ('****', 's4.gif');
INSERT INTO WineScore (name, pix) VALUES ('*****', 's5.gif');

GO

/************* Sample data ***************************************/
/*** Populates Wine and Wine Degustations***/

DECLARE @WineID int; 
DECLARE @Today [datetime]; 
DECLARE @ThisYear int;

SELECT @Today=getdate(), @ThisYear=year(getdate()) ;

INSERT INTO Wine (UserID, Name, PictureFileName, GrapeID, Vintage, Winery, TypeID, CountryID, BuyingDate, Price, Notes, BottlesIni, BottlesR, ScoreID, YearDrink, YearDrinkEnd, YearPeak, YearPeakEnd)
 VALUES (1, 'Macrostie', 'macrostie.gif', 1, @ThisYear-4, 'Mc Williams', 2, 8, @Today-500, 15.99, '', 6, 4, 1, @ThisYear-1, @ThisYear+3, @ThisYear+1, @ThisYear+2);
SELECT @WineID = SCOPE_IDENTITY();
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2008-7-16', N'Light', N'', N'Strong', N'');
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2007-2-12', N'Light', N'Strong', N'', N'');

INSERT INTO Wine (UserID, Name, PictureFileName, GrapeID, Vintage, Winery, TypeID, CountryID, BuyingDate, Price, Notes, BottlesIni, BottlesR, ScoreID, YearDrink, YearDrinkEnd, YearPeak, YearPeakEnd)
 VALUES (1, 'Château d''Yquem', 'yquem.gif', 5, @ThisYear-12, 'Lur Saluces', 4, 8, '2000-9-5', 225, '', 1, 0, 7, @ThisYear-6, @ThisYear+4, @ThisYear+1, @ThisYear+2);
SELECT @WineID = SCOPE_IDENTITY();
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2007-9-16', N'Thick', N'Strong', N'Strong', N'');
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2007-12-24', N'Thick', N'Strong', N'Strong', N'');
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2008-4-12', N'Quite thick', N'Strong', N'', N'Delicious'); 

 INSERT INTO Wine (UserID, Name, PictureFileName, GrapeID, Vintage, Winery, TypeID, CountryID, BuyingDate, Price, Notes, BottlesIni, BottlesR, ScoreID, YearDrink, YearDrinkEnd, YearPeak, YearPeakEnd)
 VALUES (1, 'Château St Jean', 'stjean.gif', 8, @ThisYear-2, 'Ch St Jean', 2, 8, '2003-7-19', 18.99, '', 3, 2, 1, @ThisYear+1, @ThisYear+10, @ThisYear+3, @ThisYear+7);
SELECT @WineID = SCOPE_IDENTITY(); 
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2007-8-20', N'Light', N'Strong', N'Strong', N'');
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2008-6-16', N'Light', N'Strong', N'', N'');

 
INSERT INTO Wine (UserID, Name, PictureFileName, GrapeID, Vintage, Winery, TypeID, CountryID, BuyingDate, Price, Notes, BottlesIni, BottlesR, ScoreID, YearPeak, YearPeakEnd)
 VALUES (1, 'Vine Cliff', 'vinecliff.gif', 1, @ThisYear-6, 'Vine Cliff', 1, 19, @Today-2000, 15.99, '', 4, 2, 6, @ThisYear, @ThisYear+1);
SELECT @WineID = SCOPE_IDENTITY();
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2008-2-12', N'', N'', N'Woody', N'');
 
INSERT INTO Wine (UserID, Name, PictureFileName, GrapeID, Vintage, Winery, TypeID, CountryID, Region, Area, BuyingDate, Price, Notes, BottlesIni, BottlesR, ScoreID, Comments)
 VALUES (1, 'Château Montelena', 'montelena.gif', 5, 2000, 'Château Montelena', 2, 19, 'California', 'Napa', '2001-12-12', 29.99, '', 2, 1, 5, '');
SELECT @WineID = SCOPE_IDENTITY();
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2007-10-23', N'Thick', N'', N'Earthy', N'');
INSERT INTO WineDegustation (WineID, ddate, Robe, Nose, Taste, notes)
  VALUES (@WineID, '2008-2-12', N'Thick', N'Strong', N'', N'');

 

GO




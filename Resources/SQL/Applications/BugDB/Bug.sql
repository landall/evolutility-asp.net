/* Bugs and feature requests Database    */
/* (c) 2012 Olivier Giulieri -  www.evolutility.org */
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
	GNU Affero General Public License for more details.

	You should have received a copy of the GNU Affero General Public License
	along with Evolutility. If not, see <http://www.gnu.org/licenses/>.
*/


/****** Object:  Table [Bug]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Bug](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL CONSTRAINT [DF_Bug_UserID]  DEFAULT ((1)),
	[Publish] [bit] NULL,
	[Title] [nvarchar](100) NULL CONSTRAINT [DF_Bug_Title]  DEFAULT ('<Untitled>'),
	[Description] [nvarchar](3000) NULL,
	[ProductID] [int] NOT NULL CONSTRAINT [DF_Bug_Product_ID]  DEFAULT ((1)),
	[SeverityID] [int] NOT NULL CONSTRAINT [DF_Bug_SeverityID]  DEFAULT ((1)),
	[PriorityID] [int] NOT NULL CONSTRAINT [DF_Bug_Priority_ID]  DEFAULT ((1)),
	[StatusID] [int] NOT NULL CONSTRAINT [DF_Bug_Status_ID]  DEFAULT ((1)),
	[ResolutionID] [int] NULL CONSTRAINT [DF_Bug_ResolutionID]  DEFAULT ((1)),
	[SubmitDate] [datetime] NULL CONSTRAINT [DF_Bug_Submitted]  DEFAULT (getdate()),
	[ExpectedDate] [datetime] NULL CONSTRAINT [DF_Bug_SubmitDate1]  DEFAULT (getdate()),
	[CloseDate] [datetime] NULL CONSTRAINT [DF_Bug_SubmitDate2]  DEFAULT (getdate()),
	[CloseRelease] [nvarchar](10) NULL,
	[ErrorMSG] [nvarchar](500) NULL,
	[DevComments] [nvarchar](300) NULL,
	[Acknowledged] [datetime] NULL,
	[Expected_Fix] [datetime] NULL,
	[LongDescription] [nvarchar](50) NULL,
	[Workaround] [nvarchar](500) NULL,
	[Reproduction] [nvarchar](500) NULL,
	[Demo1] [nvarchar](100) NULL,
	[BDesign] [bit] NULL,
	[BSQL] [bit] NULL,
	[BXML] [bit] NULL,
	[BHTML] [bit] NULL,
	[BJavascript] [bit] NULL,
	[User_Management] [bit] NULL,
	[Integration] [bit] NULL,
	[CommentCount] [int] NULL CONSTRAINT [DF_Bug_CommentCount]  DEFAULT ((0)),
 CONSTRAINT [PK_Bug] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [BugPriority]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BugPriority](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[name_FR] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[description_FR] [nvarchar](200) NULL,
 CONSTRAINT [PK_BugPriority] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [EvolProduct]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EvolProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_BugProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [BugResolution] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BugResolution](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[name_FR] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[description_FR] [nvarchar](200) NULL,
 CONSTRAINT [PK_BugResolution] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [BugSeverity] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BugSeverity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[name_FR] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[description_FR] [nvarchar](200) NULL,
 CONSTRAINT [PK_BugSeverity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [BugStatus]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BugStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[name_FR] [nvarchar](100) NULL,
	[description] [nvarchar](200) NULL,
	[description_FR] [nvarchar](200) NULL,
 CONSTRAINT [PK_BugStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*** ExportWizard BugPriority ***/

SET IDENTITY_INSERT BugPriority ON;

INSERT INTO BugPriority (ID, name, name_FR, description, description_FR)
  VALUES (1, '1 - Top Priority', '1 - Prioritaire', '', '');
INSERT INTO BugPriority (ID, name, name_FR, description, description_FR)
  VALUES (2, '2 - Urgent', '2 - Urgent', '', '');
INSERT INTO BugPriority (ID, name, name_FR, description, description_FR)
  VALUES (3, '3 - Normal', '3 - Régulier', '', '');
INSERT INTO BugPriority (ID, name, name_FR, description, description_FR)
  VALUES (4, '4 - Secondary', '4 - Secondaire', '', '');
INSERT INTO BugPriority (ID, name, name_FR, description, description_FR)
  VALUES (5, '5 - Nice to have', '5 - A considérer', '', '');
INSERT INTO BugPriority (ID, name, name_FR, description, description_FR)
  VALUES (6, 'N/A', '6 - Non renseigné', '', '');

SET IDENTITY_INSERT BugPriority OFF;

GO

SET IDENTITY_INSERT BugResolution ON;

INSERT INTO BugResolution (ID, name, name_FR, description, description_FR)
  VALUES (1, 'N/A', '', '', '');
INSERT INTO BugResolution (ID, name, name_FR, description, description_FR)
  VALUES (2, 'Fixed', '', '', '');
INSERT INTO BugResolution (ID, name, name_FR, description, description_FR)
  VALUES (3, 'Invalid', '', '', '');
INSERT INTO BugResolution (ID, name, name_FR, description, description_FR)
  VALUES (4, 'Won''t fix', '', '', '');
INSERT INTO BugResolution (ID, name, name_FR, description, description_FR)
  VALUES (5, 'Duplicate', '', '', '');
INSERT INTO BugResolution (ID, name, name_FR, description, description_FR)
  VALUES (6, 'Works for me', '', '', '');
INSERT INTO BugResolution (ID, name, name_FR, description, description_FR)
  VALUES (7, 'Moved', '', '', '');

SET IDENTITY_INSERT BugResolution OFF;

GO


SET IDENTITY_INSERT BugSeverity ON;

INSERT INTO BugSeverity (ID, name, name_FR, description, description_FR)
  VALUES (1, 'Blocker', '1 - Grave', '', '');
INSERT INTO BugSeverity (ID, name, name_FR, description, description_FR)
  VALUES (2, 'Critical', '2 - Critique', '', '');
INSERT INTO BugSeverity (ID, name, name_FR, description, description_FR)
  VALUES (3, 'Major', '3 - Majeur', '', '');
INSERT INTO BugSeverity (ID, name, name_FR, description, description_FR)
  VALUES (4, 'Minor', '4 - Mineur', '', '');
INSERT INTO BugSeverity (ID, name, name_FR, description, description_FR)
  VALUES (5, 'Trivial', '5 - Simple', '', '');
INSERT INTO BugSeverity (ID, name, name_FR, description, description_FR)
  VALUES (6, 'Enhancement', '6 - Evolution', '', '');

SET IDENTITY_INSERT BugSeverity OFF;

GO

SET IDENTITY_INSERT BugStatus ON;

INSERT INTO BugStatus (ID, name, name_FR, description, description_FR)
  VALUES (1, 'Unconfirmed', 'Non confirmé', '', '');
INSERT INTO BugStatus (ID, name, name_FR, description, description_FR)
  VALUES (2, 'New', 'Nouveau', '', '');
INSERT INTO BugStatus (ID, name, name_FR, description, description_FR)
  VALUES (3, 'Assigned', 'Assigné', '', '');
INSERT INTO BugStatus (ID, name, name_FR, description, description_FR)
  VALUES (4, 'Re-Opened', 'Re-Ouvert', '', '');
INSERT INTO BugStatus (ID, name, name_FR, description, description_FR)
  VALUES (5, 'Resolved', 'Résolut', '', '');
INSERT INTO BugStatus (ID, name, name_FR, description, description_FR)
  VALUES (6, 'Verified', 'Vérifié', '', '');

SET IDENTITY_INSERT BugStatus OFF;

GO

/*** ExportWizard Bug  ***/

SET IDENTITY_INSERT Bug ON;

INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (1, 0, 1, 'Tabs don''t work w/ IE 6', 'Tabs are displayed but do not respond to mouse click', 1, 2, 2, 2, 1, '2007-12-11 12:00:00 AM', '2008-1-1 01:46:21 PM', '2008-1-1 01:46:21 PM', '', '', '', NULL, NULL, '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (2, 0, 1, 'Add class around images', 'Add class around images.', 1, 6, 4, 5, 2, '2007-12-27 05:00:33 PM', '2008-1-1 01:46:21 PM', '2008-1-1 01:46:21 PM', '', '', 'The new class is called "fieldImg".', NULL, NULL, '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (3, 0, 1, 'Invalid format for French validation messages', 'Les messages du javascript ne me donnent pas les accents mais des points d''interrogation "vous avez oubli? de remplir un champ" j''ai donc utilisé des caractères en octal : http://www.pjb.com.au/comp/diacritics.html

// -----------  Validation ----------- 
evoBad={
  // french
  FR_intro:''Vous n\''avez pas encore termin\351:'',  
  FR_empty:''Vous devez entrer correctement le champ {0}.'',
  FR_email:''"{0}" doit avoir la forme "identifiant@domaine.com".'',
  FR_integer:''"{0}" (chiffres uniquement).'', 
  FR_decimal:''"{0}" doit etre un nombre decimal.'',
  FR_date:''"{0}" doit s\''écrire sous la forme Jour/mois/ann\351e, par exemple: 24/12/2005.'',
  FR_datetime:''"{0}" doit s\''\351crire sous la forme Jour/mois/ann\351e heure:minutes am/pm, par exemple : 12/24/2005 10:30 am.'', 
  FR_time:''"{0}" doit s\''\351crire sous la forme heure:minutes am/pm, par exemple : 10:30 am.'',
  FR_max:''"{0}" doit pas \352tre inferieur ou egal \340 {1}.'',
  FR_min:''"{0}" doit \352tre superieur ou egal \340 {1}.''  
};', 1, 4, 3, 5, 2, '2007-12-4 12:00:00 AM', '2008-1-1 01:46:21 PM', '2008-1-1 01:46:21 PM', '', '', '', NULL, '2007-12-26 12:00:00 AM', '', '', '', '', 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (4, 1, 1, 'Single tab in XML', 'Defining only one tab prevents the display of all fields.', 1, 6, 5, 5, 4, '2005-2-15 12:00:00 AM', '2008-1-6 07:30:14 PM', '2008-1-6 07:30:14 PM', '', '', '', NULL, NULL, '0', '', '', '', 0, 0, 1, 1, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (5, 1, 1, 'Keep title above tab strip', 'Cannot see record title when in any other tab than the first', 1, 6, 5, 5, 6, '2005-3-28 02:00:00 PM', '2008-1-6 07:31:05 PM', '2008-1-6 07:31:05 PM', '', '', '', NULL, NULL, '0', 'In the XML, use dbcolumnlead="COLUMN_NAME" with COLUMN_NAME beeing the table column used for record title', '', '', 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (6, 6, 1, 'LOV in search query use ID instead of name', 'Making a search on a LOV shows the ID instead of the corresponding text value in the title of the search result', 1, 4, 4, 5, 2, '2005-4-3 12:00:00 AM', '2008-1-6 07:31:15 PM', '2008-1-6 07:31:15 PM', '', '', '', NULL, NULL, '0', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (7, 1, 1, 'Search by date range problem', 'Search by date range ', 1, 3, 2, 3, 1, '2005-4-3 12:00:00 AM', '2008-1-6 07:31:41 PM', '2008-1-6 07:31:41 PM', '', '', '', NULL, NULL, '0', '', 'search the bug database for bugs of "last week"', '', 0, 0, 0, 0, 0, 0, 0, 2);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (8, 1, 1, 'Error message missing when saving a record fails', 'Error message missing when "save" fails. Happens when XML def is incorrect but not fully diagnosed yet', 1, 1, 1, 5, 2, '2005-4-3 12:00:00 AM', '2008-1-6 07:31:44 PM', '2008-1-6 07:31:44 PM', '', '', '', NULL, '2005-4-8 12:00:00 AM', '0', '', '', '', 0, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (9, 1, 1, 'Search by date range should go forward AND backward', 'Should have "...in the last month, in the last week"
+ "in the next week, in the next month..." in the search range for date fields. 

Maybe + or - in XML to limit range', 1, 3, 3, 5, 2, '2005-4-3 12:00:00 AM', '2008-1-6 07:31:50 PM', '2008-1-6 07:31:50 PM', '', '', '', NULL, '2005-8-12 12:00:00 AM', '0', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (10, 6, 1, 'First, previous, next, last navigation should remember the last search condition', 'Navigation with "First, previous, next, last" after search navigate all records

Current behavior is good or bad according to the context.', 1, 4, 3, 2, 1, '2005-4-3 12:00:00 AM', '2008-1-6 07:32:01 PM', '2008-1-6 07:32:01 PM', '', '', '', NULL, NULL, '0', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (11, 5, 1, 'Sorting feature in list', 'Would be nice to have sorting capability', 1, 4, 3, 5, 2, '2005-4-3 12:00:00 AM', '2008-1-6 07:32:58 PM', '2008-1-6 07:32:58 PM', '', '', '', NULL, NULL, '0', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (12, 3, 1, 'Export feature in the context of the page', 'Export as XML or CSV...', 1, 6, 3, 5, 2, '2005-4-3 12:00:00 AM', '2008-1-6 07:32:58 PM', '2008-1-6 07:32:58 PM', '', '', '', NULL, '2005-5-12 12:00:00 AM', '0', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (13, 1, 1, 'Check boxes should also check/uncheck by clicking text', 'Check boxes should also check/uncheck by clicking text', 1, 6, 5, 5, 1, '2005-4-3 12:00:00 AM', '2008-1-6 07:32:58 PM', '2008-1-6 07:32:58 PM', '', '', '', NULL, NULL, '0', '', 'On any checkbox (boolean fields)', '', 0, 0, 0, 1, 1, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (14, 1, 0, 'Item icons do not show in list in designer', 'Item icons do not show in list at design time (in VisualStudio). OK at run-time.', 1, 6, 5, 2, 1, '2005-4-3 12:00:00 AM', '2008-1-6 07:32:58 PM', '2008-1-6 07:32:58 PM', '', '', '', NULL, NULL, '0', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (15, 3, 1, 'Support for other languages', '3 languages to start w/ : English, Spanish, French', 1, 6, 2, 3, 1, '2005-8-12 12:00:00 AM', '2008-1-6 07:33:24 PM', '2008-1-6 07:33:24 PM', '', '', '', NULL, '2005-8-18 12:00:00 AM', '', 'Other pictures for nav buttons but still need text for navigation links.', '', '', 0, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (16, 3, 1, 'Group by in list', 'Header+multiple details in the same page', 1, 6, 4, 1, 1, '2005-8-12 12:00:00 AM', '2008-1-6 07:33:24 PM', '2008-1-6 07:33:24 PM', '', '', '', NULL, NULL, '', '', '', '', 0, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (17, 3, 1, 'Picture Link', 'Possibility to download a document by clicking on a picture.', 1, 4, 2, 5, 2, '2005-8-10 12:00:00 AM', '2008-1-6 07:33:24 PM', '2008-1-6 07:33:24 PM', '', '', '', NULL, '2005-8-12 12:00:00 AM', '', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (18, 5, 1, 'Date format in french doens''t allow modifications', '', 1, 2, 3, 3, 1, '2005-6-5 12:00:00 AM', '2008-1-6 07:33:24 PM', '2008-1-6 07:33:24 PM', '', '', '', NULL, NULL, '', 'Use fields of type "text" instead of "date" for now or keep the field readonly.', 'use format="DD/MM/YYYY" for French date format, edit a date, save.', '', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (19, 5, 0, 'Toolbar icon with translated text', 'Could use links instead of having the button name in the picture.', 1, 6, 5, 2, 1, '2005-8-13 12:00:00 AM', '2008-1-6 07:33:24 PM', '2008-1-6 07:33:24 PM', '', '', '', NULL, NULL, '', 'CPNT already made French toolbar icons.', '', '', 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (20, 5, 1, 'Images automatic thumbnail', '', 1, 6, 5, 1, 1, '2005-8-13 12:00:00 AM', '2008-1-6 07:33:45 PM', '2008-1-6 07:33:45 PM', '', '', '', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (21, 3, 1, 'Need more spacing between navigation links', 'More space between First, Previous, Next and Last in the navigation footer ', 1, 4, 4, 5, 2, '2005-8-12 12:00:00 AM', '2008-1-6 07:33:45 PM', '2008-1-6 07:33:45 PM', '', '', '', NULL, '2005-8-15 12:00:00 AM', '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (22, 3, 1, 'WYSIWYG HTML field type', '', 1, 6, 5, 6, 1, '2005-8-5 12:00:00 AM', '2008-1-6 07:33:45 PM', '2008-1-6 07:33:45 PM', '', '', '', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (23, 6, 1, 'No fields validation in Firefox', 'Should have validation javascript for before when clicking "save". Works w/ IE.', 1, 3, 3, 3, 1, '2005-4-15 12:00:00 AM', '2008-1-6 07:33:45 PM', '2008-1-6 07:33:45 PM', '', '', '', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Bug (ID, UserID, Publish, Title, Description, ProductID, SeverityID, PriorityID, StatusID, ResolutionID, SubmitDate, ExpectedDate, CloseDate, CloseRelease, ErrorMSG, DevComments, Acknowledged, Expected_Fix, LongDescription, Workaround, Reproduction, Demo1, BDesign, BSQL, BXML, BHTML, BJavascript, User_Management, Integration, CommentCount)
  VALUES (24, 3, 1, 'Very long text fields are truncated', '', 1, 3, 2, 2, 1, '2005-8-12 12:00:00 AM', '2008-1-6 07:33:45 PM', '2008-1-6 07:33:45 PM', '', '', '', NULL, NULL, '', '', '', '', 0, 1, 0, 1, 1, 0, 0, 0);

SET IDENTITY_INSERT Bug OFF;

GO

/*** ExportWizard [EvolProduct]  ***/

SET IDENTITY_INSERT [EvolProduct] ON;

INSERT INTO [EvolProduct]([ID],[name],[Description])
  VALUES ( 1, 'Evolutility', 'Lightweight web framework for heavylifting');

INSERT INTO [EvolProduct]([ID],[name],[Description])
  VALUES ( 2, 'EvoDico', 'Database Dictionary for Evolutility');


SET IDENTITY_INSERT [EvolProduct] OFF;

GO


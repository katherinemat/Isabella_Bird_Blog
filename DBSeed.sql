INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170419204436_Initial', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170419212002_LongerDesc', N'1.0.0-rtm-21431')
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([ExperienceId], [ExperienceDesc], [ExperienceName], [LocationId]) VALUES (1, N'I just founded a hospital in my late husband''s name!  I gave money to Fanny Jane Butler to build the John Butler Memorial Hospital in Kashmir, India.', N'Founding A Hospital', 8)
SET IDENTITY_INSERT [dbo].[Experiences] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (1, N'City', N' Yorkshire, England')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (2, N'City', N'Halifax, Canada')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (3, N'Country', N'Australia')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (4, N'Landmark', N'Mauna Loa, Hawaii')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (5, N'Landmark', N'Mauna Kea, Hawaii')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (6, N'Region', N'Rocky Mountains, US')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (7, N'City', N'Mayfair, London, England')
INSERT [dbo].[Locations] ([LocationId], [GeoClass], [LocationName]) VALUES (8, N'Region', N'Kashmir, India')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([PersonId], [LocationId], [PersonName]) VALUES (1, 6, N'Jim Nugent')
INSERT [dbo].[Persons] ([PersonId], [LocationId], [PersonName]) VALUES (2, 7, N'John Murray II')
INSERT [dbo].[Persons] ([PersonId], [LocationId], [PersonName]) VALUES (3, 1, N'Dr John Bishop')
INSERT [dbo].[Persons] ([PersonId], [LocationId], [PersonName]) VALUES (4, 8, N'Fanny Jane Butler')
SET IDENTITY_INSERT [dbo].[Persons] OFF
INSERT [dbo].[PersonsExperiences] ([PersonId], [ExperienceId]) VALUES (2, 1)
INSERT [dbo].[PersonsExperiences] ([PersonId], [ExperienceId]) VALUES (4, 1)
GO
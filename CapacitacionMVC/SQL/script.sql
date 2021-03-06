USE [Capacitacion_MVC]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/9/2015 10:07:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](255) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GenreMovies]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenreMovies](
	[Genre_Id] [uniqueidentifier] NOT NULL,
	[Movie_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.GenreMovies] PRIMARY KEY CLUSTERED 
(
	[Genre_Id] ASC,
	[Movie_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genres]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movie]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[ReleaseDate] [datetime] NULL,
	[Plot] [nvarchar](max) NULL,
	[CoverLink] [nvarchar](250) NULL,
	[Runtime] [int] NULL,
	[Director] [nvarchar](100) NULL,
	[Format] [nvarchar](100) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movie_Genre]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Genre](
	[MovieId] [uniqueidentifier] NOT NULL,
	[GenreId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MovieGenre] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC,
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Plot] [nvarchar](max) NOT NULL,
	[CoverLink] [nvarchar](150) NOT NULL,
	[Runtime] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 9/9/2015 10:07:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [Model], [ProductVersion]) VALUES (N'201410281307302_InitialCreate', 0x1F8B0800000000000400DD595B6FDB36147E1FB0FF20E8691BD028495BA00BEC16999314419B0BE234AF05231D3B4429521529C3FE6D7BD84FDA5FD8A16E96484A96EDB42BFAD0D426793E9E1BCFCDFFFEFDCFE8DD3266DE025249051FFB470787BE073C1411E5F3B19FA9D98B37FEBBB7BFFE323A8FE2A5F7509D7BA9CF21259763FF49A9E4240864F804319107310D5321C54C1D84220E482482E3C3C33F83A3A30010C2472CCF1BDD655CD118F22FF87522780889CA08BB12113059AEE3CE3447F5AE490C3221218CFD09C1FFA9C27F825F3D4C0ECE8822BE77CA28415EA6C066BE97BC3AF92461AA52C1E7D384284AD8FD2A01DC9F1126A1E4FC24793594F9C363CD7C4038170AE104DF4978BF160B053B4705A895662B176EEC5F890585E6113CF40156AD055CBA4D4502A95ADDC1AC24BC8C7C2F68D30526614DD6A0D1778FFDF719C5CFD71963E49141ADA1A0975CFFAD0050CDE82BBE774197107D043E574F35CA1559562B4787E8319F3845D742229566B0F5AD77C080484083D797EBCFF734DE1EEB9609B5A504F8715F0926025FDA47CABF6CABBCD7FB2BAF7871D5C5975CBD3CDE0C724D16749E7BBC01F71E780AD2F7D026F9B67CA249F1FC0EF2ADCFB93BE3818B54C477825524E5FAE77B92CE415B403836A7224B43839951B07E31BDEF2847FA79DF51BF1716DF871AB1B2D1AE46ACECE4346265E121463C95528434E7A169C5EAFEB638E73CF2FA9829B4590B81DACB98A209A398355663FF0F4B3F1D80B58BAE018B18DD0F380A1AD2D89E8AA94E11CA216DD940AFC25259926A8A2928C35E6B25B6F9B2E46A93576FD6222FF5649037C430306ABF681C71F98DF9E63658AEE677CD6A3010A2B25503A2E2D17CD26DB11CCE595B685D8504451952952B4147BD32BA2249828FB851BF942BDEB42C5E5E4CB72F1DE2022308A5A382A8B9AD6F52222573307675EE89E082A652E982E991E8B0328962EBD8207FACEE6AB9A56DAACACDAAE3FA7399081D45DC81A3026AEAF002C58A81AB5C42302D6DD3E5D523612475C4EC896059CCBBE27E1F7511B29BF4C5CA70845619D3046A6D0CC72B4A992650B1321CA1519634611ACB5B4857D5192DC9AA451B671418E635DD28B0FCC878D0A6570EF2D932C0ECEDB38E6A2307DAE4B31D74FFB7CF7E6B6BB483AFC324756A19A2F7FAB053BBCEB0A01388AB94357291AD98416629A05CC6D18AA92FDE92A732B9EDC8530EB2254F6696B46D69254BF348ED4975D23492E3A84C54033A7E337315477C0F795FD04867ADE94A2A880BD7987E651346D177D707AE08A73390EA5E7C01AC5430B1BE3146063BB4F3819411FB217BFA8CD3AF19A0E0C8CF8C42BA575FC217240D9F486A77F3FBB7EF117E56FBB6EF1583BFC564F9FBFE2DB95BDED73BC8DBEEB8A976C85E881FBDC5FD266E6559CD6E61B7D3CBCE6FAE2778DB87BBA2EA667DAEAF7926ADAE59D90970B79EDC9928CDEE6C73337E64E5E71B7E86714281771A166DE584C89044B61674F2EABDBD6C8A4D1686F4F07A420D3348B50A09C31C27558A59CEAA866E53CA439A10D692DA4ED4435EA216A9C63377CE2001AE2D6A0B38E4B6BEBAA48636D4BB49019D738E0D8EE3AA661AA6B3ADE634D84FE638C34DF97D1DA7AF787C76C7710FC8ECB9C5802159F78CACA81DB1F4781468E2222A768C8A9CF3B3EEF1990BD93DC772237731DEDCECBCA343848D33BC7AF8D63FCAEBE88BEC806FB5B81B47782DB1CDEE6DF8F46E90B0D5987083B0EE86CB0E52D60CEA7B09BBC5A8D2EEB2F085367E7DC50821E97C0DA17F8BE510B6DE667DE692CF4415240C8EAA236671028A60954F4E532C4648A8703B0429F35F3A1E08CBF0C879FC08D125BFC95492291419E247B66A2A43879ABEFBF3796C9BE7D14D92FFA0F11C22209B54372A37FCAF8CB2A8E6FBC2514B7540E818868686B4B025864405F3558D742DF840A0527D75E8BD87386108266FF8942CA09BB7CD3A6C6B6C7446C93C25B12C31D6F4F815DD2F8A976FFF03F44EB6A13F200000, N'5.0.0.net45')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'1e61e21a-0a12-4401-81f4-14ef41a172cd', N'Drama')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'386b09e3-c077-4ea3-816f-1c7f09b469d4', N'Sci-Fi')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'02d80b55-e486-4f22-a245-4289f19219d8', N'Thriller')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad', N'Action')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'345dd0ea-7625-4b3a-810f-bac8a4770827', N'Sport')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'61563c72-44a0-43f5-8045-bc43e984989f', N'Animation')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'a25802d3-9543-4d45-bbdc-cb0a4e376b70', N'Adventure')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'38f4926e-3199-4e9e-8b97-cbadcfd09930', N'Crime')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'539bf1aa-2fff-4e98-9d86-db51ff9249c2', N'Fantasy')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (N'889fe0f3-3e39-45bb-a8b1-e1389c403a92', N'Comedy')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'6202ce31-31f8-4b67-853e-0da0beb18d9d', N'The Lord of the Rings: The Return of the King', CAST(0x0000945200000000 AS DateTime), N'Gandalf and Aragorn lead the World of Men against Saurons army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', N'http://ia.media-imdb.com/images/M/MV5BMjE4MjA1NTAyMV5BMl5BanBnXkFtZTcwNzM1NDQyMQ@@._V1_SX214_.jpg', 201, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'254decb1-9e2e-45ad-a8a3-178646280d1a', N'Hitch', CAST(0x000095F800000000 AS DateTime), N'While helping his latest client woo the fine lady of his dreams, a professional "date doctor" finds that his game doesn''t quite work on the gossip columnist with whom he''s smitten.', N'http://ia.media-imdb.com/images/M/MV5BNzYyNzM2NzM2NF5BMl5BanBnXkFtZTcwNjg5NTQzMw@@._V1_SX214_.jpg', 118, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'cc1fc2c2-c34f-44bf-b4e5-18e99120bd35', N'Star Wars: Episode V - The Empire Strikes Back', CAST(0x000072B000000000 AS DateTime), N'After the rebels have been brutally overpowered by the Empire on their newly-established base, Luke Skywalker takes advanced Jedi training with Yoda, while his friends are constantly being pursued by Vader as part of his plan to capture Luke.', N'http://ia.media-imdb.com/images/M/MV5BMjE2MzQwMTgxN15BMl5BanBnXkFtZTcwMDQzNjk2OQ@@._V1_SY317_CR0,0,214,317_.jpg', 124, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'563a05f2-bdc4-4fba-8563-192a036cfee9', N'Grown Ups', CAST(0x00009DA000000000 AS DateTime), N'After their high school basketball coach passes away, five good friends and former teammates reunite for a Fourth of July holiday weekend.', N'http://ia.media-imdb.com/images/M/MV5BMjA0ODYwNzU5Nl5BMl5BanBnXkFtZTcwNTI1MTgxMw@@._V1_SX214_.jpg', 102, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'abd46fbe-b61d-4892-a550-1965ab0de8e5', N'The Hobbit: An Unexpected Journey', CAST(0x0000A12700000000 AS DateTime), N'A younger and more reluctant Hobbit, Bilbo Baggins, sets out on an "unexpected journey" to the Lonely Mountain with a spirited group of Dwarves to reclaim their stolen mountain home from a dragon named Smaug.', N'http://ia.media-imdb.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_SX214_.jpg', 169, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'5afe6d05-4e14-4620-ad22-1c69431afd18', N'Fast & Furious 6', CAST(0x0000A1C800000000 AS DateTime), N'Agent Luke Hobbs enlists Dominic Toretto and his team to bring down former Special Ops soldier Owen Shaw, leader of a unit specializing in vehicular warfare.', N'http://ia.media-imdb.com/images/M/MV5BMTM3NTg2NDQzOF5BMl5BanBnXkFtZTcwNjc2NzQzOQ@@._V1_SX214_.jpg', 130, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'1cd745d1-e09d-4396-bb7c-1d6bcf19c85d', N'Horrible Bosses', CAST(0x00009F1A00000000 AS DateTime), N'Three friends conspire to murder their awful bosses when they realize they are standing in the way of their happiness.', N'http://ia.media-imdb.com/images/M/MV5BNzYxNDI5Njc5NF5BMl5BanBnXkFtZTcwMDUxODE1NQ@@._V1_SY317_CR0,0,214,317_.jpg', 98, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'9fb809c6-eac2-436b-9002-22d28b8f701f', N'The Shining', CAST(0x0000738A00000000 AS DateTime), N'algo', N'http://aaa.com', 146, N'Stanley Kubrick', NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'd519454c-24fd-45b0-9d5b-2b9541298e22', N'SuperCampeones', CAST(0x0000860900000000 AS DateTime), N'dsasda', N'www.google.com', 130, N'Hola', N'DVD')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'9540f16c-a560-4a94-b6ed-2c7a071230b0', N'13', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'8fcd30dd-906b-4d4f-ac50-3054f002d086', N'The Lord of the Rings: The Two Towers', CAST(0x000092E600000000 AS DateTime), N'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Saurons new ally, Saruman, and his hordes of Isengard.', N'http://ia.media-imdb.com/images/M/MV5BMTAyNDU0NjY4NTheQTJeQWpwZ15BbWU2MDk4MTY2Nw@@._V1_SY317_CR1,0,214,317_.jpg', 179, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'f68be77b-bf83-440d-81c7-36e89adff423', N'The Last Stand', CAST(0x0000A14A00000000 AS DateTime), N'The leader of a drug cartel busts out of a courthouse and speeds to the Mexican border, where the only thing in his path is a sheriff and his inexperienced staff.', N'http://ia.media-imdb.com/images/M/MV5BODc4NjI0OTYwNl5BMl5BanBnXkFtZTcwOTYwODQ3OA@@._V1_SX214_.jpg', 107, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'3180cae9-73c7-47ac-ad4e-39a03432d689', N'The Change-Up', CAST(0x00009F3600000000 AS DateTime), N'Dave is a married man with two kids and a loving wife , and Mitch is a single man who is at the prime of his sexual life. One fateful night while Mitch and Dave are peeing in a fountain when lightning strikes and they switch bodies.', N'http://ia.media-imdb.com/images/M/MV5BMTk3NTM4NDg3OF5BMl5BanBnXkFtZTcwNDk3MzEwNQ@@._V1_SX214_.jpg', 112, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'3924c401-6f47-4718-858b-39c1f8b68a27', N'favorita2', CAST(0x0000A26D00000000 AS DateTime), N'Maxima diversion', N'www.hotmail.com', 160, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'03357063-8b4b-49bc-9dea-47d1337f4de7', N'Anger Management', CAST(0x0000935800000000 AS DateTime), N'Sandler plays a businessman who is wrongly sentenced to an anger-management program, where he meets an aggressive instructor.', N'http://ia.media-imdb.com/images/M/MV5BMTQ1NTIxMTY5OF5BMl5BanBnXkFtZTYwODI3Mzg5._V1_SX214_.jpg', 106, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'd0ce20c8-bc5c-40c2-a394-4abd0cc9e674', N'Despicable Me 2', CAST(0x0000A1F000000000 AS DateTime), N'Gru is recruited by the Anti-Villain League to help deal with a powerful new super criminal.', N'http://ia.media-imdb.com/images/M/MV5BOTg4NTk2OTg5N15BMl5BanBnXkFtZTcwMDk1MzI2OQ@@._V1._CR243,215.64999389648438,1087,1598.0000305175781_SY317_CR14,0,214,317_.jpg', 98, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'c72e9452-1fcf-4071-a257-4faea871c507', N'Brave', CAST(0x0000A07800000000 AS DateTime), N'Determined to make her own path in life, Princess Merida defies a custom that brings chaos to her kingdom. Granted one wish, Merida must rely on her bravery and her archery skills to undo a beastly curse.', N'http://ia.media-imdb.com/images/M/MV5BMzgwODk3ODA1NF5BMl5BanBnXkFtZTcwNjU3NjQ0Nw@@._V1_SY317_CR0,0,214,317_.jpg', 93, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'99889e95-0c13-4c9e-ad69-54d9cf43b301', N'Real Steel', CAST(0x00009F7200000000 AS DateTime), N'Set in the near future, where robot boxing is a top sport, a struggling promoter feels hes found a champion in a discarded robot. During his hopeful rise to the top, he discovers he has an 11-year-old son who wants to know his father.', N'http://ia.media-imdb.com/images/M/MV5BMjEzMzEzNjg0N15BMl5BanBnXkFtZTcwMzg4NDk0Ng@@._V1_SX214_.jpg', 127, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'80477c84-2d1f-441e-ba76-58ea64a6af7b', N'Test1', CAST(0x0000A12500000000 AS DateTime), N'wasd', N'http://www.a.com', 120, N'roberto', N'BlueRay')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'443b4dd0-7342-45ef-8f96-59bbede3b9db', N'Villano', CAST(0x0000A57800000000 AS DateTime), N'Mucha diversion', N'www.google.com', 120, N'pepito', N'dvd')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'eb14d4a9-27a8-470b-8e16-5a40c86347eb', N'The Dark Knight Rises', CAST(0x0000A09400000000 AS DateTime), N'Eight years on, a new evil rises from where the Batman and Commissioner Gordon tried to bury it, causing the Batman to resurface and fight to protect Gotham City... the very city which brands him an enemy.', N'http://ia.media-imdb.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_SX214_.jpg', 165, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'4a0be42e-f2a8-4d8a-a351-5aa72f51cf24', N'Happy Gilmore', CAST(0x000089DB00000000 AS DateTime), N'A rejected hockey player puts his skills to the golf course to save his grandmothers house.', N'http://ia.media-imdb.com/images/M/MV5BMjA4NjUxODg3Ml5BMl5BanBnXkFtZTcwNzcyODc5Mw@@._V1_SX214_.jpg', 96, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'9c786127-474f-4dc4-921f-5ce67d3f8615', N'The Godfather: Part II', CAST(0x00006AF500000000 AS DateTime), N'The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on his crime syndicate stretching from Lake Tahoe, Nevada to pre-revolution 1958 Cuba.', N'http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_SX214_.jpg', 200, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'd27c5707-95e3-42b6-a030-66abf44ad725', N'Oblivion', CAST(0x0000A1A500000000 AS DateTime), N'A veteran assigned to extract Earths remaining resources begins to question what he knows about his mission and himself.', N'http://ia.media-imdb.com/images/M/MV5BMTQwMDY0MTA4MF5BMl5BanBnXkFtZTcwNzI3MDgxOQ@@._V1_SX214_.jpg', 124, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'0bbdebf9-f1f2-4869-b01c-6766cf56c23a', N'Dummy', CAST(0x000058AA00000000 AS DateTime), N'Dumy * 2', N'C:\aaa.jpg', 123, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'ad722462-4872-42ef-babb-68ca3d98c395', N'13 Assassins', CAST(0x00009DFC00000000 AS DateTime), N'A group of assassins come together for a suicide mission to kill an evil lord.', N'http://ia.media-imdb.com/images/M/MV5BODg3MTYwODY3MF5BMl5BanBnXkFtZTcwMDk2MzYwNQ@@._V1_SX214_.jpg', 141, N'asdasd', NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'42487f50-83ff-4e02-9e41-6bad7aac0576', N'Kill Bill', CAST(0x00001CBA00000000 AS DateTime), N'jkfla', N'jklfajd', 123, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'4e5a55d8-7863-43f9-a3dc-6f66e124382e', N'Back to the Future', CAST(0x000079FD00000000 AS DateTime), N'A teenager is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.', N'http://ia.media-imdb.com/images/M/MV5BMTk4OTQ1OTMwN15BMl5BanBnXkFtZTcwOTIwMzM3MQ@@._V1_SX214_.jpg', 116, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'3cdf4f5a-b6d1-474e-b391-70b2a9b1c3e3', N'Thor: The Dark World', CAST(0x0000A27000000000 AS DateTime), N'When Jane Foster is targeted by the denizens of the dark world of Svartalfheim, Thor sets out on a quest to protect her at all costs.', N'http://ia.media-imdb.com/images/M/MV5BMjAxMjk5NjM1NV5BMl5BanBnXkFtZTcwMDA0OTA0OQ@@._V1_SX214_.jpg', 202, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'd6c7171d-b01b-4355-af29-72de692cce51', N'Elite Squad: The Enemy Within', CAST(0x00009E0900000000 AS DateTime), N'After a prison riot, former-Captain Nascimento, now a high ranking security officer in Rio de Janeiro, is swept into a bloody political dispute that involves government officials and paramilitary groups.', N'http://ia.media-imdb.com/images/M/MV5BMjA0NjA2OTk2MV5BMl5BanBnXkFtZTcwNzIxNjk5Ng@@._V1_SY317_CR0,0,214,317_.jpg', 115, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'2bf87c8b-a1d2-47b8-ac29-74815ec3a29d', N'Spider-Man', CAST(0x0000920100000000 AS DateTime), N'When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.', N'http://ia.media-imdb.com/images/M/MV5BMzk3MTE5MDU5NV5BMl5BanBnXkFtZTYwMjY3NTY3._V1_SY317_CR0,0,214,317_.jpg', 121, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'1c7894e7-769e-4d0a-9567-7a1dab60d66d', N'El hijo de la novia', CAST(0x0000A27400000000 AS DateTime), N'lala', N'asdasd', 45, N'Darin', N'0')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'5b861f91-ea02-41e4-be58-7a8c258ac066', N'The Blind Side', CAST(0x00009CC700000000 AS DateTime), N'The story of Michael Oher, a homeless and traumatized boy who became an All American football player and first round NFL draft pick with the help of a caring woman and her family.', N'http://ia.media-imdb.com/images/M/MV5BMjEzOTE3ODM3OF5BMl5BanBnXkFtZTcwMzYyODI4Mg@@._V1_SX214_.jpg', 129, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'3fdf6520-f1d3-4232-bece-7cdaec20847c', N'Extermineitors', CAST(0x0000A13900000000 AS DateTime), N'Argentina', N'about:blank', 90, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'57c04b89-11ee-426f-af50-7e77416636ea', N'La Pasion', CAST(0x00009B6900000000 AS DateTime), N'Gimnasia de La Plata', N'http://www.gimnasia.org.ar/pura_pasion/especiales/2009/lapasion/video.jpg', 120, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'905d90be-c8a0-40e0-b9ca-819f63325012', N'favorita1', CAST(0x0000A26D00000000 AS DateTime), N'Emocionante', N'www.google.com', 110, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'ba59aa77-d1ad-447b-bbb0-83c1c195a49f', N'Outlander', CAST(0x00009AD600000000 AS DateTime), N'During the reign of the Vikings, Kainan, a man from a far-off world, crash lands on Earth, bringing with him an alien predator known as the Moorwen. Though both man and monster are seeking revenge for violence committed against them, Kainan leads the alliance to kill the Moorwen by fusing his advanced technology with the Viking''s Iron Age weaponry.', N'http://ia.media-imdb.com/images/M/MV5BMzM3NzU3OTc0Nl5BMl5BanBnXkFtZTcwNzIwNDI4OA@@._V1_SY317_CR12,0,214,317_.jpg', 115, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'8f82989b-90f0-4c13-93cc-861e179d134e', N'Harry Potter and the Sorcerer''s Stone', CAST(0x0000915900000000 AS DateTime), N'Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School of Witchcraft and Wizardry.', N'http://ia.media-imdb.com/images/M/MV5BMTYwNTM5NDkzNV5BMl5BanBnXkFtZTYwODQ4MzY5._V1_SY317_CR8,0,214,317_.jpg', 152, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'62c088eb-a6bb-4bdb-bcbd-8708f71991a8', N'The Godfather', CAST(0x0000670C00000000 AS DateTime), N'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', N'http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX214_.jpg', 175, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'74cab39f-b2c3-4913-8d8f-8c00d796ce5d', N'Hall Pass', CAST(0x00009E9500000000 AS DateTime), N'Rick and Fred, two husbands who are having difficulty in their marriages, are given a Hall Pass by their wives: for one week, they can do whatever they want.', N'http://ia.media-imdb.com/images/M/MV5BMTc4MzIxNTYwNl5BMl5BanBnXkFtZTcwNzE4MjE0NA@@._V1_SY317_CR0,0,214,317_.jpg', 105, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'f7d291d6-6899-4f2f-a554-96e7c84da0ab', N'Captain Phillips', CAST(0x0000A25400000000 AS DateTime), N'The true story of Captain Richard Phillips and the 2009 hijacking by Somali pirates of the US-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years.', N'http://ia.media-imdb.com/images/M/MV5BMTQzNzExMDg3Ml5BMl5BanBnXkFtZTgwODU1NzEzMDE@._V1_SX214_.jpg', 134, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'5f68df91-1c0d-4df3-9d3c-97b894b33295', N'The Legend Is Born: Ip Man', CAST(0x00009D9F00000000 AS DateTime), N'Yip Mans resistance against invading foreigners, along with his romantic relations while under the tutelage of three Wing Chun masters.', N'http://ia.media-imdb.com/images/M/MV5BMjA2ODgyMjE1MF5BMl5BanBnXkFtZTcwMzE3MDU3Ng@@._V1_SX214_.jpg', 100, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'37fca1c8-f9b2-4b77-9b56-9826f60ac8ba', N'Monsters, Inc.', CAST(0x0000914B00000000 AS DateTime), N'Monsters generate their city''s power by scaring children, but they are terribly afraid themselves of being contaminated by children, so when one enters Monstropolis, top scarer Sulley finds his world disrupted.', N'http://ia.media-imdb.com/images/M/MV5BMTk0NzAwMzI5MF5BMl5BanBnXkFtZTcwMjM4MTM0OA@@._V1_SX214_.jpg', 92, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'19d26c97-6e3c-40a6-bf2f-9c64aee1e934', N'Gravity', CAST(0x0000A24D00000000 AS DateTime), N'A medical engineer and an astronaut work together to survive after an accident leaves them adrift in space.', N'http://ia.media-imdb.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_SY317_CR0,0,214,317_.jpg', 90, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'a82c5538-d6ad-47b4-a53c-a41266b8c2de', N'Fight Club', CAST(0x00008E5E00000000 AS DateTime), N'An insomniac office worker looking for a way to change his life crosses paths with a devil-may-care soap maker and they form an underground fight club that evolves into something much, much more...', N'http://ia.media-imdb.com/images/M/MV5BMjIwNTYzMzE1M15BMl5BanBnXkFtZTcwOTE5Mzg3OA@@._V1_SX214_.jpg', 139, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'378434b5-f96b-49fc-84ec-a4e12a89d5f2', N'La mejor pelicula ', CAST(0x0000861100000000 AS DateTime), N'Todos en uno', N'auth:blank', 35, N'Yo', N'VHS')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'bbdeb8a1-bda7-4972-b26b-a7df8f57a30d', N'Moneyball', CAST(0x00009F6700000000 AS DateTime), N'Oakland As general manager Billy Beanes successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.', N'http://ia.media-imdb.com/images/M/MV5BMjAxOTU3Mzc1M15BMl5BanBnXkFtZTcwMzk1ODUzNg@@._V1_SY317_CR0,0,214,317_.jpg', 133, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'364483cb-4f9f-4abf-b7e8-aeb9ba2e3c9a', N'Ted', CAST(0x0000A07F00000000 AS DateTime), N'As the result of a childhood wish, John Bennetts teddy bear, Ted, came to life and has been by Johns side ever since - a friendship thats tested when Lori, Johns girlfriend of four years, wants more from their relationship.', N'http://ia.media-imdb.com/images/M/MV5BMTQ1OTU0ODcxMV5BMl5BanBnXkFtZTcwOTMxNTUwOA@@._V1_SX214_.jpg', 106, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'e1459046-c551-4b3c-9902-afef4a0ecf44', N'Elite Squad', CAST(0x00009A7300000000 AS DateTime), N'1997, Captain Nascimento has to find a substitute for his occupation while trying to take down drug dealers and criminals before the Pope comes to Rio de Janeiro, Brazil.', N'http://ia.media-imdb.com/images/M/MV5BMTI1Mzc5NjI4Nl5BMl5BanBnXkFtZTcwNzYyMTQ5MQ@@._V1_SY317_CR0,0,214,317_.jpg', 115, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'5ed94ae7-98cf-4fc7-9761-b3623f669515', N'The Matrix', CAST(0x00008D9800000000 AS DateTime), N'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', N'http://ia.media-imdb.com/images/M/MV5BMjEzNjg1NTg2NV5BMl5BanBnXkFtZTYwNjY3MzQ5._V1_SY317_CR6,0,214,317_.jpg', 136, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'62e1a6f3-bb21-4d35-a545-b6c1af7a3a08', N'The Avengers', CAST(0x0000A04700000000 AS DateTime), N'Nick Fury of S.H.I.E.L.D. brings together a team of super humans to form The Avengers to help save the Earth from Loki and his army.', N'http://ia.media-imdb.com/images/M/MV5BMTk2NTI1MTU4N15BMl5BanBnXkFtZTcwODg0OTY0Nw@@._V1_SY317_CR0,0,214,317_.jpg', 143, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'b40c0660-cf91-44ff-8cce-bae2390c2aef', N'Seven Samurai', CAST(0x0000512800000000 AS DateTime), N'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', N'http://ia.media-imdb.com/images/M/MV5BNzg5Mzk5Nzc0NF5BMl5BanBnXkFtZTcwNjg3MDQzMQ@@._V1_SY317_CR5,0,214,317_.jpg', 141, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'dc96f0f3-8a40-4728-83ec-bd4588370ba5', N'You, Me and Dupree', CAST(0x000097FE00000000 AS DateTime), N'A best man (Wilson) stays on as a houseguest with the newlyweds, much to the couple''s annoyance.', N'http://ia.media-imdb.com/images/M/MV5BMTUxOTg0MzczOV5BMl5BanBnXkFtZTcwODk1MTQzMQ@@._V1_SY317_CR0,0,214,317_.jpg', 108, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'583efaf4-efe0-43aa-95ca-bd663d223aad', N'Avatar23', CAST(0x00009CE300000000 AS DateTime), N'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', N'http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SY317_CR0,0,214,317_.jpg', 162, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'e88be7c3-ac7d-4c41-b711-c02089fe6d88', N'The Lord of the Rings: The Fellowship of the Ring', CAST(0x0000917A00000000 AS DateTime), N'A meek hobbit of The Shire and eight companions set out on a journey to Mount Doom to destroy the One Ring and the dark lord Sauron.', N'http://ia.media-imdb.com/images/M/MV5BNTEyMjAwMDU1OV5BMl5BanBnXkFtZTcwNDQyNTkxMw@@._V1_SY317_CR1,0,214,317_.jpg', 178, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'93e3ad7b-6401-4396-8903-c54ea83468db', N'Toy Story', CAST(0x000088CF00000000 AS DateTime), N'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy''s room.', N'http://ia.media-imdb.com/images/M/MV5BMTgwMjI4MzU5N15BMl5BanBnXkFtZTcwMTMyNTk3OA@@._V1_SY317_CR12,0,214,317_.jpg', 81, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'6bcff649-57f4-4455-94d0-c73a52e0f3be', N'La Casa de los Mil Cuerpos', CAST(0x0000839100000000 AS DateTime), N'jfkalfjlañ', N'jfkla', 120, NULL, N'VHS')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'1b493915-c526-4c12-82dc-c7da9fa13870', N'Contact', CAST(0x00008B6A00000000 AS DateTime), N'Dr. Ellie Arroway, after years of searching, finds conclusive radio proof of intelligent aliens, who send plans for a mysterious machine.', N'http://ia.media-imdb.com/images/M/MV5BMjEyMDQxMTMxMF5BMl5BanBnXkFtZTcwNTU0ODcyMg@@._V1_SX214_AL_.jpg', 150, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'f268806a-864f-4efc-bded-c9434697917e', N'The Croods', CAST(0x0000A18900000000 AS DateTime), N'After their cave is destroyed, a caveman family must trek through an unfamiliar fantastical world with the help of an inventive boy.', N'http://ia.media-imdb.com/images/M/MV5BMTcyOTc2OTA1Ml5BMl5BanBnXkFtZTcwOTI1MjkzOQ@@._V1_SY317_CR0,0,214,317_.jpg', 98, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'96c0b01f-22a3-4598-8ae9-ccfdd52d9d2f', N'After Earth', CAST(0x0000A1CF00000000 AS DateTime), N'A crash landing leaves Kitai Raige and his father Cypher stranded on Earth, 1,000 years after events forced humanitys escape. With Cypher injured, Kitai must embark on a perilous journey to signal for help.', N'http://ia.media-imdb.com/images/M/MV5BMTY3MzQyMjkwMl5BMl5BanBnXkFtZTcwMDk2OTE0OQ@@._V1_SX214_.jpg', 100, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'15b9de14-b91f-4699-9ba4-cd7c5ac617e1', N'The Hangover Part III', CAST(0x0000A1C700000000 AS DateTime), N'This time, theres no wedding. No bachelor party. What could go wrong, right? But when the Wolfpack hits the road, all bets are off.', N'http://ia.media-imdb.com/images/M/MV5BMTA0NjE1MzMzODheQTJeQWpwZ15BbWU3MDY4MTQ3Mzk@._V1_SX214_.jpg', 100, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'daf39de9-6d79-442b-82a4-ced64165e98c', N'The Hunger Games', CAST(0x0000A01D00000000 AS DateTime), N'Katniss Everdeen voluntarily takes her younger sisters place in the Hunger Games, a televised fight to the death in which two teenagers from each of the twelve Districts of Panem are chosen at random to compete.', N'http://ia.media-imdb.com/images/M/MV5BMjA4NDg3NzYxMF5BMl5BanBnXkFtZTcwNTgyNzkyNw@@._V1_SX214_.jpg', 142, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'db3bf751-832c-4e2d-ab83-d4f2d16803ee', N'Pain & Gain', CAST(0x0000A1AC00000000 AS DateTime), N'A trio of bodybuilders in Florida get caught up in an extortion ring and a kidnapping scheme that goes terribly wrong.', N'http://ia.media-imdb.com/images/M/MV5BMTU0NDE5NTU0OV5BMl5BanBnXkFtZTcwMzI1OTMzOQ@@._V1._SX640_SY944_.jpg', 129, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'c7e4f614-7d20-4436-b8e4-d5117a7ea015', N'Bill & Teds Excellent Adventure', CAST(0x00007F2A00000000 AS DateTime), N'Two seemingly dumb teens struggle to prepare a historical presentation with the help of a time machine.', N'http://ia.media-imdb.com/images/M/MV5BMTk3Mjk5MzI3OF5BMl5BanBnXkFtZTcwMTY4MzcyNA@@._V1_SX214_.jpg', 90, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'075b8646-9b33-4bcb-a315-d5c1448d8374', N'Head of State', CAST(0x0000934A00000000 AS DateTime), N'When a presidential candidate dies unexpectedly in the middle of the campaign, Washington, D.C. alderman, Mays Gilliam is unexpectedly picked as his replacement.', N'http://ia.media-imdb.com/images/M/MV5BODY5NTQyMjA0Nl5BMl5BanBnXkFtZTYwNDMwMTk2._V1_SX214_.jpg', 95, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'4bda7b86-66ea-4ef7-90fd-d6dd38780d20', N'42', CAST(0x0000A28A00000000 AS DateTime), N'The life story of Jackie Robinson and his history-making signing with the Brooklyn Dodgers under the guidance of team executive Branch Rickey.', N'http://ia.media-imdb.com/images/M/MV5BMTQwMDU4MDI3MV5BMl5BanBnXkFtZTcwMjU1NDgyOQ@@._V1_SX214_.jpg', 128, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'd2ad74c0-56dd-4df7-afaa-d84fae34544a', N'SuperCampeones', CAST(0x0000860900000000 AS DateTime), N'dsasda', N'www.google.com', 130, N'Hola', N'DVD')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'6bec41d5-c22a-4263-890f-dad9fb9576a1', N'The Internship', CAST(0x0000A1F300000000 AS DateTime), N'Two salesmen whose careers have been torpedoed by the digital age find their way into a coveted internship at Google, where they must compete with a group of young, tech-savvy geniuses for a shot at employment.', N'http://ia.media-imdb.com/images/M/MV5BMjA3OTI4ODcxMl5BMl5BanBnXkFtZTcwMTI4NjkwOQ@@._V1_SY317_CR0,0,214,317_.jpg', 119, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'463d6f7a-327e-41f0-9bec-e06d880608c9', N'A Good Day to Die Hard', CAST(0x0000A21A00000000 AS DateTime), N'John McClane travels to Russia to help out his seemingly wayward son, Jack, only to discover that Jack is a CIA operative working to prevent a nuclear-weapons heist, causing the father and son to team up against underworld forces.', N'http://ia.media-imdb.com/images/M/MV5BMTcwNzgyNzUzOV5BMl5BanBnXkFtZTcwMzAwOTA5OA@@._V1_SX214_.jpg', 100, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'b9f3a0f3-8d86-4c59-9985-e0bbb732e04b', N'El hijo de la novia', CAST(0x0000A27400000000 AS DateTime), N'lala', N'asdasd', 45, N'Darin', N'BR')
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'2de3d2c3-7861-422a-870b-eaca0cde18b1', N'Man of Steel', CAST(0x0000A1DD00000000 AS DateTime), N'A young journalist is forced to confront his secret extraterrestrial heritage when Earth is invaded by members of his race.', N'http://ia.media-imdb.com/images/M/MV5BMjI5OTYzNjI0Ml5BMl5BanBnXkFtZTcwMzM1NDA1OQ@@._V1_SY317_CR1,0,214,317_.jpg', 148, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'829171fd-48e2-4d18-852b-ec5ca37cd73a', N'Zoolander', CAST(0x0000912800000000 AS DateTime), N'At the end of his career, a clueless fashion model is brainwashed to kill the Prime Minister of Malaysia.', N'http://ia.media-imdb.com/images/M/MV5BMTIwMjU2MDIwNF5BMl5BanBnXkFtZTcwNjAyNzQyMQ@@._V1_SY317_CR6,0,214,317_.jpg', 89, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'77d5ca6a-b44a-43e8-bcba-f4955f22eb76', N'MeteGol', CAST(0x0000A27000000000 AS DateTime), N'jugadores', N'mete', 45, N'Capanella', NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'39af6201-050e-4b1f-906d-f5b9920fb9b5', N'Despicable Me', CAST(0x00009DAE00000000 AS DateTime), N'When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.', N'http://ia.media-imdb.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_SY317_CR0,0,214,317_.jpg', 95, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'64c285c8-80a7-4ec0-9d32-fcd19010dac6', N'Iron Man 3', CAST(0x0000A1B300000000 AS DateTime), N'When Tony Starks world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.', N'http://ia.media-imdb.com/images/M/MV5BMjIzMzAzMjQyM15BMl5BanBnXkFtZTcwNzM2NjcyOQ@@._V1._SX640_SY948_.jpg', 130, NULL, NULL)
INSERT [dbo].[Movie] ([Id], [Name], [ReleaseDate], [Plot], [CoverLink], [Runtime], [Director], [Format]) VALUES (N'282da36b-2d4a-4544-ba33-fe0d8e2d76f1', N'The Dark Knight', CAST(0x00009ADD00000000 AS DateTime), N'When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level.', N'http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY317_CR0,0,214,317_.jpg', 152, NULL, NULL)
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'6202ce31-31f8-4b67-853e-0da0beb18d9d', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'6202ce31-31f8-4b67-853e-0da0beb18d9d', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'6202ce31-31f8-4b67-853e-0da0beb18d9d', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'254decb1-9e2e-45ad-a8a3-178646280d1a', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'cc1fc2c2-c34f-44bf-b4e5-18e99120bd35', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'cc1fc2c2-c34f-44bf-b4e5-18e99120bd35', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'cc1fc2c2-c34f-44bf-b4e5-18e99120bd35', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'563a05f2-bdc4-4fba-8563-192a036cfee9', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'abd46fbe-b61d-4892-a550-1965ab0de8e5', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'abd46fbe-b61d-4892-a550-1965ab0de8e5', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5afe6d05-4e14-4620-ad22-1c69431afd18', N'02d80b55-e486-4f22-a245-4289f19219d8')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5afe6d05-4e14-4620-ad22-1c69431afd18', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5afe6d05-4e14-4620-ad22-1c69431afd18', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'1cd745d1-e09d-4396-bb7c-1d6bcf19c85d', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'9fb809c6-eac2-436b-9002-22d28b8f701f', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'9fb809c6-eac2-436b-9002-22d28b8f701f', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd519454c-24fd-45b0-9d5b-2b9541298e22', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'8fcd30dd-906b-4d4f-ac50-3054f002d086', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'8fcd30dd-906b-4d4f-ac50-3054f002d086', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'8fcd30dd-906b-4d4f-ac50-3054f002d086', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'f68be77b-bf83-440d-81c7-36e89adff423', N'02d80b55-e486-4f22-a245-4289f19219d8')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'f68be77b-bf83-440d-81c7-36e89adff423', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'f68be77b-bf83-440d-81c7-36e89adff423', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'3180cae9-73c7-47ac-ad4e-39a03432d689', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'3924c401-6f47-4718-858b-39c1f8b68a27', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'03357063-8b4b-49bc-9dea-47d1337f4de7', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd0ce20c8-bc5c-40c2-a394-4abd0cc9e674', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd0ce20c8-bc5c-40c2-a394-4abd0cc9e674', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd0ce20c8-bc5c-40c2-a394-4abd0cc9e674', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'c72e9452-1fcf-4071-a257-4faea871c507', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'c72e9452-1fcf-4071-a257-4faea871c507', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'c72e9452-1fcf-4071-a257-4faea871c507', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'99889e95-0c13-4c9e-ad69-54d9cf43b301', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'99889e95-0c13-4c9e-ad69-54d9cf43b301', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'99889e95-0c13-4c9e-ad69-54d9cf43b301', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'80477c84-2d1f-441e-ba76-58ea64a6af7b', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'443b4dd0-7342-45ef-8f96-59bbede3b9db', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'eb14d4a9-27a8-470b-8e16-5a40c86347eb', N'02d80b55-e486-4f22-a245-4289f19219d8')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'eb14d4a9-27a8-470b-8e16-5a40c86347eb', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'eb14d4a9-27a8-470b-8e16-5a40c86347eb', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'4a0be42e-f2a8-4d8a-a351-5aa72f51cf24', N'345dd0ea-7625-4b3a-810f-bac8a4770827')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'4a0be42e-f2a8-4d8a-a351-5aa72f51cf24', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'9c786127-474f-4dc4-921f-5ce67d3f8615', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'9c786127-474f-4dc4-921f-5ce67d3f8615', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd27c5707-95e3-42b6-a030-66abf44ad725', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd27c5707-95e3-42b6-a030-66abf44ad725', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd27c5707-95e3-42b6-a030-66abf44ad725', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'0bbdebf9-f1f2-4869-b01c-6766cf56c23a', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'0bbdebf9-f1f2-4869-b01c-6766cf56c23a', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'0bbdebf9-f1f2-4869-b01c-6766cf56c23a', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'ad722462-4872-42ef-babb-68ca3d98c395', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'ad722462-4872-42ef-babb-68ca3d98c395', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'ad722462-4872-42ef-babb-68ca3d98c395', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'42487f50-83ff-4e02-9e41-6bad7aac0576', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'4e5a55d8-7863-43f9-a3dc-6f66e124382e', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'4e5a55d8-7863-43f9-a3dc-6f66e124382e', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'4e5a55d8-7863-43f9-a3dc-6f66e124382e', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'3cdf4f5a-b6d1-474e-b391-70b2a9b1c3e3', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'3cdf4f5a-b6d1-474e-b391-70b2a9b1c3e3', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'3cdf4f5a-b6d1-474e-b391-70b2a9b1c3e3', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd6c7171d-b01b-4355-af29-72de692cce51', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd6c7171d-b01b-4355-af29-72de692cce51', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd6c7171d-b01b-4355-af29-72de692cce51', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'2bf87c8b-a1d2-47b8-ac29-74815ec3a29d', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'2bf87c8b-a1d2-47b8-ac29-74815ec3a29d', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'1c7894e7-769e-4d0a-9567-7a1dab60d66d', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5b861f91-ea02-41e4-be58-7a8c258ac066', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5b861f91-ea02-41e4-be58-7a8c258ac066', N'345dd0ea-7625-4b3a-810f-bac8a4770827')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'3fdf6520-f1d3-4232-bece-7cdaec20847c', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'57c04b89-11ee-426f-af50-7e77416636ea', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'905d90be-c8a0-40e0-b9ca-819f63325012', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'ba59aa77-d1ad-447b-bbb0-83c1c195a49f', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'ba59aa77-d1ad-447b-bbb0-83c1c195a49f', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'ba59aa77-d1ad-447b-bbb0-83c1c195a49f', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'8f82989b-90f0-4c13-93cc-861e179d134e', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'8f82989b-90f0-4c13-93cc-861e179d134e', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'62c088eb-a6bb-4bdb-bcbd-8708f71991a8', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'62c088eb-a6bb-4bdb-bcbd-8708f71991a8', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'74cab39f-b2c3-4913-8d8f-8c00d796ce5d', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'f7d291d6-6899-4f2f-a554-96e7c84da0ab', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'f7d291d6-6899-4f2f-a554-96e7c84da0ab', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5f68df91-1c0d-4df3-9d3c-97b894b33295', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5f68df91-1c0d-4df3-9d3c-97b894b33295', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'37fca1c8-f9b2-4b77-9b56-9826f60ac8ba', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'37fca1c8-f9b2-4b77-9b56-9826f60ac8ba', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'37fca1c8-f9b2-4b77-9b56-9826f60ac8ba', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'19d26c97-6e3c-40a6-bf2f-9c64aee1e934', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'19d26c97-6e3c-40a6-bf2f-9c64aee1e934', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'19d26c97-6e3c-40a6-bf2f-9c64aee1e934', N'02d80b55-e486-4f22-a245-4289f19219d8')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'a82c5538-d6ad-47b4-a53c-a41266b8c2de', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'378434b5-f96b-49fc-84ec-a4e12a89d5f2', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'bbdeb8a1-bda7-4972-b26b-a7df8f57a30d', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'bbdeb8a1-bda7-4972-b26b-a7df8f57a30d', N'345dd0ea-7625-4b3a-810f-bac8a4770827')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'364483cb-4f9f-4abf-b7e8-aeb9ba2e3c9a', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'364483cb-4f9f-4abf-b7e8-aeb9ba2e3c9a', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'e1459046-c551-4b3c-9902-afef4a0ecf44', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'e1459046-c551-4b3c-9902-afef4a0ecf44', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'e1459046-c551-4b3c-9902-afef4a0ecf44', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5ed94ae7-98cf-4fc7-9761-b3623f669515', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5ed94ae7-98cf-4fc7-9761-b3623f669515', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
GO
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'5ed94ae7-98cf-4fc7-9761-b3623f669515', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'62e1a6f3-bb21-4d35-a545-b6c1af7a3a08', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'b40c0660-cf91-44ff-8cce-bae2390c2aef', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'b40c0660-cf91-44ff-8cce-bae2390c2aef', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'dc96f0f3-8a40-4728-83ec-bd4588370ba5', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'583efaf4-efe0-43aa-95ca-bd663d223aad', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'583efaf4-efe0-43aa-95ca-bd663d223aad', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'583efaf4-efe0-43aa-95ca-bd663d223aad', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'e88be7c3-ac7d-4c41-b711-c02089fe6d88', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'e88be7c3-ac7d-4c41-b711-c02089fe6d88', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'e88be7c3-ac7d-4c41-b711-c02089fe6d88', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'93e3ad7b-6401-4396-8903-c54ea83468db', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'93e3ad7b-6401-4396-8903-c54ea83468db', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'93e3ad7b-6401-4396-8903-c54ea83468db', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'6bcff649-57f4-4455-94d0-c73a52e0f3be', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'1b493915-c526-4c12-82dc-c7da9fa13870', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'1b493915-c526-4c12-82dc-c7da9fa13870', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'1b493915-c526-4c12-82dc-c7da9fa13870', N'02d80b55-e486-4f22-a245-4289f19219d8')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'f268806a-864f-4efc-bded-c9434697917e', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'f268806a-864f-4efc-bded-c9434697917e', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'f268806a-864f-4efc-bded-c9434697917e', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'96c0b01f-22a3-4598-8ae9-ccfdd52d9d2f', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'96c0b01f-22a3-4598-8ae9-ccfdd52d9d2f', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'96c0b01f-22a3-4598-8ae9-ccfdd52d9d2f', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'15b9de14-b91f-4699-9ba4-cd7c5ac617e1', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'daf39de9-6d79-442b-82a4-ced64165e98c', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'daf39de9-6d79-442b-82a4-ced64165e98c', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'daf39de9-6d79-442b-82a4-ced64165e98c', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'db3bf751-832c-4e2d-ab83-d4f2d16803ee', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'db3bf751-832c-4e2d-ab83-d4f2d16803ee', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'db3bf751-832c-4e2d-ab83-d4f2d16803ee', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'c7e4f614-7d20-4436-b8e4-d5117a7ea015', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'c7e4f614-7d20-4436-b8e4-d5117a7ea015', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'c7e4f614-7d20-4436-b8e4-d5117a7ea015', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'075b8646-9b33-4bcb-a315-d5c1448d8374', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'4bda7b86-66ea-4ef7-90fd-d6dd38780d20', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'4bda7b86-66ea-4ef7-90fd-d6dd38780d20', N'345dd0ea-7625-4b3a-810f-bac8a4770827')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'd2ad74c0-56dd-4df7-afaa-d84fae34544a', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'6bec41d5-c22a-4263-890f-dad9fb9576a1', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'463d6f7a-327e-41f0-9bec-e06d880608c9', N'02d80b55-e486-4f22-a245-4289f19219d8')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'463d6f7a-327e-41f0-9bec-e06d880608c9', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'463d6f7a-327e-41f0-9bec-e06d880608c9', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'b9f3a0f3-8d86-4c59-9985-e0bbb732e04b', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'2de3d2c3-7861-422a-870b-eaca0cde18b1', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'2de3d2c3-7861-422a-870b-eaca0cde18b1', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'2de3d2c3-7861-422a-870b-eaca0cde18b1', N'539bf1aa-2fff-4e98-9d86-db51ff9249c2')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'829171fd-48e2-4d18-852b-ec5ca37cd73a', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'77d5ca6a-b44a-43e8-bcba-f4955f22eb76', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'39af6201-050e-4b1f-906d-f5b9920fb9b5', N'61563c72-44a0-43f5-8045-bc43e984989f')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'39af6201-050e-4b1f-906d-f5b9920fb9b5', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'39af6201-050e-4b1f-906d-f5b9920fb9b5', N'889fe0f3-3e39-45bb-a8b1-e1389c403a92')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'64c285c8-80a7-4ec0-9d32-fcd19010dac6', N'386b09e3-c077-4ea3-816f-1c7f09b469d4')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'64c285c8-80a7-4ec0-9d32-fcd19010dac6', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'64c285c8-80a7-4ec0-9d32-fcd19010dac6', N'a25802d3-9543-4d45-bbdc-cb0a4e376b70')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'282da36b-2d4a-4544-ba33-fe0d8e2d76f1', N'1e61e21a-0a12-4401-81f4-14ef41a172cd')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'282da36b-2d4a-4544-ba33-fe0d8e2d76f1', N'e7f89cdd-b01c-4955-9e17-ae30b70e52ad')
INSERT [dbo].[Movie_Genre] ([MovieId], [GenreId]) VALUES (N'282da36b-2d4a-4544-ba33-fe0d8e2d76f1', N'38f4926e-3199-4e9e-8b97-cbadcfd09930')
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (3, N'cfbarragan')
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (2, N'Rogelio')
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (1, N'user1')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A1DD0142891E AS DateTime), NULL, 1, CAST(0x0000A26F0144DDA0 AS DateTime), 0, N'AECgsIxDj0tOQNHb6AOMqsVMy9rXJ1BqOmZPsFjcRmcjJvL95by74N5gKQAqnFyu2Q==', CAST(0x0000A1DD0142891E AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A21300D1F776 AS DateTime), NULL, 1, NULL, 0, N'ABZpw8CFFhCsCtDf/aQKzDGzCdrOpu73cHpHnzV1nO44qkPIUAZ7pUtS2Cvjf3fZUw==', CAST(0x0000A21300D1F776 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (3, CAST(0x0000A497018AEE90 AS DateTime), NULL, 1, NULL, 0, N'APRjIt8GGnzvSU8025UYTJGfrEOUtJVTCWa7t79owGarAM43i5cXbQ+C7IZRgv2Pcg==', CAST(0x0000A497018AEE90 AS DateTime), N'', NULL, NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__UserProf__C9F2845629572725]    Script Date: 9/9/2015 10:07:13 AM ******/
ALTER TABLE [dbo].[UserProfile] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__webpages__8A2B6160398D8EEE]    Script Date: 9/9/2015 10:07:13 AM ******/
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[GenreMovies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GenreMovies_dbo.Genres_Genre_Id] FOREIGN KEY([Genre_Id])
REFERENCES [dbo].[Genres] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GenreMovies] CHECK CONSTRAINT [FK_dbo.GenreMovies_dbo.Genres_Genre_Id]
GO
ALTER TABLE [dbo].[GenreMovies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GenreMovies_dbo.Movies_Movie_Id] FOREIGN KEY([Movie_Id])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GenreMovies] CHECK CONSTRAINT [FK_dbo.GenreMovies_dbo.Movies_Movie_Id]
GO
ALTER TABLE [dbo].[Movie_Genre]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Genre_Genre] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([Id])
GO
ALTER TABLE [dbo].[Movie_Genre] CHECK CONSTRAINT [FK_Movie_Genre_Genre]
GO
ALTER TABLE [dbo].[Movie_Genre]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Genre_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie_Genre] CHECK CONSTRAINT [FK_Movie_Genre_Movie]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO

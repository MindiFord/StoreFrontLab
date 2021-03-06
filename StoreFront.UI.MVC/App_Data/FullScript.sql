IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Status]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_PricePer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Employees]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Departments]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[Status]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[PricePer]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[PricePer]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/13/2022 9:42:11 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DeptID] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[DeptID] [int] NOT NULL,
	[DirectReportID] [int] NULL,
	[FName] [varchar](20) NOT NULL,
	[LName] [varchar](20) NOT NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [char](2) NULL,
	[Zip] [char](6) NULL,
	[Phone] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PricePer]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PricePer](
	[PriceID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](20) NOT NULL,
 CONSTRAINT [PK_PricePer] PRIMARY KEY CLUSTERED 
(
	[PriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[ProductDesc] [varchar](max) NULL,
	[UnitPrice] [smallmoney] NOT NULL,
	[PriceID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 1/13/2022 9:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202111051755554_InitialCreate', N'JunisGrocery.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC5DA44ED2A6DD5CB04E167D5BD012ED102B515A914A1314FDB23EF493FA0B2525EAC68B2EB6623BC5020B8B1C9E190E87E47038CCBF7FFF337EF718F8D6038C090AF1C43E18EDDB16C46EE821BC9CD8095D7CFFC67EF7F6EBAFC6675EF0687DCCE98E381D6B89C9C4BEA7343A761CE2DEC300905180DC3824E1828EDC307080173A87FBFB3F3A07070E641036C3B2ACF187045314C0F4837D4E43ECC28826C0BF0C3DE81351CE6A6629AA7505024822E0C289FD6B8211F9390E5D183F8DEE2E46971FA7A3AC956D9DF808308966D05FD816C038A48032798FEF089CD138C4CB59C40A807FFB144146B7003E81A21FC72579D72EED1FF22E3965C31CCA4D080D839E80074742478EDC7C254DDB850E9916CF98B6E913EF75AAC9897DE1C1B4E843E83305C80C8FA77ECC8927F665C1E2844457908EF286A30CF23C66707F84F1E7511571CFEADC6EAFB0A9C3D13EFFB7674D139F26319C6098D018F87BD64D32F791FB1B7CBA0D3F433C393A982F8EDEBC7A0DBCA3D73FC0A357D59EB2BE32BA5A012BBA89C308C64C36B828FA6F5B4EBD9D23372C9A55DA645A61B6C4A6876D5D82C7F7102FE93D9B38876F6CEB1C3D422F2F11C67587119B4DAC118D13F67995F83E98FBB0A8771A79F2FF1BB81EBE7A3D08D72BF08096E9D04BFCD9C489D9BCFA00FDB496DCA3289B5EB5F1FE24C8CEE330E0DF75FBCA6A3FCDC2247679674223C92D889790D6A51B3BA5F17632690E35BC59E7A8BB6FDA5C52D5BCB5A4BC43ABCC849CC5A667432EEFF3F2ED6C712751C4062F352DAE912683336F5A230965CFD2D096A674D0D59430EBE2FF79653C0B00F207581A3B7061DEC902C5012C7AF953C80C11E0DE32DF0042D8CAE0FD02C87D83E8ECE700A2CFA09BC4CC60671404D1B373BBB90F31BC4A82399F079BE335D8D0DCFE119E039786F119E6ADD6C67B1FBA9FC3849E61EF14507847DD1C907FDEA2A03BC020E29CB82E24E49C1933F4A62173BE73C00B4C8F0E7BC3F1856ADBAEC9D40728D0FB26D292FA29272DFD133D85E2A318C8747E4A93A8EFC325C2DD44CD49CDA26614ADA20AB2BEA272B06E920A4AB3A02941AB9C19D5609E5F3A42C3BB7E29ECEEFB7EEB6DDEA6B5A0A2C6195B21E1CF10C3982D63DE0DA014C6B81C812EEBC6369C8574F838D367DF9B524E1F819F0CCD6AA5D9902E02C3CF861476F767432A262B7E401EF74A3A1C88726206DF895E7FD66A9F7392649B9E0EB56E6E9AF966D600D37439212474513A0B34A13011C8A8CBCF7C38AB3DAA91F5468E8CB08E3143477CCB6325AC6FB66C54D7F814FA9042EBC4CD428553405CE0A96A641DF27A0896EFA81AC1CA08495DB8EF149ECCD261CC1B017E08226CA6224CD56981B08B22E0B76A496AD9710BE37D2F78C835A7308298336CD54417E6FA800817A0E0230D4A9B86C64EC5E29A0DD1E0B59AC6BCCD852DC75D89536CC4265B7C67835D0AFFED590CB359631B30CE66957411C018DCDB86818AB34A5703900F2EBB66A0D289C960A0C2A5DA8881D635B60503ADABE4C519687644ED3AFED27975D7CCB37E50DEFCB6DEA8AE2DD8664D1F3B669A99EFC9DA50D602C6AA799ECE79257CA49AC31993539CCF8870756513E1E03348EB219BD2DFD5FAA14E33886C444D80A5A1B5808A6B41054899503D84CB63798DD2092FA2076C1E776B84156BBF045BB10115BB7A3D5A21345FA2CAC6D9E9F451F4ACB006C5C83B1D162A381A839017AF7AC73B28C514975515D3C517EEE30D573A2606A341412D9EAB4149796706D7526E9AED5AD239647D5CB2B5B424B94F062DE59D195C4BC246DB95A4710A7AB8056BA9A8BE850F34D9F24847B1DB14756327CB9E120563C7906635BE045184F0B29276254AAC59967335FD7ED63F0929C8301C976872910A690B4E348CC1124AB58C3593F41CC5849E020AE680C779A65EA09069F756C3F29FB3AC6E9FEA20E6FB404ECD7F672D1A2EF36B7BAEEA9408AC73D6D3807B3669385D6307FAE6164F87033E883511FC69E82701363B5AE6D6D93D5EB57D56A2228C1D497EC59152B4A6B8BBF521E83440EAE41878B00A7F66F501334398D49E7BA355C59B3C54334A1EB0AAA29882585B1B409363B3D2A0C9BE63FF316B45789E79261256AA00A2A8274625E74101ABD47547ADA7A55431EB35DD11A5DC932AA454D543CA6A86494DC86AC54A78068DEA29BA7350734AAAE86A6D77644D7649155A53BD02B64666B9AE3BAA2601A50AACA9EE8E5D66A3C88BE90EEF64C613CDDA5B5976F85D6F2F33603CCFCA38CC5658B9E3AF02558A7B62895B7C054C94EFA455194F806B5B5516FB58CFAA0C18E695A8764B5E5F881AAFF6CD98B5ABEFDA62DF74F56FC6EB67BBCF6A21CA41502629B8170742E9E0371687B0F64738CAA92C23B1AD5C8D6CA37F221406234E309A7DF1A73E827C59CF092E01460B486896EE611FEE1F1C4AEF7776E72D8D4388E76B0EB1A60735F531DB40E6167E00B17B0F62358F628DF72625A812A2BEC01E7C9CD87FA6AD8ED36807FF9516EF5917E40EA32F09ABB88D1368FDA5E6850E937FDFE1C54721E85F2FE2294577955FFCFE296BBA675DC76C3A1D5BFB92A25719FEFA038B5ED2644DD79066E567172F77B6D5DE306851A5D9B2FA938539A2833C57C8A5FC26008FDFF6154DFB24612D44CDB383A1F00651A1E959C12A58C627051EFBA4E993827E9DD53F31584534E3F30284FB83C98F0BBA2F4379CB2DEE439A83D32696A454CFADC9D96B656A6E7B6F5272B8D79AE86A9E760FB84173B1D773515E588EF3605BA726857930EC6DDAFDB3E72DEF4AAA72E9B46F3743799349C90D174DFFAB5CE41DC89ED364036D3FE378D3B6668A04EF78DA66BFBCE21D3336B1CD6F3F7B78D3C6660A10EFB8B1F5CA11DE315BDBD6FEB9654BEBBC856E3DE3574D5E32DCE8E8A2C86D19BD59C89D1DFFE7213382CCA3CC1E62EA53C89AD25F5B18962466A6E6DC3599B1327114BE0A4533DB7E7D151B7E6367054D335B43C667136FB1FE37F21634CDBC0D7994DBC845D66632EAF2C35BD6B1A6B4AA97947B5CEB494BAA7B9BCFDA783DFF92528D07514A6DF6186E975F4E66F1202A1972EAF4C824562F8AD9DE59F99B8E6CFF26685942F0BFF088A15BDB350B9A0BBC08F3CD5B9228279122349790028F6DA92731450BE0D21B9EBE4048FA923C0DEAF16B9039F42EF07542A384B22EC360EED7025EDC0968E29FA64BD7651E5F47FC8B0CD1052626E281FB6BFC53827CAF90FB5C1313324070EF42847BF958521EF65D3E15485721EE0824D4573845B730887C0646AEF10C3CC0556463E6F71E2E81FB5446004D20ED035157FBF81481650C022230CAF6EC93D9B0173CBEFD0F15EDDAC7DA540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'138112be-9d51-4815-a9e8-721f3840217f', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f4aa391-7271-4eab-8458-1b4e07e9cc28', N'138112be-9d51-4815-a9e8-721f3840217f')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0f4aa391-7271-4eab-8458-1b4e07e9cc28', N'admin@junisgrocery.com', 0, N'ANOlrdD7rmk1rKrJuR7eNTkXI85DPRguput/u7v0Acr/BEHHap4W41UoKln+DmDQGA==', N'a2f697d7-f975-4a53-b875-fe41829276f4', NULL, 0, 0, NULL, 1, 0, N'admin@junisgrocery.com')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Baby')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Bakery')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Beverages')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'CanJarGoods')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Condiments')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Dairy')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'DryGoods')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (8, N'Frozen')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (9, N'MeatFish')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (10, N'Produce')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (11, N'NonFood')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (12, N'Other')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DeptID], [Department]) VALUES (1, N'Administration')
INSERT [dbo].[Departments] ([DeptID], [Department]) VALUES (2, N'Stock')
INSERT [dbo].[Departments] ([DeptID], [Department]) VALUES (3, N'PickAndPack')
INSERT [dbo].[Departments] ([DeptID], [Department]) VALUES (4, N'Shipping')
INSERT [dbo].[Departments] ([DeptID], [Department]) VALUES (5, N'Marketing')
INSERT [dbo].[Departments] ([DeptID], [Department]) VALUES (6, N'IT')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (1, 1, NULL, N'Alwen', N'Ulrica', N'76196 Forest Run Place', N'Shawnee Mission', N'KS', N'66225 ', N'913-158-9237')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (2, 2, 1, N'Willi', N'Youd', N'68597 Holmberg Junction', N'Kansas City', N'KS', N'66112 ', N'913-320-2100')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (3, 3, 1, N'Dorotea', N'Gatecliff', N'2 Hook Point', N'Wichita', N'KS', N'67205 ', N'316-188-0708')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (4, 4, 1, N'Nisse', N'Mannin', N'47899 Grover Crossing', N'Kansas City', N'KS', N'66105 ', N'913-828-5358')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (5, 5, 1, N'Ali', N'Bourthouloume', N'186 Springs Court', N'Kansas City', N'MO', N'64187 ', N'816-193-2167')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (6, 6, 1, N'Packston', N'Benardette', N'056 Macpherson Place', N'Topeka', N'KS', N'66611 ', N'785-896-8484')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (7, 2, 2, N'Corie', N'Brosio', N'1 Cody Lane', N'Saint Louis', N'MO', N'63126 ', N'636-238-7074')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (8, 2, 2, N'Adeline', N'Joyner', N'324 Coleman Park', N'Wichita', N'KS', N'67220 ', N'316-471-3961')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (9, 2, 2, N'Cally', N'Ambroz', N'809 Hanover Terrace', N'Kansas City', N'MO', N'64118 ', N'816-743-5861')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (10, 2, 2, N'Charline', N'Slot', N'594 Hoepker Circle', N'Kansas City', N'KS', N'66103 ', N'913-644-6213')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (11, 2, 2, N'Leon', N'Downes', N'225 Daystar Terrace', N'Kansas City', N'KS', N'66102 ', N'913-962-5766')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (12, 2, 2, N'Wally', N'Atger', N'7193 Mifflin Avenue', N'Kansas City', N'MO', N'64179 ', N'816-105-0618')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (13, 2, 2, N'Hubert', N'Causbey', N'002 Lunder Point', N'Kansas City', N'MO', N'64136 ', N'816-651-5919')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (14, 2, 2, N'Elna', N'Jeandet', N'0 Maryland Road', N'Kansas City', N'MO', N'64144 ', N'816-103-1183')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (15, 2, 2, N'James', N'Feely', N'41301 Stuart Place', N'Independence', N'MO', N'64054 ', N'816-783-2209')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (16, 2, 2, N'Nomi', N'Scoggans', N'4 Vera Trail', N'Wichita', N'KS', N'67230 ', N'316-400-8670')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (17, 3, 3, N'Odey', N'Meadway', N'24537 Marquette Plaza', N'Kansas City', N'MO', N'64112 ', N'816-859-6142')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (18, 3, 3, N'Linnea', N'Edelheit', N'8295 Sauthoff Lane', N'Kansas City', N'MO', N'64126 ', N'816-945-9016')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (19, 3, 3, N'Carrissa', N'Foskin', N'45 Porter Circle', N'Kansas City', N'MO', N'64150 ', N'816-147-6397')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (20, 3, 3, N'Natalia', N'Ricardo', N'9 Esch Road', N'Kansas City', N'MO', N'64121 ', N'816-150-2968')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (21, 3, 3, N'Margaret', N'Doxsey', N'185 Reindahl Place', N'Topeka', N'KS', N'66622 ', N'785-578-6680')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (22, 3, 3, N'Austin', N'Dunbobin', N'79 Eastwood Court', N'Shawnee Mission', N'KS', N'66286 ', N'913-165-1103')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (23, 3, 3, N'Franciska', N'Chalmers', N'82 Oak Road', N'Wichita', N'KS', N'67210 ', N'316-568-5107')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (24, 3, 3, N'Pierre', N'Ludlam', N'41 Farragut Terrace', N'Kansas City', N'KS', N'66160 ', N'913-190-6808')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (25, 3, 3, N'Jacky', N'Cutch', N'91268 Oriole Way', N'Kansas City', N'MO', N'64190 ', N'816-586-9042')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (26, 3, 3, N'Madlin', N'Abramowitz', N'67597 Straubel Place', N'Topeka', N'KS', N'66611 ', N'785-582-9793')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (27, 3, 3, N'Kendal', N'Fahey', N'86939 Vidon Park', N'North Kansas City', N'MO', N'64116 ', N'816-226-2697')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (28, 3, 3, N'Sascha', N'Izak', N'83554 Emmet Plaza', N'Topeka', N'KS', N'66622 ', N'785-211-6160')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (29, 3, 3, N'Dan', N'Buckberry', N'36 Straubel Avenue', N'Saint Joseph', N'MO', N'64504 ', N'816-318-3501')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (30, 3, 3, N'Clement', N'McMenamin', N'18 Division Street', N'Shawnee Mission', N'KS', N'66225 ', N'913-960-6605')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (31, 3, 3, N'Loree', N'Sempill', N'6 Tennessee Alley', N'Gladstone', N'MO', N'64118 ', N'816-266-9619')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (32, 3, 3, N'Glynda', N'MacConnal', N'84061 Mallory Parkway', N'Liberty', N'MO', N'64067 ', N'816-183-7638')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (33, 3, 3, N'Abby', N'Durno', N'97385 Golf View Hill', N'Kansas City', N'MO', N'64121 ', N'816-792-0040')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (34, 3, 3, N'Eleonore', N'O''Codihie', N'4303 Eliot Court', N'Kansas City', N'MO', N'64143 ', N'816-787-4830')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (35, 3, 3, N'Grannie', N'Sampey', N'14 Sheridan Road', N'Jefferson City', N'MO', N'65110 ', N'573-732-2715')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (36, 3, 3, N'Adelina', N'Awton', N'0 Heffernan Avenue', N'Kansas City', N'KS', N'66210 ', N'913-787-3539')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (37, 4, 4, N'Ellwood', N'Mozzi', N'6173 Monterey Drive', N'Kansas City', N'MO', N'64101 ', N'816-324-7167')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (38, 4, 4, N'Dorree', N'Dungate', N'8 Briar Crest Lane', N'Topeka', N'KS', N'66617 ', N'785-390-6635')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (39, 4, 4, N'Kelly', N'Dilliway', N'49 Eastwood Street', N'Lees Summit', N'MO', N'64082 ', N'816-167-7997')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (40, 4, 4, N'Patrick', N'Eustes', N'1746 Green Junction', N'Topeka', N'KS', N'66617 ', N'785-178-6257')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (41, 5, 5, N'Bryan', N'Sellens', N'47293 Parkside Center', N'Kansas City', N'MO', N'64136 ', N'816-819-0395')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (42, 5, 5, N'Stephanie', N'Whittington', N'695 Red Cloud Center', N'Kansas City', N'MO', N'64117 ', N'816-104-8815')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (43, 5, 5, N'Emilie', N'Bottrill', N'492 Lighthouse Bay Way', N'North Kansas City', N'MO', N'64116 ', N'816-757-2699')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (44, 6, 6, N'Cesaro', N'Castletine', N'7 South Parkway', N'Shawnee Mission', N'KS', N'66205 ', N'913-120-3298')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (45, 6, 6, N'Jacquetta', N'Paterson', N'23557 Service Pass', N'Kansas City', N'MO', N'64153 ', N'816-836-1370')
INSERT [dbo].[Employees] ([EmployeeID], [DeptID], [DirectReportID], [FName], [LName], [Address], [City], [State], [Zip], [Phone]) VALUES (46, 6, 6, N'Eleonore', N'Gornar', N'22 Grim Terrace', N'Independence', N'MO', N'64054 ', N'816-242-5306')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[PricePer] ON 

INSERT [dbo].[PricePer] ([PriceID], [Description]) VALUES (1, N'PerItem')
INSERT [dbo].[PricePer] ([PriceID], [Description]) VALUES (2, N'PerPound')
SET IDENTITY_INSERT [dbo].[PricePer] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (1, N'Bagels, Mini', 2, N'af29b4f4-5ab9-417e-bba7-86a58d1e558b.jpeg', N'Pepperidge Farm Mini Bagels - Plain - 12 ct', 4.2500, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (2, N'Myers Planters Punch', 3, N'c14feacc-501a-480d-a222-84bfb4867c3d.jpg', N'Myer''s Planters'' Punch 750ml Glass Bottle', 24.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (3, N'Apricot Spread', 4, N'cdd0049c-0b50-4f69-b117-7d3ad178a980.jpeg', N'Smuckers Simply Apricot Spread - 10oz', 2.4500, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (4, N'Flexible Straws', 11, N'62596704-6743-4d21-9e6e-0bab7d48cda5.jpeg', N'Faberware Flexible Straws - 100', 1.9800, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (5, N'Club Soda', 3, N'd8e5dd24-adde-4712-a6e2-8bf82eac7b44.jpeg', N'Canada Dry Club Soda - 1L Bottle', 1.3800, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (6, N'Ice Cream Bar - Oreo Sandwich', 8, N'7d0cccb9-da73-4ab7-ae09-6fd96c2ef590.jpeg', N'Good Humor Cookies N Creme Frozen Dessert Bar Loaded with Chocolate Cookie Crumbles - 6 Pack', 3.7700, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (7, N'Smoked Paprika', 5, N'88b02148-5ca6-48a6-b5b9-8fe0abc6eeac.jpeg', N'Spice Islands Smoked Papirka 2.1oz Jar', 4.2900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (8, N'Chili Powder - Hot Mexican', 5, N'09839b5b-82a3-42af-81a7-0164536a7960.jpeg', N'McCormick Hot Mexican Chili Powder - 2.5oz', 2.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (9, N'Cream Fudge', 12, N'a3b44f9a-1046-4baf-ae38-71965dc92de2.jpeg', N'Krowski Milanowskie Milky Cream Fudge', 12.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (10, N'Parmesan Cheese - Shredded', 6, N'c24dfbda-1f8a-4b72-9ad0-3b352f82fda7.jpeg', N'BelGioioso Freshly Shredded Parmesan Cheese - 8oz Bag', 3.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (11, N'Coconut - Whole', 10, N'be48dfb2-d262-4d73-9a11-570cc501fdaf.jpeg', N'Melissa''s Coconut - 1 Whole', 1.7900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (12, N'Paper Napkins', 11, N'd0647fa5-1bc1-4151-89f2-7a01161cf9bb.jpeg', N'Paper Lunch and Dinner Napkins, White - 50Ct.', 10.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (13, N'Mango Daiquiri & Margarita Mix', 3, N'edc4f469-3a35-4888-b6f3-711178d086b1.jpeg', N'Master of Mixes Mango Daiguiri/Margarita Mix - 1.75L', 14.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (14, N'Puff Pastry - Sheets', 8, N'7e428a91-eddd-4660-af1b-503b0317a420.jpeg', N'Pepperidge Farm Frozen Puff Pastry Sheets - 2 count', 4.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (15, N'Pepper - Cayenne', 5, N'53c4a9f3-4cdf-49e1-8440-292e64d020d0.jpeg', N'Spice Islands Cayenne Pepper - 2.3oz Jar', 4.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (16, N'Wine - Stella Rosa Black', 3, N'1ac1f5d5-713d-418f-9f5e-03fb1e385018.jpeg', N'Semi-sweet, semi-sparkling red blend from the Luxury Collection - 750ml Bottle', 11.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (17, N'Lettuce - Green Leaf', 10, N'1c9208cc-05c4-4808-9360-5e3304ed3952.jpeg', N'Fresh Green Leaf Lettuce - 4g (1 serving)', 1.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (18, N'Table Cloth - 60x90 - White', 11, N'f3dc05a5-a9b8-4909-8495-934f8cac2d13.jpeg', N'Basic Solid Ivory Rectangular Tablecloth Linen - Machine Washable', 24.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (19, N'Fresh Atlantic Salmon', 9, N'6cfe2149-35b8-45db-ba6a-1d1db7ea2ace.jpeg', N'Fresh, never frozen, responsibly farm raised Atlantic Salmon', 7.9900, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (20, N'Peppermint Herbal Tea', 3, N'4bfd47c3-68e0-4f53-9d2e-76e93e59bedb.jpeg', N'Celestial Seasonings, Peppermint Herbal Tea Bags - 20ct', 2.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (21, N'Honeycomb', 5, N'a4375b3d-9600-4800-baf9-027c50c81550.jpeg', N'Palermo Honeycomb 100% Edible, All-Natual, Gourmet Raw Honeycomb - 14oz', 22.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (22, N'Propel Flavored Water - Berry', 3, N'66d80f9a-c163-4f0e-9cf0-9a97e719efde.jpeg', N'Propel flavored water with electrolytes, Berry - 12 bottles (16.9fl oz each)', 6.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (23, N'Garlic Bulb', 10, N'b1b649bb-1993-47be-b154-960d54ff62b0.jpeg', N'Garlic, 1 bulb (Final cost by weight)', 3.5900, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (24, N'Maxwell House Coffee - French Roast', 7, N'6fbefb9a-d830-4bbc-b696-026ac654f74a.jpeg', N'Maxwell House French Dark Roast Ground Coffee - 11oz canister', 16.0000, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (25, N'Idaho Potatoes', 10, N'ebfdc9de-9a03-4018-a12f-57f12be011d3.jpeg', N'Idaho Potatoes fresh from the valley - 5lb Bag', 2.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (26, N'Spinach - Classic', 10, N'81002122-8101-432d-9e6d-0baced0f6849.jpeg', N'NewStar Fresh Spinach - 16oz Bag', 3.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (27, N'Band-Aid Flexible Fabric', 11, N'745e1d7f-c362-4556-b5f2-bc64d95ed864.jpeg', N'Band-Aid brand flexible fabric adhesive bandages, assorted - 100ct', 6.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (28, N'Black Plums - Final Cost By Weight', 10, N'147d8e98-aebc-4af2-84b3-3b223e078a0e.jpeg', N'Black Plums', 1.7900, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (29, N'Mushroom - Whole Brown', 10, N'BabyPortabellaMushrooms.jpeg', N'Fresh whole baby portabella mushrooms - 16oz', 4.2900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (30, N'Candy & Deep Fry Thermometer', 11, N'a1816e7c-dcbb-4ef7-89a2-21d42e4f6154.jpeg', N'Good Cook Precision Candy & Deep Fry Thermometer', 4.2900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (31, N'Sun-Dried Black Currants', 4, N'a6750c92-b7a1-45c8-aaaf-cf2d810a1212.jpeg', N'Sun-Maid Zante Currants - Sun-Dried From the Black Corinth Grape', 2.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (32, N'Large Hass Avocados', 10, N'6f99baea-3a22-4943-8c15-c171804e0082.jpeg', N'Large Hass Avocados - 3-4 Count Bag', 4.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (33, N'Bananas - Final Cost By Weight', 10, N'19d3ac42-0afa-43ba-b193-07147535585a.jpeg', N'Bananas', 0.4500, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (34, N'Banquet Chicken Pot Pie', 8, N'cbee16ac-7648-410b-9c15-6925cf461ce0.jpeg', N'Banquet Chicken Pot Pie - 7oz', 0.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (35, N'Gala Apples', 10, N'c70ac40d-37cd-4108-99a3-677cfb9afb98.jpeg', N'Gala Apples - 3lb Bag', 3.5900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (36, N'Aquafina Purified Water - 8ct', 3, N'45bc75f2-19cd-41d2-b61a-b7ec9e11f950.jpeg', N'Aquafina Purified Water, 12 oz Bottled Water - 8 Count', 3.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (37, N'Folgers - Cappucino Mix', 7, N'f9e8da7e-8e71-4a69-b8d2-1d8588c70b83.jpeg', N'Folgers French Vanilla Flavored Cappuccino Medium Roast Instant Coffee Packets - 16oz', 3.4900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (38, N'Barefoot Pinot Noir, Red Wine', 3, N'783190f0-d01c-4f0d-b28a-4575354f4e1e.jpeg', N'Barefoot Pinot Noir, Red Wine - 1.5L', 8.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (39, N'Del Monte Sweet Peas', 4, N'c3b15513-6fd5-4c30-a9b1-a98de400fca7.jpeg', N'Del Monte Canned Sweet Peas - 835oz', 0.8900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (40, N'Sugar', 7, N'dbf2c65e-57c3-4a19-b448-f523c7846276.jpeg', N'C & H Premium Pure Cane Granulated Sugar - 4lb', 2.7900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (41, N'Ground Beef - 93% Lean', 9, N'6b4bbd7c-4be5-47fe-a34f-ed7be48872db.jpeg', N'All Natural 93% Lean 7% Fat, Lean Ground Beef - 2.25lb', 13.2900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (42, N'Shiraz - Oak Leaf', 3, N'aa8cb39d-41f2-4be2-b2e1-617c08cd1ec0.jpeg', N'Oak Leaf Vineyards Shiraz Red Wine - American - 750ml', 2.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (43, N'Beef - Ox Tail - Final Price By Weight', 9, N'9742c705-98d4-487d-8aa1-dfca57e34735.jpeg', N'Beef Oxtail (Rabo de Res)', 8.8900, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (44, N'Pepsi - Mini Cans', 3, N'255f1c39-20ce-4207-99b7-feb5973279dd.jpeg', N'Pepsi Cola Soda - 10 Cans - 7.5fl oz Mini Cans', 5.7900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (45, N'Radish Bunch', 10, N'99f28e5a-c952-4c3b-9bb0-e3efd71b8351.jpeg', N'Fresh Radish Bunch', 0.8900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (46, N'Napa Cabbage Head', 10, N'6c24ec70-1c60-41a3-b49b-03cc03719562.jpeg', N'Fresh Chinese Napa Cabbage Head', 2.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (47, N'Red Cabbage Head', 10, N'efe80ffc-ca95-4404-baf3-b13f6c3b3b45.jpeg', N'Red Cabbaeg Head', 2.5900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (48, N'Boneless Chicken Breasts - Final Cost By Weight', 9, N'048fe4bb-ec69-4b04-9765-4f25c1eee275.jpeg', N'Boneless, Skinless Chicken Breasts Family Pack', 2.0900, 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (49, N'French Macarons', 2, N'f533686c-202a-4fde-aa6b-82db7c6efccc.jpeg', N'Surprise Me! French Macarons - 6 Pack', 7.9500, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (50, N'Hawaiian Punch Fruit Juicy Red', 3, N'4fda63c0-a6d6-4246-828d-bb01849f04d9.jpeg', N'Hawaiian Punch Fruit Juicy Red - 1 Gallon', 2.1900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (51, N'Bread Crumbs - Panko', 7, N'c889d4f7-2dc9-4e09-a6ed-80a3b201e731.jpeg', N'Kikkoman Japanese Style Panko Bread Crumbs in Resealable Bag - 8oz', 1.7900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (52, N'Kraft Asian Toasted Sesame Lite Salad Dressing', 5, N'cd0f7537-09bf-4525-8e17-982124995667.jpeg', N'Kraft Asian Toasted Sesame Lite Salad Dressing - 16oz', 1.7900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (53, N'Oatmeal Creme Pies', 12, N'0b134bde-0663-4b49-aed7-286d1609c921.jpeg', N'Little Debbie Oatmeal Creme Pies - 12ct', 1.7900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (54, N'Sauce - Plum', 5, N'51ba49ed-7dde-4828-82f2-ae68791fdf70.jpeg', N'Lee Kum Kee Plum Sauce', 12.6900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (55, N'Red Curry Paste', 5, N'87a0ef0a-a496-48d3-a32c-b4e334b15024.jpeg', N'Thai Kitchen Gluten Free Red Curry Paste - 4oz', 2.7900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (56, N'Ham Black Forest', 9, N'6f057f18-eeaf-46a6-bc94-76a1cc8f54c1.png', N'Land O''Frost Premium Old World Style Black Forest Ham - 16oz', 3.8900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (57, N'Walnut Halves & Pieces', 7, N'060c50b0-ae33-4c62-9484-bc82536057e7.jpeg', N'Fisher Chef''s Naturals Walnut Halves & Pieces - 16oz', 5.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (58, N'Red Grapfruit', 10, N'520e0630-6b15-4b46-a0e1-f6fd3d3c59ef.jpeg', N'Red Grapefruit - 5 lb Bag', 5.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (59, N'Betty Crocker Super Moist White Cake Mix', 7, N'8a597f07-d115-4ea3-a1a8-0ca51110bcc1.png', N'Betty Crocker Super Moist White Cake Mix - 16.25oz Box', 1.1900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (60, N'Keebler Vienna Fingers', 12, N'0d894c8d-9392-4691-b5c0-e37b5d1ca918.jpeg', N'Keebler Vienna Fingers Creme Filled Sandwich Cookies - 14.2oz', 2.7900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (61, N'Bagel Bites', 8, N'e0035207-5ff6-41ca-901e-2b1d678b4e50.jpeg', N'Bagel Bites Cheese & Pepperoni Mini Pizza Bagel Frozen Snacks - 40ct Box', 7.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (62, N'Pineapple - Whole', 10, N'a979b9d5-8e4f-4965-b954-2389ae4a459a.jpeg', N'Whole Fresh Pineapple', 1.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (63, N'Havarti Natural Cheese Slices', 6, N'8fa0e375-7b93-47de-ad23-effbba26708b.jpeg', N'Sargento Natural Sliced Havarti Cheese - 7oz, 10ct', 2.6900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (64, N'Hearty White Bread', 2, N'c39f9b79-ba2d-49f6-94f0-7eb8f55283ec.jpeg', N'Pepperidge Farm Farmhouse Hearty White Bread - 24oz', 2.9900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (65, N'Cape Cod Potato Chips', 12, N'bd19ca1e-1c6d-48d7-b366-0e26cd28b11f.jpeg', N'Cape Cod Kettle Cooked Chips - Original - 8oz', 3.1900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (66, N'Coffee Cup 8oz Paper', 11, N'4ca6b8ca-779e-43c1-b912-f81fb7fd4d9a.jpeg', N'Dixie PerfecTouch Insulated Paper Hot Coffee Cups - 50 Pack', 13.6900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (67, N'Country Time Lemonade Drink Mix', 7, N'4b3bb806-6fa5-4799-b649-37325c1b2e9b.jpeg', N'Country Time Lemonade Naturally Flavored Powdered Drink Mix - 5.16oz Canister', 19.1900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (68, N'Plastic Spoons', 11, N'c081ad42-8531-4e4d-99cb-bc995ae78f4a.jpeg', N'Dixie Plastic Cutlery, Medium Weight Teaspoons - 100/Box', 7.6900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (69, N'Shredded Carrots', 10, N'db11bc71-a176-4649-964c-8bc7b8cb3887.jpeg', N'Grimmway Farms Shredded Carrots - 10oz Bag', 1.8900, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Image], [ProductDesc], [UnitPrice], [PriceID], [StatusID]) VALUES (70, N'Dry Soup Mix - French Onion', 7, N'3fc967cc-4a2c-4b7b-a154-0c8e92ce5575.jpeg', N'Lipton Recipe Secrets Soup and Dip Mix, Onion - 2oz', 1.3900, 1, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [Description]) VALUES (1, N'InStock')
INSERT [dbo].[Status] ([StatusID], [Description]) VALUES (2, N'OutOfStock')
INSERT [dbo].[Status] ([StatusID], [Description]) VALUES (3, N'BackOrder')
INSERT [dbo].[Status] ([StatusID], [Description]) VALUES (4, N'Discontinued')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DeptID])
REFERENCES [dbo].[Departments] ([DeptID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([DirectReportID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_PricePer] FOREIGN KEY([PriceID])
REFERENCES [dbo].[PricePer] ([PriceID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_PricePer]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Status]
GO

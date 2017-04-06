/****** Object:  UserDefinedTableType [dbo].[SalesDocumentLine]    Script Date: 15/9/2016 12:15:13 p. m. ******/
CREATE TYPE [dbo].[SalesDocumentLine] AS TABLE(
    [Store No] [varchar](100) NULL,
    [No Transaccion] [varchar](100) NULL,
    [Document Type] [int] NULL,
    [Line No] [int] NULL
)
GO
/****** Object:  Table [dbo].[Address]    Script Date: 15/9/2016 12:15:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
    [Code] [nvarchar](15) NOT NULL,
    [Address 1] [nvarchar](50) NOT NULL,
    [Address 2] [nvarchar](50) NULL,
    [Zip code] [nvarchar](50) NULL,
    [City code] [nvarchar](15) NOT NULL,
    [State code] [nvarchar](15) NOT NULL,
    [Country Code] [nvarchar](15) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Address List]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address List](
    [Code Address] [nvarchar](15) NOT NULL,
    [Code Customer] [nvarchar](15) NOT NULL,
    [Date] [datetime] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Address List] PRIMARY KEY CLUSTERED 
(
    [Code Address] ASC,
    [Code Customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Barcode Item]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barcode Item](
    [Item Number] [nvarchar](15) NOT NULL,
    [Item Code Variant Comb] [nvarchar](15) NOT NULL,
    [Code Barcode] [nvarchar](15) NOT NULL,
    [Unit of Measure Code] [nvarchar](15) NOT NULL,
    [Bool Aux] [int] NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Creation date] [datetime] NOT NULL,
    [Created by user] [nvarchar](50) NOT NULL,
    [Last modified date] [datetime] NOT NULL,
    [Last modified by the user] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Barcode Item] PRIMARY KEY CLUSTERED 
(
    [Item Number] ASC,
    [Code Barcode] ASC,
    [Item Code Variant Comb] ASC,
    [Unit of Measure Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bin]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bin](
    [Code] [nchar](10) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [Type Bin] [nvarchar](50) NULL,
    [Block Movement] [int] NULL,
    [Maximum Cubage] [decimal](18, 0) NULL,
    [Maximum Weight] [decimal](18, 0) NULL,
    [Empty] [nchar](10) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Bin] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaing]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaing](
    [No.] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [Status Code] [nvarchar](15) NULL,
    [Cost] [decimal](18, 5) NULL,
    [Estimated Value] [decimal](18, 5) NULL,
    [Code Validation Period] [nvarchar](15) NULL,
    [Creation date] [datetime] NULL,
    [Created by user] [nvarchar](50) NULL,
    [Last modified date] [datetime] NULL,
    [Last modified by the user] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Campaing] PRIMARY KEY CLUSTERED 
(
    [No.] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaing Status]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaing Status](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](100) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Campaing Status] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Caption]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caption](
    [Code] [nchar](10) NOT NULL,
    [Culture] [nchar](10) NULL,
    [Caption] [nchar](10) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Caption] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
    [Code] [nvarchar](15) NOT NULL,
    [City] [nvarchar](50) NOT NULL,
    [Code State] [nvarchar](50) NOT NULL,
    [Code/Contry] [nvarchar](15) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Code/Contry]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Code/Contry](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Codigo/Pais] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
    [Code] [nvarchar](50) NOT NULL,
    [Descripcion] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Companies]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
    [Id] [uniqueidentifier] NOT NULL,
    [Code] [nvarchar](10) NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comparasion Unit Of Measure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comparasion Unit Of Measure](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Comparasion Unit Of Measure] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Conversion Value]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversion Value](
    [Base Unit Code] [nvarchar](15) NOT NULL,
    [Comparasion Unit Code] [nvarchar](15) NOT NULL,
    [Conversion Factor] [decimal](18, 5) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Conversion Value] PRIMARY KEY CLUSTERED 
(
    [Base Unit Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cross References]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cross References](
    [Code Item] [nvarchar](15) NOT NULL,
    [Code Cross References] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [Variant Code] [nvarchar](50) NOT NULL,
    [Unit of Measure] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Cross References] PRIMARY KEY CLUSTERED 
(
    [Code Item] ASC,
    [Code Cross References] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Currency]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
    [No Currency] [nvarchar](15) NOT NULL,
    [Descripcion] [nvarchar](60) NOT NULL,
    [Simbol] [nvarchar](10) NOT NULL,
    [ISO Code] [nvarchar](10) NOT NULL,
    [Decimal places] [tinyint] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Divisa] PRIMARY KEY CLUSTERED 
(
    [No Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Currency List]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency List](
    [Customer ID] [nvarchar](15) NOT NULL,
    [Currency ID] [nvarchar](15) NOT NULL,
    [Date] [datetime] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Currency List] PRIMARY KEY CLUSTERED 
(
    [Customer ID] ASC,
    [Currency ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
    [No] [nvarchar](15) NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [Name2] [nvarchar](50) NOT NULL,
    [CodeAddress] [nvarchar](15) NULL,
    [VAT Registration No.] [nvarchar](20) NOT NULL,
    [NCF] [nvarchar](19) NULL,
    [Alias] [nvarchar](50) NULL,
    [Phone] [nvarchar](30) NULL,
    [E-Mail] [nvarchar](80) NULL,
    [Credit limit] [decimal](18, 5) NULL,
    [Customer Invoice No.] [nvarchar](15) NOT NULL,
    [Price Group] [nvarchar](15) NOT NULL,
    [Currency] [nvarchar](15) NOT NULL,
    [Language] [nvarchar](15) NOT NULL,
    [Price including VAT] [decimal](18, 5) NOT NULL,
    [Price without VAT] [decimal](18, 5) NOT NULL,
    [VAT] [decimal](18, 5) NOT NULL,
    [Salesperson] [nvarchar](15) NOT NULL,
    [Discounts Invoice] [decimal](18, 5) NOT NULL,
    [Line Discounts] [decimal](18, 5) NOT NULL,
    [Reserve] [int] NOT NULL,
    [Payment terms] [nvarchar](15) NOT NULL,
    [Allow discount] [int] NOT NULL,
    [Block] [int] NOT NULL,
    [VAT Bus. Posting Group] [nvarchar](15) NOT NULL,
    [Creation date] [datetime] NOT NULL,
    [Created by user] [nvarchar](50) NOT NULL,
    [Last modified date] [datetime] NOT NULL,
    [Last modified by the user] [nvarchar](50) NOT NULL,
    [Address1] [nvarchar](100) NULL,
    [Address2] [nvarchar](100) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Customer_No_] PRIMARY KEY CLUSTERED 
(
    [No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer Price Group]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer Price Group](
    [Code] [nvarchar](15) NOT NULL,
    [Price Includes VAT] [int] NULL,
    [VAT Bus. Posting Gr. (Price)] [nvarchar](15) NULL,
    [Description] [nvarchar](100) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Customer Price Group] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
    [Code] [nvarchar](15) NOT NULL,
    [Firts Name] [nvarchar](50) NOT NULL,
    [Last Name] [nvarchar](50) NOT NULL,
    [RUC] [nvarchar](20) NOT NULL,
    [Name of Receipt] [nvarchar](50) NOT NULL,
    [Password] [nvarchar](50) NOT NULL,
    [Change Password] [int] NOT NULL,
    [Store No] [nvarchar](15) NOT NULL,
    [Store Name] [nvarchar](50) NOT NULL,
    [Employment Type] [int] NOT NULL,
    [Code Permission] [nvarchar](15) NOT NULL,
    [Address] [nvarchar](100) NOT NULL,
    [ComisionPCT] [decimal](18, 5) NOT NULL,
    [Phone] [nvarchar](50) NOT NULL,
    [E-Mail] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees Permission]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees Permission](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Void Transaction] [int] NOT NULL,
    [Manager Privileges] [int] NOT NULL,
    [XZ-Reports Printing] [int] NOT NULL,
    [Tender Declaration] [int] NOT NULL,
    [Floating Declaration] [int] NOT NULL,
    [Price Override] [int] NOT NULL,
    [Max Discount To Give %] [decimal](18, 5) NOT NULL,
    [Max Total Discount %] [decimal](18, 5) NOT NULL,
    [Suspend Transaction] [int] NOT NULL,
    [Open Draw without Sale] [int] NOT NULL,
    [Return In Transaction] [int] NOT NULL,
    [Change Prepaidment Amt] [int] NOT NULL,
    [Add Prepaidment Amt] [int] NOT NULL,
    [Void Line] [int] NOT NULL,
    [Add Paidment] [int] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Employees Permission] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees Store Link]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees Store Link](
    [Employee Code] [nvarchar](15) NOT NULL,
    [Store No] [nvarchar](15) NOT NULL,
    [Employee First Name] [nvarchar](50) NOT NULL,
    [Employee Last Name] [nvarchar](50) NOT NULL,
    [Employee Name of Receipt] [nvarchar](50) NOT NULL,
    [Store Name] [nvarchar](50) NOT NULL,
    [Code Permission] [nvarchar](15) NOT NULL,
    [Default Store] [int] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Employees Store Link] PRIMARY KEY CLUSTERED 
(
    [Employee Code] ASC,
    [Store No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FiscalYears]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FiscalYears](
    [Id] [uniqueidentifier] NOT NULL,
    [Code] [nvarchar](10) NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_FiscalYears] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funcionality Profile]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionality Profile](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [Z Auto After Decl] [int] NOT NULL,
    [Calc Disc Excl VAT] [int] NOT NULL,
    [Currency Simbol] [nvarchar](15) NOT NULL,
    [Multiple Simbol] [nvarchar](15) NOT NULL,
    [Amount Rounding To] [int] NOT NULL,
    [Amount Decimal Place] [int] NOT NULL,
    [Precing Rounding To] [int] NOT NULL,
    [Precing Decimal Place] [int] NOT NULL,
    [Maximun Price] [decimal](18, 5) NOT NULL,
    [Maximun QTY] [decimal](18, 5) NOT NULL,
    [Calc Excl VAT] [int] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Funcionality Profile] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INFOPRINTERFISCAL]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFOPRINTERFISCAL](
    [No Transaccion] [nvarchar](15) NOT NULL,
    [No Receipt] [nvarchar](15) NOT NULL,
    [Document Date] [datetime] NOT NULL,
    [COO] [nvarchar](10) NOT NULL,
    [NDOCFISCAL] [nvarchar](20) NOT NULL,
    [SERIEIMPRESORA] [nvarchar](20) NOT NULL,
    [Document Type] [int] NOT NULL,
    [DOCAFECTADO] [nvarchar](20) NULL,
    [SERIEAFECTADO] [nvarchar](20) NULL,
    [FECHAIMPRESORA] [datetime] NULL,
    [FECHAIMPAFECTADA] [datetime] NULL,
    [HORAIMPRESORA] [nvarchar](10) NOT NULL,
    [HORAIMPAFECTADA] [nvarchar](10) NULL,
    [AmountPayable] [decimal](18, 5) NULL,
    [NumberPaymentsMade] [int] NULL,
    [QuantityArticles] [int] NULL,
    [SubTotalBases] [decimal](18, 5) NULL,
    [SubTotalTax] [decimal](18, 5) NULL,
    [DocumentTypeFiscal] [int] NOT NULL,
    [Country] [nvarchar](20) NULL,
    [DOCNOFISCAL] [nvarchar](20) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_INFOPRINTERFISCAL] PRIMARY KEY CLUSTERED 
(
    [No Transaccion] ASC,
    [No Receipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INFOPRINTERFISCAL_AUX]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFOPRINTERFISCAL_AUX](
    [No Transaccion] [nvarchar](15) NOT NULL,
    [NumDocFiscal] [nvarchar](20) NOT NULL,
    [Document Date] [datetime] NOT NULL,
    [DocumentType] [int] NOT NULL,
    [BusinessName] [nvarchar](50) NOT NULL,
    [VATRegistration] [nvarchar](50) NOT NULL,
    [Address] [nvarchar](50) NOT NULL,
    [ItemDescription] [nvarchar](150) NOT NULL,
    [Comment] [nvarchar](40) NOT NULL,
    [DocAfect] [nvarchar](20) NULL,
    [DatePrinter] [datetime] NULL,
    [DatePrinterAfect] [datetime] NULL,
    [TimePrinter] [nvarchar](10) NOT NULL,
    [SerialPrinter] [nvarchar](20) NOT NULL,
    [SerialPrintetAfect] [nvarchar](20) NULL,
    [SubTotalBases] [decimal](18, 5) NULL,
    [SubTotalTax] [decimal](18, 5) NULL,
    [DocumentTypeFiscal] [int] NOT NULL,
    [Country] [nvarchar](20) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_INFOPRINTERFISCAL_AUX] PRIMARY KEY CLUSTERED 
(
    [No Transaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
    [No] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](210) NOT NULL,
    [Descripcion 2] [nvarchar](50) NULL,
    [Qty. Inventory] [decimal](18, 5) NOT NULL,
    [Is Use] [int] NULL,
    [Billed Units] [int] NOT NULL,
    [Qty. Purshase] [int] NULL,
    [Qty. Sales] [decimal](18, 5) NOT NULL,
    [Amount Purchases] [decimal](18, 5) NULL,
    [Amount Sales] [decimal](18, 5) NOT NULL,
    [Qty. Positive adjustment] [int] NOT NULL,
    [Qty. Negative adjustment] [int] NOT NULL,
    [Amount Positive adjustment] [int] NOT NULL,
    [Amount Negative adjustment] [int] NOT NULL,
    [Qty. in Order] [int] NOT NULL,
    [Qty. transfer] [decimal](18, 5) NOT NULL,
    [Transfer amount] [decimal](18, 5) NOT NULL,
    [Price without VAT] [decimal](18, 5) NOT NULL,
    [Price including VAT] [decimal](18, 5) NOT NULL,
    [VAT] [decimal](18, 5) NOT NULL,
    [Qty. in Transit] [decimal](18, 5) NOT NULL,
    [Qty. Sale Returns] [decimal](18, 5) NOT NULL,
    [Qty. Purchase Returns ] [int] NULL,
    [Allow Negative Inventory] [int] NOT NULL,
    [Qty. Negative] [int] NOT NULL,
    [Auto Code] [nvarchar](15) NULL,
    [Variant] [nvarchar](15) NOT NULL,
    [Weight] [decimal](18, 5) NULL,
    [Base Unit of Measure Purched] [nvarchar](15) NULL,
    [Base Unit of Measure Sales] [nvarchar](15) NOT NULL,
    [Barcode] [nvarchar](15) NOT NULL,
    [Allow Discount] [tinyint] NOT NULL,
    [Cost Unity] [decimal](18, 5) NOT NULL,
    [Cost Standard] [decimal](18, 5) NOT NULL,
    [Last cost] [decimal](18, 5) NOT NULL,
    [date last cost] [datetime] NOT NULL,
    [Cost indirect] [decimal](18, 5) NOT NULL,
    [Cost Ajust] [decimal](18, 5) NOT NULL,
    [Profit] [decimal](18, 5) NOT NULL,
    [Profit %] [decimal](18, 5) NOT NULL,
    [Special Groups] [nvarchar](15) NOT NULL,
    [Sustitute] [nvarchar](15) NULL,
    [Cross References] [nvarchar](15) NULL,
    [Additional text] [text] NULL,
    [Imagen] [image] NULL,
    [Translations] [nvarchar](50) NULL,
    [Block] [tinyint] NOT NULL,
    [No Vendor] [nvarchar](20) NULL,
    [Reorder point] [decimal](18, 5) NOT NULL,
    [Qty. Reorder point] [int] NOT NULL,
    [Inventory Security] [int] NOT NULL,
    [Reserve] [int] NOT NULL,
    [Lot size] [decimal](18, 5) NULL,
    [No Serial] [nvarchar](15) NULL,
    [No Lot] [nvarchar](15) NULL,
    [Calculation Due] [nvarchar](15) NULL,
    [Due Date] [datetime] NULL,
    [Creation date] [datetime] NOT NULL,
    [Created by user] [nvarchar](50) NOT NULL,
    [Last modified date] [datetime] NOT NULL,
    [Last modified by the user] [nvarchar](50) NOT NULL,
    [Warning shortages] [int] NULL,
    [Location] [nvarchar](15) NULL,
    [Start Date counting] [datetime] NULL,
    [End Date counting] [datetime] NULL,
    [VAT Prod Posting Group] [nvarchar](15) NOT NULL,
    [VAT Bus Posting Group] [nvarchar](15) NOT NULL,
    [Item Category Code] [nvarchar](15) NOT NULL,
    [Product Group Code] [nvarchar](15) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
    [No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item Category]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item Category](
    [Item Category Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Def. Gen. Prod. Posting Group] [nvarchar](50) NOT NULL,
    [Def. Inventory Posting Group] [nvarchar](50) NOT NULL,
    [Def. Tax Group Code] [nvarchar](50) NOT NULL,
    [Def. Costing Method] [nvarchar](50) NOT NULL,
    [Def. VAT Prod. Posting Group] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Item Category] PRIMARY KEY CLUSTERED 
(
    [Item Category Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item Journal]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item Journal](
    [EntryNo] [int] NOT NULL,
    [LineNo] [int] NOT NULL,
    [ItemNo] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [DocumentType] [int] NOT NULL,
    [No Transaccion] [nvarchar](15) NOT NULL,
    [Store No] [nvarchar](15) NULL,
    [LocationCode] [nvarchar](15) NULL,
    [Qty] [decimal](18, 5) NOT NULL,
    [QtyRemaining] [decimal](18, 5) NOT NULL,
    [QtyperUnitofMeasure] [decimal](18, 5) NULL,
    [QtyInvoiced] [decimal](18, 5) NOT NULL,
    [QtyReserved] [decimal](18, 5) NOT NULL,
    [FinalAmount] [decimal](18, 5) NULL,
    [AppliestoEntry] [int] NULL,
    [Open] [tinyint] NULL,
    [DocumentDate] [datetime] NOT NULL,
    [PostingDate] [datetime] NULL,
    [ExternalDocumentNo] [nvarchar](35) NULL,
    [NoSeries] [nvarchar](15) NULL,
    [SerialNo] [nvarchar](15) NULL,
    [VariantCode] [nvarchar](15) NULL,
    [UnitofMeasureCode] [nvarchar](15) NULL,
    [ItemCategoryCode] [nvarchar](15) NULL,
    [ProductGroupCode] [nvarchar](15) NULL,
    [LastInvoiceDate] [datetime] NULL,
    [ReturnCode] [nvarchar](15) NULL,
 CONSTRAINT [PK_Item Journal] PRIMARY KEY CLUSTERED 
(
    [EntryNo] ASC,
    [LineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item Unit of Measure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item Unit of Measure](
    [Item No.] [nvarchar](15) NOT NULL,
    [Code] [nvarchar](15) NOT NULL,
    [Qty. per Unit of Measure] [decimal](18, 5) NULL,
    [Length] [decimal](18, 5) NULL,
    [Width] [decimal](18, 5) NULL,
    [Height] [decimal](18, 5) NULL,
    [Cubage] [decimal](18, 5) NULL,
    [Weight] [decimal](18, 5) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Item Unit of Measure] PRIMARY KEY CLUSTERED 
(
    [Item No.] ASC,
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item Variant]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item Variant](
    [Item Code] [nvarchar](15) NOT NULL,
    [Item Code Variant Comb] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](100) NOT NULL,
    [Dimension1] [nvarchar](50) NOT NULL,
    [Dimension2] [nvarchar](50) NOT NULL,
    [Dimension3] [nvarchar](50) NOT NULL,
    [Code Template Variant Header] [nvarchar](15) NOT NULL,
    [Common Item No] [nvarchar](15) NOT NULL,
    [Barcode] [nvarchar](15) NULL,
    [Creation date] [datetime] NOT NULL,
    [Created by user] [nvarchar](50) NOT NULL,
    [Last modified date] [datetime] NOT NULL,
    [Last modified by the user] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Item Variant] PRIMARY KEY CLUSTERED 
(
    [Item Code] ASC,
    [Item Code Variant Comb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
    [Code] [nvarchar](15) NOT NULL,
    [Name] [nvarchar](50) NULL,
    [Windows Language ID] [nvarchar](15) NULL,
    [Windows Language Name] [nvarchar](max) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language List]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language List](
    [Customer ID] [nvarchar](15) NOT NULL,
    [Languaje ID] [nvarchar](15) NOT NULL,
    [Date] [datetime] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Language List] PRIMARY KEY CLUSTERED 
(
    [Languaje ID] ASC,
    [Customer ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[No Series]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[No Series](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Default Nos_] [tinyint] NOT NULL,
    [Manual Nos_] [tinyint] NULL,
    [Date Order] [tinyint] NOT NULL,
    [No Series Type] [int] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_No Series] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[No Series Line]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[No Series Line](
    [Series Code] [nvarchar](15) NOT NULL,
    [Line No_] [int] NOT NULL,
    [Starting Date] [datetime] NOT NULL,
    [Starting No_] [nvarchar](20) NOT NULL,
    [Ending No_] [nvarchar](20) NOT NULL,
    [Warning No_] [nvarchar](20) NOT NULL,
    [Increment-by No_] [int] NOT NULL,
    [Last No_ Used] [nvarchar](20) NOT NULL,
    [Open] [tinyint] NOT NULL,
    [Last Date Used] [datetime] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_No Series Line] PRIMARY KEY CLUSTERED 
(
    [Series Code] ASC,
    [Line No_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[No Series Relationship]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[No Series Relationship](
    [Code] [nvarchar](15) NOT NULL,
    [Series Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_No Series Relationship] PRIMARY KEY CLUSTERED 
(
    [Code] ASC,
    [Series Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Numbering Setup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Numbering Setup](
    [id] [nvarchar](15) NOT NULL,
    [Customer_Nos] [uniqueidentifier] NOT NULL,
    [Quote_Nos] [uniqueidentifier] NOT NULL,
    [Order_Nos] [uniqueidentifier] NOT NULL,
    [Return_Order_Nos] [uniqueidentifier] NOT NULL,
    [Number_Control_Nos] [uniqueidentifier] NOT NULL,
    [Invoice_Nos] [uniqueidentifier] NOT NULL,
    [Credit_Memo_Nos] [uniqueidentifier] NOT NULL,
    [Debit_Nos] [uniqueidentifier] NOT NULL,
    [Employees_Nos] [uniqueidentifier] NOT NULL,
    [InfoPrinter_Nos] [uniqueidentifier] NOT NULL,
    [ItemJournalNos] [uniqueidentifier] NULL,
    [ReservationJournalNos] [uniqueidentifier] NULL,
    [Statement] [uniqueidentifier] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Numbering Setup] PRIMARY KEY CLUSTERED 
(
    [id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offers]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Percent] [decimal](18, 5) NOT NULL,
    [Status] [nvarchar](50) NOT NULL,
    [Amount Discount Excl Vat] [decimal](18, 5) NOT NULL,
    [Code Validation Period] [nvarchar](15) NOT NULL,
    [Creation date] [datetime] NOT NULL,
    [Created by user] [nvarchar](50) NOT NULL,
    [Last modified date] [datetime] NOT NULL,
    [Last modified by the user] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offers Details]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers Details](
    [Code Offers] [nvarchar](15) NOT NULL,
    [Type] [int] NOT NULL,
    [Code Type] [nvarchar](15) NOT NULL,
    [Description Code Type] [nvarchar](50) NOT NULL,
    [Standard Price Inc. IVA] [decimal](18, 5) NOT NULL,
    [Standard Price Excl. IVA] [decimal](18, 5) NOT NULL,
    [Offer Price Inc. Iva] [decimal](18, 5) NOT NULL,
    [Offer Price Excl. Iva] [decimal](18, 5) NOT NULL,
    [Disc % Incl Vat] [decimal](18, 5) NOT NULL,
    [Disc % Excl Vat] [decimal](18, 5) NOT NULL,
    [Disc Amount Inc. IVA] [decimal](18, 5) NOT NULL,
    [Disc Amount Excl. IVA] [decimal](18, 5) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Offers Details] PRIMARY KEY CLUSTERED 
(
    [Code Offers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment methods]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment methods](
    [Store Code] [nvarchar](15) NOT NULL,
    [Code Payment Setup] [nvarchar](15) NOT NULL,
    [Default Funtion] [int] NOT NULL,
    [Description] [nvarchar](100) NOT NULL,
    [Card Tender] [int] NOT NULL,
    [Currency Tender] [int] NOT NULL,
    [OverPayment Allow] [int] NOT NULL,
    [OverPayment Max Amount] [decimal](18, 5) NOT NULL,
    [UnderPayment Allow] [int] NOT NULL,
    [UnderPayment Max Amount] [decimal](18, 5) NOT NULL,
    [Rounding Type] [int] NOT NULL,
    [Rounding To] [int] NOT NULL,
    [Remove/Float Type] [int] NOT NULL,
    [Remove/Float Description] [nvarchar](50) NOT NULL,
    [Counting Requeried] [int] NOT NULL,
    [Float Requeried] [int] NOT NULL,
    [Change Line Of Reception] [nvarchar](100) NOT NULL,
    [Change Payment Type] [int] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Tender Type] PRIMARY KEY CLUSTERED 
(
    [Store Code] ASC,
    [Code Payment Setup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment methods aux]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment methods aux](
    [Code] [nchar](10) NOT NULL,
    [Description] [nchar](10) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Payment methods] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment Methods Setup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment Methods Setup](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](100) NULL,
    [Default Funtion] [int] NULL,
    [Card Tender] [int] NULL,
    [Currency Tender] [int] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Tender Type Setup] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permission profiles]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission profiles](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Permission profiles] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionsMstr]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionsMstr](
    [No.] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
    [Description] [nvarchar](160) NOT NULL,
    [Module] [nvarchar](250) NOT NULL,
    [Type] [nvarchar](10) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_PermissionsMstr] PRIMARY KEY CLUSTERED 
(
    [No.] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Point Of Sale]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point Of Sale](
    [Code] [uniqueidentifier] NOT NULL,
    [Store No] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](100) NOT NULL,
    [Exit After Each Trans] [int] NOT NULL,
    [Auto Logoff] [datetime] NOT NULL,
    [Stament Method Type] [int] NOT NULL,
    [No Series Receipt No] [nvarchar](15) NOT NULL,
    [No Series Return No] [nvarchar](15) NOT NULL,
    [No Series Transaction No] [nvarchar](15) NOT NULL,
    [Code Funtional Profile] [nvarchar](15) NULL,
    [Code Printer Fiscal] [uniqueidentifier] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Point Of Sale] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pos Fixed Start Amount]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pos Fixed Start Amount](
    [Store Code] [nvarchar](15) NOT NULL,
    [Stament Method Type] [int] NOT NULL,
    [ID] [int] NOT NULL,
    [Code Payment Methods] [nvarchar](15) NOT NULL,
    [Description Payment Methods] [nvarchar](100) NULL,
    [Amount] [decimal](18, 5) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Pos Fixed Start Amount] PRIMARY KEY CLUSTERED 
(
    [Store Code] ASC,
    [Stament Method Type] ASC,
    [ID] ASC,
    [Code Payment Methods] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Printer Fiscal Setup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Printer Fiscal Setup](
    [Code] [uniqueidentifier] NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Model] [nvarchar](50) NOT NULL,
    [Port] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Printer Fiscal Setup] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product Group]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product Group](
    [Product Group Code] [nvarchar](15) NOT NULL,
    [Item Category Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](100) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Product Group] PRIMARY KEY CLUSTERED 
(
    [Product Group Code] ASC,
    [Item Category Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Percent] [decimal](18, 5) NOT NULL,
    [Status] [nvarchar](50) NOT NULL,
    [Amount Discount Excl Vat] [decimal](18, 5) NOT NULL,
    [Code Validation Period] [nvarchar](15) NOT NULL,
    [Creation date] [datetime] NOT NULL,
    [Created by user] [nvarchar](50) NOT NULL,
    [Last modified date] [datetime] NOT NULL,
    [Last modified by the user] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Promotion Details]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion Details](
    [Code Promotion] [nvarchar](15) NOT NULL,
    [Type] [int] NOT NULL,
    [Code Type] [nvarchar](15) NOT NULL,
    [Description Code Type] [nvarchar](50) NOT NULL,
    [Standard Price Inc. IVA] [decimal](18, 5) NOT NULL,
    [Standard Price Excl. IVA] [decimal](18, 5) NOT NULL,
    [Promotion Price Inc. Iva] [decimal](18, 5) NOT NULL,
    [Promotion Price Excl. Iva] [decimal](18, 5) NOT NULL,
    [Disc % Incl Vat] [decimal](18, 5) NOT NULL,
    [Disc % Excl Vat] [decimal](18, 5) NOT NULL,
    [Disc Amount Inc. IVA] [decimal](18, 5) NOT NULL,
    [Disc Amount Excl. IVA] [decimal](18, 5) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Promotion Details] PRIMARY KEY CLUSTERED 
(
    [Code Promotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Purcharse Header]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purcharse Header](
    [Document Type] [int] NOT NULL,
    [No Receipt] [nvarchar](20) NOT NULL,
    [No Transaccion] [nvarchar](20) NOT NULL,
    [Store No] [nvarchar](10) NOT NULL,
    [Customer No] [nvarchar](20) NOT NULL,
    [Customer Name] [nvarchar](50) NULL,
    [Terminal No] [nvarchar](20) NOT NULL,
    [Document Date] [datetime] NOT NULL,
    [Posting Date] [datetime] NOT NULL,
    [Due Date] [datetime] NOT NULL,
    [Posting No] [nvarchar](20) NOT NULL,
    [Posting Description] [nvarchar](50) NOT NULL,
    [Payment Terms Code] [nvarchar](10) NOT NULL,
    [Location Code] [nvarchar](10) NOT NULL,
    [Currency Code] [nvarchar](10) NOT NULL,
    [Currency Factor] [decimal](18, 5) NOT NULL,
    [Customer Price Group] [nvarchar](10) NOT NULL,
    [Customer Disc_ Group] [nvarchar](20) NOT NULL,
    [Language Code] [nvarchar](10) NOT NULL,
    [Salesperson Code] [nvarchar](10) NOT NULL,
    [No_ Printed] [int] NOT NULL,
    [Status] [int] NOT NULL,
    [Prices Including VAT] [tinyint] NOT NULL,
    [Allow Line Disc] [tinyint] NOT NULL,
    [Print Posted Documents] [tinyint] NOT NULL,
    [Last Posting No_] [nvarchar](20) NOT NULL,
    [VAT Registration No_] [nvarchar](20) NOT NULL,
    [VAT Bussines Posting Group] [nvarchar](20) NOT NULL,
    [External Document No_] [nvarchar](35) NOT NULL,
    [No_ Series] [nvarchar](10) NOT NULL,
    [Posting No_ Series] [nvarchar](10) NOT NULL,
    [Return Receipt No_] [nvarchar](20) NOT NULL,
    [Return Receipt No_ Series] [nvarchar](10) NOT NULL,
    [Last Return Receipt No_] [nvarchar](20) NOT NULL,
    [Assigned User ID] [nvarchar](50) NOT NULL,
    [Statement No] [nvarchar](20) NOT NULL,
    [Subtotal Excl IVA] [decimal](18, 5) NULL,
    [Subtotal Inc. IVA] [decimal](18, 5) NULL,
    [Discount %] [decimal](18, 5) NULL,
    [Discount Amount Inc IVA] [decimal](18, 5) NULL,
    [Discount Amount Excl IVA] [decimal](18, 5) NULL,
    [IVA Amount] [decimal](18, 5) NULL,
    [Total Amount] [decimal](18, 5) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Purcharse Header] PRIMARY KEY CLUSTERED 
(
    [Document Type] ASC,
    [No Receipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Purcharse Lines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purcharse Lines](
    [Document Type] [int] NOT NULL,
    [No Receipt] [nvarchar](20) NOT NULL,
    [Line No] [int] NOT NULL,
    [No Transaccion] [nvarchar](20) NOT NULL,
    [Customer No] [nvarchar](20) NOT NULL,
    [Type] [int] NOT NULL,
    [Item No] [nvarchar](15) NOT NULL,
    [Location Code] [nvarchar](10) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Unit of Measure] [nvarchar](10) NOT NULL,
    [Posting Date] [datetime] NOT NULL,
    [Quantity] [decimal](18, 5) NOT NULL,
    [Amount] [decimal](18, 5) NOT NULL,
    [Unit Cost] [decimal](18, 5) NOT NULL,
    [VAT] [decimal](18, 5) NOT NULL,
    [VAT Base Amount] [decimal](18, 5) NOT NULL,
    [Unit Price Incl VAT] [decimal](18, 5) NOT NULL,
    [Unit Price Excl VAT] [decimal](18, 5) NOT NULL,
    [Amount Incl VAT] [decimal](18, 5) NOT NULL,
    [Amount Excl VAT] [decimal](18, 5) NOT NULL,
    [Line Discount %] [decimal](18, 5) NOT NULL,
    [Line Discount Amount Inc IVA] [decimal](18, 5) NOT NULL,
    [Line Discount Amount Exl IVA] [decimal](18, 5) NOT NULL,
    [Profit %] [decimal](18, 5) NOT NULL,
    [Line Amount] [decimal](18, 5) NOT NULL,
    [Customer Price Group] [nvarchar](10) NOT NULL,
    [Gen Bus Posting Group] [nvarchar](10) NOT NULL,
    [Gen Prod Posting Group] [nvarchar](10) NOT NULL,
    [VAT Bus Posting Group] [nvarchar](10) NOT NULL,
    [VAT Prod Posting Group] [nvarchar](10) NOT NULL,
    [Currency Code] [nvarchar](10) NOT NULL,
    [Variant Code] [nvarchar](10) NOT NULL,
    [Unit of Measure Code] [nvarchar](10) NOT NULL,
    [Qty_ per Unit of Measure] [decimal](18, 5) NOT NULL,
    [Quantity (Base)] [decimal](18, 5) NOT NULL,
    [Return Qty_ to Receive] [decimal](18, 5) NOT NULL,
    [Return Qty_ to Receive Base] [decimal](18, 5) NOT NULL,
    [Cross-Reference No] [nvarchar](20) NOT NULL,
    [Unit of Measure (Cross Ref_)] [nvarchar](10) NOT NULL,
    [Product Group Code] [nvarchar](10) NOT NULL,
    [Return Receipt No] [nvarchar](20) NOT NULL,
    [Allow Invoice Disc] [tinyint] NOT NULL,
    [Nonstock] [tinyint] NOT NULL,
    [Out-of-Stock Substitution] [tinyint] NOT NULL,
    [Allow Line Disc] [tinyint] NOT NULL,
    [Return Receipt Line No] [int] NOT NULL,
    [Return Policy] [int] NOT NULL,
    [Cancel Permitted] [int] NOT NULL,
    [Non Refund Amount] [decimal](18, 5) NOT NULL,
    [Return Reason Code] [nvarchar](10) NOT NULL,
    [Store No] [nvarchar](10) NOT NULL,
    [Current Cust_ Price Group] [nvarchar](20) NOT NULL,
    [Offer No] [nvarchar](20) NOT NULL,
    [Promotion No] [nvarchar](20) NOT NULL,
    [Store Sales Location] [nvarchar](10) NOT NULL,
    [Vendor No] [nvarchar](20) NOT NULL,
    [Reserved By POS No_] [nvarchar](10) NOT NULL,
    [Code Payment methods] [nvarchar](20) NOT NULL,
    [Description Payment methods] [nvarchar](100) NOT NULL,
    [Amount Payment methods] [decimal](18, 5) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Purcharse Lines] PRIMARY KEY CLUSTERED 
(
    [Document Type] ASC,
    [No Receipt] ASC,
    [Line No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reserve Summary]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserve Summary](
    [EntryNo] [int] NOT NULL,
    [LineNo] [int] NOT NULL,
    [ItemNo] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [ReservationStatus] [int] NOT NULL,
    [SummaryType] [nvarchar](80) NOT NULL,
    [No Transaccion] [nvarchar](15) NOT NULL,
    [Store No] [nvarchar](15) NULL,
    [Terminal No] [nvarchar](15) NULL,
    [TotalQuantity] [decimal](15, 5) NOT NULL,
    [TotalReservedQuantity] [decimal](18, 5) NOT NULL,
    [TotalAvailableQuantity] [decimal](18, 5) NOT NULL,
    [CurrentReservedQuantity] [decimal](18, 5) NOT NULL,
    [QtyToReserve] [decimal](18, 5) NOT NULL,
    [QtyReserved] [decimal](18, 5) NOT NULL,
    [QteUnreserverd] [decimal](18, 5) NOT NULL,
    [QuantityBase] [decimal](18, 5) NOT NULL,
    [QtyperUnitofMeasure] [decimal](18, 5) NOT NULL,
    [Quantity] [decimal](18, 5) NOT NULL,
    [SerialNo] [nvarchar](15) NOT NULL,
    [LotNo] [nvarchar](15) NOT NULL,
    [LocationCode] [nvarchar](15) NOT NULL,
    [TransferredfromEntryNo] [int] NOT NULL,
    [ItemLedgerEntryNo] [int] NOT NULL,
    [VariantCode] [nvarchar](15) NOT NULL,
    [CreatedBy] [nvarchar](15) NOT NULL,
    [ModifyBy] [nvarchar](15) NOT NULL,
    [CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Reserve Summary] PRIMARY KEY CLUSTERED 
(
    [EntryNo] ASC,
    [LineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales Header]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales Header](
    [Document Type] [int] NOT NULL,
    [No Receipt] [nvarchar](15) NOT NULL,
    [No Transaccion] [nvarchar](15) NOT NULL,
    [Store No] [nvarchar](15) NOT NULL,
    [Customer No] [nvarchar](15) NOT NULL,
    [Customer Name] [nvarchar](50) NULL,
    [Terminal No] [nvarchar](15) NOT NULL,
    [Document Date] [datetime] NOT NULL,
    [Posting Date] [datetime] NOT NULL,
    [Due Date] [datetime] NOT NULL,
    [Posting No] [nvarchar](15) NOT NULL,
    [Posting Description] [nvarchar](50) NOT NULL,
    [Payment Terms Code] [nvarchar](15) NOT NULL,
    [Location Code] [nvarchar](15) NOT NULL,
    [Currency Code] [nvarchar](15) NOT NULL,
    [Currency Factor] [decimal](18, 5) NOT NULL,
    [Customer Price Group] [nvarchar](15) NOT NULL,
    [Customer Disc_ Group] [nvarchar](15) NOT NULL,
    [Language Code] [nvarchar](15) NOT NULL,
    [Salesperson Code] [nvarchar](15) NOT NULL,
    [No_ Printed] [int] NULL,
    [Status] [int] NOT NULL,
    [Prices Including VAT] [tinyint] NOT NULL,
    [Allow Line Disc] [tinyint] NOT NULL,
    [Print Posted Documents] [tinyint] NOT NULL,
    [Last Posting No_] [nvarchar](15) NOT NULL,
    [VAT Registration No_] [nvarchar](15) NOT NULL,
    [VAT Bussines Posting Group] [nvarchar](15) NOT NULL,
    [External Document No_] [nvarchar](35) NOT NULL,
    [No_ Series] [nvarchar](15) NOT NULL,
    [Posting No_ Series] [nvarchar](15) NOT NULL,
    [Return Receipt No_] [nvarchar](15) NOT NULL,
    [Return Receipt No_ Series] [nvarchar](15) NOT NULL,
    [Last Return Receipt No_] [nvarchar](15) NOT NULL,
    [Assigned User ID] [nvarchar](15) NOT NULL,
    [Statement No] [nvarchar](15) NOT NULL,
    [Subtotal Excl IVA] [decimal](18, 5) NOT NULL,
    [Subtotal Inc. IVA] [decimal](18, 5) NOT NULL,
    [Discount %] [decimal](18, 5) NOT NULL,
    [Discount Amount Incl IVA] [decimal](18, 5) NOT NULL,
    [Discount Amount Excl IVA] [decimal](18, 5) NOT NULL,
    [IVA Amount] [decimal](18, 5) NOT NULL,
    [Total Amount] [decimal](18, 5) NOT NULL,
    [TotalAmountEXO] [decimal](18, 5) NOT NULL,
    [DiscountAmountOnSubtotal] [decimal](18, 5) NULL,
    [DocumentTypeFiscal] [int] NULL,
    [CustomerVATResgistrationAux] [nvarchar](20) NULL,
    [CustomerAddressAux] [nvarchar](100) NULL,
    [StatementPOS] [nvarchar](15) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [Sales_Header_PK] PRIMARY KEY CLUSTERED 
(
    [Document Type] ASC,
    [No Receipt] ASC,
    [Store No] ASC,
    [No Transaccion] ASC,
    [Terminal No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales Line]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales Line](
    [Document Type] [int] NOT NULL,
    [No Receipt] [nvarchar](15) NOT NULL,
    [Line No] [int] NOT NULL,
    [No Transaccion] [nvarchar](15) NOT NULL,
    [Customer No] [nvarchar](15) NOT NULL,
    [Type] [int] NOT NULL,
    [Item No] [nvarchar](15) NOT NULL,
    [Location Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](210) NOT NULL,
    [Unit of Measure] [nvarchar](15) NOT NULL,
    [Posting Date] [datetime] NOT NULL,
    [Quantity] [decimal](18, 5) NOT NULL,
    [Amount] [decimal](18, 5) NOT NULL,
    [Unit Cost] [decimal](18, 5) NOT NULL,
    [VAT] [decimal](18, 5) NOT NULL,
    [VAT Base Amount] [decimal](18, 5) NOT NULL,
    [Unit Price Incl VAT] [decimal](18, 5) NOT NULL,
    [Unit Price Excl VAT] [decimal](18, 5) NOT NULL,
    [Amount Incl VAT] [decimal](18, 5) NOT NULL,
    [Amount Excl VAT] [decimal](18, 5) NOT NULL,
    [Line Discount %] [decimal](18, 5) NOT NULL,
    [Line Discount Amount Inc IVA] [decimal](18, 5) NOT NULL,
    [Line Discount Amount Exl IVA] [decimal](18, 5) NOT NULL,
    [Profit %] [decimal](18, 5) NOT NULL,
    [Line Amount] [decimal](18, 5) NOT NULL,
    [Customer Price Group] [nvarchar](15) NOT NULL,
    [Gen Bus Posting Group] [nvarchar](15) NOT NULL,
    [Gen Prod Posting Group] [nvarchar](15) NOT NULL,
    [VAT Bus Posting Group] [nvarchar](15) NOT NULL,
    [VAT Prod Posting Group] [nvarchar](15) NOT NULL,
    [Currency Code] [nvarchar](15) NOT NULL,
    [Variant Code] [nvarchar](15) NOT NULL,
    [Unit of Measure Code] [nvarchar](15) NOT NULL,
    [Qty_ per Unit of Measure] [decimal](18, 5) NOT NULL,
    [Quantity (Base)] [decimal](18, 5) NOT NULL,
    [Return Qty_ to Receive] [decimal](18, 5) NOT NULL,
    [Return Qty_ to Receive Base] [decimal](18, 5) NOT NULL,
    [Cross-Reference No] [nvarchar](15) NOT NULL,
    [Unit of Measure (Cross Ref_)] [nvarchar](15) NOT NULL,
    [Product Group Code] [nvarchar](15) NOT NULL,
    [Return Receipt No] [nvarchar](15) NOT NULL,
    [Allow Invoice Disc] [tinyint] NOT NULL,
    [Nonstock] [tinyint] NOT NULL,
    [Out-of-Stock Substitution] [tinyint] NOT NULL,
    [Allow Line Disc] [tinyint] NOT NULL,
    [Return Receipt Line No] [int] NOT NULL,
    [Return Policy] [int] NOT NULL,
    [Cancel Permitted] [int] NOT NULL,
    [Non Refund Amount] [decimal](18, 5) NOT NULL,
    [Return Reason Code] [nvarchar](15) NOT NULL,
    [Store No] [nvarchar](15) NOT NULL,
    [Current Cust_ Price Group] [nvarchar](15) NOT NULL,
    [Offer No] [nvarchar](15) NOT NULL,
    [Promotion No] [nvarchar](15) NOT NULL,
    [Terminal No] [nvarchar](15) NOT NULL,
    [Vendor No] [nvarchar](15) NOT NULL,
    [Reserved By POS No_] [nvarchar](15) NOT NULL,
    [Code Payment methods] [nvarchar](15) NOT NULL,
    [Description Payment methods] [nvarchar](100) NOT NULL,
    [Amount Payment methods] [decimal](18, 5) NOT NULL,
    [WasIsReturned] [tinyint] NULL,
    [Comment] [nvarchar](210) NULL,
    [QtyReserved] [decimal](18, 5) NULL,
    [QtyReservedBase] [decimal](18, 5) NULL,
    [EntryReserveNo] [int] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [Sales_Line_PK] PRIMARY KEY CLUSTERED 
(
    [Document Type] ASC,
    [No Receipt] ASC,
    [Line No] ASC,
    [No Transaccion] ASC,
    [Store No] ASC,
    [Terminal No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales Payment methods]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales Payment methods](
    [Document Type] [int] NOT NULL,
    [Line No] [int] NOT NULL,
    [No Receipt] [nvarchar](15) NOT NULL,
    [StoreCode] [nvarchar](15) NOT NULL,
    [Transaction No] [nvarchar](15) NOT NULL,
    [Code Payment Metodth] [nvarchar](15) NOT NULL,
    [Terminal No] [nvarchar](15) NOT NULL,
    [Description Payment Metodth] [nvarchar](100) NOT NULL,
    [Amount] [decimal](18, 5) NOT NULL,
    [State] [int] NOT NULL,
    [Reference] [nvarchar](max) NULL,
    [Creation date] [datetime] NOT NULL,
    [Created by user] [nvarchar](50) NOT NULL,
    [Last modified date] [datetime] NOT NULL,
    [Last modified by the user] [nvarchar](50) NOT NULL,
    [Prepayment] [int] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Sales Payment methods] PRIMARY KEY CLUSTERED 
(
    [Document Type] ASC,
    [No Receipt] ASC,
    [Line No] ASC,
    [StoreCode] ASC,
    [Transaction No] ASC,
    [Code Payment Metodth] ASC,
    [Terminal No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales Prices]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales Prices](
    [Item No] [nvarchar](15) NOT NULL,
    [Sales Code] [nvarchar](15) NOT NULL,
    [Variant Code] [nvarchar](15) NOT NULL,
    [Starting Date] [datetime] NOT NULL,
    [Ending Date] [datetime] NOT NULL,
    [Unit Price] [decimal](18, 5) NOT NULL,
    [Price Includes VAT] [int] NOT NULL,
    [VAT Bus. Posting Gr. (Price)] [nvarchar](15) NOT NULL,
    [Sales Type] [int] NOT NULL,
    [Minimum Quantity] [decimal](18, 5) NOT NULL,
    [Unit of Measure Code] [nvarchar](15) NOT NULL,
    [Creation date] [datetime] NOT NULL,
    [Created by user] [nvarchar](50) NOT NULL,
    [Last modified date] [datetime] NOT NULL,
    [Last modified by the user] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Sales Prices] PRIMARY KEY CLUSTERED 
(
    [Item No] ASC,
    [Sales Code] ASC,
    [Variant Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales Prices Header]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales Prices Header](
    [Sales Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Sales Prices Header] PRIMARY KEY CLUSTERED 
(
    [Sales Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salesperson List]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salesperson List](
    [Customer ID] [nvarchar](15) NOT NULL,
    [Salesperson ID] [nvarchar](15) NOT NULL,
    [Date] [datetime] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Salesperson List] PRIMARY KEY CLUSTERED 
(
    [Customer ID] ASC,
    [Salesperson ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salesperson/Employee]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salesperson/Employee](
    [Code] [nvarchar](15) NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [Type] [nvarchar](50) NOT NULL,
    [Comision%] [decimal](18, 5) NOT NULL,
    [Phone] [nvarchar](50) NOT NULL,
    [E-Mail] [nvarchar](50) NULL,
    [Avg. Estimated Value] [decimal](18, 5) NOT NULL,
    [Photo] [nvarchar](50) NULL,
    [CodeAddress] [nvarchar](15) NOT NULL,
    [Code Permission] [nvarchar](15) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Salesperson/Employee] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SequenceTypes]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SequenceTypes](
    [Id] [uniqueidentifier] NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_SequenceTypes] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SerialNumbersShelf]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerialNumbersShelf](
    [Sequence_Type_Id] [uniqueidentifier] NOT NULL,
    [Serial_Value] [int] NOT NULL,
    [Is_Hold] [bit] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_SerialNumbersShelf_1] PRIMARY KEY CLUSTERED 
(
    [Sequence_Type_Id] ASC,
    [Serial_Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SerialSchemas]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerialSchemas](
    [Id] [uniqueidentifier] NOT NULL,
    [Store_code_Id] [nvarchar](15) NOT NULL,
    [POS_code_Id] [uniqueidentifier] NULL,
    [Sequence_Type_Id] [uniqueidentifier] NOT NULL,
    [Initial_Value] [int] NULL,
    [Increment] [int] NULL,
    [Serial_Mask] [nvarchar](50) NULL,
    [Leading_Zeros_Length] [tinyint] NULL,
    [Expiry_Date] [datetime2](7) NULL,
    [Max_Value] [bigint] NULL,
    [Is_Cycle] [bit] NULL,
    [Last_Serial] [bigint] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Serial_Schema] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SessionData]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionData](
    [SessionId] [uniqueidentifier] NOT NULL,
    [Parameter] [nvarchar](60) NOT NULL,
    [Value] [ntext] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
    [Code] [varchar](50) NOT NULL,
    [width] [int] NULL,
    [long] [int] NULL,
    [deep] [int] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Special Group Item]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Special Group Item](
    [Item Number] [nvarchar](15) NOT NULL,
    [Code Special Group] [nvarchar](15) NOT NULL,
    [Special Group Description] [nvarchar](100) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Special Groups List] PRIMARY KEY CLUSTERED 
(
    [Item Number] ASC,
    [Code Special Group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Special Groups]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Special Groups](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](100) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Special Groups] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StatementLines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatementLines](
    [No Transaccion] [nvarchar](15) NOT NULL,
    [Store No] [nvarchar](15) NOT NULL,
    [Terminal No] [nvarchar](15) NOT NULL,
    [SalesPaymentMethodCode] [nvarchar](15) NOT NULL,
    [LineNo] [int] NOT NULL,
    [Description] [nvarchar](100) NOT NULL,
    [Counted] [decimal](18, 5) NOT NULL,
    [TransactionAmount] [decimal](18, 5) NOT NULL,
    [DiferentAmount] [decimal](18, 5) NOT NULL,
    [StatementCode] [nvarchar](20) NOT NULL,
    [Quantity] [int] NOT NULL,
    [Status] [int] NOT NULL,
    [CreationDate] [datetime] NOT NULL,
    [CreatedByUser] [nvarchar](50) NOT NULL,
    [ModifyDate] [datetime] NOT NULL,
    [ModifyByUser] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StatementLines] PRIMARY KEY CLUSTERED 
(
    [No Transaccion] ASC,
    [Store No] ASC,
    [Terminal No] ASC,
    [SalesPaymentMethodCode] ASC,
    [LineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Store]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
    [Code] [nvarchar](15) NOT NULL,
    [Sales Code] [nvarchar](15) NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [Code Address] [nvarchar](15) NOT NULL,
    [Stament Method] [int] NOT NULL,
    [Max Diff to Allow] [nvarchar](10) NOT NULL,
    [image] [image] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stores]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
    [Store No.] [uniqueidentifier] NOT NULL,
    [Description] [nvarchar](60) NOT NULL,
    [Currency No.] [uniqueidentifier] NOT NULL,
    [Country] [nvarchar](250) NOT NULL,
    [City] [nvarchar](250) NOT NULL,
    [State] [nvarchar](250) NOT NULL,
    [Address 1] [text] NULL,
    [Adderss 2] [text] NULL,
    [Address 3] [text] NULL,
    [Phone 1] [nvarchar](20) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Style]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
    [Code] [nvarchar](50) NOT NULL,
    [Descripcion] [nchar](10) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Style] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sustitute]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sustitute](
    [Code Item] [nvarchar](15) NOT NULL,
    [Code Item Sustitute] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](100) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Sustitute] PRIMARY KEY CLUSTERED 
(
    [Code Item] ASC,
    [Code Item Sustitute] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sysdiaGrams]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiaGrams](
    [name] [nvarchar](128) NOT NULL,
    [principal_id] [int] NOT NULL,
    [diaGram_id] [int] NOT NULL,
    [version] [int] NULL,
    [definition] [varbinary](max) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Template Variant Header]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template Variant Header](
    [Code Template Variant Header] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Template Variant Header] PRIMARY KEY CLUSTERED 
(
    [Code Template Variant Header] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Template Variant Line]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template Variant Line](
    [Code Template Variant Header] [nvarchar](15) NOT NULL,
    [Code Variant] [nvarchar](10) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Template Variant List_1] PRIMARY KEY CLUSTERED 
(
    [Code Template Variant Header] ASC,
    [Code Variant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unit of measure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit of measure](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Unidad de Medida] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
    [UserId] [uniqueidentifier] NOT NULL,
    [FirstName] [varchar](51) NOT NULL,
    [SecondName] [varchar](51) NULL,
    [LastName] [varchar](51) NOT NULL,
    [NamePrefix] [varchar](5) NULL,
    [NameSufix] [varchar](5) NULL,
    [ExpireDate] [datetime] NULL,
    [LastChageDate] [datetime] NULL,
    [NeedChangePassword] [tinyint] NULL,
    [PasswordHash] [char](40) NOT NULL,
    [Salt] [char](40) NULL,
    [Username] [varchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
    [UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPermissions]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermissions](
    [User No.] [uniqueidentifier] NOT NULL,
    [Permission No.] [uniqueidentifier] NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_UserPermissions_1] PRIMARY KEY CLUSTERED 
(
    [User No.] ASC,
    [Permission No.] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserSession]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSession](
    [SessionId] [uniqueidentifier] NOT NULL,
    [UserId] [uniqueidentifier] NULL,
    [CreatedDate] [datetime] NOT NULL,
    [ExpireDate] [datetime] NOT NULL,
    [IsClosed] [tinyint] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_UserSession] PRIMARY KEY CLUSTERED 
(
    [SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Validation Period]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Validation Period](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NOT NULL,
    [Starting Date] [datetime] NOT NULL,
    [Ending Date] [datetime] NOT NULL,
    [Starting Time] [time](7) NOT NULL,
    [Ending Time] [time](7) NOT NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Validation Period] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Variant Group]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variant Group](
    [Code Template Variant Header] [nvarchar](15) NOT NULL,
    [Code Variant] [nvarchar](15) NOT NULL,
    [Code Variant Line] [nvarchar](15) NOT NULL,
    [Date] [datetime] NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Variant Group] PRIMARY KEY CLUSTERED 
(
    [Code Template Variant Header] ASC,
    [Code Variant] ASC,
    [Code Variant Line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Variant Headers]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variant Headers](
    [Code Variant] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Variant Headers] PRIMARY KEY CLUSTERED 
(
    [Code Variant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Variant Lines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variant Lines](
    [Code Variant] [nvarchar](15) NOT NULL,
    [Code Variant Line] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_Variant Lines] PRIMARY KEY CLUSTERED 
(
    [Code Variant] ASC,
    [Code Variant Line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VAT Business Posting Group]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAT Business Posting Group](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [Default Operation Sales Type] [nvarchar](15) NULL,
    [Default Operation Purchas Type] [nvarchar](15) NULL,
    [Check Vat Exemtion] [int] NULL,
    [Serie Sales] [nvarchar](15) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_VAT Business Posting Group] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VAT Posting Setup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAT Posting Setup](
    [VAT Bus. Posting Group] [nvarchar](15) NOT NULL,
    [VAT Prod. Posting Group] [nvarchar](15) NULL,
    [VAT Calculation Type] [int] NULL,
    [VAT %] [decimal](18, 5) NULL,
    [Unrealized VAT Type] [nvarchar](15) NULL,
    [VAT Identifier] [nvarchar](15) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_VAT Posting Setup] PRIMARY KEY CLUSTERED 
(
    [VAT Bus. Posting Group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VAT Prod. Posting Group]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAT Prod. Posting Group](
    [Code] [nvarchar](15) NOT NULL,
    [Description] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_VAT Prod. Posting Group] PRIMARY KEY CLUSTERED 
(
    [Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
    [No] [nvarchar](10) NOT NULL,
    [Name] [nvarchar](50) NULL,
    [Name2] [nvarchar](50) NULL,
    [Address] [nvarchar](50) NULL,
    [Phone] [nvarchar](50) NULL,
    [Block] [int] NULL,
    [Balance] [decimal](18, 5) NULL,
    [Purchases] [decimal](18, 5) NULL,
    [Inv. Discounts] [decimal](18, 5) NULL,
    [Balance Due] [decimal](18, 5) NULL,
    [Payments] [decimal](18, 5) NULL,
    [Invoice Amounts] [decimal](18, 5) NULL,
    [Cr. Memo Amounts] [decimal](18, 5) NULL,
    [Outstanding Orders] [decimal](18, 5) NULL,
    [Amt. Rcd. Not Invoiced] [decimal](18, 5) NULL,
    [Prices Including VAT] [decimal](18, 5) NULL,
    [VAT Registration No.] [nvarchar](50) NULL,
    [Debit Amount] [decimal](18, 5) NULL,
    [Credit Amount] [decimal](18, 5) NULL,
    [Refunds] [decimal](18, 5) NULL,
    [Other Amounts] [decimal](18, 5) NULL,
    [Prepayment %] [decimal](18, 5) NULL,
    [Outstanding Invoices] [decimal](18, 5) NULL,
    [Partner Type] [int] NULL,
    [Preferred Bank Account] [nvarchar](50) NULL,
    [No. of Pstd. Receipts] [int] NULL,
    [No. of Pstd. Invoices] [int] NULL,
    [No. of Pstd. Return Shipments] [int] NULL,
    [No. of Pstd. Credit Memos] [int] NULL,
    [No. of Quotes] [int] NULL,
    [No. of Blanket Orders] [int] NULL,
    [No. of Orders] [int] NULL,
    [No. of Invoices] [int] NULL,
    [No. of Return Orders] [int] NULL,
    [No. of Credit Memos] [int] NULL,
    [VAT Bus. Posting Group] [nvarchar](15) NULL,
    [Creation date] [datetime] NULL,
    [Created by user] [nvarchar](50) NULL,
    [Last modified date] [datetime] NULL,
    [Last modified by the user] [nvarchar](50) NULL,
    [GrRowId] [int] IDENTITY(1,1) NOT NULL,
    [GrRowTimestamp] [timestamp] NULL,
 CONSTRAINT [PK_No proveedor] PRIMARY KEY CLUSTERED 
(
    [No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Split]
(
    @String NVARCHAR(4000),
    @Delimiter NCHAR(1)
)
RETURNS TABLE
AS
RETURN
(
    WITH Split(stpos,endpos)
    AS(
        SELECT 0 AS stpos, CHARINDEX(@Delimiter,@String) AS endpos
        UNION ALL
        SELECT endpos+1, CHARINDEX(@Delimiter,@String,endpos+1)
            FROM Split
            WHERE endpos > 0
    )
    SELECT 'Id' = ROW_NUMBER() OVER (ORDER BY (SELECT 1)),
        'Data' = SUBSTRING(@String,stpos,COALESCE(NULLIF(endpos,0),LEN(@String)+1)-stpos)
    FROM Split
)


GO
/****** Object:  View [dbo].[vUserPermissions]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vUserPermissions]
AS

SELECT PM.[No.], PM.[Description], PM.[Module], PM.[Type], UP.[User No.] FROM [UserPermissions] AS UP INNER JOIN [PermissionsMstr] AS PM
ON PM.[No.] = UP.[Permission No.]


GO
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [DF_Currency_Decimal places]  DEFAULT ((0)) FOR [Decimal places]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_NCF]  DEFAULT ((0.0)) FOR [NCF]
GO
ALTER TABLE [dbo].[INFOPRINTERFISCAL] ADD  CONSTRAINT [DF_INFOPRINTERFISCAL_DocumentTypeFiscal]  DEFAULT ((0)) FOR [DocumentTypeFiscal]
GO
ALTER TABLE [dbo].[INFOPRINTERFISCAL_AUX] ADD  CONSTRAINT [DF_INFOPRINTERFISCAL_AUX_DocumentTypeFiscal]  DEFAULT ((0)) FOR [DocumentTypeFiscal]
GO
ALTER TABLE [dbo].[PermissionsMstr] ADD  CONSTRAINT [DF_PermissionsMstr_No.]  DEFAULT (newid()) FOR [No.]
GO
ALTER TABLE [dbo].[Sales Header] ADD  CONSTRAINT [DF_Sales Header_TotalAmountEXO]  DEFAULT ((0)) FOR [TotalAmountEXO]
GO
ALTER TABLE [dbo].[Sales Header] ADD  CONSTRAINT [DF_Sales Header_DocumentTypeFiscal]  DEFAULT ((0)) FOR [DocumentTypeFiscal]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_TRANSACTIONID]  DEFAULT ('') FOR [No Transaccion]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_STORE]  DEFAULT ('') FOR [Store No]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_TERMINAL]  DEFAULT ('') FOR [Terminal No]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_AMOUNTCURPOS]  DEFAULT ((0)) FOR [SalesPaymentMethodCode]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_LINENUM]  DEFAULT ((0)) FOR [LineNo]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_AMOUNTTENDEREDPOS]  DEFAULT ((0)) FOR [Description]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_AMOUNTTENDERED]  DEFAULT ((0)) FOR [Counted]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_AMOUNTCUR]  DEFAULT ((0)) FOR [TransactionAmount]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_STATEMENTCODE]  DEFAULT ('') FOR [StatementCode]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_QTY]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_StatementLines_STATUSTYPE]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_CREATEDDATE]  DEFAULT ('1900-01-01 00:00:00.000') FOR [CreationDate]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_Table_1_CREATEDBY]  DEFAULT ('?') FOR [CreatedByUser]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_StatementLines_CreationDate1]  DEFAULT ('1900-01-01 00:00:00.000') FOR [ModifyDate]
GO
ALTER TABLE [dbo].[StatementLines] ADD  CONSTRAINT [DF_StatementLines_CreatedByUser1]  DEFAULT ('?') FOR [ModifyByUser]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_NeedChangePassword]  DEFAULT ((0)) FOR [NeedChangePassword]
GO
ALTER TABLE [dbo].[UserSession] ADD  CONSTRAINT [DF_UserSession_IsClosed]  DEFAULT ((0)) FOR [IsClosed]
GO
/****** Object:  StoredProcedure [dbo].[GT]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GT] 
@año int,@mes int as
SELECT     
           
            convert(nvarchar,sh.[Document Date],103) AS FECHDOC ,
           
            isnull(im.[No Receipt],'') No_referencia
            ,(select top 1 c.[VAT Registration No.] from [dbo].[Customer] c  where c.[No]=sh.[Customer No]) AS RUC, 
           
            CASE WHEN (sh.Status = 1 or sh.Status=4 or sh.Status=5 ) THEN sh.[Customer Name] ELSE '' END AS NomCLI, 
           
            isnull(im.[SERIEIMPRESORA],'') AS NUMserie,
           
            CASE WHEN (sh.Status = 1 and sh.[Document Type] = 8) THEN im.[NDOCFISCAL] ELSE '' END AS NFACT
                       
            ,CASE WHEN (sh.[Document Type]=9 and sh.Status=4 or sh.Status=5) THEN sh.[No Transaccion] ELSE '' END AS NNC, 
    
            CASE WHEN (sh.[Document Type]=9) THEN isnull(im.DOCAFECTADO,'') ELSE '' END AS DOCAFECTADO,
           
            CASE WHEN (sh.[Document Type]=9) THEN isnull(im.SERIEAFECTADO,'') ELSE '' END AS SERIEAFECTADA,
           
            CASE WHEN (sh.Status = 1 or sh.Status=4 or sh.Status=5 ) then isnull(im.fechaimpafectada,'') ELSE '' END AS FECHAFECT,

            isnull((select top 1  sh.[Total Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0),0) AS VentaNoGrabable,

            isnull((select top 1  sh.[Subtotal Excl IVA] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.07),0) AS BaseImponible7,

            isnull((select top 1  shi.[IVA Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.07),0) AS IVACONT7,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.07),0.07) AS PORCALICCONT7,

            isnull((select  shi.[Subtotal Excl IVA] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.10),0) AS BaseImponible10,

            isnull((select top 1  shi.[IVA Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.10),0) AS IVACONT10,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.10),0.10) AS PORCALICCONT10,

            
            isnull((select top 1 shi.[Subtotal Excl IVA] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.15),0) AS BaseImponible15,

            isnull((select top 1 shi.[IVA Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.15),0) AS IVACONT15,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.15),0.15) AS PORCALICCONT15,
            
            (sh.[Total Amount]) AS TOTAL 
           
FROM dbo.[Sales Header] sh
    inner join dbo.INFOPRINTERFISCAL im
        on (im.[No Transaccion]=sh.[No Transaccion]
        and im.[No Receipt]=sh.[No Receipt])
WHERE YEAR(sh.[Document Date]) = @Año AND DATEPART(MONTH, sh.[Document Date]) = @Mes
and sh.Status<>2
and sh.status=1 


union all
---NOTAS DE CREDITO---
SELECT     
           
            convert(nvarchar,sh.[Document Date],103) AS FECHDOC ,
           
            isnull(im.[No Receipt],'') No_referencia
            ,(select top 1 c.[VAT Registration No.] from [dbo].[Customer] c  where c.[No]=sh.[Customer No]) AS RUC, 
           
            CASE WHEN (sh.Status = 1 or sh.Status=4 or sh.Status=5 ) THEN sh.[Customer Name] ELSE '' END AS NomCLI, 
           
            isnull(im.[SERIEIMPRESORA],'') AS NUMserie,
           
            '' NFACT
                       
            ,CASE WHEN (sh.[Document Type]=9 and sh.Status=4 or sh.Status=5) THEN sh.[No Transaccion] ELSE '' END AS NNC, 
    
            CASE WHEN (sh.[Document Type]=9) THEN isnull(im.DOCAFECTADO,'') ELSE '' END AS DOCAFECTADO,
           
            CASE WHEN (sh.[Document Type]=9) THEN isnull(im.SERIEAFECTADO,'') ELSE '' END AS SERIEAFECTADA,
           
            CASE WHEN (sh.Status = 1 or sh.Status=4 or sh.Status=5 ) then isnull(im.fechaimpafectada,'') ELSE '' END AS FECHAFECT,

            isnull((select top 1  sh.[Total Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0),0) AS VentaNoGrabable,

            isnull((select top 1  (shi.[Subtotal Excl IVA])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.07),0) AS BaseImponible7,

            isnull((select top 1 (shi.[IVA Amount])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.07),0) AS IVACONT7,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.07),0.07) AS PORCALICCONT7,

            isnull((select  (shi.[Subtotal Excl IVA])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.10),0) AS BaseImponible10,

            isnull((select top 1 (shi.[IVA Amount])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.10),0) AS IVACONT10,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.10),0.10) AS PORCALICCONT10,

            
            isnull((select top 1 (shi.[Subtotal Excl IVA]*-1) from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.15),0) AS BaseImponible15,

            isnull((select top 1 (shi.[IVA Amount])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.15),0) AS IVACONT15,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.15),0.15) AS PORCALICCONT15,
            
            (sh.[Total Amount]*-1) AS TOTAL 
           
FROM dbo.[Sales Header] sh
    inner join dbo.INFOPRINTERFISCAL im
        on (im.[No Transaccion]=sh.[No Transaccion]
        and im.[No Receipt]=sh.[No Receipt])
WHERE YEAR(sh.[Document Date]) = @Año AND DATEPART(MONTH, sh.[Document Date]) = @Mes
and sh.Status<>2
and (sh.status=4 
or sh.Status=5) 


union all

---FACTURAS AUX---

SELECT     
           
            convert(nvarchar,sh.[Document Date],103) AS FECHDOC ,
           
            isnull(im.NumDocFiscal,'') No_referencia
            ,(select top 1 c.[VAT Registration No.] from [dbo].[Customer] c  where c.[No]=sh.[Customer No]) AS RUC, 
           
            CASE WHEN (sh.Status = 1 or sh.Status=4 or sh.Status=5 ) THEN sh.[Customer Name] ELSE '' END AS NomCLI, 
           
            isnull(im.SerialPrinter,'') AS NUMserie,
           
            CASE WHEN (sh.Status = 1 and sh.[Document Type] = 8) THEN im.[NumDocFiscal]ELSE '' END AS NFACT
                       
            ,CASE WHEN (sh.[Document Type]=9 and sh.Status=4 or sh.Status=5) THEN sh.[No Transaccion] ELSE '' END AS NNC, 
    
            CASE WHEN (sh.[Document Type]=9) THEN isnull(im.DocAfect,'') ELSE '' END AS DOCAFECTADO,
           
            CASE WHEN (sh.[Document Type]=9) THEN isnull(im.SerialPrintetAfect,'') ELSE '' END AS SERIEAFECTADA,
           
            CASE WHEN (sh.Status = 1 or sh.Status=4 or sh.Status=5 ) then isnull(im.DatePrinterAfect,'') ELSE '' END AS FECHAFECT,

            isnull((select top 1  sh.[Total Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0),0) AS VentaNoGrabable,

            isnull((select top 1 shi.[Subtotal Excl IVA] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.07), 0) AS BaseImponible7,

            isnull((select top 1 shi.[IVA Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.07),0) AS IVACONT7,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.07),0.07) AS PORCALICCONT7,

            isnull((select top 1 shi.[Subtotal Excl IVA] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.10),0) AS BaseImponible10,

            isnull((select top 1 shi.[IVA Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.10),0) AS IVACONT10,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.10),0.10) AS PORCALICCONT10,

            
            isnull((select top 1 shi.[Subtotal Excl IVA] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.15),0) AS BaseImponible15,

            isnull((select top 1 shi.[IVA Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.15), 0) AS IVACONT15,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.15), 0.15) AS PORCALICCONT15,
            (sh.[Total Amount]) AS TOTAL 
           
FROM dbo.[Sales Header] sh
    inner join dbo.INFOPRINTERFISCAL_AUX im
        on (im.[No Transaccion]=sh.[No Transaccion]
        and im.NumDocFiscal=sh.[No Receipt])
WHERE YEAR(sh.[Document Date]) = @Año AND DATEPART(MONTH, sh.[Document Date]) = @Mes
and sh.Status<>2
and sh.status=1 


union all
----NOTAS DE CREDITO AUX----
SELECT     
           
            convert(nvarchar,sh.[Document Date],103) AS FECHDOC ,
           
            isnull(im.NumDocFiscal,'') No_referencia
            ,(select top 1 c.[VAT Registration No.] from [dbo].[Customer] c  where c.[No]=sh.[Customer No]) AS RUC, 
           
            CASE WHEN (sh.Status = 1 or sh.Status=4 or sh.Status=5 ) THEN sh.[Customer Name] ELSE '' END AS NomCLI, 
           
            isnull(im.SerialPrinter,'') AS NUMserie,
           
            '' NFACT
                       
            ,CASE WHEN (sh.[Document Type]=9 and sh.Status=4 or sh.Status=5) THEN sh.[No Transaccion] ELSE '' END AS NNC, 
    
            CASE WHEN (sh.[Document Type]=9) THEN isnull(im.DocAfect,'') ELSE '' END AS DOCAFECTADO,
           
            CASE WHEN (sh.[Document Type]=9) THEN isnull(im.SerialPrintetAfect,'') ELSE '' END AS SERIEAFECTADA,
           
            CASE WHEN (sh.Status = 1 or sh.Status=4 or sh.Status=5 ) then isnull(im.DatePrinterAfect,'') ELSE '' END AS FECHAFECT,

            isnull((select top 1  sh.[Total Amount] from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0),0) AS VentaNoGrabable,


            isnull((select top 1 (shi.[Subtotal Excl IVA])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.07),0) AS BaseImponible7,

            isnull((select top 1 (shi.[IVA Amount])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.07),0) AS IVACONT7,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.07),0.07) AS PORCALICCONT7,

            isnull((select top 1 (shi.[Subtotal Excl IVA])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.10),0) AS BaseImponible10,

            isnull((select top 1  (shi.[IVA Amount])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.10),0) AS IVACONT10,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.10),0.10) AS PORCALICCONT10,

            
            isnull((select top 1  (shi.[Subtotal Excl IVA]*-1) from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.15),0) AS BaseImponible15,

            isnull((select top 1 (shi.[IVA Amount])*-1 from [Sales Header] shi 
            inner join [Sales Line] sli 
            on (sli.[No Transaccion]=shi.[No Transaccion]
            and shi.[No Transaccion]=sh.[No Transaccion])
            where sli.vat=0.15),0) AS IVACONT15,

            isnull((select top 1 (sl.VAT)  from [Sales Line] sl where sl.[No Transaccion]=sh.[No Transaccion] and sl.VAT=0.15),0.15) AS PORCALICCONT15,
            
            (sh.[Total Amount]*-1) AS TOTAL 
           
FROM dbo.[Sales Header] sh
    inner join dbo.INFOPRINTERFISCAL_AUX im
        on (im.[No Transaccion]=sh.[No Transaccion]
        and im.NumDocFiscal=sh.[No Receipt])
WHERE YEAR(sh.[Document Date]) = @Año AND DATEPART(MONTH, sh.[Document Date]) = @Mes
and sh.Status<>2
and (sh.status=4 
or sh.Status=5) 
ORDER BY 1,2
GO
/****** Object:  StoredProcedure [dbo].[spAddPermissionTo]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spAddPermissionTo]
    -- Add the parameters for the stored procedure here
    @iPermissionNo uniqueidentifier,
    @iUserNo uniqueidentifier
    
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    INSERT INTO [UserPermissions]
           ([User No.]
           ,[Permission No.])
     VALUES
           (@iUserNo
           ,@iPermissionNo);
END


GO
/****** Object:  StoredProcedure [dbo].[spAddSessionUserData]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spAddSessionUserData]
    -- Add the parameters for the stored procedure here
    @iSessionNo uniqueidentifier,
    @iParam nvarchar(60),
    @iValue ntext
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF NOT EXISTS (SELECT * FROM [SessionData] WHERE [SessionId]=@iSessionNo AND LTRIM(RTRIM(UPPER([Parameter]))) = LTRIM(RTRIM(UPPER(@iParam))))
    BEGIN
        INSERT INTO [SessionData]([SessionId],[Parameter],[Value]) VALUES (@iSessionNo,@iParam ,@iValue);
    END
    ELSE
    BEGIN
        UPDATE [SessionData] SET [Value] = @iValue
        WHERE [SessionId]=@iSessionNo AND LTRIM(RTRIM(UPPER([Parameter]))) = LTRIM(RTRIM(UPPER(@iParam)));
    END
END


GO
/****** Object:  StoredProcedure [dbo].[spCreatePermission]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCreatePermission]
    -- Add the parameters for the stored procedure here
    @iDescription nvarchar(160),
    @iModule nvarchar(250),
    @iType nvarchar(10)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [PermissionsMstr]
           ([No.]
           ,[Description]
           ,[Module]
           ,[Type])
     VALUES
           (NEWID()
           ,@iDescription
           ,@iModule
           ,@iType);

END


GO
/****** Object:  StoredProcedure [dbo].[spCreateUser]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Keinier Caboverde
-- Create date: 
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCreateUser]
    -- Add the parameters for the stored procedure here
    @iFirstName varchar(51),
    @iSecondName varchar(51) = '',
    @iLastName varchar(51),
    @iUserName varchar(40),
    @iPassword varchar(40),
    @iNamePrefix varchar(5) = '',
    @iNameSufix varchar(5) = '',
    @iNeedChangePswd tinyint = 1,
    @iExpireDate DateTime = '9999-12-31 00:00:00'

AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @UserNameNormalized varchar(40);
    DECLARE @Salt varchar(40);

    SET @UserNameNormalized = LTRIM(RTRIM(UPPER(@iUserName)));
    set @Salt = HASHBYTES('SHA1','current');

    IF NOT EXISTS (SELECT * FROM [User] WHERE LTRIM(RTRIM(UPPER([Username]))) = @UserNameNormalized)
    BEGIN
    INSERT INTO [User]
           ([UserId]
           ,[FirstName]
           ,[SecondName]
           ,[LastName]
           ,[NamePrefix]
           ,[NameSufix]
           ,[ExpireDate]
           ,[LastChageDate]
           ,[NeedChangePassword]
           ,[PasswordHash]
           ,[Salt]
           ,[Username])  OUTPUT INSERTED.[UserId]
     VALUES
           (NEWID()
           ,@iFirstName
           ,@iSecondName
           ,@iLastName
           ,@iNamePrefix
           ,@iNameSufix
           ,@iExpireDate
           ,CURRENT_TIMESTAMP
           ,@iNeedChangePswd
           ,CONVERT(varchar(max),HASHBYTES('SHA1', (@UserNameNormalized+':'+@iPassword)),2) 
           ,@Salt
           ,@UserNameNormalized);
           
           --SELECT 1;
    END
    ELSE
    BEGIN
            SELECT '00000000-0000-0000-0000-000000000000';
    END

END


GO
/****** Object:  StoredProcedure [dbo].[spCreditMemoInformationByDocument]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCreditMemoInformationByDocument]
    -- Add the parameters for the stored procedure here
    @iNoTransaccion varchar(15) = '', 
    @iDocumentType int = 0          ,
    @iStore_No      varchar(15) = ''
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    
    -- query
    SELECT 
         SH.[No Transaccion] as [No Transaccion]
        ,AVG(SH.[Total Amount]) as [Total Amount Invoice]
        ,ISNULL(SUM(SH_NC.[Total Amount]),0) as [Total Amount Credit Memo]
        ,ISNULL(AVG(SH.[Total Amount])-SUM(SH_NC.[Total Amount]),AVG(SH.[Total Amount])) AS [Remaining Amount]
    FROM [Sales Header] AS SH 
    LEFT JOIN [Sales Header] AS SH_NC ON SH_NC.[External Document No_]=SH.[No Transaccion]
    WHERE SH.[Document Type] = @iDocumentType AND SH.[No Transaccion]=@iNoTransaccion AND SH.[Store No] = @iStore_No 
    GrOUP BY SH.[No Transaccion]
END


GO
/****** Object:  StoredProcedure [dbo].[spCreditMemoInformationByLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCreditMemoInformationByLine] 
    -- Add the parameters for the stored procedure here
    @iLines SalesDocumentLine READONLY
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

 SELECT DISTINCT 
        SL.[Store No]
        ,SL.[No Transaccion]
        ,SL.[Document Type]
        ,SL.[Line No]
        ,AVG(SL.[Amount incl vat]) AS [Amount incl vat INV]
        ,SUM(isnull (SL_NC.[Amount incl vat],0)) AS [Amount incl vat NC]
        ,( -ISNULL(AVG(SL_NC.[IVA Amount]),0) + AVG(SL.[Amount incl vat]) 
                            + AVG(SL.[Line Discount Amount Exl IVA]) 
                            - ( AVG(SL.[Amount incl vat]) / (ISNULL((
                                SELECT [Subtotal Excl IVA] 
                                FROM [SALES HEADER] 
                                WHERE [NO TRANSACCION]=SL.[No Transaccion] AND [DOCUMENT TYPE]=SL.[Document Type] AND [Store No] = SL.[Store No] 
                                    ),1))
                            *(ISNULL((
                                SELECT [DiscountAmountOnSubtotal] 
                                FROM [SALES HEADER] 
                                WHERE [NO TRANSACCION]=SL.[No Transaccion] AND [DOCUMENT TYPE]=SL.[Document Type] AND [Store No] = SL.[Store No] 
                                ),1))))
                          -(SUM(isnull (SL_NC.[Amount EXcl vat] ,0)))   AS [Amount to Return] -- validacion
        ,AVG(SL.[Quantity]) AS [Quantity INV]
        ,AVG(isnull (SL_NC.[Quantity],0)) AS [Quantity NC]
        ,SUM(isnull (SL_NC.[Return Qty_ to Receive],0)) AS [Return Qty_ to Receive]
        ,AVG(isnull (SL.[Quantity],0))-SUM(isnull (SL_NC.[Return Qty_ to Receive],0)) AS [Qty_ to Return] -- validacion
        ,SUM(isnull (SL_NC.[Amount incl vat],0)) AS [Amount incl vat NC]
    FROM [Sales Line] as SL 
    INNER JOIN @iLines AS SL_TO_RET ON SL.[Document Type] = SL_TO_RET.[Document Type] AND SL.[No Transaccion] = SL_TO_RET.[No Transaccion] AND SL.[Store No] = SL_TO_RET.[Store No] AND SL.[Line No] = SL_TO_RET.[Line No]
    LEFT JOIN 
    (
        SELECT DISTINCT SL.*,SH.[IVA AMOUNT] ,SH.[External Document No_] FROM [Sales Header] as SH 
        INNER JOIN @iLines AS SL_TO_RET ON SH.[External Document No_]=SL_TO_RET.[No Transaccion] 
        INNER JOIN [Sales Line] AS SL ON SH.[Document Type] = SL.[Document Type] AND SH.[Store No] = SL.[Store No] AND SH.[No Transaccion]=SL.[No Transaccion]
    ) AS SL_NC ON SL_NC.[External Document No_]=SL.[No Transaccion] AND SL_NC.[Return Receipt Line No]=SL.[Line No]
    GrOUP BY SL.[Store No],SL.[No Transaccion],SL.[Document Type],SL.[Line No]

END


GO
/****** Object:  StoredProcedure [dbo].[spDelete_Comparasion_Unit_Of_Measure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDelete_Comparasion_Unit_Of_Measure]

           @Code            AS     nvarchar(15)

AS 
BEGIN


DELETE FROM [dbo].[Comparasion Unit Of Measure]

WHERE [Code]=@Code 
END





GO
/****** Object:  StoredProcedure [dbo].[spDelete_INFOPRINTERFISCAL]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDelete_INFOPRINTERFISCAL]

           @No_Transaccion                 AS              nvarchar(15),
         @No_Receipt                     AS              nvarchar(15)



AS BEGIN

DELETE [dbo].[INFOPRINTERFISCAL]

           WHERE 

            [No Transaccion]  =  @No_Transaccion and
            [No Receipt]      =  @No_Receipt
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteAddress]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteAddress]
           @Code                     AS              nvarchar(15)
    
AS
BEGIN

DELETE FROM [dbo].[Address] 
WHERE [Code] = @Code 
   
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteAddressList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteAddressList]
           @Code_Address      AS nvarchar(15),
           @Code_Customer     AS nvarchar(15)
AS
BEGIN

DELETE FROM [dbo].[Address List]
    
    WHERE 
        [Code Address]     =   @Code_Address   AND 
        [Code Customer]    =   @Code_Customer

END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteBarcodeItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteBarcodeItem]

           @Item_Number                 AS    nvarchar(15),
           @Item_Code_Variant_Comb      AS    nvarchar(15),
           @Code_Barcode                AS    nvarchar(15),
           @Unit_of_Measure_Code        AS    nvarchar(15)

AS
BEGIN

DELETE FROM [Barcode Item]  
WHERE      [Item Number]                  =     @Item_Number  AND
           [Item Code Variant Comb]       =     @Item_Code_Variant_Comb  AND
           [Code Barcode]                 =     @Code_Barcode AND
           [Unit of Measure Code]         =     @Unit_of_Measure_Code 



END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteBin]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteBin]

@Code AS nvarchar(10)

AS
BEGIN 

      DELETE FROM [dbo].Bin WHERE Code= @Code

END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteCampaing]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteCampaing]

           @No                       AS           nvarchar(15)


AS
BEGIN

DELETE FROM [dbo].[Campaing]  
    
    WHERE [No.]  =@No   

END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteCampaingStatus]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteCampaingStatus]

           @Code                AS         nvarchar(15)

AS
BEGIN


DELETE FROM [dbo].[Campaing Status]  

    WHERE [Code] = @Code  
      
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteCaption]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROC [dbo].[spDeleteCaption]
           @Code           AS        nchar(10)
AS
BEGIN
DELETE FROM [dbo].[Caption] WHERE Code = @Code
   
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteCity]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteCity]
            @Code         AS       nvarchar(15)
AS
BEGIN
    DELETE FROM [dbo].City WHERE Code = @Code
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteCode/Contry]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteCode/Contry]

@Code AS nvarchar(15)

AS
BEGIN 

      DELETE FROM [dbo].[Code/Contry] WHERE Code= @Code

END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteConversion_Value]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteConversion_Value]

           @Base_Unit_Code             AS         nvarchar(15)

AS
BEGIN


DELETE FROM [dbo].[Conversion Value]
WHERE   [Base Unit Code] = @Base_Unit_Code  

END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteCrossReference]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteCrossReference]

          @Code_Item             AS        nvarchar(15),
          @Code_Cross_References AS        nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Cross References] 

   WHERE [Code Item]             = @Code_Item               AND
         [Code Cross References] = @Code_Cross_References
    
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteCurrency]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteCurrency]

@NoCurrency AS nvarchar(15)

AS
BEGIN 
      DELETE FROM [dbo].Currency 
      
      WHERE [No Currency]= @NoCurrency 

END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteCurrencyList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteCurrencyList]
           @Customer_ID		AS          nvarchar(15),
           @Currency_ID	    AS          nvarchar(15)
AS
BEGIN
DELETE FROM [dbo].[Currency List]

 WHERE 
    [Customer ID] = @Customer_ID AND 
    [Currency ID] = @Currency_ID	
    

END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteCustomer]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[spDeleteCustomer]

             @No			AS		   nvarchar(15)
AS
BEGIN

            DELETE FROM [dbo].[Customer]
            
            WHERE [No] = @No
                                            
END






GO
/****** Object:  StoredProcedure [dbo].[spDeleteCustomerPriceGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteCustomerPriceGroup]

           @Code                          AS        nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Customer Price Group]  

WHERE [Code]  =  @Code 

END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteEmployees]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC  [dbo].[spDeleteEmployees]

           @Code                     AS              nvarchar(15)

AS
BEGIN

DELETE FROM  [dbo].[Employees]

WHERE
           [Code]         =       @Code         
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteEmployeesPermission]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteEmployeesPermission]

           @Code                            AS              nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Employees Permission]
      

WHERE
          [Code]         =       @Code          
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteEmployeesStoreLink]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteEmployeesStoreLink]

           @Employee_Code                     AS              nvarchar(15),
           @Store_No                          AS              nvarchar(15),
           @Employee_First_Name               AS              nvarchar(50),
           @Employee_Last_Name                AS              nvarchar(50),
           @Employee_Name_of_Receipt          AS              nvarchar(50),
           @Store_Name                        AS              nvarchar(50),
           @Code_Permission                   AS              nvarchar(15),
           @Default_Store                     AS              int

AS
BEGIN


DELETE FROM [dbo].[Employees Store Link]

WHERE
            [Employee Code]         =       @Employee_Code                AND
            [Store No]              =       @Store_No                          
              
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteFuncionalityProfile]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteFuncionalityProfile]

           @Code                            AS              nvarchar(15),
           @Description                     AS              nvarchar(50),
           @Z_Auto_After_Decl               AS              int,
           @Calc_Disc_Excl_VAT              AS              int,
           @Currency_Simbol                 AS              nvarchar(15),
           @Multiple_Simbol                 AS              nvarchar(15),
           @Amount_Rounding_To              AS              int,
           @Amount_Decimal_Place            AS              int,
           @Precing_Rounding_To             AS              int,
           @Precing_Decimal_Place           AS              int,
           @Maximun_Price                   AS              decimal(18,5),
           @Maximun_QTY                     AS              decimal(18,5),
           @Calc_Excl_VAT                   AS              int


AS
BEGIN

DELETE FROM [dbo].[Funcionality Profile]


WHERE      [Code]            =               @Code                          
                             
          
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteItem]

            @No               AS             nvarchar(15)

            AS 
            BEGIN

            DELETE FROM [dbo].Item 
            
            WHERE No= @No 
                             
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteItem_Category]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteItem_Category]

           @Item_Category_Code    AS     nvarchar(15)

AS 
BEGIN


  DELETE FROM [Item Category]

           WHERE [Item Category Code] = @Item_Category_Code   

END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteItem_Variant]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[spDeleteItem_Variant]

           @Item_Code                       AS           nvarchar(15),
           @Item_Code_Variant_Comb          AS           nvarchar(15)
AS
BEGIN

DELETE FROM [dbo].[Item Variant]
            WHERE [Item Code]              = @Item_Code               AND 
                  [Item Code Variant Comb] = @Item_Code_Variant_Comb
    
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteItemJournal]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROC [dbo].[spDeleteItemJournal]
            @EntryNo                   AS    int
AS BEGIN

DELETE  [dbo].[Item Journal]

WHERE
     [EntryNo]=@EntryNo
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteItemUniteMeasure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteItemUniteMeasure]

        @Item_No      AS      nvarchar(15),
        @Code         AS      nvarchar(15)

AS
BEGIN 

DELETE FROM [dbo].[Item Unit of Measure] 
      
      WHERE 
              [Item No.]   =    @Item_No   AND
              [Code]       =    @Code 

END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteLanguageList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteLanguageList]
           @Customer_ID		AS          nvarchar(15),
           @Languaje_ID		AS          nvarchar(15),
           @Date			AS          datetime
AS
BEGIN
DELETE FROM [dbo].[Language List]

 WHERE [Customer ID] = @Customer_ID AND 
       [Languaje ID] = @Languaje_ID	
         
       
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteLanguaje]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteLanguaje]

@Code AS nvarchar(15)

AS
BEGIN 
      DELETE FROM [dbo].Language 
      
      WHERE [Code]= @Code

END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteNoSeries]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteNoSeries]

           @Code                           AS               nvarchar(15)

           AS
           BEGIN

DELETE FROM [dbo].[No Series]
   
   WHERE
           [Code]     =      @Code                           

END






GO
/****** Object:  StoredProcedure [dbo].[spDeleteNoSeriesLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC  [dbo].[spDeleteNoSeriesLine]

           @Series_Code                     AS              nvarchar(15),
           @Line_No                         AS              int

AS
BEGIN


DELETE FROM [dbo].[No Series Line]

     WHERE
           [Series Code]          =           @Series_Code        AND
           [Line No_]             =           @Line_No  
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteNoSeriesRelationship]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteNoSeriesRelationship]

           @Code          AS     nvarchar(15),
           @Series_Code   AS     nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[No Series Relationship]     
            
     WHERE
           [Code]          =    @Code          AND
           [Series Code]   =    @Series_Code    
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteOffers]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteOffers]

           @Code                      AS           nvarchar(15)


AS
BEGIN


DELETE FROM [dbo].[Offers] 

    WHERE [Code] = @Code 



END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteOffersDetails]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteOffersDetails]

           @Code_Offers 				AS         nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Promotion Details] 

    WHERE [Code Promotion]  =   @Code_Offers  
    
END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePaymentmethods]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePaymentmethods]

           @Store_Code                     AS              nvarchar(15),
           @Code_Payment_Setup             AS              nvarchar(15)

AS
BEGIN


DELETE FROM [dbo].[Payment methods]
  

WHERE
           [Store Code]         =  @Store_Code         AND  
           [Code Payment Setup] =  @Code_Payment_Setup
END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePaymentMethodsSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePaymentMethodsSetup]

           @Code                          AS              nvarchar(15)
AS
BEGIN

DELETE FROM [dbo].[Payment Methods Setup]

WHERE
           [Code]        =        @Code

END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePermissionprofiles]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePermissionprofiles]

           @Code              AS      nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Permission profiles]

WHERE  [Code]  = @Code

END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePointOfSale]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePointOfSale]

           @Code                         AS              uniqueidentifier
AS
BEGIN


DELETE FROM [dbo].[Point Of Sale]


WHERE
            [Code]             =       @Code               
 
END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePosFixedStartAmount]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePosFixedStartAmount]

           @Store_Code                         AS              nvarchar(15),
           @Stament_Method_Type                AS              int,
           @ID						     	   AS              int,
           @Code_Payment_Methods               AS              nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Pos Fixed Start Amount]

WHERE
           [Store Code]            = @Store_Code                       AND
           [Stament Method Type]   = @Stament_Method_Type              AND
           [ID]                    = @ID							   AND
           [Code Payment Methods]  = @Code_Payment_Methods          


END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePrinterFiscalSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePrinterFiscalSetup]


           @Code                     AS              uniqueidentifier

AS
BEGIN


DELETE FROM [dbo].[Printer Fiscal Setup]

WHERE
           [Code]           =   @Code                  
                       
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteProductGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteProductGroup]

           @Product_Group_Code         AS      nvarchar(15), 
           @Item_Category_Code         AS      nvarchar(15)

AS
BEGIN

DELETE FROM [Product Group]

     WHERE  [Item Category Code]  =  @Item_Category_Code AND 
            [Item Category Code]  = @Item_Category_Code  
 
END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePromotion]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePromotion]

           @Code                      AS           nvarchar(15)


AS
BEGIN


DELETE FROM [dbo].[Promotion]


     WHERE [Code] = @Code 

     
END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePromotionDetails]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePromotionDetails]

           @Code_Promotion 				AS         nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Promotion Details] 

    WHERE [Code Promotion]  =   @Code_Promotion 

END





GO
/****** Object:  StoredProcedure [dbo].[spDeletePurcharseHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeletePurcharseHeader]

           @Document_Type                     AS              int,
           @No_Receipt                        AS              nvarchar(20)

AS
BEGIN

DELETE FROM [dbo].[Purcharse Header]

WHERE 
           [Document Type] = @Document_Type                   AND
           [No Receipt]    = @No_Receipt                        
     
END




GO
/****** Object:  StoredProcedure [dbo].[spDeletePurcharseLines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeletePurcharseLines]



           @Document_Type                       AS              int,
           @No_Receipt                          AS              nvarchar(20),
           @Line_No                             AS              int


AS
BEGIN

DELETE FROM [dbo].[Purcharse Lines]
   
WHERE

           [Document Type] =  @Document_Type                     AND
           [No Receipt]    =  @No_Receipt                        AND
           [Line No]       =  @Line_No                             
                         
      
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteReserveSummary]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteReserveSummary]
            @EntryNo                   AS    int,
        @LineNo                    AS    int
AS BEGIN

DELETE  [dbo].[Reserve Summary]

WHERE
          [EntryNo] = @EntryNo AND
     [LineNo]  = @LineNo
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteSalesHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSalesHeader]

           @Document_Type                     AS              int,
           @No_Receipt                        AS              nvarchar(15),
           @No_Transaccion                    AS              nvarchar(15),
           @Store_No                          AS              nvarchar(15),
           @Terminal_No						  AS              nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Sales Header]

WHERE 
           [Document Type]  = @Document_Type     AND
           [No Receipt]     = @No_Receipt        AND
           [Store No]       = @Store_No          AND
           [No Transaccion] = @No_Transaccion    AND
           [Terminal No]    = @Terminal_No        
     
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteSalesLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSalesLine]



           @Document_Type                       AS              int,
           @No_Receipt                          AS              nvarchar(15),
           @Line_No                             AS              int,
           @Store_No                            AS              nvarchar(15),
           @No_Transaccion                      AS              nvarchar(15),
           @Terminal_No							AS				nvarchar(15)


AS
BEGIN

DELETE FROM [dbo].[Sales Line]

   
WHERE
           [Document Type]  =  @Document_Type                     AND
           [No Receipt]     =  @No_Receipt                        AND
           [Store No]       =  @Store_No                          AND
           [Line No]        =  @Line_No                           AND
           [No Transaccion] =  @No_Transaccion                    AND
           [Terminal No]    =  @Terminal_No
      
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteSalesPaymentMethods]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSalesPaymentMethods]

           @Document_Type                  AS              int,
           @Line_No                        AS              int,
           @No_Receipt                     AS              nvarchar(15),
           @StoreCode                      AS              nvarchar(15),
           @Transaction_No                 AS              nvarchar(15),
           @Terminal_No                    AS              nvarchar(15),
           @Code_Payment_Metodth           AS              nvarchar(15)


AS
BEGIN


DELETE FROM [dbo].[Sales Payment methods]

WHERE
           [Document Type]         =   @Document_Type                AND
           [Line No]               =   @Line_No                      AND
           [No Receipt]            =   @No_Receipt                   AND
           [StoreCode]             =   @StoreCode                    AND
           [Transaction No]        =   @Transaction_No               AND
           [Terminal No]           =   @Terminal_No                  AND
           [Code Payment Metodth]  =   @Code_Payment_Metodth 
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteSalesperson_Employee]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDeleteSalesperson_Employee]

@Code AS nvarchar(15)

AS
BEGIN 
    -- IF (SELECT COUNT(*)  FROM [Salesperson/Employee] WHERE Code = @code_salesperson ) <> 0  
      DELETE FROM [dbo].[Salesperson/Employee] 

      WHERE [Code] = @Code
END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteSalespersonList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteSalespersonList]
           @Customer_ID                   AS                 nvarchar(15),
           @Salesperson_ID                AS                 nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Salesperson List]

WHERE 

    [Customer ID]      =    @Customer_ID     AND 
    [Salesperson ID]   =    @Salesperson_ID


END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteSalesPrices]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSalesPrices]

           @Item_No                      AS              nvarchar(15),
           @Sales_Code					 AS              nvarchar(15), 
           @Variant_Code	             AS              nvarchar(15)

           
AS
BEGIN

DELETE FROM [Sales Prices] 
  
   WHERE          [Item No]        =     @Item_No    AND
                  [Sales Code]     =     @Sales_Code AND
                  [Variant Code]   =     @Variant_Code


END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteSalesPricesHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSalesPricesHeader]
 
           @Sales_Code       AS      nvarchar(15),
           @Description      AS      nvarchar(50)

AS 
BEGIN

DELETE FROM [dbo].[Sales Prices Header]


WHERE
           [Sales Code] = @Sales_Code    
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteSequenceTypes]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSequenceTypes]
           @Id      AS      uniqueidentifier

           AS
           BEGIN

DELETE FROM[dbo].[SequenceTypes]

WHERE
            [Id]= @Id   
               
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteSerialNumbersShelf]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteSerialNumbersShelf]

           @Sequence_Type_Id                AS              uniqueidentifier,
           @Serial_Value                    AS              int
 
AS
BEGIN

DELETE FROM [dbo].[SerialNumbersShelf]

WHERE
Sequence_Type_Id = @Sequence_Type_Id
AND
Serial_Value = @Serial_Value

END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteSerialSchemas]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSerialSchemas]

           @Id                     AS              uniqueidentifier
 
AS
BEGIN

DELETE FROM [dbo].[SerialSchemas]

WHERE
           [Id]                      =               @Id  
END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteSize]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSize]

           @Code              AS      nchar(10)

AS
BEGIN
        DELETE FROM [dbo].Size WHERE Code = @Code
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteSpecialGroups]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteSpecialGroups]

           @Code            AS      nvarchar(15)

AS BEGIN

DELETE FROM [Special Groups]  WHERE [Code] = @Code    
           

END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteSpecialGroupsItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[spDeleteSpecialGroupsItem]

           @Item_Number                    AS       nvarchar(15),
           @Code_Special_Group             AS       nvarchar(15)

AS BEGIN
DELETE FROM [Special Group Item]  
            
            WHERE [Item Number]         =  @Item_Number AND 
                  [Code Special Group]  =  @Code_Special_Group
           

END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteState]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteState]

     @Code          AS   nvarchar(15)
AS
BEGIN

     DELETE FROM [State]

     WHERE
     [Code]        = @Code
        

END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteStore]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteStore]

           @Code                     AS              nvarchar(15)
AS
BEGIN


DELETE FROM [dbo].[Store]

WHERE
           [Code]=@Code
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteStyle]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteStyle]

           @Code              AS      nvarchar(50)

AS
BEGIN
        DELETE FROM [dbo].Style WHERE Code = @Code
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteSustitute]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteSustitute]

          @Code_item                  AS        nvarchar(15),
          @Code_Item_Sustitute        AS        nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].Sustitute 
WHERE 
  [Code Item]            =      @Code_item              AND 
  [Code Item Sustitute]  =      @Code_Item_Sustitute 

    
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteTemplateVariantHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteTemplateVariantHeader]

           @Code_Template_Variant_Header           AS    nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Template Variant Header]

           WHERE [Code Template Variant Header] = @Code_Template_Variant_Header
      

END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteTemplateVariantLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteTemplateVariantLine]

           @Code_Template_Variant_Header           AS    nvarchar(15),
           @Code_Variant                           AS    nvarchar(15),
           @Description                            AS    nvarchar(50)

AS
BEGIN

DELETE FROM [dbo].[Template Variant Line]

    WHERE [Code Template Variant Header] = @Code_Template_Variant_Header AND
          [Code Variant]                 = @Code_Variant

END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteUniteMeasure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteUniteMeasure]

@Code AS nvarchar(15)

AS
BEGIN 

      DELETE FROM [dbo].[Unit of measure] WHERE Code= @Code

END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteUser] 
    -- Add the parameters for the stored procedure here
    @UserId Uniqueidentifier
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    
    -- Insert statements for procedure here
    DELETE FROM [User] WHERE [UserId] = @UserId
END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteValidationPeriod]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteValidationPeriod]

           @Code                    AS         nvarchar(15)

AS
BEGIN
DELETE FROM [dbo].[Validation Period]  

    WHERE [Code]  =  @Code 

END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteVariantGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteVariantGroup]

           @Code_Template_Variant_Header           AS    nvarchar(15),
           @Code_Variant                           AS    nvarchar(15),
           @Code_Variant_Line					   AS    nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[Variant Group]
WHERE       [Code Template Variant Header]        =    @Code_Template_Variant_Header
            AND [Code Variant]                    =    @Code_Variant  
            AND [Code Variant Line]               =    @Code_Variant_Line	 
 

END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteVariantHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteVariantHeader]


            @Code_variant               AS             nvarchar(15)

            AS 
            BEGIN

            DELETE FROM [dbo].[Variant Headers] 
            
            WHERE [Code Variant]= @Code_variant   
                             
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteVariantLines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spDeleteVariantLines]


            @CodeVariant            AS     nvarchar(15),
            @Code_variant_Line      AS     nvarchar(15)

AS 
BEGIN
DELETE FROM [dbo].[Variant Lines]

            WHERE 	[Code Variant]         =     @CodeVariant                 AND
                    [Code Variant Line]    =     @Code_variant_Line 
                             
END





GO
/****** Object:  StoredProcedure [dbo].[spDeleteVATBusinessPostingGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteVATBusinessPostingGroup]

          @Code                  AS        nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[VAT Business Posting Group] 

         WHERE [Code] = @Code

    
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteVATPostingSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteVATPostingSetup]

           @VAT_Bus_Posting_Group            AS     nvarchar(15)
                

AS 
BEGIN
DELETE FROM [dbo].[VAT Posting Setup]
WHERE   
            [VAT Bus. Posting Group] = @VAT_Bus_Posting_Group

END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteVATProdPostingGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteVATProdPostingGroup]

          @Code                  AS        nvarchar(15)

AS
BEGIN

DELETE FROM [dbo].[VAT Prod. Posting Group] 
    
    WHERE [Code] = @Code

    
END




GO
/****** Object:  StoredProcedure [dbo].[spDeleteVendor]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spDeleteVendor]
             @No	AS          nvarchar(20) 
AS
BEGIN
    DELETE FROM [dbo].[Vendor] WHERE No= @No
END





GO
/****** Object:  StoredProcedure [dbo].[spDestroyPermission]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDestroyPermission] 
    -- Add the parameters for the stored procedure here
    @iNo uniqueidentifier
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    DELETE FROM [PermissionsMstr] WHERE [No.] = @iNo;
    DELETE FROM [UserPermissions] WHERE [Permission No.] = @iNo;
END


GO
/****** Object:  StoredProcedure [dbo].[spGetNCAvailableDetailAmount]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetNCAvailableDetailAmount]
    -- Add the parameters for the stored procedure here
    @iStoreNo nvarchar(15)='',
    @iTransactioNo nvarchar(15)='', 	
    @iDocumentType tinyint = 8
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    SELECT NC.[No Transaccion], SPM.[Amount]*-1 AS [Monto en NC]
     , ISNULL(U_SPM.[Amount],0)*-1 AS [Monto NC Usadas]
     ,SPM.[Amount] - ISNULL(U_SPM.[Amount],0)*-1 AS [Monto NC Disponible]
     
     
     
FROM [Sales Header] AS SH
INNER JOIN [Sales Header] AS NC ON 
NC.[Customer No] = SH.[Customer No] AND 
NC.[Status]=4


INNER JOIN [Sales Payment methods] AS SPM ON 
SPM.[StoreCode] = NC.[Store No] AND 
SPM.[Transaction No] = NC.[No Transaccion] AND 
SPM.[No Receipt] = NC.[No Receipt] AND 
SPM.[Document Type] = NC.[Document Type] AND
SPM.[State] = 1

LEFT JOIN [Sales Payment methods] AS U_SPM ON
U_SPM.[Reference]=NC.[No Transaccion] AND U_SPM.[State] = 1

    WHERE  SH.[Store No] = @iStoreNo AND SH.[No Transaccion] = @iTransactioNo AND SH.[Document Type] = @iDocumentType
ORDER BY NC.[Posting Date] ASC


END


GO
/****** Object:  StoredProcedure [dbo].[spGetNCAvailableTotalAmount]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetNCAvailableTotalAmount]
    -- Add the parameters for the stored procedure here
    @iStoreNo nvarchar(15)='',
    @iTransactioNo nvarchar(15)='', 	
    @iDocumentType tinyint = 8
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    SELECT  SUM(SPM.[Amount])*-1 AS [Monto en NC]
         , SUM(ISNULL(U_SPM.[Amount],0))*-1 AS [Monto NC Usadas]
         ,SUM(SPM.[Amount]) - SUM(ISNULL(U_SPM.[Amount],0))*-1 AS [Monto NC Disponible]		 
         
    FROM [Sales Header] AS SH
    INNER JOIN [Sales Header] AS NC ON 
    NC.[Customer No] = SH.[Customer No] AND 
    NC.[Status]=4


    INNER JOIN [Sales Payment methods] AS SPM ON 
    SPM.[StoreCode] = NC.[Store No] AND 
    SPM.[Transaction No] = NC.[No Transaccion] AND 
    SPM.[No Receipt] = NC.[No Receipt] AND 
    SPM.[Document Type] = NC.[Document Type] AND
    SPM.[State] = 1

    LEFT JOIN [Sales Payment methods] AS U_SPM ON
    U_SPM.[Reference]=NC.[No Transaccion] AND U_SPM.[State] = 1

    WHERE  SH.[Store No] = @iStoreNo AND SH.[No Transaccion] = @iTransactioNo AND SH.[Document Type] = @iDocumentType
END


GO
/****** Object:  StoredProcedure [dbo].[spGrCreateSession]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGrCreateSession]

    @EXPIRE DATETIME
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
    DECLARE @ID UNIQUEIDENTIFIER
    SET @ID = NEWID();

    INSERT INTO [UserSession]([SessionId],[UserId],[CreatedDate],[ExpireDate],[IsClosed]) 
    VALUES(@ID,NULL,CURRENT_TIMESTAMP,@EXPIRE,0);
    SELECT @ID;

END


GO
/****** Object:  StoredProcedure [dbo].[spInsert_Comparasion_Unit_Of_Measure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsert_Comparasion_Unit_Of_Measure]

           @Code            AS     nvarchar(15),
           @Description     AS     nvarchar(50)

AS 
BEGIN


INSERT INTO [dbo].[Comparasion Unit Of Measure]
           ([Code]
           ,[Description])
     VALUES
           (@Code            ,
            @Description     )
END





GO
/****** Object:  StoredProcedure [dbo].[spINSERT_INFOPRINTERFISCAL]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spINSERT_INFOPRINTERFISCAL]

           @No_Transaccion                 AS              nvarchar(15),
           @No_Receipt                     AS              nvarchar(15),
           @Document_Date                  AS              datetime,
           @COO                            AS              nvarchar(10),
           @NDOCFISCAL                     AS              nvarchar(20),
           @SERIEIMPRESORA                 AS              nvarchar(20),
           @Document_Type                  AS              int,
           @DOCAFECTADO                    AS              nvarchar(20),
           @SERIEAFECTADO                  AS              nvarchar(20),
           @FECHAIMPRESORA                 AS              datetime,
           @FECHAIMPAFECTADA               AS              datetime,
           @HORAIMPRESORA                  AS              nvarchar(10),
           @HORAIMPAFECTADA                AS              nvarchar(10),
         @AmountPayable                  AS              decimal(18, 5),
           @NumberPaymentsMade             AS              int,
           @QuantityArticles               AS              int,
           @SubTotalBases                  AS              decimal(18, 5),
         @SubTotalTax                    AS              decimal(18, 5),
         @DocumentTypeFiscal             AS              int,
         @Country			       AS              nvarchar(20),
         @DOCNOFISCAL				 AS              nvarchar(20) 

AS BEGIN

INSERT INTO [dbo].[INFOPRINTERFISCAL]
           ([No Transaccion]
           ,[No Receipt]
           ,[Document Date]
           ,[COO]
           ,[NDOCFISCAL]
           ,[SERIEIMPRESORA]
           ,[Document Type]
           ,[DOCAFECTADO]
           ,[SERIEAFECTADO]
           ,[FECHAIMPRESORA]
           ,[FECHAIMPAFECTADA]
           ,[HORAIMPRESORA]
           ,[HORAIMPAFECTADA]
           ,[AmountPayable]                
           ,[NumberPaymentsMade]           
           ,[QuantityArticles]                             
           ,[SubTotalBases]                              
           ,[SubTotalTax]
           ,[DocumentTypeFiscal]
           ,[Country]
           ,[DOCNOFISCAL])           
     VALUES
          ( @No_Transaccion,        
           @No_Receipt,                            
           @Document_Date,                         
           @COO,                          
           @NDOCFISCAL,                          
           @SERIEIMPRESORA,                         
           @Document_Type,                                
           @DOCAFECTADO,                              
           @SERIEAFECTADO,                                 
           @FECHAIMPRESORA,                              
           @FECHAIMPAFECTADA,                            
           @HORAIMPRESORA,                         
           @HORAIMPAFECTADA,
         @AmountPayable, 
         @NumberPaymentsMade,
         @QuantityArticles,
         @SubTotalBases,
         @SubTotalTax,
         @DocumentTypeFiscal,
         @Country,
         @DOCNOFISCAL)

END




GO
/****** Object:  StoredProcedure [dbo].[spINSERT_INFOPRINTERFISCAL_AUX]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spINSERT_INFOPRINTERFISCAL_AUX]

           @No_Transaccion                 AS              nvarchar(15),
           @NumDocFiscal                   AS              nvarchar(20),
           @Document_Date                  AS              datetime,
           @DocumentType                   AS              int,
           @BusinessName                   AS              nvarchar(50),
           @VATRegistration                AS              nvarchar(50),
           @Address                        AS              nvarchar(50),
           @ItemDescription                AS              nvarchar(150),
           @Comment                        AS              nvarchar(40),
           @DocAfect                       AS              nvarchar(20),
           @DatePrinter                    AS              datetime,
           @DatePrinterAfect               AS              datetime,
           @TimePrinter                    AS              nvarchar(10),
           @SerialPrinter                  AS              nvarchar(20),
           @SerialPrintetAfect             AS              nvarchar(20),      
           @SubTotalBases                  AS              decimal(18, 5),
           @SubTotalTax                    AS              decimal(18, 5),
           @DocumentTypeFiscal             AS              int,
           @Country						   AS              nvarchar(20)		
AS BEGIN

INSERT INTO [dbo].[INFOPRINTERFISCAL_AUX]
           (
            [No Transaccion],
            [NumDocFiscal],
            [Document Date],
            [DocumentType],
            [BusinessName],
            [VATRegistration],
            [Address],
            [ItemDescription],
            [Comment],
            [DocAfect],
            [DatePrinter],
            [DatePrinterAfect],
            [TimePrinter],
            [SerialPrinter],
            [SerialPrintetAfect],
            [SubTotalBases],
            [SubTotalTax],
            [DocumentTypeFiscal]
           ,[Country])           
     VALUES
          (
           @No_Transaccion,
           @NumDocFiscal,
           @Document_Date,
           @DocumentType,
           @BusinessName,
           @VATRegistration,
           @Address,
           @ItemDescription,
           @Comment,
           @DocAfect,
           @DatePrinter,
           @DatePrinterAfect,
           @TimePrinter,
           @SerialPrinter,
           @SerialPrintetAfect,      
           @SubTotalBases,
           @SubTotalTax,
           @DocumentTypeFiscal,
           @Country)

END




GO
/****** Object:  StoredProcedure [dbo].[spInsert_Item_Unit_of_Measure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsert_Item_Unit_of_Measure]

           @Item_No                          AS       nvarchar(15),
           @Code                             AS       nvarchar(15),
           @Qty_per_Unit_of_Measure          AS       decimal(18,5),
           @Length						     AS       decimal(18,5),
           @Width						     AS       decimal(18,5),
           @Height							 AS       decimal(18,5),
           @Cubage							 AS       decimal(18,5),
           @Weight					   		 AS       decimal(18,5)

AS
BEGIN

INSERT INTO [dbo].[Item Unit of Measure]
           ([Item No.]
           ,[Code]
           ,[Qty. per Unit of Measure]
           ,[Length]
           ,[Width]
           ,[Height]
           ,[Cubage]
           ,[Weight])
     VALUES
           (@Item_No                          ,
           @Code                             ,
           @Qty_per_Unit_of_Measure          ,
           @Length						     ,
           @Width						     ,
           @Height							 ,
           @Cubage							 ,
           @Weight					   		 )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertAddress]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertAddress]
           @Code                     AS               nvarchar(15),
           @Address_1                 AS              nvarchar(50),
           @Address_2                 AS              nvarchar(50),
           @Zip_code                  AS              nvarchar(50),
           @City_code                 AS              nvarchar(15),
           @State_code                AS              nvarchar(15),
           @Country_Code              AS              nvarchar(15)
AS
BEGIN
INSERT INTO [dbo].[Address]
           ([Code]
           ,[Address 1]
           ,[Address 2]
           ,[Zip code]
           ,[City code]
           ,[State code]
           ,[Country Code])
     VALUES
           (@Code                     ,
           @Address_1                 ,
           @Address_2                 ,
           @Zip_code                  ,
           @City_code                 ,
           @State_code                ,
           @Country_Code              )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertAddressList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertAddressList]
           @Code_Address     AS nvarchar(15),
           @Code_Customer     AS nvarchar(15),
           @Date              AS datetime
AS
BEGIN
INSERT INTO [dbo].[Address List]
           ([Code Address]
           ,[Code Customer]
           ,[Date])
     VALUES
           (@Code_Address     ,
            @Code_Customer    ,
            @Date              )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertBarcodeItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertBarcodeItem]

           @Item_Number                        AS    nvarchar(15),
           @Item_Code_Variant_Comb             AS    nvarchar(15),
           @Code_Barcode                       AS    nvarchar(15),
           @Unit_of_Measure_Code               AS    nvarchar(15),
           @Bool_Aux                           AS    int,
           @Description                        AS    nvarchar(50),
           @Creation_date                      AS    datetime,
           @Created_by_user                    AS    nvarchar(50),
           @Last_modified_date                 AS    datetime,
           @Last_modified_by_the_user          AS    nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Barcode Item]
           ([Item Number]
           ,[Code Barcode]
           ,[Item Code Variant Comb]
           ,[Unit of Measure Code]
           ,[Bool Aux]
           ,[Description]
           ,[Creation date]        
           ,[Created by user]        
           ,[Last modified date]        
           ,[Last modified by the user] )
     VALUES
          (@Item_Number                 ,
           @Code_Barcode                ,
           @Item_Code_Variant_Comb      ,
           @Bool_Aux                    ,
           @Description                 ,
           @Unit_of_Measure_Code        ,
           @Creation_date               ,
           @Created_by_user             ,
           @Last_modified_date          ,
           @Last_modified_by_the_user   )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertBin]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertBin]
           @Code                 AS            nchar(10),
           @Description          AS            nvarchar(50),
           @Type_Bin             AS            nvarchar(50),
           @Block_Movement       AS            int,
           @Maximum_Cubage       AS            decimal(18,0),
           @Maximum_Weight       AS            decimal(18,0),
           @Empty                AS            nchar(10)

AS
BEGIN
INSERT INTO [dbo].[Bin]
           ([Code]
           ,[Description]
           ,[Type Bin]
           ,[Block Movement]
           ,[Maximum Cubage]
           ,[Maximum Weight]
           ,[Empty])
     VALUES
          (@Code                 , 
           @Description          , 
           @Type_Bin             , 
           @Block_Movement       , 
           @Maximum_Cubage       , 
           @Maximum_Weight       , 
           @Empty                ) 
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertCampaing]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertCampaing]

           @No                       AS           nvarchar(15),
           @Description		         AS           nvarchar(50),
           @Status_Code              AS           nvarchar(15),
           @Cost                     AS           decimal(18,5),
           @Estimated_Value          AS           decimal(18,5),
           @Code_Validation_Period   AS           nvarchar(15),
           @Creation_date            AS           datetime,
           @Created_by_user          AS           nvarchar(50),
           @Last_modified_date       AS           datetime,
           @Last_modified_by_the_user AS          nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Campaing]
           ([No.]
           ,[Description]
           ,[Status Code]
           ,[Cost]
           ,[Estimated Value]
           ,[Code Validation Period]
           ,[Creation date]              
           ,[Created by user]           
           ,[Last modified date]         
           ,[Last modified by the user])
     VALUES
           (@No                       ,
           @Description		         ,
           @Status_Code              ,
           @Cost                     ,
           @Estimated_Value          ,
           @Code_Validation_Period   ,
           @Creation_date            ,
           @Created_by_user          ,
           @Last_modified_date       ,
           @Last_modified_by_the_user )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertCampaingStatus]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertCampaingStatus]

           @Code                AS         nvarchar(15),
           @Description         AS         nvarchar(100)

AS
BEGIN


INSERT INTO [dbo].[Campaing Status]
           ([Code]
           ,[Description])
     VALUES
          (@Code                ,
           @Description         )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertCaption]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertCaption]
           @Code           AS        nvarchar(15),
           @Culture        AS        nvarchar(15),
           @Caption        AS        nvarchar(15)
AS
BEGIN
INSERT INTO [dbo].[Caption]
           ([Code]
           ,[Culture]
           ,[Caption])
     VALUES
           (@Code            ,
           @Culture          ,
           @Caption          )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertCity]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertCity]
            @Code         AS       nvarchar(15),
            @City         AS       nvarchar(50),
            @CodeState    AS       nvarchar(50),
            @Code_Contry  AS       nvarchar(15)
AS
BEGIN

INSERT INTO [dbo].[City]
           ([Code]
           ,[City]
           ,[Code State]
           ,[Code/Contry])
     VALUES
            (@Code        ,
            @City         ,
            @CodeState    ,
            @Code_Contry  )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertCode/Contry]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertCode/Contry]

     @Code          AS   nvarchar(15),
     @Description   AS   nvarchar(50)
AS
BEGIN
INSERT INTO [dbo].[Code/Contry]
           ([Code]
           ,[Description])
     VALUES
           (@Code,
            @Description)
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertConversion_Value]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertConversion_Value]

           @Base_Unit_Code             AS         nvarchar(15),
           @Comparasion_Unit_Code      AS         nvarchar(15),
           @Conversion_Factor          AS         decimal(18, 5)

AS
BEGIN


INSERT INTO [dbo].[Conversion Value]
           ([Base Unit Code]
           ,[Comparasion Unit Code]
           ,[Conversion Factor])

     VALUES
           (@Base_Unit_Code           ,
           @Comparasion_Unit_Code     ,
           @Conversion_Factor         )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertCrossReference]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertCrossReference]

          @Code_Item             AS        nvarchar(15),
          @Code_Cross_References AS        nvarchar(15),
          @Description           AS        nvarchar(50),
          @VarianCode            AS        nvarchar(50),
          @Unit_of_Measure		 AS        nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Cross References]
           ([Code Item]
           ,[Code Cross References]
           ,[Description]
           ,[Variant Code]
           ,[Unit of Measure])
     VALUES
          (@Code_Item            ,
          @Code_Cross_References ,
          @Description           ,
          @VarianCode            ,
          @Unit_of_Measure       )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertCurrency]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spInsertCurrency]
           @NoCurrency               AS        nvarchar(15),
           @Descripcion              AS        varchar(60),
           @Simbol                   AS        nvarchar(10),
           @ISOCode                  AS        nvarchar(10),
           @Decimalplaces            AS        tinyint

AS BEGIN
    INSERT INTO [dbo].[Currency]
               ([No Currency]
               ,[Descripcion]
               ,[Simbol]
               ,[ISO Code]
               ,[Decimal places])
         VALUES
           (@NoCurrency              ,
           @Descripcion              ,
           @Simbol                   ,
           @ISOCode                  ,
           @Decimalplaces            )

END





GO
/****** Object:  StoredProcedure [dbo].[spInsertCurrencyList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertCurrencyList]
           @Customer_ID       AS nvarchar(15),
           @Currency_ID       AS nvarchar(15),
           @Date              AS datetime
AS
BEGIN
INSERT INTO [dbo].[Currency List]
           ([Customer ID]
           ,[Currency ID]
           ,[Date])
     VALUES
           (@Customer_ID      ,
            @Currency_ID    ,
            @Date              )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertCustomer]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertCustomer]

           @No                                        AS               nvarchar(15),
           @Name                                      AS               nvarchar(50),
           @Name2                                     AS               nvarchar(50),
           @CodeAddress                               AS               nvarchar(15) =NULL,
           @VAT_Registration_No                       AS               nvarchar(15),
           @NCF                                       AS               nvarchar(19),
           @Alias                                     AS               nvarchar(50),
           @Phone                                     AS               nvarchar(30),
           @EMail                                     AS               nvarchar(80),
           @Credit_limit                              AS               decimal(18,5),
           @Customer_Invoice_No                       AS               nvarchar(15),
           @Price_Group                               AS               nvarchar(15),
           @Currency                                  AS               nvarchar(15),
           @Language                                  AS               nvarchar(15),
           @Price_including_VAT                       AS               decimal(18,5),
           @Price_without_VAT                         AS               decimal(18,5),
           @VAT                                       AS               decimal(18,5),
           @Salesperson                               AS               nvarchar(15),
           @Discounts_Invoice                         AS               decimal(18,5),
           @Line_Discounts                            AS               decimal(18,5),
           @Reserve                                   AS               int,
           @Payment_terms                             AS               nvarchar(15),
           @Allow_discount                            AS               int,
           @Block                                     AS               int,
           @VAT_Bus_Posting_Group                     AS               nvarchar(15),
           @Creation_date                             AS               datetime,
           @Created_by_user                           AS               nvarchar(50),
           @Last_modified_date                        AS               datetime,
           @Last_modified_by_the_user                 AS               nvarchar(50),
           @Address1								  AS		       nvarchar(100),
           @Address2								  AS		       nvarchar(100)

AS
BEGIN

INSERT INTO [dbo].[Customer]
           ([No]
           ,[Name]
           ,[Name2]
           ,[CodeAddress]
           ,[VAT Registration No.]
           ,[NCF]
           ,[Alias]
           ,[Phone]
           ,[E-Mail]
           ,[Credit limit]
           ,[Customer Invoice No.]
           ,[Price Group]
           ,[Currency]
           ,[Language]
           ,[Price including VAT]
           ,[Price without VAT]
           ,[VAT]
           ,[Salesperson]
           ,[Discounts Invoice]
           ,[Line Discounts]
           ,[Reserve]
           ,[Payment terms]
           ,[Allow discount]
           ,[Block]
           ,[VAT Bus. Posting Group]
           ,[Creation date]
           ,[Created by user]
           ,[Last modified date]
           ,[Last modified by the user]
           ,[Address1]
           ,[Address2]
           )

                 VALUES
           (
           @No							      ,
           @Name						      ,
           @Name2						      ,
           @CodeAddress      				  ,
           @VAT_Registration_No               ,
           @NCF                               ,
           @Alias							  ,
           @Phone                             ,
           @EMail                             ,
           @Credit_limit                      ,
           @Customer_Invoice_No               ,
           @Price_Group                       ,
           @Currency                          ,
           @Language                          ,
           @Price_including_VAT               ,
           @Price_without_VAT                 ,
           @VAT                               ,
           @Salesperson                       ,
           @Discounts_Invoice                 ,
           @Line_Discounts                    ,
           @Reserve                           ,
           @Payment_terms                     ,
           @Allow_discount                    ,
           @Block                             ,
           @VAT_Bus_Posting_Group             ,
           @Creation_date                     ,
           @Created_by_user                   ,
           @Last_modified_date                ,
           @Last_modified_by_the_user         ,
           @Address1                          ,
           @Address2                          )
                    
END






GO
/****** Object:  StoredProcedure [dbo].[spInsertCustomerPriceGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertCustomerPriceGroup]

           @Code                          AS        nvarchar(15),
           @Price_Includes_VAT            AS        int,
           @VAT_Bus_Posting_Gr_Price      AS        nvarchar(15),
           @Description                   AS        nvarchar(100)

AS
BEGIN



INSERT INTO [dbo].[Customer Price Group]
           ([Code]
           ,[Price Includes VAT]
           ,[VAT Bus. Posting Gr. (Price)]
           ,[Description])
     VALUES
           (@Code                          ,
           @Price_Includes_VAT            ,
           @VAT_Bus_Posting_Gr_Price      ,
           @Description                   )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertEmployees]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC  [dbo].[spInsertEmployees]

           @Code                     AS              nvarchar(15),
           @Firts_Name               AS              nvarchar(50),
           @Last_Name                AS              nvarchar(50),
         @RUC                      AS              nvarchar(20),
           @Name_of_Receipt          AS              nvarchar(50),
           @Password                 AS              nvarchar(50),
           @Change_Password          AS              int,
           @Store_No                 AS              nvarchar(15),
           @Store_Name               AS              nvarchar(50),
           @Employment_Type          AS              int,
           @Code_Permission          AS              nvarchar(15),
           @Address                  AS              nvarchar(100),
           @ComisionPCT              AS              decimal(18,5),
           @EMail                    AS              nvarchar(50),
           @Phone                    AS              nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Employees]
           ([Code]
           ,[Firts Name]
           ,[Last Name]
         ,[RUC]
           ,[Name of Receipt]
           ,[Password]
           ,[Change Password]
           ,[Store No]
           ,[Store Name]
           ,[Employment Type]
           ,[Code Permission]
           ,[Address]
         ,[ComisionPCT]
           ,[E-Mail]
           ,[Phone]
         )
     VALUES
          (
         @Code                     ,
           @Firts_Name               ,
           @Last_Name                ,
         @RUC                      ,
           @Name_of_Receipt          ,
           @Password                 ,
           @Change_Password          ,
           @Store_No                 ,
           @Store_Name               ,
           @Employment_Type          ,
           @Code_Permission          ,
           @Address                  ,
         @ComisionPCT            	 ,
         @EMail       		 ,
         @Phone
         )
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertEmployeesPermission]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spInsertEmployeesPermission]

           @Code                            AS              nvarchar(15),
           @Description                     AS              nvarchar(50),
           @Void_Transaction                AS              int,
           @Manager_Privileges              AS              int,
           @XZ_Reports_Printing             AS              int,
           @Tender_Declaration              AS              int,
           @Floating_Declaration            AS              int,
           @Price_Override                  AS              int,
           @Max_Discount_To_Give_percent    AS              decimal(18,5),
           @Max_Total_Discount__percent     AS              decimal(18,5),
           @Suspend_Transaction             AS              int,
           @Open_Draw_without_Sale          AS              int,
           @Return_In_Transaction           AS              int,
           @Change_Prepaidment_Amt          AS              int,
           @Add_Prepaidment_Amt             AS              int,
           @Void_Line                       AS              int,
           @Add_Paidment                    AS              int

AS
BEGIN

INSERT INTO [dbo].[Employees Permission]
           ([Code]
           ,[Description]
           ,[Void Transaction]
           ,[Manager Privileges]
           ,[XZ-Reports Printing]
           ,[Tender Declaration]
           ,[Floating Declaration]
           ,[Price Override]
           ,[Max Discount To Give %]
           ,[Max Total Discount %]
           ,[Suspend Transaction]
           ,[Open Draw without Sale]
           ,[Return In Transaction]
           ,[Change Prepaidment Amt]
           ,[Add Prepaidment Amt]
           ,[Void Line]
           ,[Add Paidment])
     VALUES
          ( @Code                           ,
           @Description                     ,
           @Void_Transaction                ,
           @Manager_Privileges              ,
           @XZ_Reports_Printing             ,
           @Tender_Declaration              ,
           @Floating_Declaration            ,
           @Price_Override                  ,
           @Max_Discount_To_Give_percent    ,
           @Max_Total_Discount__percent     ,
           @Suspend_Transaction             ,
           @Open_Draw_without_Sale          ,
           @Return_In_Transaction           ,
           @Change_Prepaidment_Amt          ,
           @Add_Prepaidment_Amt             ,
           @Void_Line                       ,
           @Add_Paidment                    )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertEmployeesStoreLink]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertEmployeesStoreLink]

           @Employee_Code                     AS              nvarchar(15),
           @Store_No                          AS              nvarchar(15),
           @Employee_First_Name               AS              nvarchar(50),
           @Employee_Last_Name                AS              nvarchar(50),
           @Employee_Name_of_Receipt          AS              nvarchar(50),
           @Store_Name                        AS              nvarchar(50),
           @Code_Permission                   AS              nvarchar(15),
           @Default_Store                     AS              int

AS
BEGIN


INSERT INTO [dbo].[Employees Store Link]
           ([Employee Code]
           ,[Store No]
           ,[Employee First Name]
           ,[Employee Last Name]
           ,[Employee Name of Receipt]
           ,[Store Name]
           ,[Code Permission]
           ,[Default Store])
     VALUES
           (@Employee_Code                    ,
           @Store_No                          ,
           @Employee_First_Name               ,
           @Employee_Last_Name                ,
           @Employee_Name_of_Receipt          ,
           @Store_Name                        ,
           @Code_Permission                   ,
           @Default_Store                     )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertFuncionalityProfile]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertFuncionalityProfile]

           @Code                            AS              nvarchar(15),
           @Description                     AS              nvarchar(50),
           @Z_Auto_After_Decl               AS              int,
           @Calc_Disc_Excl_VAT              AS              int,
           @Currency_Simbol                 AS              nvarchar(15),
           @Multiple_Simbol                 AS              nvarchar(15),
           @Amount_Rounding_To              AS              int,
           @Amount_Decimal_Place            AS              int,
           @Precing_Rounding_To             AS              int,
           @Precing_Decimal_Place           AS              int,
           @Maximun_Price                   AS              decimal(18,5),
           @Maximun_QTY                     AS              decimal(18,5),
           @Calc_Excl_VAT                   AS              int


AS
BEGIN

INSERT INTO [dbo].[Funcionality Profile]
           ([Code]
           ,[Description]
           ,[Z Auto After Decl]
           ,[Calc Disc Excl VAT]
           ,[Currency Simbol]
           ,[Multiple Simbol]
           ,[Amount Rounding To]
           ,[Amount Decimal Place]
           ,[Precing Rounding To]
           ,[Precing Decimal Place]
           ,[Maximun Price]
           ,[Maximun QTY]
           ,[Calc Excl VAT])
     VALUES
          ( @Code                           ,
           @Description                     ,
           @Z_Auto_After_Decl               ,
           @Calc_Disc_Excl_VAT              ,
           @Currency_Simbol                 ,
           @Multiple_Simbol                 ,
           @Amount_Rounding_To              ,
           @Amount_Decimal_Place            ,
           @Precing_Rounding_To             ,
           @Precing_Decimal_Place           ,
           @Maximun_Price                   ,
           @Maximun_QTY                     ,
           @Calc_Excl_VAT                  )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertItem]

                               @No                                  AS                 nvarchar(15), 
                               @Description                         AS                 nvarchar(210), 
                               @Descripcion2                         AS                nvarchar(510), 
                               @Qty_Inventory                       AS                 decimal(18,5), 
                               @Is_Use                              AS                 int, 
                               @Billed_Units                        AS                 int, 
                               @Qty_Purshase                        AS                 int, 
                               @Qty_Sales                           AS                 decimal(18,5), 
                               @Amount_Purchases                    AS                 decimal(18,5), 
                               @Amount_Sales                        AS                 decimal(18,5), 
                               @Qty_Positive_adjustment             AS                 int, 
                               @Qty_Negative_adjustment             AS                 int, 
                               @Amount_Positive_adjustment          AS                 int, 
                               @Amount_Negative_adjustment          AS                 int, 
                               @Qty_in_Order                        AS                 int, 
                               @Qty_transfer                        AS                 decimal(18,5), 
                               @Transfer_amount                     AS                 decimal(18,5), 
                               @Price_without_VAT                   AS                 decimal(18,5), 
                               @Price_including_VAT                 AS                 decimal(18,5), 
                               @VAT                                 AS                 decimal(18,5), 
                               @Qty_in_Transit                      AS                 int, 
                               @Qty_Sale_Returns                    AS                 decimal(18,5), 
                               @Qty_Purchase_Returns                AS                 int, 
                               @Allow_Negative_Inventory            AS                 int, 
                               @Qty_Negative                        AS                 int, 
                               @Auto_Code                           AS                 nvarchar(15), 
                               @Variant                             AS                 nvarchar(15), 
                               @Weight                              AS                 decimal(18,5), 
                               @Base_Unit_of_Measure_Purched        AS                 nvarchar(15), 
                               @Base_Unit_of_Measure_Sales          AS                 nvarchar(15), 
                               @Barcode                             AS                 nvarchar(15), 
                               @Allow_Discount                      AS                 tinyint, 
                               @Cost_Unity                          AS                 decimal(18,5), 
                               @Cost_Standard                       AS                 nvarchar(10), 
                               @Last_cost                           AS                 decimal(18,5), 
                               @date_last_cost                      AS                 datetime, 
                               @Cost_indirect                       AS                 decimal(18,5), 
                               @Cost_Ajust                          AS                 decimal(18,5),
                               @Profit                              AS                 decimal(18,5), 
                               @Profit_percentage                   AS                 decimal(18,5), 
                               @Special_Groups                      AS                 nvarchar(15), 
                               @Sustitute                           AS                 nvarchar(15), 
                               @Cross_References                    AS                 nvarchar(15), 
                               @Additional_text                     AS                 text, 
                               @Imagen                              AS                 image, 
                               @Translations                        AS                 nvarchar(50), 
                               @Block                               AS                 tinyint, 
                               @No_Vendor                           AS                 nvarchar(15), 
                               @Reorder_point                       AS                 decimal(18,5), 
                               @Qty_Reorder_point                   AS                 int, 
                               @Inventory_Security                  AS                 int, 
                               @Reserve                             AS                 int, 
                               @Lot_size                            AS                 decimal(18,5), 
                               @No_Serial                           AS                 nvarchar(15), 
                               @No_Lot							    AS                 nvarchar(15), 
                               @Calculation_Due				        AS                 nvarchar(15), 
                               @Due_Date						    AS                 datetime, 
                               @Creation_date				        AS                 datetime, 
                               @Created_by_User				        AS                 nvarchar(50), 
                               @Last_modified_date					AS				   datetime,
                               @Last_modified_by_the_user           AS                 nvarchar(50), 
                               @Warning_shortages                   AS                 int, 
                               @Location						    AS                 nvarchar(15), 
                               @Start_Date_counting                 AS                 datetime, 
                               @End_Date_counting                   AS                 datetime,
                               @VAT_Prod_Posting_Group				AS                 nvarchar(15), 
                               @VAT_Bus_Posting_Group				AS                 nvarchar(15), 
                               @Item_Category_Code					AS                 nvarchar(15), 
                               @Product_Group_Code					AS                 nvarchar(15)
AS
BEGIN
                    INSERT INTO [dbo].[Item]
                               ([No]
                               ,[Description]
                               ,[Descripcion 2]
                               ,[Qty. Inventory]
                               ,[Is Use]
                               ,[Billed Units]
                               ,[Qty. Purshase]
                               ,[Qty. Sales]
                               ,[Amount Purchases]
                               ,[Amount Sales]
                               ,[Qty. Positive adjustment]
                               ,[Qty. Negative adjustment]
                               ,[Amount Positive adjustment]
                               ,[Amount Negative adjustment]
                               ,[Qty. in Order]
                               ,[Qty. transfer]
                               ,[Transfer amount]
                               ,[Price without VAT]
                               ,[Price including VAT]
                               ,[VAT]
                               ,[Qty. in Transit]
                               ,[Qty. Sale Returns]
                               ,[Qty. Purchase Returns ]
                               ,[Allow Negative Inventory]
                               ,[Qty. Negative]
                               ,[Auto Code]
                               ,[Variant]
                               ,[Weight]
                               ,[Base Unit of Measure Purched]
                               ,[Base Unit of Measure Sales]
                               ,[Barcode]
                               ,[Allow Discount]
                               ,[Cost Unity]
                               ,[Cost Standard]
                               ,[Last cost]
                               ,[date last cost]
                               ,[Cost indirect]
                               ,[Cost Ajust]
                               ,[Profit]
                               ,[Profit %]
                               ,[Special Groups]
                               ,[Sustitute]
                               ,[Cross References]
                               ,[Additional text]
                               ,[Imagen]
                               ,[Translations]
                               ,[Block]
                               ,[No Vendor]
                               ,[Reorder point]
                               ,[Qty. Reorder point]
                               ,[Inventory Security]
                               ,[Reserve]
                               ,[Lot size]
                               ,[No Serial]
                               ,[No Lot]
                               ,[Calculation Due]
                               ,[Due Date]
                               ,[Creation date]
                               ,[Created by user]
                               ,[Last modified date]
                               ,[Last modified by the user]
                               ,[Warning shortages]
                               ,[Location]
                               ,[Start Date counting]
                               ,[End Date counting]
                               ,[VAT Prod Posting Group]
                               ,[VAT Bus Posting Group]
                               ,[Item Category Code]
                               ,[Product Group Code] )



                         VALUES


                              (@No                                  ,
                               @Description                         , 
                               @Descripcion2                        ,
                               @Qty_Inventory                       ,
                               @Is_Use                              ,
                               @Billed_Units                        ,
                               @Qty_Purshase                        ,
                               @Qty_Sales                           ,
                               @Amount_Purchases                    ,
                               @Amount_Sales                        ,
                               @Qty_Positive_adjustment             ,
                               @Qty_Negative_adjustment             ,
                               @Amount_Positive_adjustment          ,
                               @Amount_Negative_adjustment          , 
                               @Qty_in_Order                        ,
                               @Qty_transfer                        ,
                               @Transfer_amount                     ,
                               @Price_without_VAT                   ,
                               @Price_including_VAT                 , 
                               @VAT                                 ,
                               @Qty_in_Transit                      ,
                               @Qty_Sale_Returns                    , 
                               @Qty_Purchase_Returns                , 
                               @Allow_Negative_Inventory            ,
                               @Qty_Negative                        ,
                               @Auto_Code                           ,
                               @Variant                             , 
                               @Weight                              , 
                               @Base_Unit_of_Measure_Purched        , 
                               @Base_Unit_of_Measure_Sales          ,
                               @Barcode                             , 
                               @Allow_Discount                      ,
                               @Cost_Unity                          , 
                               @Cost_Standard                       ,
                               @Last_cost                           , 
                               @date_last_cost                      ,
                               @Cost_indirect                       ,
                               @Cost_Ajust                          ,
                               @Profit                              ,
                               @Profit_percentage                   , 
                               @Special_Groups                      ,
                               @Sustitute                           ,
                               @Cross_References                    ,
                               @Additional_text                     ,
                               @Imagen                              ,
                               @Translations                        , 
                               @Block                               ,
                               @No_Vendor                           ,
                               @Reorder_point                       , 
                               @Qty_Reorder_point                   , 
                               @Inventory_Security                  ,
                               @Reserve                             ,
                               @Lot_size                            ,
                               @No_Serial                           ,
                               @No_Lot							    ,
                               @Calculation_Due				        ,
                               @Due_Date						    , 
                               @Creation_date				        , 
                               @Created_by_User				        , 
                               @Last_modified_date					,
                               @Last_modified_by_the_user           , 
                               @Warning_shortages                   , 
                               @Location						    ,
                               @Start_Date_counting                 ,
                               @End_Date_counting                   ,
                               @VAT_Prod_Posting_Group				,
                               @VAT_Bus_Posting_Group				,
                               @Item_Category_Code					, 
                               @Product_Group_Code					)
                             
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertItem_Category]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertItem_Category]

           @Item_Category_Code                              AS                  nvarchar(15),
           @Description										AS                  nvarchar(50),
           @Def_Gen_Prod_Posting_Group			       	    AS                  nvarchar(50),
           @Def_Inventory_Posting_Group						AS                  nvarchar(50),
           @Def_Tax_Group_Code								AS                  nvarchar(50),
           @Def_Costing_Method								AS                  nvarchar(50),
           @Def_VAT_Prod_Posting_Group                      AS                  nvarchar(50)

AS 
BEGIN


INSERT INTO [dbo].[Item Category]
           ([Item Category Code]
           ,[Description]
           ,[Def. Gen. Prod. Posting Group]
           ,[Def. Inventory Posting Group]
           ,[Def. Tax Group Code]
           ,[Def. Costing Method]
           ,[Def. VAT Prod. Posting Group])
     VALUES
           (@Item_Category_Code                                               ,
           @Description										,
           @Def_Gen_Prod_Posting_Group			       	    ,
           @Def_Inventory_Posting_Group						,
           @Def_Tax_Group_Code								,
           @Def_Costing_Method								,
           @Def_VAT_Prod_Posting_Group                      )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertItem_Variant]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertItem_Variant]

           @Item_Code                                 AS               nvarchar(15),
           @Item_Code_Variant_Comb                    AS               nvarchar(15),
           @Description					              AS               nvarchar(100),
           @Dimension1					              AS               nvarchar(50),
           @Dimension2					              AS               nvarchar(50),
           @Dimension3					           	  AS               nvarchar(50),
           @Code_Template_Variant_Header              AS               nvarchar(10),
           @Common_Item_No                            AS               nvarchar(15),
           @Barcode                                   AS               nvarchar(15),
           @Creation_date                             AS               datetime,
           @Created_by_user                           AS               nvarchar(50),
           @Last_modified_date                        AS               datetime,
           @Last_modified_by_the_user                 AS               nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Item Variant]
           ([Item Code]
           ,[Item Code Variant Comb]
           ,[Description]
           ,[Dimension1]
           ,[Dimension2]
           ,[Dimension3]
           ,[Code Template Variant Header]
           ,[Common Item No]
           ,[Barcode]
           ,[Creation date]             
           ,[Created by user]             
           ,[Last modified date]          
           ,[Last modified by the user] )
     VALUES
           (@Item_Code                 ,
           @Item_Code_Variant_Comb     ,
           @Description                , 
           @Dimension1, 
           @Dimension2, 
           @Dimension3, 
           @Code_Template_Variant_Header,
           @Common_Item_No,
           @Barcode,
           @Creation_date,
           @Created_by_user,
           @Last_modified_date,
           @Last_modified_by_the_user)
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertItemJournal]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertItemJournal]

        @EntryNo			AS	  int,
        @LineNo			AS	  int,
        @ItemNo			AS	  nvarchar(15),
        @Description		AS	  nvarchar(50),
        @DocumentType		AS	  int,
        @NoTransaccion		AS	  nvarchar(15),
        @StoreNo    		AS	  nvarchar(15),
        @LocationCode		AS	  nvarchar(15),
        @Qty				AS	  decimal(18, 5),
        @QtyRemaining		AS	  decimal(18, 5),
        @QtyperUnitofMeasure	AS	  decimal(18, 5),
        @QtyInvoiced		AS	  decimal(18, 5),
        @QtyReserved		AS	  decimal(18, 5),
        @FinalAmount            AS	  decimal(18, 5),
        @AppliestoEntry		AS	  int,
        @Open				AS	  tinyint,
        @DocumentDate		AS	  datetime,
        @PostingDate		AS	  datetime,
        @ExternalDocumentNo	AS	  nvarchar(35),
        @NoSeries			AS	  nvarchar(15),
        @SerialNo			AS	  nvarchar(15),
        @VariantCode    		AS	  nvarchar(15),
        @UnitofMeasureCode	AS	  nvarchar(15),
        @ItemCategoryCode		AS	  nvarchar(15),
        @ProductGroupCode		AS	  nvarchar(15),
        @LastInvoiceDate		AS	  datetime,
        @ReturnCode			AS	  nvarchar(15)
    
AS BEGIN

BEGIN TRY
INSERT INTO [dbo].[Item Journal]
           (
          [EntryNo]
        ,[LineNo]
        ,[ItemNo]
        ,[Description]
        ,[DocumentType]
        ,[No Transaccion]
        ,[Store No]
        ,[LocationCode]
        ,[Qty]
        ,[QtyRemaining]
        ,[QtyperUnitofMeasure]
        ,[QtyInvoiced]
        ,[QtyReserved]
        ,[FinalAmount]
        ,[AppliestoEntry]
        ,[Open]
        ,[DocumentDate]
        ,[PostingDate]
        ,[ExternalDocumentNo]
        ,[NoSeries]
        ,[SerialNo]
        ,[VariantCode]
        ,[UnitofMeasureCode]
        ,[ItemCategoryCode]
        ,[ProductGroupCode]
        ,[LastInvoiceDate]
        ,[ReturnCode]
         )           
     VALUES
           (
            @EntryNo,
        @LineNo,
        @ItemNo,
        @Description,
        @DocumentType,
        @NoTransaccion,
        @StoreNo,
        @LocationCode,
        @Qty,
        @QtyRemaining,
        @QtyperUnitofMeasure,
        @QtyInvoiced,
        @QtyReserved,
        @FinalAmount,
        @AppliestoEntry,
        @Open,
        @DocumentDate,
        @PostingDate,
        @ExternalDocumentNo,
        @NoSeries,
        @SerialNo,
        @VariantCode,
        @UnitofMeasureCode,
        @ItemCategoryCode,
        @ProductGroupCode,
        @LastInvoiceDate,
        @ReturnCode
        )
END TRY
BEGIN CATCH
SELECT  
    ERROR_NUMBER() AS ErrorNumber  
    ,ERROR_SEVERITY() AS ErrorSeverity  
    ,ERROR_STATE() AS ErrorState  
    ,ERROR_PROCEDURE() AS ErrorProcedure  
    ,ERROR_LINE() AS ErrorLine  
    ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH

END




GO
/****** Object:  StoredProcedure [dbo].[spInsertLanguage]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertLanguage]
         @Code                            AS       nvarchar(15),
         @Name                            AS       nvarchar(50),
         @Windows_Language_ID             AS       nvarchar(15),
         @Windows_Language_Name           AS       nvarchar(max)
AS
BEGIN

INSERT INTO [dbo].[Language]
           ([Code]
           ,[Name]
           ,[Windows Language ID]
           ,[Windows Language Name])
     VALUES
         (@Code                           ,
         @Name                            ,
         @Windows_Language_ID             ,
         @Windows_Language_Name           )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertLanguageList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertLanguageList]
           @Customer_ID		AS          nvarchar(15),
           @Languaje_ID		AS          nvarchar(15),
           @Date			AS          datetime
AS
BEGIN

INSERT INTO [dbo].[Language List]
           ([Customer ID]
           ,[Languaje ID]
           ,[Date])
     VALUES
           (@Customer_ID		,
           @Languaje_ID		    ,
           @Date			    )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertNoSeries]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertNoSeries]

           @Code                          AS               nvarchar(15),
           @Description                    AS              nvarchar(50),
           @Default_Nos_                   AS              tinyint,
           @Manual_Nos_                    AS              tinyint,
           @Date_Order                     AS              tinyint,
           @No_Series_Type                 AS              int

           AS
           BEGIN

INSERT INTO [dbo].[No Series]
           ([Code]
           ,[Description]
           ,[Default Nos_]
           ,[Manual Nos_]
           ,[Date Order]
           ,[No Series Type])
     VALUES
          (@Code                            ,
           @Description                     ,
           @Default_Nos_                    ,
           @Manual_Nos_                     ,
           @Date_Order                      ,
           @No_Series_Type                  )
END






GO
/****** Object:  StoredProcedure [dbo].[spInsertNoSeriesLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC  [dbo].[spInsertNoSeriesLine]

           @Series_Code                     AS              nvarchar(15),
           @Line_No                         AS              int,
           @Starting_Date                   AS              datetime,
           @Starting_No                     AS              nvarchar(20),
           @Ending_No                       AS              nvarchar(20),
           @Warning_No                      AS              nvarchar(20),
           @Increment_by_No                 AS              int,
           @Last_No_Used                    AS              nvarchar(20),
           @Open                            AS              tinyint,
           @Last_Date_Used                  AS              datetime


AS
BEGIN


INSERT INTO [dbo].[No Series Line]
           ([Series Code]
           ,[Line No_]
           ,[Starting Date]
           ,[Starting No_]
           ,[Ending No_]
           ,[Warning No_]
           ,[Increment-by No_]
           ,[Last No_ Used]
           ,[Open]
           ,[Last Date Used])
     VALUES
           (           @Series_Code         ,
           @Line_No                         ,
           @Starting_Date                   ,
           @Starting_No                     ,
           @Ending_No                       ,
           @Warning_No                      ,
           @Increment_by_No                 ,
           @Last_No_Used                    ,
           @Open                            ,
           @Last_Date_Used                  )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertNoSeriesRelationship]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertNoSeriesRelationship]

           @Code          AS     nvarchar(15),
           @Series_Code   AS     nvarchar(15),
           @Description   AS     nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[No Series Relationship]
           ([Code]
           ,[Series Code]
           ,[Description])
     VALUES
           (@Code          ,
           @Series_Code    ,
           @Description    )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertOffers]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertOffers]

           @Code                                      AS	           nvarchar(15),
           @Description								  AS		       nvarchar(50),
           @Percent									  AS			   decimal(18,5),
           @Status									  AS		       nvarchar(50),
           @Amount_Discount_Excl_Vat				  AS			   decimal(18,5),
           @Code_Validation_Period					  AS			   nvarchar(15),
           @Creation_date                             AS               datetime,
           @Created_by_user                           AS               nvarchar(50),
           @Last_modified_date                        AS               datetime,
           @Last_modified_by_the_user                 AS               nvarchar(50)

AS
BEGIN


INSERT INTO [dbo].[Offers]

           ([Code]
           ,[Description]
           ,[Percent]
           ,[Status]
           ,[Amount Discount Excl Vat]
           ,[Code Validation Period]
           ,[Creation date] 
           ,[Created by user]
           ,[Last modified date]
           ,[Last modified by the user])
     VALUES
           (@Code                      ,
           @Description			      ,
           @Percent                   ,
           @Status                    ,
           @Amount_Discount_Excl_Vat  ,
           @Code_Validation_Period    ,
           @Creation_date             ,
           @Created_by_user           ,
           @Last_modified_date        ,
           @Last_modified_by_the_user )

END





GO
/****** Object:  StoredProcedure [dbo].[spInsertOffersDetails]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertOffersDetails]

           @Code_Offers  				AS         nvarchar(15),
           @Type	                  	AS         int,
           @Code_Type		            AS         nvarchar(15),
           @Description_Code_Type		AS         nvarchar(50),
           @Standard_Price_Inc_IVA      AS         decimal(18,5),
           @Standard_Price_Excl_IVA     AS         decimal(18,5),
           @Offer_Price_Inc_Iva         AS         decimal(18,5),
           @Offer_Price_Excl_Iva        AS         decimal(18,5),
           @Disc_percent_Incl_Vat       AS         decimal(18,5),
           @Disc_percent_Excl_Vat       AS         decimal(18,5),
           @Disc_Amount_Inc_IVA         AS         decimal(18,5),
           @Disc_Amount_Excl_IVA        AS         decimal(18,5)

AS
BEGIN

INSERT INTO [dbo].[Offers Details]
           ([Code Offers]
           ,[Type]
           ,[Code Type]
           ,[Description Code Type]
           ,[Standard Price Inc. IVA]
           ,[Standard Price Excl. IVA]
           ,[Offer Price Inc. Iva]
           ,[Offer Price Excl. Iva]
           ,[Disc % Incl Vat]
           ,[Disc % Excl Vat]
           ,[Disc Amount Inc. IVA]
           ,[Disc Amount Excl. IVA])
     VALUES
           (@Code_Offers    			,
           @Type	                  	,
           @Code_Type		            ,
           @Description_Code_Type		,
           @Standard_Price_Inc_IVA      ,
           @Standard_Price_Excl_IVA     ,
           @Offer_Price_Inc_Iva         ,
           @Offer_Price_Excl_Iva        ,
           @Disc_percent_Incl_Vat       ,
           @Disc_percent_Excl_Vat       ,
           @Disc_Amount_Inc_IVA         ,
           @Disc_Amount_Excl_IVA        )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPaymentmethods]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertPaymentmethods]

           @Store_Code                     AS              nvarchar(15),
           @Code_Payment_Setup             AS              nvarchar(15),
           @Default_Funtion                AS              int,
           @Description                    AS              nvarchar(100),
           @Card_Tender                    AS              int,
           @Currency_Tender                AS              int,
           @OverPayment_Allow              AS              int,
           @OverPayment_Max_Amount         AS              decimal(18,5),
           @UnderPayment_Allow             AS              int,
           @UnderPayment_Max_Amount        AS              decimal(18,5),
           @Rounding_Type                  AS              int,
           @Rounding_To                    AS              int,
           @Remove_Float_Type              AS              int,
           @Remove_Float_Description       AS              nvarchar(50),
           @Counting_Requeried             AS              int,
           @Float_Requeried                AS              int,
           @Change_Line_Of_Reception       AS              nvarchar(100),
           @Change_Payment_Type            AS              int

AS
BEGIN


INSERT INTO [dbo].[Payment methods]
           ([Store Code]
           ,[Code Payment Setup]
           ,[Default Funtion]
           ,[Description]
           ,[Card Tender]
           ,[Currency Tender]
           ,[OverPayment Allow]
           ,[OverPayment Max Amount]
           ,[UnderPayment Allow]
           ,[UnderPayment Max Amount]
           ,[Rounding Type]
           ,[Rounding To]
           ,[Remove/Float Type]
           ,[Remove/Float Description]
           ,[Counting Requeried]
           ,[Float Requeried]
           ,[Change Line Of Reception]
           ,[Change Payment Type])
     VALUES
           (@Store_Code                    ,
           @Code_Payment_Setup             ,
           @Default_Funtion                ,
           @Description                    ,
           @Card_Tender                    ,
           @Currency_Tender                ,
           @OverPayment_Allow              ,
           @OverPayment_Max_Amount         ,
           @UnderPayment_Allow             ,
           @UnderPayment_Max_Amount        ,
           @Rounding_Type                  ,
           @Rounding_To                    ,
           @Remove_Float_Type              ,
           @Remove_Float_Description       ,
           @Counting_Requeried             ,
           @Float_Requeried                ,
           @Change_Line_Of_Reception       ,
           @Change_Payment_Type            )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPaymentMethodsSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertPaymentMethodsSetup]

           @Code                          AS              nvarchar(15),
           @Description                   AS              nvarchar(100),
           @Default_Funtion               AS              int,
           @Card_Tender                   AS              int,
           @Currency_Tender               AS              int

AS
BEGIN

INSERT INTO [dbo].[Payment Methods Setup]
           ([Code]
           ,[Description]
           ,[Default Funtion]
           ,[Card Tender]
           ,[Currency Tender])
     VALUES
           (@Code                         ,
           @Description                   ,
           @Default_Funtion               ,
           @Card_Tender                   ,
           @Currency_Tender               )

END





GO
/****** Object:  StoredProcedure [dbo].[spinsertPermissionprofiles]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spinsertPermissionprofiles]

           @Code              AS      nvarchar(15),
           @Description       AS      nvarchar(20)

AS
BEGIN

INSERT INTO [dbo].[Permission profiles]
           ([Code]
           ,[Description])
     VALUES
     (
           @Code              ,
           @Description       
     )

END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPointOfSale]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertPointOfSale]

           @Code                         AS              uniqueidentifier,
           @Store_No                     AS              nvarchar(15),
           @Description                  AS              nvarchar(100),
           @Exit_After_Each_Trans        AS              int,
           @Auto_Logoff                  AS              datetime,
           @Stament_Method_Type          AS              int,
           @No_Series_Return_No	         AS              nvarchar(15),
           @No_Series_Receipt_No	     AS              nvarchar(15),
           @No_Series_Transaction_No     AS				 nvarchar(15),
           @Code_Funtional_Profile       AS				 nvarchar(15),
           @Code_Printer_Fiscal          AS				 nvarchar(15)
AS
BEGIN


INSERT INTO [dbo].[Point Of Sale]
           ([Code]
           ,[Store No]
           ,[Description]
           ,[Exit After Each Trans]
           ,[Auto Logoff]
           ,[Stament Method Type]
           ,[No Series Return No]	
           ,[No Series Receipt No]	
           ,[No Series Transaction No]
           ,[Code Funtional Profile]
           ,[Code Printer Fiscal])
     VALUES
           (@Code                        ,
           @Store_No                     ,
           @Description                  ,
           @Exit_After_Each_Trans        ,
           @Auto_Logoff                  ,
           @Stament_Method_Type          ,
           @No_Series_Return_No	         ,
           @No_Series_Receipt_No	     ,
           @No_Series_Transaction_No     ,
           @Code_Funtional_Profile       ,
           @Code_Printer_Fiscal          )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPosFixedStartAmount]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertPosFixedStartAmount]

           @Store_Code                     AS              nvarchar(15),
           @Stament_Method_Type            AS              int,
           @ID							   AS              int,
           @Code_Payment_Methods           AS              nvarchar(15),
           @Description_Payment_Methods    AS              nvarchar(100),
           @Amount                         AS              decimal(18,5)

AS
BEGIN

INSERT INTO [dbo].[Pos Fixed Start Amount]
           ([Store Code]
           ,[Stament Method Type]
           ,[ID]
           ,[Code Payment Methods]
           ,[Description Payment Methods]
           ,[Amount])
     VALUES

           (@Store_Code                    ,
           @Stament_Method_Type            ,
           @ID							   ,
           @Code_Payment_Methods           ,
           @Description_Payment_Methods    ,
           @Amount                         )


END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPrinterFiscalSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertPrinterFiscalSetup]


           @Code                     AS              uniqueidentifier,
           @Description              AS              nvarchar(50),
           @Model                    AS              nvarchar(50),
           @Port                     AS              nvarchar(50)

AS
BEGIN


INSERT INTO [dbo].[Printer Fiscal Setup]
           ([Code]
           ,[Description]
           ,[Model]
           ,[Port])
     VALUES
           (@Code                   ,
           @Description             ,
           @Model                   ,
           @Port                    )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertProductGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertProductGroup]

           @Product_Group_Code         AS      nvarchar(15), 
           @Item_Category_Code         AS      nvarchar(15),
           @Description                AS      nvarchar(100)

AS
BEGIN

INSERT INTO [dbo].[Product Group]
           ([Product Group Code]
           ,[Item Category Code]
           ,[Description])
     VALUES
         ( @Product_Group_Code         , 
           @Item_Category_Code         ,
           @Description                )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPromotion]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertPromotion]

           @Code                                      AS               nvarchar(15),
           @Description			                      AS               nvarchar(50),
           @Percent                                   AS               decimal(18,5),
           @Status                                    AS               nvarchar(50),
           @Amount_Discount_Excl_Vat                  AS               decimal(18,5),
           @Code_Validation_Period                    AS               nvarchar(15),
           @Creation_date                             AS               datetime,
           @Created_by_user                           AS               nvarchar(50),
           @Last_modified_date                        AS               datetime,
           @Last_modified_by_the_user                 AS               nvarchar(50)

AS
BEGIN


INSERT INTO [dbo].[Promotion]
           ([Code]
           ,[Description]
           ,[Percent]
           ,[Status]
           ,[Amount Discount Excl Vat]
           ,[Code Validation Period]
           ,[Creation date] 
           ,[Created by user]
           ,[Last modified date]
           ,[Last modified by the user])
     VALUES
           (@Code                      ,
           @Description			      ,
           @Percent                   ,
           @Status                    ,
           @Amount_Discount_Excl_Vat  ,
           @Code_Validation_Period    ,
           @Creation_date             ,
           @Created_by_user           ,
           @Last_modified_date        ,
           @Last_modified_by_the_user )

END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPromotionDetails]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertPromotionDetails]

           @Code_Promotion				AS         nvarchar(15),
           @Type	                  	AS         int,
           @Code_Type		            AS         nvarchar(15),
           @Description_Code_Type		AS         nvarchar(50),
           @Standard_Price_Inc_IVA      AS        decimal(18,5),
           @Standard_Price_Excl_IVA     AS        decimal(18,5),
           @Promotion_Price_Inc_Iva     AS        decimal(18,5),
           @Promotion_Price_Excl_Iva    AS        decimal(18,5),
           @Disc_percent_Incl_Vat       AS        decimal(18,5),
           @Disc_percent_Excl_Vat       AS        decimal(18,5),
           @Disc_Amount_Inc_IVA         AS        decimal(18,5),
           @Disc_Amount_Excl_IVA        AS        decimal(18,5)

AS
BEGIN

INSERT INTO [dbo].[Promotion Details]
           ([Code Promotion]
           ,[Type]
           ,[Code Type]
           ,[Description Code Type]
           ,[Standard Price Inc. IVA]
           ,[Standard Price Excl. IVA]
           ,[Promotion Price Inc. Iva]
           ,[Promotion Price Excl. Iva]
           ,[Disc % Incl Vat]
           ,[Disc % Excl Vat]
           ,[Disc Amount Inc. IVA]
           ,[Disc Amount Excl. IVA])
     VALUES
           (@Code_Promotion				,
           @Type	                  	,
           @Code_Type		            ,
           @Description_Code_Type		,
           @Standard_Price_Inc_IVA      ,
           @Standard_Price_Excl_IVA     ,
           @Promotion_Price_Inc_Iva     ,
           @Promotion_Price_Excl_Iva    ,
           @Disc_percent_Incl_Vat       ,
           @Disc_percent_Excl_Vat       ,
           @Disc_Amount_Inc_IVA         ,
           @Disc_Amount_Excl_IVA        )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPurcharseLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertPurcharseLine]


           @Document_Type                       AS              int,
           @No_Receipt                          AS              nvarchar(20),
           @Line_No                             AS              int,
           @No_Transaccion                      AS              nvarchar(20),
           @Customer_No                         AS              nvarchar(20),
           @Type                                AS              int,
           @Item_No                             AS              nvarchar(50),
           @Location_Code                       AS              nvarchar(10),
           @Description                         AS              nvarchar(50),
           @Unit_of_Measure                     AS              nvarchar(10),
           @Posting_Date                        AS              datetime,
           @Quantity                            AS              decimal(18,5),
           @Amount								AS              decimal(18,5),
           @Unit_Cost							AS              decimal(18,5),
           @VAT									AS              decimal(18,5),
           @VAT_Base_Amount                     AS              decimal(18,5),
           @Unit_Price_Incl_VAT                 AS              decimal(18,5),
           @Unit_Price_Excl_VAT                 AS              decimal(18,5),
           @Amount_Incl_VAT                     AS              decimal(18,5),
           @Amount_Excl_VAT                     AS              decimal(18,5),
           @Line_Discount_percent               AS              decimal(18,5),
           @Line_Discount_Amount_Inc_IVA        AS              decimal(18,5),
           @Line_Discount_Amount_Exl_IVA        AS              decimal(18,5),
           @Profit_percent                      AS              decimal(18,5),
           @Line_Amount                         AS              decimal(18,5),
           @Customer_Price_Group                AS              nvarchar(10),
           @Gen_Bus_Posting_Group               AS              nvarchar(10),
           @Gen_Prod_Posting_Group              AS              nvarchar(10),
           @VAT_Bus_Posting_Group               AS              nvarchar(10),
           @VAT_Prod_Posting_Group              AS              nvarchar(10),
           @Currency_Code                       AS              nvarchar(10),
           @Variant_Code                        AS              nvarchar(10),
           @Unit_of_Measure_Code                AS              nvarchar(10),
           @Qty_per_Unit_of_Measure             AS              decimal(18,5),
           @Quantity_Base                       AS              decimal(18,5),
           @Return_Qty_to_Receive               AS              decimal(18,5),
           @Return_Qty_to_Receive_Base          AS              decimal(18,5),
           @Cross_Reference_No                  AS              nvarchar(20),
           @Unit_of_Measure_Cross_Ref__         AS              nvarchar(10),
           @Product_Group_Code                  AS              nvarchar(10),
           @Return_Receipt_No                   AS              nvarchar(20),
           @Allow_Invoice_Disc                  AS              tinyint,
           @Nonstock                            AS              tinyint,
           @Out_of_Stock_Substitution           AS              tinyint,
           @Allow_Line_Disc                     AS              tinyint,
           @Return_Receipt_Line_No              AS              int,
           @Return_Policy                       AS              int,
           @Cancel_Permitted                    AS              int,
           @Non_Refund_Amount                   AS              decimal(18,5),
           @Return_Reason_Code                  AS              nvarchar(10),
           @Store_No                            AS              nvarchar(10),
           @Current_Cust_Price_Group            AS              nvarchar(20),
           @Offer_No                            AS              nvarchar(20),
           @Promotion_No                        AS              nvarchar(20),
           @Store_Sales_Location                AS              nvarchar(10),
           @Vendor_No                           AS              nvarchar(20),
           @Reserved_By_POS_No                  AS              nvarchar(10),
           @Code_Payment_methods	            AS              nvarchar(20),
           @Description_Payment_methods	        AS              nvarchar(100),
           @Amount_Payment_methods	            AS              decimal(18, 5)	

AS
BEGIN

INSERT INTO [dbo].[Purcharse Lines]
           ([Document Type]
           ,[No Receipt]
           ,[Line No]
           ,[No Transaccion]
           ,[Customer No]
           ,[Type]
           ,[Item No]
           ,[Location Code]
           ,[Description]
           ,[Unit of Measure]
           ,[Posting Date]
           ,[Quantity]
           ,[Amount]
           ,[Unit Cost]
           ,[VAT]
           ,[VAT Base Amount]
           ,[Unit Price Incl VAT]
           ,[Unit Price Excl VAT]
           ,[Amount Incl VAT]
           ,[Amount Excl VAT]
           ,[Line Discount %]
           ,[Line Discount Amount Inc IVA]
           ,[Line Discount Amount Exl IVA]
           ,[Profit %]
           ,[Line Amount]
           ,[Customer Price Group]
           ,[Gen Bus Posting Group]
           ,[Gen Prod Posting Group]
           ,[VAT Bus Posting Group]
           ,[VAT Prod Posting Group]
           ,[Currency Code]
           ,[Variant Code]
           ,[Unit of Measure Code]
           ,[Qty_ per Unit of Measure]
           ,[Quantity (Base)]
           ,[Return Qty_ to Receive]
           ,[Return Qty_ to Receive Base]
           ,[Cross-Reference No]
           ,[Unit of Measure (Cross Ref_)]
           ,[Product Group Code]
           ,[Return Receipt No]
           ,[Allow Invoice Disc]
           ,[Nonstock]
           ,[Out-of-Stock Substitution]
           ,[Allow Line Disc]
           ,[Return Receipt Line No]
           ,[Return Policy]
           ,[Cancel Permitted]
           ,[Non Refund Amount]
           ,[Return Reason Code]
           ,[Store No]
           ,[Current Cust_ Price Group]
           ,[Offer No]
           ,[Promotion No]
           ,[Store Sales Location]
           ,[Vendor No]
           ,[Reserved By POS No_]
           ,[Code Payment methods]
           ,[Description Payment methods]
           ,[Amount Payment methods])

     VALUES

           (@Document_Type                      ,
           @No_Receipt                          ,
           @Line_No                             ,
           @No_Transaccion                      ,
           @Customer_No                         ,
           @Type                                ,
           @Item_No                             ,
           @Location_Code                       ,
           @Description                         ,
           @Unit_of_Measure                     ,
           @Posting_Date                        ,
           @Quantity                            ,
           @Amount								,
           @Unit_Cost							,
           @VAT									,
           @VAT_Base_Amount                     ,
           @Unit_Price_Incl_VAT                 ,
           @Unit_Price_Excl_VAT                 ,
           @Amount_Incl_VAT                     ,
           @Amount_Excl_VAT                     ,
           @Line_Discount_percent               ,
           @Line_Discount_Amount_Inc_IVA        ,
           @Line_Discount_Amount_Exl_IVA        ,
           @Profit_percent                      ,
           @Line_Amount                         ,
           @Customer_Price_Group                ,
           @Gen_Bus_Posting_Group               ,
           @Gen_Prod_Posting_Group              ,
           @VAT_Bus_Posting_Group               ,
           @VAT_Prod_Posting_Group              ,
           @Currency_Code                       ,
           @Variant_Code                        ,
           @Unit_of_Measure_Code                ,
           @Qty_per_Unit_of_Measure             ,
           @Quantity_Base                       ,
           @Return_Qty_to_Receive               ,
           @Return_Qty_to_Receive_Base          ,
           @Cross_Reference_No                  ,
           @Unit_of_Measure_Cross_Ref__         ,
           @Product_Group_Code                  ,
           @Return_Receipt_No                   ,
           @Allow_Invoice_Disc                  ,
           @Nonstock                            ,
           @Out_of_Stock_Substitution           ,
           @Allow_Line_Disc                     ,
           @Return_Receipt_Line_No              ,
           @Return_Policy                       ,
           @Cancel_Permitted                    ,
           @Non_Refund_Amount                   ,
           @Return_Reason_Code                  ,
           @Store_No                            ,
           @Current_Cust_Price_Group            ,
           @Offer_No                            ,
           @Promotion_No                        ,
           @Store_Sales_Location                ,
           @Vendor_No                           ,
           @Reserved_By_POS_No                  ,
           @Code_Payment_methods	            ,
           @Description_Payment_methods	        ,
           @Amount_Payment_methods	            )	
      
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertPurchaseHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertPurchaseHeader]

           @Document_Type                     AS              int,
           @No_Receipt                        AS              nvarchar(20),
           @No_Transaccion                    AS              nvarchar(20),
           @Store_No                          AS              nvarchar(20),
           @Customer_No                       AS              nvarchar(20),
           @Customer_Name                     AS              nvarchar(50),
           @Terminal_No                       AS              nvarchar(20),
           @Document_Date                     AS              datetime,
           @Posting_Date                      AS              datetime,
           @Due_Date                          AS              datetime,
           @Posting_No                        AS              nvarchar(20),
           @Posting_Description               AS              nvarchar(50),
           @Payment_Terms_Code                AS              nvarchar(10),
           @Location_Code                     AS              nvarchar(10),
           @Currency_Code                     AS              nvarchar(10),
           @Currency_Factor                   AS              decimal(18,5),
           @Customer_Price_Group              AS              nvarchar(10),
           @Customer_Disc_Group               AS              nvarchar(20),
           @Language_Code                     AS              nvarchar(10),
           @Salesperson_Code                  AS              nvarchar(10),
           @No_Printed                        AS              int,
           @Status                            AS              int,
           @Prices_Including_VAT              AS              tinyint,
           @Allow_Line_Disc                   AS              tinyint,
           @Print_Posted_Documents            AS              tinyint,
           @Last_Posting_No                   AS              nvarchar(20),
           @VAT_Registration_No               AS              nvarchar(20),
           @VAT_Bussines_Posting_Group        AS              nvarchar(20),
           @External_Document_No              AS              nvarchar(35),
           @No_Series                         AS              nvarchar(10),
           @Posting_No_Series                 AS              nvarchar(10),
           @Return_Receipt_No                 AS              nvarchar(20),
           @Return_Receipt_No_Series          AS              nvarchar(10),
           @Last_Return_Receipt_No            AS              nvarchar(20),
           @Assigned_User_ID                  AS              nvarchar(50),
           @Statement_No                      AS              nvarchar(20),
           @Subtotal_Excl_IVA                 AS              decimal(18,5),
           @Subtotal_Inc_IVA                  AS              decimal(18,5),
           @Discount_percent                  AS              decimal(18,5),
           @Discount_Amount_Inc_IVA           AS              decimal(18,5),
           @Discount_Amount_Excl_IVA          AS              decimal(18,5),
           @IVA_Amount                        AS              decimal(18,5),
           @Total_Amount                      AS              decimal(18,5)

AS
BEGIN

INSERT INTO [dbo].[Purcharse Header]
           ([Document Type]
           ,[No Receipt]
           ,[No Transaccion]
           ,[Store No]
           ,[Customer No]
           ,[Customer Name]
           ,[Terminal No]
           ,[Document Date]
           ,[Posting Date]
           ,[Due Date]
           ,[Posting No]
           ,[Posting Description]
           ,[Payment Terms Code]
           ,[Location Code]
           ,[Currency Code]
           ,[Currency Factor]
           ,[Customer Price Group]
           ,[Customer Disc_ Group]
           ,[Language Code]
           ,[Salesperson Code]
           ,[No_ Printed]
           ,[Status]
           ,[Prices Including VAT]
           ,[Allow Line Disc]
           ,[Print Posted Documents]
           ,[Last Posting No_]
           ,[VAT Registration No_]
           ,[VAT Bussines Posting Group]
           ,[External Document No_]
           ,[No_ Series]
           ,[Posting No_ Series]
           ,[Return Receipt No_]
           ,[Return Receipt No_ Series]
           ,[Last Return Receipt No_]
           ,[Assigned User ID]
           ,[Statement No]
           ,[Subtotal Excl IVA]
           ,[Subtotal Inc. IVA]
           ,[Discount %]
           ,[Discount Amount Inc IVA]
           ,[Discount Amount Excl IVA]
           ,[IVA Amount]
           ,[Total Amount])
     VALUES
           (@Document_Type                     ,
           @No_Receipt                        ,
           @No_Transaccion                    ,
           @Store_No                          ,
           @Customer_No                       ,
           @Customer_Name                     ,
           @Terminal_No                       ,
           @Document_Date                     ,
           @Posting_Date                      ,
           @Due_Date                          ,
           @Posting_No                        ,
           @Posting_Description               ,
           @Payment_Terms_Code                ,
           @Location_Code                     ,
           @Currency_Code                     ,
           @Currency_Factor                   ,
           @Customer_Price_Group              ,
           @Customer_Disc_Group               ,
           @Language_Code                     ,
           @Salesperson_Code                  ,
           @No_Printed                        ,
           @Status                            ,
           @Prices_Including_VAT              ,
           @Allow_Line_Disc                   ,
           @Print_Posted_Documents            ,
           @Last_Posting_No                   ,
           @VAT_Registration_No               ,
           @VAT_Bussines_Posting_Group        ,
           @External_Document_No              ,
           @No_Series                         ,
           @Posting_No_Series                 ,
           @Return_Receipt_No                 ,
           @Return_Receipt_No_Series          ,
           @Last_Return_Receipt_No            ,
           @Assigned_User_ID                  ,
           @Statement_No                      ,
           @Subtotal_Excl_IVA                 ,
           @Subtotal_Inc_IVA                  ,
           @Discount_percent                  ,
           @Discount_Amount_Inc_IVA           ,
           @Discount_Amount_Excl_IVA          ,
           @IVA_Amount                        ,
           @Total_Amount                      )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertReserveSummary]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertReserveSummary]

            @EntryNo                   AS    int,
          @LineNo                    AS    int,
            @ItemNo			   AS    nvarchar(15),
            @Description		   AS	   nvarchar(50),
            @ReservationStatus	   AS	   int,
            @SummaryType		   AS	   nvarchar(15),
        @NoTransaccion             AS    nvarchar(15),
            @StoreNo			   AS    nvarchar(15),
            @TerminalNo			   AS    nvarchar(15),
            @TotalQuantity		   AS	   decimal(18, 5),
            @TotalReservedQuantity	   AS	   decimal(18, 5),
            @TotalAvailableQuantity	   AS	   decimal(18, 5),
            @CurrentReservedQuantity   AS	   decimal(18, 5),
            @QtyToReserve		   AS	   decimal(18, 5),
            @QtyReserved		   AS	   decimal(18, 5),
            @QteUnreserverd		   AS	   decimal(18, 5),
            @QuantityBase		   AS	   decimal(18, 5),
            @QtyperUnitofMeasure	   AS	   decimal(18, 5),
            @Quantity			   AS	   decimal(18, 5),
            @SerialNo			   AS	   nvarchar(15),
            @LotNo			   AS	   nvarchar(15),
            @LocationCode		   AS	   nvarchar(15),
            @TransferredfromEntryNo	   AS	   int,
            @ItemLedgerEntryNo	   AS	   int,
            @VariantCode		   AS	   nvarchar(15),
            @CreatedBy			   AS	   nvarchar(15),
            @ModifyBy			   AS	   nvarchar(15),
            @CreationDate		   AS	   datetime
AS BEGIN

INSERT INTO [dbo].[Reserve Summary]
           ([EntryNo]
         ,[LineNo]
           ,[ItemNo]
           ,[Description]
           ,[ReservationStatus]
           ,[SummaryType]
         ,[No Transaccion] 
         ,[Store No] 
         ,[Terminal No] 
           ,[TotalQuantity]
           ,[TotalReservedQuantity]
           ,[TotalAvailableQuantity]
           ,[CurrentReservedQuantity]
           ,[QtyToReserve]
           ,[QtyReserved]
           ,[QteUnreserverd]
           ,[QuantityBase]
           ,[QtyperUnitofMeasure]
           ,[Quantity]
           ,[SerialNo]
           ,[LotNo]
           ,[LocationCode]
           ,[TransferredfromEntryNo]
           ,[ItemLedgerEntryNo]
           ,[VariantCode]
           ,[CreatedBy]
           ,[ModifyBy]
           ,[CreationDate]
         )           
     VALUES
           (@EntryNo
         ,@LineNo
           ,@ItemNo
           ,@Description
           ,@ReservationStatus
           ,@SummaryType
         ,@NoTransaccion            
           ,@StoreNo			  
           ,@TerminalNo			 
           ,@TotalQuantity
           ,@TotalReservedQuantity
           ,@TotalAvailableQuantity
           ,@CurrentReservedQuantity
           ,@QtyToReserve
           ,@QtyReserved
           ,@QteUnreserverd
           ,@QuantityBase
           ,@QtyperUnitofMeasure
           ,@Quantity
           ,@SerialNo
           ,@LotNo
           ,@LocationCode
           ,@TransferredfromEntryNo
           ,@ItemLedgerEntryNo
           ,@VariantCode
           ,@CreatedBy
           ,@ModifyBy
           ,@CreationDate
        )

END




GO
/****** Object:  StoredProcedure [dbo].[spInsertSalesHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSalesHeader]

           @Document_Type                     AS              int,
           @No_Receipt                        AS              nvarchar(15),
           @No_Transaccion                    AS              nvarchar(15),
           @Store_No                          AS              nvarchar(15),
           @Customer_No                       AS              nvarchar(15),
           @Customer_Name                     AS              nvarchar(50),
           @Terminal_No                       AS              nvarchar(15),
           @Document_Date                     AS              datetime,
           @Posting_Date                      AS              datetime,
           @Due_Date                          AS              datetime,
           @Posting_No                        AS              nvarchar(15),
           @Posting_Description               AS              nvarchar(50),
           @Payment_Terms_Code                AS              nvarchar(15),
           @Location_Code                     AS              nvarchar(15),
           @Currency_Code                     AS              nvarchar(15),
           @Currency_Factor                   AS              decimal(18,5),
           @Customer_Price_Group              AS              nvarchar(15),
           @Customer_Disc_Group               AS              nvarchar(15),
           @Language_Code                     AS              nvarchar(15),
           @Salesperson_Code                  AS              nvarchar(15),
           @No_Printed                        AS              int,
           @Status                            AS              int,
           @Prices_Including_VAT              AS              tinyint,
           @Allow_Line_Disc                   AS              tinyint,
           @Print_Posted_Documents            AS              tinyint,
           @Last_Posting_No                   AS              nvarchar(15),
           @VAT_Registration_No               AS              nvarchar(15),
           @VAT_Bussines_Posting_Group        AS              nvarchar(15),
           @External_Document_No              AS              nvarchar(35),
           @No_Series                         AS              nvarchar(15),
           @Posting_No_Series                 AS              nvarchar(15),
           @Return_Receipt_No                 AS              nvarchar(15),
           @Return_Receipt_No_Series          AS              nvarchar(15),
           @Last_Return_Receipt_No            AS              nvarchar(15),
           @Assigned_User_ID                  AS              nvarchar(15),
           @Statement_No                      AS              nvarchar(15),
           @Subtotal_Excl_IVA                 AS              decimal(18,5),
           @Subtotal_Inc_IVA                  AS              decimal(18,5),
           @Discount_percent                  AS              decimal(18,5),
           @Discount_Amount_Incl_IVA          AS              decimal(18,5),
           @Discount_Amount_Excl_IVA          AS              decimal(18,5),
           @IVA_Amount                        AS              decimal(18,5),
           @Total_Amount                      AS              decimal(18,5),
         @TotalAmountEXO                    AS              decimal(18,5),
         @DiscountAmountOnSubtotal          AS              decimal(18,5),
         @DocumentTypeFiscal                AS              int,
         @CustomerVATResgistrationAux       AS              nvarchar(20),
         @CustomerAddressAux                AS              nvarchar(100),
         @StatementPOS                      AS              nvarchar(15)


AS
BEGIN

INSERT INTO [dbo].[Sales Header]
           ([Document Type]
           ,[No Receipt]
           ,[No Transaccion]
           ,[Store No]
           ,[Customer No]
           ,[Customer Name]
           ,[Terminal No]
           ,[Document Date]
           ,[Posting Date]
           ,[Due Date]
           ,[Posting No]
           ,[Posting Description]
           ,[Payment Terms Code]
           ,[Location Code]
           ,[Currency Code]
           ,[Currency Factor]
           ,[Customer Price Group]
           ,[Customer Disc_ Group]
           ,[Language Code]
           ,[Salesperson Code]
           ,[No_ Printed]
           ,[Status]
           ,[Prices Including VAT]
           ,[Allow Line Disc]
           ,[Print Posted Documents]
           ,[Last Posting No_]
           ,[VAT Registration No_]
           ,[VAT Bussines Posting Group]
           ,[External Document No_]
           ,[No_ Series]
           ,[Posting No_ Series]
           ,[Return Receipt No_]
           ,[Return Receipt No_ Series]
           ,[Last Return Receipt No_]
           ,[Assigned User ID]
           ,[Statement No]
           ,[Subtotal Excl IVA]
           ,[Subtotal Inc. IVA]
           ,[Discount %]
           ,[Discount Amount Incl IVA]
           ,[Discount Amount Excl IVA]
           ,[IVA Amount]
           ,[Total Amount]
         ,[TotalAmountEXO]
         ,[DiscountAmountOnSubtotal]
         ,[DocumentTypeFiscal] 
         ,[CustomerVATResgistrationAux]
         ,[CustomerAddressAux]
         ,[StatementPOS]
         )
     VALUES
           (@Document_Type                    ,
           @No_Receipt                        ,
           @No_Transaccion                    ,
           @Store_No                          ,
           @Customer_No                       ,
           @Customer_Name                     ,
           @Terminal_No                       ,
           @Document_Date                     ,
           @Posting_Date                      ,
           @Due_Date                          ,
           @Posting_No                        ,
           @Posting_Description               ,
           @Payment_Terms_Code                ,
           @Location_Code                     ,
           @Currency_Code                     ,
           @Currency_Factor                   ,
           @Customer_Price_Group              ,
           @Customer_Disc_Group               ,
           @Language_Code                     ,
           @Salesperson_Code                  ,
           @No_Printed                        ,
           @Status                            ,
           @Prices_Including_VAT              ,
           @Allow_Line_Disc                   ,
           @Print_Posted_Documents            ,
           @Last_Posting_No                   ,
           @VAT_Registration_No               ,
           @VAT_Bussines_Posting_Group        ,
           @External_Document_No              ,
           @No_Series                         ,
           @Posting_No_Series                 ,
           @Return_Receipt_No                 ,
           @Return_Receipt_No_Series          ,
           @Last_Return_Receipt_No            ,
           @Assigned_User_ID                  ,
           @Statement_No                      ,
           @Subtotal_Excl_IVA                 ,
           @Subtotal_Inc_IVA                  ,
           @Discount_percent                  ,
           @Discount_Amount_Incl_IVA          ,
           @Discount_Amount_Excl_IVA          ,
           @IVA_Amount                        ,
           @Total_Amount                      ,
         @TotalAmountEXO                    ,
         @DiscountAmountOnSubtotal          ,
         @DocumentTypeFiscal                ,
         @CustomerVATResgistrationAux       ,
         @CustomerAddressAux                ,
         @StatementPOS
         )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertSalesLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSalesLine]



           @Document_Type                       AS              int,
           @No_Receipt                          AS              nvarchar(15),
           @Line_No                             AS              int,
           @No_Transaccion                      AS              nvarchar(15),
           @Customer_No                         AS              nvarchar(15),
           @Type                                AS              int,
           @Item_No                             AS              nvarchar(15),
           @Location_Code                       AS              nvarchar(15),
           @Description                         AS              nvarchar(210),
           @Unit_of_Measure                     AS              nvarchar(15),
           @Posting_Date                        AS              datetime,
           @Quantity                            AS              decimal(18,5),
           @Amount				      AS              decimal(18,5),
           @Unit_Cost				      AS              decimal(18,5),
           @VAT					      AS              decimal(18,5),
           @VAT_Base_Amount                     AS              decimal(18,5),
           @Unit_Price_Incl_VAT                 AS              decimal(18,5),
           @Unit_Price_Excl_VAT                 AS              decimal(18,5),
           @Amount_Incl_VAT                     AS              decimal(18,5),
           @Amount_Excl_VAT                     AS              decimal(18,5),
           @Line_Discount_percent               AS              decimal(18,5),
           @Line_Discount_Amount_Inc_IVA        AS              decimal(18,5),
           @Line_Discount_Amount_Exl_IVA        AS              decimal(18,5),
           @Profit_percent                      AS              decimal(18,5),
           @Line_Amount                         AS              decimal(18,5),
           @Customer_Price_Group                AS              nvarchar(15),
           @Gen_Bus_Posting_Group               AS              nvarchar(15),
           @Gen_Prod_Posting_Group              AS              nvarchar(15),
           @VAT_Bus_Posting_Group               AS              nvarchar(15),
           @VAT_Prod_Posting_Group              AS              nvarchar(15),
           @Currency_Code                       AS              nvarchar(15),
           @Variant_Code                        AS              nvarchar(15),
           @Unit_of_Measure_Code                AS              nvarchar(15),
           @Qty_per_Unit_of_Measure             AS              decimal(18,5),
           @Quantity_Base                       AS              decimal(18,5),
           @Return_Qty_to_Receive               AS              decimal(18,5),
           @Return_Qty_to_Receive_Base          AS              decimal(18,5),
           @Cross_Reference_No                  AS              nvarchar(15),
           @Unit_of_Measure_Cross_Ref__         AS              nvarchar(15),
           @Product_Group_Code                  AS              nvarchar(15),
           @Return_Receipt_No                   AS              nvarchar(15),
           @Allow_Invoice_Disc                  AS              tinyint,
           @Nonstock                            AS              tinyint,
           @Out_of_Stock_Substitution           AS              tinyint,
           @Allow_Line_Disc                     AS              tinyint,
           @Return_Receipt_Line_No              AS              int,
           @Return_Policy                       AS              int,
           @Cancel_Permitted                    AS              int,
           @Non_Refund_Amount                   AS              decimal(18,5),
           @Return_Reason_Code                  AS              nvarchar(15),
           @Store_No                            AS              nvarchar(15),
           @Current_Cust_Price_Group            AS              nvarchar(15),
           @Offer_No                            AS              nvarchar(15),
           @Promotion_No                        AS              nvarchar(15),
           @Terminal_No                         AS              nvarchar(15),
           @Vendor_No                           AS              nvarchar(15),
           @Reserved_By_POS_No                  AS              nvarchar(15),
         @Code_Payment_methods	            AS              nvarchar(15),
           @Description_Payment_methods         AS              nvarchar(100),
           @Amount_Payment_methods	            AS              decimal(18, 5),
         @WasIsReturned	                  AS              tinyint,
         @Comment	                        AS              nvarchar(210),
         @QtyReserved                         AS              decimal(18,5),
         @QtyReservedBase                     AS              decimal(18,5),
         @EntryReserveNo                      AS              int

AS
BEGIN

INSERT INTO [dbo].[Sales Line]
           ([Document Type]
           ,[No Receipt]
           ,[Line No]
           ,[No Transaccion]
           ,[Customer No]
           ,[Type]
           ,[Item No]
           ,[Location Code]
           ,[Description]
           ,[Unit of Measure]
           ,[Posting Date]
           ,[Quantity]
           ,[Amount]
           ,[Unit Cost]
           ,[VAT]
           ,[VAT Base Amount]
           ,[Unit Price Incl VAT]
           ,[Unit Price Excl VAT]
           ,[Amount Incl VAT]
           ,[Amount Excl VAT]
           ,[Line Discount %]
           ,[Line Discount Amount Inc IVA]
           ,[Line Discount Amount Exl IVA]
           ,[Profit %]
           ,[Line Amount]
           ,[Customer Price Group]
           ,[Gen Bus Posting Group]
           ,[Gen Prod Posting Group]
           ,[VAT Bus Posting Group]
           ,[VAT Prod Posting Group]
           ,[Currency Code]
           ,[Variant Code]
           ,[Unit of Measure Code]
           ,[Qty_ per Unit of Measure]
           ,[Quantity (Base)]
           ,[Return Qty_ to Receive]
           ,[Return Qty_ to Receive Base]
           ,[Cross-Reference No]
           ,[Unit of Measure (Cross Ref_)]
           ,[Product Group Code]
           ,[Return Receipt No]
           ,[Allow Invoice Disc]
           ,[Nonstock]
           ,[Out-of-Stock Substitution]
           ,[Allow Line Disc]
           ,[Return Receipt Line No]
           ,[Return Policy]
           ,[Cancel Permitted]
           ,[Non Refund Amount]
           ,[Return Reason Code]
           ,[Store No]
           ,[Current Cust_ Price Group]
           ,[Offer No]
           ,[Promotion No]
           ,[Terminal No]
           ,[Vendor No]
           ,[Reserved By POS No_]
         ,[Code Payment methods]
           ,[Description Payment methods]
           ,[Amount Payment methods]
         ,[WasIsReturned]
           ,[Comment]
         ,[QtyReserved]    
         ,[QtyReservedBase]
         ,[EntryReserveNo]
         )

     VALUES

         (@Document_Type                      ,
           @No_Receipt                          ,
           @Line_No                             ,
           @No_Transaccion                      ,
           @Customer_No                         ,
           @Type                                ,
           @Item_No                             ,
           @Location_Code                       ,
           @Description                         ,
           @Unit_of_Measure                     ,
           @Posting_Date                        ,
           @Quantity                            ,
           @Amount					,
           @Unit_Cost					,
           @VAT						,
           @VAT_Base_Amount                     ,
           @Unit_Price_Incl_VAT                 ,
           @Unit_Price_Excl_VAT                 ,
           @Amount_Incl_VAT                     ,
           @Amount_Excl_VAT                     ,
           @Line_Discount_percent               ,
           @Line_Discount_Amount_Inc_IVA        ,
           @Line_Discount_Amount_Exl_IVA        ,
           @Profit_percent                      ,
           @Line_Amount                         ,
           @Customer_Price_Group                ,
           @Gen_Bus_Posting_Group               ,
           @Gen_Prod_Posting_Group              ,
           @VAT_Bus_Posting_Group               ,
           @VAT_Prod_Posting_Group              ,
           @Currency_Code                       ,
           @Variant_Code                        ,
           @Unit_of_Measure_Code                ,
           @Qty_per_Unit_of_Measure             ,
           @Quantity_Base                       ,
           @Return_Qty_to_Receive               ,
           @Return_Qty_to_Receive_Base          ,
           @Cross_Reference_No                  ,
           @Unit_of_Measure_Cross_Ref__         ,
           @Product_Group_Code                  ,
           @Return_Receipt_No                   ,
           @Allow_Invoice_Disc                  ,
           @Nonstock                            ,
           @Out_of_Stock_Substitution           ,
           @Allow_Line_Disc                     ,
           @Return_Receipt_Line_No              ,
           @Return_Policy                       ,
           @Cancel_Permitted                    ,
           @Non_Refund_Amount                   ,
           @Return_Reason_Code                  ,
           @Store_No                            ,
           @Current_Cust_Price_Group            ,
           @Offer_No                            ,
           @Promotion_No                        ,
           @Terminal_No                         ,
           @Vendor_No                           ,
           @Reserved_By_POS_No                  ,
         @Code_Payment_methods	            ,
           @Description_Payment_methods	      ,
           @Amount_Payment_methods	            ,
         @WasIsReturned                       ,
         @Comment                             ,
         @QtyReserved   	                  ,
           @QtyReservedBase                     ,
         @EntryReserveNo)
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertSalesPaymentMethods]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSalesPaymentMethods]

           @Document_Type                  AS              int,
           @Line_No                        AS              int,
           @No_Receipt                     AS              nvarchar(15),
         @StoreCode                      AS              nvarchar(15),
           @Transaction_No                 AS              nvarchar(15),
           @Code_Payment_Metodth           AS              nvarchar(15),
           @Terminal_No                    AS              nvarchar(15),
           @Description_Payment_Metodth    AS              nvarchar(100),
           @Amount                         AS              decimal(18,5),
         @State                          AS              int,
         @Reference                      AS              nvarchar(MAX),
         @Creation_date			 AS              datetime, 
         @Created_by_User			 AS              nvarchar(50), 
         @Last_modified_date		 AS		     datetime,
             @Last_modified_by_the_user      AS              nvarchar(50),
         @Prepayment                     AS              int

AS
BEGIN


INSERT INTO [dbo].[Sales Payment methods]
           ([Document Type]
           ,[Line No]
           ,[No Receipt]
         ,[StoreCode]
           ,[Transaction No]
           ,[Code Payment Metodth]
         ,[Terminal No]
           ,[Description Payment Metodth]
           ,[Amount]
           ,[State]
           ,[Reference]
           ,[Creation date]
           ,[Created by user]
           ,[Last modified date]
           ,[Last modified by the user]
           ,[Prepayment]
           )
     VALUES
           (@Document_Type                 ,
           @Line_No                        ,
           @No_Receipt                     ,
         @StoreCode                      ,
           @Transaction_No                 ,
           @Code_Payment_Metodth           ,
         @Terminal_No                    ,
           @Description_Payment_Metodth    ,
           @Amount                         ,
         @State                          ,
         @Reference                      ,
         @Creation_date				   , 
         @Created_by_User			       , 
         @Last_modified_date		       ,
             @Last_modified_by_the_user       ,
         @Prepayment )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertSalesperson_Employee]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSalesperson_Employee]
           @Code                   AS                 nvarchar(15),
           @Name                   AS                 nvarchar(50),
           @Type                   AS                 nvarchar(50),
           @Comision               AS                 decimal(18,5),
           @Phone                  AS                 nvarchar(50),
           @EMail                  AS                 nvarchar(50),
           @Avg_Estimated_Value    AS                 decimal(18,5),
           @Photo                  AS                 nvarchar(50),
           @CodeAddress            AS                 nvarchar(15),
           @Code_Permission        AS                 nvarchar(15)

AS
BEGIN
INSERT INTO [dbo].[Salesperson/Employee]
           ([Code]
           ,[Name]
           ,[Type]
           ,[Comision%]
           ,[Phone]
           ,[E-Mail]
           ,[Avg. Estimated Value]
           ,[Photo]
           ,[CodeAddress]
           ,[Code Permission])
     VALUES
           (@Code                 ,
           @Name                  ,
           @Type                  ,
           @Comision              ,
           @Phone                 ,
           @EMail                 ,
           @Avg_Estimated_Value   ,
           @Photo                 ,
           @CodeAddress           ,
           @Code                  )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertSalespersonList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertSalespersonList]
           @Customer_ID                   AS                 nvarchar(15),
           @Salesperson_ID                AS                 nvarchar(15),
           @Date						  AS				 datetime

AS
BEGIN
INSERT INTO [dbo].[Salesperson List]
           ([Customer ID]
           ,[Salesperson ID]
           ,[Date])
     VALUES
           (@Customer_ID                 ,
           @Salesperson_ID                 ,
           @Date						 )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertSalesPrices]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSalesPrices]

           @Item_No                                   AS              nvarchar(15), 
           @Sales_Code					              AS              nvarchar(15), 
           @Variant_Code							  AS              nvarchar(15),
           @Starting_Date				              AS              datetime, 
           @Ending_Date								  AS              datetime, 
           @Unit_Price								  AS              decimal(18,5), 
           @Price_Includes_VAT						  AS              int, 
           @VAT_Bus_Posting_Gr_Price				  AS              nvarchar(15), 
           @Sales_Type								  AS              int, 
           @Minimum_Quantity						  AS              decimal(18,5),      
           @Unit_of_Measure_Code					  AS              nvarchar(15), 
           @Creation_date                             AS              datetime,
           @Created_by_user                           AS              nvarchar(50),
           @Last_modified_date                        AS              datetime,
           @Last_modified_by_the_user                 AS              nvarchar(50)		   
AS
BEGIN

INSERT INTO [dbo].[Sales Prices]
           ([Item No]
           ,[Sales Code]
           ,[Variant Code]
           ,[Starting Date]
           ,[Ending Date]
           ,[Unit Price]
           ,[Price Includes VAT]
           ,[VAT Bus. Posting Gr. (Price)]
           ,[Sales Type]
           ,[Minimum Quantity]  
           ,[Unit of Measure Code]
           ,[Creation date]             
           ,[Created by user]           
           ,[Last modified date]          
           ,[Last modified by the user]  )
     VALUES
          (@Item_No                      , 
           @Sales_Code					 , 
           @Variant_Code				 ,
           @Starting_Date				 , 
           @Ending_Date					 , 
           @Unit_Price					 , 
           @Price_Includes_VAT			 , 
           @VAT_Bus_Posting_Gr_Price     , 
           @Sales_Type					 , 
           @Minimum_Quantity			 , 
           @Unit_of_Measure_Code		 ,       
           @Creation_date                ,
           @Created_by_user              ,
           @Last_modified_date           ,
           @Last_modified_by_the_user    )

END





GO
/****** Object:  StoredProcedure [dbo].[spInsertSalesPricesHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSalesPricesHeader]
 
           @Sales_Code       AS      nvarchar(15),
           @Description      AS      nvarchar(50)

AS 
BEGIN

INSERT INTO [dbo].[Sales Prices Header]
           ([Sales Code]
           ,[Description])

     VALUES
           (@Sales_Code      ,
           @Description      )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertSequenceTypes]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSequenceTypes]
           @Id      AS      uniqueidentifier,
           @Name    AS      nvarchar(50)

           AS
           BEGIN

INSERT INTO [dbo].[SequenceTypes]
           ([Id]
           ,[Name])
     VALUES
           (@Id      ,
            @Name     )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertSerialSchemas]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSerialSchemas]

           @Id                     AS              uniqueidentifier,
           @Store_code_Id          AS              nvarchar(15),
           @POS_code_Id            AS              uniqueidentifier,
           @Sequence_Type_Id       AS              uniqueidentifier,
           @Initial_Value          AS              int,
           @Increment              AS              int,
           @Serial_Mask            AS              nvarchar(50),
           @Leading_Zeros_Length   AS              tinyint,
           @Expiry_Date            AS              datetime2(7),
           @Max_Value              AS              bigint,
           @Is_Cycle               AS              bit,
           @Last_Serial            AS              bigint

AS
BEGIN

INSERT INTO [dbo].[SerialSchemas]
           ([Id]
           ,[Store_code_Id]
           ,[POS_code_Id]
           ,[Sequence_Type_Id]
           ,[Initial_Value]
           ,[Increment]
           ,[Serial_Mask]
           ,[Leading_Zeros_Length]
           ,[Expiry_Date]
           ,[Max_Value]
           ,[Is_Cycle]
           ,[Last_Serial])
     VALUES
     (
           @Id                     ,
           @Store_code_Id          ,
           @POS_code_Id            ,
           @Sequence_Type_Id       ,
           @Initial_Value          ,
           @Increment              ,
           @Serial_Mask            ,
           @Leading_Zeros_Length   ,
           @Expiry_Date            ,
           @Max_Value              ,
           @Is_Cycle               ,
           @Last_Serial            )

           END



GO
/****** Object:  StoredProcedure [dbo].[spInsertSize]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSize]

           @Code        AS      nchar(10),
           @width       AS      int,
           @long		AS		int,
           @deep		AS		int

AS
BEGIN
INSERT INTO [dbo].Size
           ([Code],
            width,
            long,
            deep)
     VALUES
           (@Code             ,
            @width			  ,
            @long             ,
            @deep             )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertSpecialGroups]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertSpecialGroups]

           @Code            AS      nvarchar(15),
           @Description     AS      nvarchar(100)

AS BEGIN

INSERT INTO [dbo].[Special Groups]
           ([Code]
           ,[Description])
     VALUES
           (@Code            ,
           @Description      )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertSpecialGroupsItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertSpecialGroupsItem]

           @Item_Number                    AS       nvarchar(15),
           @Code_Special_Group             AS       nvarchar(15),
           @Special_Group_Description      AS       nvarchar(100)

AS
BEGIN

INSERT INTO [dbo].[Special Group Item]
           ([Item Number]
           ,[Code Special Group]
           ,[Special Group Description])
     VALUES
         (@Item_Number                    ,
           @Code_Special_Group            ,
           @Special_Group_Description     )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertState]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertState]

     @Code          AS   nvarchar(15),
     @Description   AS   nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[State]
           ([Code]
           ,[Description])
     VALUES
           (@Code,
            @Description)
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertStatementLines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertStatementLines]
       
         @No_Transaccion	      AS    nvarchar(15),
         @Store_No	            AS    nvarchar(15),
         @Terminal_No	            AS    nvarchar(15),
         @SalesPaymentMethodCode	AS    nvarchar(15),
         @LineNo	            AS    int,
         @Description	            AS    nvarchar(100),
         @Counted	            AS    decimal(18, 5),
         @TransactionAmount	      AS    decimal(18, 5),
         @DiferentAmount	      AS    decimal(18, 5),
         @StatementCode	      AS    nvarchar(20),
         @Quantity	            AS    int,
         @Status	            AS    int,
         @CreationDate	      AS    datetime,
         @CreatedByUser	      AS    nvarchar(50),
         @ModifyDate	            AS    datetime,
         @ModifyByUser	      AS    nvarchar(50)	

AS
BEGIN


INSERT INTO [dbo].[StatementLines]
           (
         [No Transaccion],
           [Store No],
           [Terminal No],
           [SalesPaymentMethodCode],
           [LineNo],
           [Description],
           [Counted],
           [TransactionAmount],
           [DiferentAmount],
           [StatementCode],
           [Quantity],
           [Status],
           [CreationDate],
           [CreatedByUser],
           [ModifyDate],
           [ModifyByUser]
         )
     VALUES
           (
         @No_Transaccion	       ,
           @Store_No	             ,
           @Terminal_No	             ,
         @SalesPaymentMethodCode   ,
           @LineNo	             ,
           @Description	             ,
         @Counted	             ,
           @TransactionAmount	       ,
           @DiferentAmount	       ,
         @StatementCode	       ,
         @Quantity	             ,
         @Status	          	 , 
         @CreationDate	       , 
         @CreatedByUser	       ,
             @ModifyDate	             ,
         @ModifyByUser	
         )    
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertStore]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertStore]

           @Code                     AS              nvarchar(15),
           @Sales_Code               AS              nvarchar(15),
           @Name                     AS              nvarchar(50),
           @Code_Address             AS              nvarchar(15),
           @Stament_Method           AS              int,
           @Max_Diff_to_Allow        AS              nvarchar(10),
           @image                    AS              image =NULL

AS
BEGIN


INSERT INTO [dbo].[Store]
           ([Code]
           ,[Sales Code]
           ,[Name]
           ,[Code Address]
           ,[Stament Method]
           ,[Max Diff to Allow]
           ,[image])
     VALUES
           (@Code                    ,
            @Sales_Code              ,
           @Name                     ,
           @Code_Address             ,
           @Stament_Method           ,
           @Max_Diff_to_Allow        ,
           @image                    )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertStyle]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spInsertStyle]

           @Code              AS      nvarchar(50),
           @Descripcion       AS      nchar(10)

AS
BEGIN
INSERT INTO [dbo].[Style]
           ([Code]
           ,[Descripcion])
     VALUES
           (@Code             ,
           @Descripcion       )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertSustitute]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertSustitute]

          @Code_item                  AS        nvarchar(15),		  
          @Code_Item_Sustitute        AS        nvarchar(15),
          @Description                AS        nvarchar(100)


AS
BEGIN

INSERT INTO [dbo].Sustitute
           ([Code Item]
           ,[Code Item Sustitute]
           ,[Description])
     VALUES
          (@Code_item                   ,
           @Code_Item_Sustitute         ,
           @Description           )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertTemplateVariantHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertTemplateVariantHeader]

           @Code_Template_Variant_Header           AS    nvarchar(15),
           @Description                            AS    nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Template Variant Header]
           ([Code Template Variant Header]
           ,[Description])
     VALUES
            (
           @Code_Template_Variant_Header           ,
           @Description                            )

END



GO
/****** Object:  StoredProcedure [dbo].[spInsertTemplateVariantLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertTemplateVariantLine]

           @Code_Template_Variant_Header           AS    nvarchar(15),
           @Code_Variant                           AS    nvarchar(15),
           @Description                            AS    nvarchar(50)
AS
BEGIN

INSERT INTO [dbo].[Template Variant Line]
           ([Code Template Variant Header]
           ,[Code Variant]
           , [Description])
     VALUES
            (
           @Code_Template_Variant_Header           ,
           @Code_Variant                           ,
           @Description                            )

END



GO
/****** Object:  StoredProcedure [dbo].[spInsertUniteMeasure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertUniteMeasure]
            @Code               AS        nvarchar(15),
            @Description        AS        nvarchar(50)
AS
BEGIN
INSERT INTO [dbo].[Unit of measure]
           ([Code]
           ,[Description])
     VALUES
            (@Code               ,
            @Description        )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertValidationPeriod]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertValidationPeriod]

           @Code                    AS         nvarchar(15),
           @Description             AS         nvarchar(50),
           @Starting_Date           AS         datetime,
           @Ending_Date             AS         datetime,
           @Starting_Time           AS         time(7),
           @Ending_Time             AS         time(7)

AS
BEGIN

INSERT INTO [dbo].[Validation Period]
           ([Code]
           ,[Description]
           ,[Starting Date]
           ,[Ending Date]
           ,[Starting Time]
           ,[Ending Time])
     VALUES
           (@Code                   ,
           @Description             ,
           @Starting_Date           ,
           @Ending_Date             ,
           @Starting_Time           ,
           @Ending_Time             )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertVariantGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertVariantGroup]

           @Code_Template_Variant_Header           AS    nvarchar(15),
           @Code_Variant                           AS    nvarchar(15),
           @Code_Variant_Line					   AS    nvarchar(15),
           @Date								   AS    datetime

AS
BEGIN

INSERT INTO [dbo].[Variant Group]
           ([Code Template Variant Header]
           ,[Code Variant]
           ,[Code Variant Line]
           ,[Date])
     VALUES
            (
           @Code_Template_Variant_Header           ,
           @Code_Variant                           ,
           @Code_Variant_Line	                    ,
           @Date)

END



GO
/****** Object:  StoredProcedure [dbo].[spInsertVariantHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertVariantHeader]

           @Code_variant            AS     nvarchar(15),
           @Description             AS     nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Variant Headers]
           ([Code Variant]
           ,[Description])
     VALUES
           (@Code_variant            ,
            @Description     )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertVariantLines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertVariantLines]

           @CodeVariant            AS     nvarchar(15),
           @Code_variant_Line      AS     nvarchar(15),
           @Description            AS     nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Variant Lines]
           ([Code Variant]
           ,[Code Variant Line]
           ,[Description])
     VALUES
           (@CodeVariant             ,
            @Code_variant_Line       ,
            @Description     )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertVATBusinessPostingGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertVATBusinessPostingGroup]

           @Code                               AS            nvarchar(15),
           @Description                        AS            nvarchar(50),
           @Default_Operation_Sales_Type       AS            nvarchar(15),
           @Default_Operation_Purchas_Type     AS            nvarchar(15),
           @Check_Vat_Exemtion                 AS            int,
           @Serie_Sales                        AS            nvarchar(15)


AS
BEGIN


INSERT INTO [dbo].[VAT Business Posting Group]
           ([Code]
           ,[Description]
           ,[Default Operation Sales Type]
           ,[Default Operation Purchas Type]
           ,[Check Vat Exemtion]
           ,[Serie Sales])
     VALUES
           (@Code                              ,
           @Description                        ,
           @Default_Operation_Sales_Type       ,
           @Default_Operation_Purchas_Type     ,
           @Check_Vat_Exemtion                 ,
           @Serie_Sales                        )
END





GO
/****** Object:  StoredProcedure [dbo].[spInsertVATPostingSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertVATPostingSetup]

           @VAT_Bus_Posting_Group            AS     nvarchar(15),
           @VAT_Prod_Posting_Group           AS     nvarchar(15),
           @VAT_Calculation_Type             AS     int,
           @VAT_percent                      AS     decimal(18,5),
           @Unrealized_VAT_Type              AS     nvarchar(15),
           @VAT_Identifier                   AS     nvarchar(15)

AS 
BEGIN
INSERT INTO [dbo].[VAT Posting Setup]
           ([VAT Bus. Posting Group]
           ,[VAT Prod. Posting Group]
           ,[VAT Calculation Type]
           ,[VAT %]
           ,[Unrealized VAT Type]
           ,[VAT Identifier])
     VALUES
           (@VAT_Bus_Posting_Group           ,
           @VAT_Prod_Posting_Group           ,
           @VAT_Calculation_Type             ,
           @VAT_percent                      ,
           @Unrealized_VAT_Type              ,
           @VAT_Identifier                   )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertVATProdPostingGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spInsertVATProdPostingGroup]

          @Code                  AS        nvarchar(15),
          @Description           AS        nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[VAT Prod. Posting Group]
           ([Code]
           ,[Description])
     VALUES
          (@Code                 ,
          @Description           )
END




GO
/****** Object:  StoredProcedure [dbo].[spInsertVendor]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spInsertVendor]

           @No						    	   AS               nvarchar(20), 
           @Name						       AS               nvarchar(50),
           @Name2                              AS               nvarchar(50),
           @Address                            AS               nvarchar(50),
           @Phone                              AS               nvarchar(50),
           @Block                              AS               int,
           @Balance                            AS               decimal(18,5),
           @Purchases                          AS               decimal(18,5),
           @Inv_Discounts                      AS               decimal(18,5),
           @Balance_Due                        AS               decimal(18,5),
           @Payments                           AS               decimal(18,5),
           @Invoice_Amounts                    AS               decimal(18,5),
           @Cr_Memo_Amounts                    AS               decimal(18,5),
           @Outstanding_Orders                 AS               decimal(18,5),
           @Amt_Rcd_Not_Invoiced               AS               decimal(18,5),
           @Prices_Including_VAT               AS               decimal(18,5),
           @VAT_Registration_No                AS               nvarchar(50),
           @Debit_Amount                       AS               decimal(18,5),
           @Credit_Amount                      AS               decimal(18,5),
           @Refunds                            AS               decimal(18,5),
           @Other_Amounts                      AS               decimal(18,5),
           @Prepayment                         AS               decimal(18,5),
           @Outstanding_Invoices               AS               decimal(18,5),
           @Partner_Type                       AS               int,
           @Preferred_Bank_Account             AS               nvarchar(50),
           @No_of_Pstd_Receipts                AS               int,
           @No_of_Pstd_Invoices                AS               int,
           @No_of_Pstd_Return_Shipments        AS               int,
           @No_of_Pstd_Credit_Memos            AS               int,
           @No_of_Quotes                       AS               int,
           @No_of_Blanket_Orders               AS               int,
           @No_of_Orders                       AS               int,
           @No_of_Invoices                     AS               int,
           @No_of_Return_Orders                AS               int,
           @No_of_Credit_Memos                 AS               int,
           @Creation_date                      AS               datetime,
           @Created_by_user                    AS               nvarchar(50),
           @Last_modified_date                 AS               datetime,
           @Last_modified_by_the_user          AS               nvarchar(50)

AS
BEGIN

INSERT INTO [dbo].[Vendor]
           ([No]
           ,[Name]
           ,[Name2]
           ,[Address]
           ,[Phone]
           ,[Block]
           ,[Balance]
           ,[Purchases]
           ,[Inv. Discounts]
           ,[Balance Due]
           ,[Payments]
           ,[Invoice Amounts]
           ,[Cr. Memo Amounts]
           ,[Outstanding Orders]
           ,[Amt. Rcd. Not Invoiced]
           ,[Prices Including VAT]
           ,[VAT Registration No.]
           ,[Debit Amount]
           ,[Credit Amount]
           ,[Refunds]
           ,[Other Amounts]
           ,[Prepayment %]
           ,[Outstanding Invoices]
           ,[Partner Type]
           ,[Preferred Bank Account]
           ,[No. of Pstd. Receipts]
           ,[No. of Pstd. Invoices]
           ,[No. of Pstd. Return Shipments]
           ,[No. of Pstd. Credit Memos]
           ,[No. of Quotes]
           ,[No. of Blanket Orders]
           ,[No. of Orders]
           ,[No. of Invoices]
           ,[No. of Return Orders]
           ,[No. of Credit Memos]
           ,[Creation date]             
           ,[Created by user]           
           ,[Last modified date]       
           ,[Last modified by the user] )
     VALUES

           (@No						    	   , 
           @Name						       ,
           @Name2                              ,
           @Address                            ,
           @Phone                              ,
           @Block                              ,
           @Balance                            ,
           @Purchases                          ,
           @Inv_Discounts                      ,
           @Balance_Due                        ,
           @Payments                           ,
           @Invoice_Amounts                    ,
           @Cr_Memo_Amounts                    ,
           @Outstanding_Orders                 ,
           @Amt_Rcd_Not_Invoiced               ,
           @Prices_Including_VAT               ,
           @VAT_Registration_No                ,
           @Debit_Amount                       ,
           @Credit_Amount                      ,
           @Refunds                            ,
           @Other_Amounts                      ,
           @Prepayment                         ,
           @Outstanding_Invoices               ,
           @Partner_Type                       ,
           @Preferred_Bank_Account             ,
           @No_of_Pstd_Receipts                ,
           @No_of_Pstd_Invoices                ,
           @No_of_Pstd_Return_Shipments        ,
           @No_of_Pstd_Credit_Memos            ,
           @No_of_Quotes                       ,
           @No_of_Blanket_Orders               ,
           @No_of_Orders                       ,
           @No_of_Invoices                     ,
           @No_of_Return_Orders                ,
           @No_of_Credit_Memos                 ,
           @Creation_date                      ,
           @Created_by_user                    ,
           @Last_modified_date                 ,
           @Last_modified_by_the_user          )
  
END





GO
/****** Object:  StoredProcedure [dbo].[spLogin]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spLogin]
    -- Add the parameters for the stored procedure here
    @Sid Uniqueidentifier,
    @Username varchar(40),
    @Password varchar(40)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @HASH CHAR(40);
    DECLARE @NUSERNAME VARCHAR(40);
    DECLARE @UID UNIQUEIDENTIFIER;

    SET @NUSERNAME = LTRIM(RTRIM(UPPER(@Username)));
    set @HASH = CONVERT(varchar(max),HASHBYTES('SHA1', (@NUSERNAME+':'+@Password)),2)
                
    if(EXISTS (SELECT [UserId],[FirstName],[SecondName],[LastName],[NamePrefix],[NameSufix],[ExpireDate],[NeedChangePassword] 
    FROM [User] 
    WHERE LTRIM(RTRIM(UPPER([Username]))) = @NUSERNAME AND LTRIM(RTRIM(UPPER([PasswordHash]))) = LTRIM(RTRIM(UPPER(@HASH)))))
    BEGIN
    
    SET @UID = (SELECT [UserId] FROM [User] WHERE LTRIM(RTRIM(UPPER([Username]))) = @NUSERNAME AND LTRIM(RTRIM(UPPER([PasswordHash]))) = LTRIM(RTRIM(UPPER(@HASH))));
    UPDATE [UserSession] SET [UserId] = @UID WHERE [SessionId] = @Sid;

    END;

    SELECT [UserId],[FirstName],[SecondName],[LastName],[NamePrefix],[NameSufix],[ExpireDate],[NeedChangePassword] FROM [User] WHERE LTRIM(RTRIM(UPPER([Username]))) = @NUSERNAME AND LTRIM(RTRIM(UPPER([PasswordHash]))) = LTRIM(RTRIM(UPPER(@HASH)));

END


GO
/****** Object:  StoredProcedure [dbo].[spRemovePermissionTo]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spRemovePermissionTo]
    -- Add the parameters for the stored procedure here
    @iPermissionNo uniqueidentifier,
    @iUserNo uniqueidentifier
    
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    DELETE FROM [UserPermissions] WHERE [User No.] = @iUserNo AND [Permission No.] = @iPermissionNo;
END


GO
/****** Object:  StoredProcedure [dbo].[spSelectLastSerialFromSerialSchemas]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spSelectLastSerialFromSerialSchemas]

@Sequence_type_id  AS  uniqueidentifier,
@Last_Serial AS bigint  output

AS
BEGIN

SET @Last_Serial = (SELECT [Last_Serial] FROM [dbo].[SerialSchemas]
WHERE Sequence_Type_Id =@Sequence_type_id)

END



GO
/****** Object:  StoredProcedure [dbo].[spSelectSequenceTypes]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spSelectSequenceTypes]
AS
BEGIN


SELECT *FROM [dbo].[SequenceTypes]

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdate_Comparasion_Unit_Of_Measure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdate_Comparasion_Unit_Of_Measure]

           @Code            AS     nvarchar(15),
           @Description     AS     nvarchar(50)

AS 
BEGIN


UPDATE[dbo].[Comparasion Unit Of Measure]
SET
[Description]=@Description 
WHERE [Code]=@Code 
END





GO
/****** Object:  StoredProcedure [dbo].[spUPDATE_INFOPRINTERFISCAL]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUPDATE_INFOPRINTERFISCAL]

           @No_Transaccion                 AS              nvarchar(15),
           @No_Receipt                     AS              nvarchar(15),
           @Document_Date                  AS              datetime,
           @COO                            AS              nvarchar(10),
           @NDOCFISCAL                     AS              nvarchar(20),
           @SERIEIMPRESORA                 AS              nvarchar(20),
           @Document_Type                  AS              int,
           @DOCAFECTADO                    AS              nvarchar(20),
           @SERIEAFECTADO                  AS              nvarchar(20),
           @FECHAIMPRESORA                 AS              datetime,
           @FECHAIMPAFECTADA               AS              datetime,
           @HORAIMPRESORA                  AS              nvarchar(10),
           @HORAIMPAFECTADA                AS              nvarchar(10),
         @AmountPayable                  AS              decimal(18, 5),
           @NumberPaymentsMade             AS              int,
           @QuantityArticles               AS              int,
           @SubTotalBases                  AS              decimal(18, 5),
         @SubTotalTax                    AS              decimal(18, 5),
         @DocumentTypeFiscal             AS              int,
         @Country			       AS              nvarchar(20),
         @DOCNOFISCAL				 AS              nvarchar(20) 

AS BEGIN

UPDATE [dbo].[INFOPRINTERFISCAL]
SET
            [Document Date]                   =               @Document_Date
           ,[COO]                             =               @COO
           ,[NDOCFISCAL]                      =               @NDOCFISCAL
           ,[SERIEIMPRESORA]                  =               @SERIEIMPRESORA
           ,[Document Type]                   =               @Document_Type
           ,[DOCAFECTADO]                     =               @DOCAFECTADO
           ,[SERIEAFECTADO]                   =               @SERIEAFECTADO
           ,[FECHAIMPRESORA]                  =               @FECHAIMPRESORA
           ,[FECHAIMPAFECTADA]                =               @FECHAIMPAFECTADA
           ,[HORAIMPRESORA]                   =               @HORAIMPRESORA
           ,[HORAIMPAFECTADA]                 =               @HORAIMPAFECTADA
         ,[AmountPayable]                   =               @AmountPayable
           ,[NumberPaymentsMade]              =               @NumberPaymentsMade
           ,[QuantityArticles]                =               @QuantityArticles
           ,[SubTotalBases]                   =               @SubTotalBases
           ,[SubTotalTax]                     =               @SubTotalTax
           ,[DocumentTypeFiscal]              =               @DocumentTypeFiscal
           ,[Country]                         =               @Country
           ,[DOCNOFISCAL]                    =                @DOCNOFISCAL

           WHERE 

            [No Transaccion]  =  @No_Transaccion  AND
            [No Receipt]      =  @No_Receipt
END




GO
/****** Object:  StoredProcedure [dbo].[spUPDATE_INFOPRINTERFISCAL_AUX]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUPDATE_INFOPRINTERFISCAL_AUX]

           @No_Transaccion                 AS              nvarchar(15),
           @NumDocFiscal                   AS              nvarchar(20),
           @Document_Date                  AS              datetime,
           @DocumentType                   AS              int,
           @BusinessName                   AS              nvarchar(50),
           @VATRegistration                AS              nvarchar(50),
           @Address                        AS              nvarchar(50),
           @ItemDescription                AS              nvarchar(150),
           @Comment                        AS              nvarchar(40),
           @DocAfect                       AS              nvarchar(20),
           @DatePrinter                    AS              datetime,
           @DatePrinterAfect               AS              datetime,
           @TimePrinter                    AS              nvarchar(10),
           @SerialPrinter                  AS              nvarchar(20),
           @SerialPrintetAfect             AS              nvarchar(20),      
           @SubTotalBases                  AS              decimal(18, 5),
           @SubTotalTax                    AS              decimal(18, 5),
           @DocumentTypeFiscal             AS              int,
           @Country						   AS              nvarchar(20)		

AS
BEGIN

UPDATE [dbo].[INFOPRINTERFISCAL_AUX]
SET         
       
            [NumDocFiscal]                  =               @NumDocFiscal 
            ,[Document Date]                 =               @Document_Date
            ,[DocumentType]                  =               @DocumentType
            ,[BusinessName]                  =               @BusinessName  
            ,[VATRegistration]               =               @VATRegistration
            ,[Address]                       =               @Address    
            ,[ItemDescription]               =               @ItemDescription 
            ,[Comment]                       =               @Comment    
            ,[DocAfect]                      =               @DocAfect   
            ,[DatePrinter]                   =               @DatePrinter 
            ,[DatePrinterAfect]              =               @DatePrinterAfect
            ,[TimePrinter]                   =               @TimePrinter   
            ,[SerialPrinter]                 =               @SerialPrinter  
            ,[SerialPrintetAfect]            =               @SerialPrintetAfect
            ,[SubTotalBases]                 =               @SubTotalBases  
            ,[SubTotalTax]                   =               @SubTotalTax
            ,[DocumentTypeFiscal]            =               @DocumentTypeFiscal
            ,[Country]                       =               @Country
      
WHERE 
            [No Transaccion]                =               @No_Transaccion 
 
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdate_Item_Unit_of_Measure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdate_Item_Unit_of_Measure]

           @Item_No                          AS       nvarchar(15),
           @Code                             AS       nvarchar(15),
           @Qty_per_Unit_of_Measure          AS       decimal(18,5),
           @Length						     AS       decimal(18,5),
           @Width						     AS       decimal(18,5),
           @Height							 AS       decimal(18,5),
           @Cubage							 AS       decimal(18,5),
           @Weight					   		 AS       decimal(18,5)

AS
BEGIN
    
    UPDATE [Item Unit of Measure]
    SET
    
            
            [Qty. per Unit of Measure]  =    @Qty_per_Unit_of_Measure 
           ,[Length]  =    @Length	
           ,[Width]   =    @Width	
           ,[Height]  =    @Height	
           ,[Cubage]  =    @Cubage	
           ,[Weight]  =    @Weight	

    WHERE 
          [Item No.]   =    @Item_No   AND
          [Code]       =    @Code 

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateAddress]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateAddress]
           @Code                     AS               nvarchar(15),
           @Address_1                 AS              nvarchar(50),
           @Address_2                 AS              nvarchar(50),
           @Zip_code                  AS              nvarchar(50),
           @City_code                 AS              nvarchar(15),
           @State_code                AS              nvarchar(15),
           @Country_Code              AS              nvarchar(15)
AS
BEGIN
    UPDATE [dbo].[Address]
    SET                             
           
            [Address 1]    = @Address_1 
           ,[Address 2]    = @Address_2 
           ,[Zip code]     = @Zip_code
           ,[City code]    = @City_code 
           ,[State code]   = @State_code 
           ,[Country Code] = @Country_Code

    WHERE 	[Code] = @Code 
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateAddressList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[spUpdateAddressList]
           @Code_Address      AS nvarchar(15),
           @Code_Customer     AS nvarchar(15),
           @Date              AS datetime
AS
BEGIN
UPDATE [dbo].[Address List]

SET  [Date] = @Date
        WHERE 
        [Code Address] = @Code_Address AND 
        [Code Address] = @Code_Customer

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateBarcodeItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateBarcodeItem]

           @Item_Number                  AS    nvarchar(15),
           @Item_Code_Variant_Comb       AS    nvarchar(15),
           @Code_Barcode                 AS    nvarchar(15),
           @Unit_of_Measure_Code         AS    nvarchar(15),
           @Bool_Aux                     AS    int,
           @Description                  AS    nvarchar(50),
           @Creation_date                AS    datetime,
           @Created_by_user              AS    nvarchar(50),
           @Last_modified_date           AS    datetime,
           @Last_modified_by_the_user    AS    nvarchar(50)

AS
BEGIN

UPDATE [Barcode Item]

SET 
   
            [Bool Aux]                   =   @Bool_Aux  
           ,[Description]                =   @Description
           ,[Creation date]              =   @Creation_date 
           ,[Created by user]            =   @Created_by_user 
           ,[Last modified date]         =   @Last_modified_date  
           ,[Last modified by the user]  =   @Last_modified_by_the_user

    WHERE  [Item Number]                  =     @Item_Number  AND
           [Item Code Variant Comb]       =     @Item_Code_Variant_Comb  AND
           [Code Barcode]                 =     @Code_Barcode AND
           [Unit of Measure Code]         =     @Unit_of_Measure_Code 

END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateBin]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateBin]
           @Code                 AS            nchar(10),
           @Description          AS            nvarchar(50),
           @Type_Bin             AS            nvarchar(50),
           @Block_Movement       AS            int,
           @Maximum_Cubage       AS            decimal(18,0),
           @Maximum_Weight       AS            decimal(18,0),
           @Empty                AS            nchar(10)

AS
BEGIN
    UPDATE Bin
    SET       
            [Description]        =  @Description
           ,[Type Bin]           =  @Type_Bin
           ,[Block Movement]     =  @Block_Movement 
           ,[Maximum Cubage]     =  @Maximum_Cubage 
           ,[Maximum Weight]     =  @Maximum_Weight
           ,[Empty]              =  @Empty 
     WHERE  [Code] = @Code  
         
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateCampaing]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateCampaing]


           @No                       AS           nvarchar(15),
           @Description		         AS           nvarchar(50),
           @Status_Code              AS           nvarchar(15),
           @Cost                     AS           decimal(18,5),
           @Estimated_Value          AS           decimal(18,5),
           @Code_Validation_Period   AS           nvarchar(15),
           @Creation_date            AS           datetime,
           @Created_by_user          AS           nvarchar(50),
           @Last_modified_date       AS           datetime,
           @Last_modified_by_the_user AS          nvarchar(50)

AS
BEGIN

UPDATE [dbo].[Campaing]

SET
            
            [Description]                =          @Description
           ,[Status Code]                =          @Status_Code
           ,[Cost]                       =                 @Cost   
           ,[Estimated Value]            =      @Estimated_Value
           ,[Code Validation Period]     =  @Code_Validation_Period
           ,[Creation date]              = @Creation_date 
           ,[Created by user]            = @Created_by_user 
           ,[Last modified date]         = @Last_modified_date  
           ,[Last modified by the user]  = @Last_modified_by_the_user

  WHERE [No.]  =                  @No   
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateCampaingStatus]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateCampaingStatus]

           @Code                AS         nvarchar(15),
           @Description         AS         nvarchar(100)

AS
BEGIN


UPDATE [dbo].[Campaing Status]

SET
 
          [Description]    =   @Description 

    WHERE [Code] = @Code  
      
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateCaption]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateCaption]
           @Code           AS        nchar(10),
           @Culture        AS        nchar(10),
           @Caption        AS        nchar(10)
AS
BEGIN

    UPDATE Caption    
    SET 
           Culture = @Culture,
           Caption = @Caption
    WHERE
           Code=@Code

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateCity]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateCity]
            @Code         AS       nvarchar(15),
            @City         AS       nvarchar(50),
            @CodeState    AS       nvarchar(50),
            @Code_Contry  AS       nvarchar(15)
AS
BEGIN
     UPDATE [dbo].[City]
     SET
            [City]          =  @City
           ,[Code State]    =  @CodeState
           ,[Code/Contry]   =  @Code_Contry

     WHERE
            [Code]  =  @Code          
  
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateCode/Contry]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateCode/Contry]

     @Code          AS   nvarchar(15),
     @Description   AS   nvarchar(50)
AS
BEGIN

     UPDATE [Code/Contry]
     SET
     [Description] = @Description 
     WHERE
     [Code]        = @Code
        

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateConversion_Value]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateConversion_Value]

           @Base_Unit_Code             AS         nvarchar(15),
           @Comparasion_Unit_Code      AS         nvarchar(15),
           @Conversion_Factor          AS         decimal(18, 5)

AS
BEGIN


UPDATE [dbo].[Conversion Value]
SET
            [Comparasion Unit Code]=@Comparasion_Unit_Code 
           ,[Conversion Factor]=@Conversion_Factor

WHERE [Base Unit Code]=@Base_Unit_Code 

END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateCrossReference]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateCrossReference]

          @Code_Item             AS        nvarchar(15),
          @Code_Cross_References AS        nvarchar(15),
          @Description           AS        nvarchar(50),
          @VarianCode            AS        nvarchar(50),
          @Unit_of_Measure		 AS        nvarchar(50)

AS
BEGIN


UPDATE [dbo].[Cross References]
   SET 
       [Description]        =  @Description,
       [Variant Code]       =  @VarianCode,
       [Unit of Measure]    =  @Unit_of_Measure

   WHERE [Code Item]             = @Code_Item               AND
         [Code Cross References] = @Code_Cross_References
   

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateCurrency]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateCurrency]
           @NoCurrency               AS       nvarchar(15),
           @Descripcion              AS       varchar(60),
           @Symbol                   AS       nvarchar(10),
           @ISOCode                  AS       nvarchar(10),
           @Decimalplaces            AS       tinyint

AS BEGIN

    UPDATE Currency
    SET 
                [No Currency]         =    @NoCurrency     
               ,[Descripcion]         =    @Descripcion 
               ,[Simbol]              =    @Symbol  
               ,[ISO Code]            =    @ISOCode
               ,[Decimal places]      =    @Decimalplaces
    
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateCurrencyList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateCurrencyList]
           @Customer_ID		AS          nvarchar(15),
           @Currency_ID	    AS          nvarchar(15),
           @Date			AS          datetime
AS
BEGIN
UPDATE [dbo].[Currency List]
SET
 [Date]=@Date

 WHERE 
 
    [Customer ID] = @Customer_ID AND 
    [Currency ID] = @Currency_ID	
    

END



GO
/****** Object:  StoredProcedure [dbo].[spUpdateCustomer]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[spUpdateCustomer]

           @No                                        AS               nvarchar(15),
           @Name                                      AS               nvarchar(50),
           @Name2                                     AS               nvarchar(50),
           @CodeAddress                               AS               nvarchar(15) = NULL,
           @VAT_Registration_No                       AS               nvarchar(15),
           @NCF									      AS               nvarchar(19),
           @Alias                                     AS               nvarchar(50),
           @Phone                                     AS               nvarchar(30),
           @EMail                                     AS               nvarchar(80),
           @Credit_limit                              AS               decimal(18,5),
           @Customer_Invoice_No                       AS               nvarchar(15),
           @Price_Group                               AS               nvarchar(15),
           @Currency                                  AS               nvarchar(15),
           @Language                                  AS               nvarchar(15),
           @Price_including_VAT                       AS               decimal(18,5),
           @Price_without_VAT                         AS               decimal(18,5),
           @VAT                                       AS               decimal(18,5),
           @Salesperson                               AS               nvarchar(15),
           @Discounts_Invoice                         AS               decimal(18,5),
           @Line_Discounts                            AS               decimal(18,5),
           @Reserve                                   AS               int,
           @Payment_terms                             AS               nvarchar(15),
           @Allow_discount                            AS               int,
           @Block                                     AS               int,
           @VAT_Bus_Posting_Group                     AS               nvarchar(15),
           @Creation_date                             AS               datetime,
           @Created_by_user                           AS               nvarchar(50),
           @Last_modified_date                        AS               datetime,
           @Last_modified_by_the_user                 AS               nvarchar(50),
           @Address1								  AS		       nvarchar(100),
           @Address2								  AS		       nvarchar(100)

AS
BEGIN
            UPDATE Customer
            SET
                        [Name]                       =  @Name	
                       ,[Name2]                      =  @Name2	
                       ,[CodeAddress]                =  @CodeAddress	
                       ,[VAT Registration No.]       =  @VAT_Registration_No
                       ,[NCF]                        =  @NCF
                       ,[Alias]                      =  @Alias		
                       ,[Phone]						 =  @Phone	
                       ,[E-Mail]					 =  @EMail
                       ,[Credit limit]				 =  @Credit_limit	
                       ,[Customer Invoice No.]		 =  @Customer_Invoice_No 
                       ,[Price Group]				 =	@Price_Group	  
                       ,[Currency]					 =  @Currency	
                       ,[Language]				     =	@Language  
                       ,[Price including VAT]        =  @Price_including_VAT
                       ,[Price without VAT]          =  @Price_without_VAT	
                       ,[VAT]                        =  @VAT
                       ,[Salesperson]                =  @Salesperson
                       ,[Discounts Invoice]          =  @Discounts_Invoice	
                       ,[Line Discounts]             =  @Line_Discounts
                       ,[Reserve]                    =  @Reserve	
                       ,[Payment terms]              =  @Payment_terms	
                       ,[Allow discount]             =  @Allow_discount
                       ,[Block]                      =  @Block	
                       ,[Creation date]              = @Creation_date 
                       ,[Created by user]            = @Created_by_user 
                       ,[Last modified date]         = @Last_modified_date  
                       ,[Last modified by the user]  = @Last_modified_by_the_user
                       ,[Address1]                   = @Address1
                       ,[Address2]                   = @Address2
           

                       WHERE No = @No   
         
                    
END






GO
/****** Object:  StoredProcedure [dbo].[spUpdateCustomerPriceGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateCustomerPriceGroup]

           @Code                          AS        nvarchar(15),
           @Price_Includes_VAT            AS        int,
           @VAT_Bus_Posting_Gr_Price      AS        nvarchar(15),
           @Description                   AS        nvarchar(100)

AS
BEGIN

UPDATE [dbo].[Customer Price Group]

SET

             
           [Price Includes VAT]             =  @Price_Includes_VAT
           ,[VAT Bus. Posting Gr. (Price)]  =  @VAT_Bus_Posting_Gr_Price
           ,[Description]                   =  @Description

  WHERE [Code]  =  @Code 

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateEmployees]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC  [dbo].[spUpdateEmployees]

           @Code                     AS              nvarchar(15),
           @Firts_Name               AS              nvarchar(50),
           @Last_Name                AS              nvarchar(50),
         @RUC                      AS              nvarchar(20),
           @Name_of_Receipt          AS              nvarchar(50),
           @Password                 AS              nvarchar(50),
           @Change_Password          AS              int,
           @Store_No                 AS              nvarchar(15),
           @Store_Name               AS              nvarchar(50),
           @Employment_Type          AS              int,
           @Code_Permission          AS              nvarchar(15),
           @Address                  AS              nvarchar(100),
           @ComisionPCT              AS              decimal(18,5),
           @EMail                    AS              nvarchar(50),
           @Phone                    AS              nvarchar(50)

AS
BEGIN

UPDATE  [dbo].[Employees]
SET  
            [Firts Name]              =       @Firts_Name 
           ,[Last Name]               =       @Last_Name
         ,[RUC]                     =       @RUC
           ,[Name of Receipt]         =       @Name_of_Receipt
           ,[Password]                =       @Password 
           ,[Change Password]         =       @Change_Password
           ,[Store No]                =       @Store_No
           ,[Store Name]              =       @Store_Name
           ,[Employment Type]         =       @Employment_Type
           ,[Code Permission]         =       @Code_Permission
           ,[Address]                 =       @Address    
         ,[ComisionPCT]		  =       @ComisionPCT
           ,[E-Mail]			  =       @EMail      
           ,[Phone]			  =       @Phone      
WHERE
           [Code]         =       @Code         
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateEmployeesPermission]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spUpdateEmployeesPermission]

           @Code                            AS              nvarchar(15),
           @Description                     AS              nvarchar(50),
           @Void_Transaction                AS              int,
           @Manager_Privileges              AS              int,
           @XZ_Reports_Printing             AS              int,
           @Tender_Declaration              AS              int,
           @Floating_Declaration            AS              int,
           @Price_Override                  AS              int,
           @Max_Discount_To_Give_percent    AS              decimal(18,5),
           @Max_Total_Discount__percent     AS              decimal(18,5),
           @Suspend_Transaction             AS              int,
           @Open_Draw_without_Sale          AS              int,
           @Return_In_Transaction           AS              int,
           @Change_Prepaidment_Amt          AS              int,
           @Add_Prepaidment_Amt             AS              int,
           @Void_Line                       AS              int,
           @Add_Paidment                    AS              int

AS
BEGIN

UPDATE [dbo].[Employees Permission]
SET      
           
            [Description]                =       @Description
           ,[Void Transaction]           =       @Void_Transaction
           ,[Manager Privileges]         =       @Manager_Privileges
           ,[XZ-Reports Printing]        =       @XZ_Reports_Printing
           ,[Tender Declaration]         =       @Tender_Declaration
           ,[Floating Declaration]       =       @Floating_Declaration
           ,[Price Override]             =       @Price_Override
           ,[Max Discount To Give %]     =       @Max_Discount_To_Give_percent
           ,[Max Total Discount %]       =       @Max_Total_Discount__percent
           ,[Suspend Transaction]        =       @Suspend_Transaction
           ,[Open Draw without Sale]     =       @Open_Draw_without_Sale
           ,[Return In Transaction]      =       @Return_In_Transaction
           ,[Change Prepaidment Amt]     =       @Change_Prepaidment_Amt
           ,[Add Prepaidment Amt]        =       @Add_Prepaidment_Amt
           ,[Void Line]                  =       @Void_Line
           ,[Add Paidment]               =       @Add_Paidment
WHERE
          [Code]         =       @Code          
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateEmployeesStoreLink]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateEmployeesStoreLink]

           @Employee_Code                     AS              nvarchar(15),
           @Store_No                          AS              nvarchar(15),
           @Employee_First_Name               AS              nvarchar(50),
           @Employee_Last_Name                AS              nvarchar(50),
           @Employee_Name_of_Receipt          AS              nvarchar(50),
           @Store_Name                        AS              nvarchar(50),
           @Code_Permission                   AS              nvarchar(15),
           @Default_Store                     AS              int

AS
BEGIN


UPDATE [dbo].[Employees Store Link]
SET
            [Employee First Name]            =       @Employee_First_Name
           ,[Employee Last Name]             =       @Employee_Last_Name 
           ,[Employee Name of Receipt]       =       @Employee_Name_of_Receipt
           ,[Store Name]                     =       @Store_Name 
           ,[Code Permission]                =       @Code_Permission
           ,[Default Store]                  =       @Default_Store 
WHERE
            [Employee Code]         =       @Employee_Code                AND
            [Store No]              =       @Store_No                          
              
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateFuncionalityProfile]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateFuncionalityProfile]

           @Code                            AS              nvarchar(15),
           @Description                     AS              nvarchar(50),
           @Z_Auto_After_Decl               AS              int,
           @Calc_Disc_Excl_VAT              AS              int,
           @Currency_Simbol                 AS              nvarchar(15),
           @Multiple_Simbol                 AS              nvarchar(15),
           @Amount_Rounding_To              AS              int,
           @Amount_Decimal_Place            AS              int,
           @Precing_Rounding_To             AS              int,
           @Precing_Decimal_Place           AS              int,
           @Maximun_Price                   AS              decimal(18,5),
           @Maximun_QTY                     AS              decimal(18,5),
           @Calc_Excl_VAT                   AS              int


AS
BEGIN

UPDATE [dbo].[Funcionality Profile]
SET
            
            [Description]                      =               @Description
           ,[Z Auto After Decl]                =               @Z_Auto_After_Decl 
           ,[Calc Disc Excl VAT]               =               @Calc_Disc_Excl_VAT 
           ,[Currency Simbol]                  =               @Currency_Simbol 
           ,[Multiple Simbol]                  =               @Multiple_Simbol 
           ,[Amount Rounding To]               =               @Amount_Rounding_To
           ,[Amount Decimal Place]             =               @Amount_Decimal_Place 
           ,[Precing Rounding To]              =               @Precing_Rounding_To 
           ,[Precing Decimal Place]            =               @Precing_Decimal_Place  
           ,[Maximun Price]                    =               @Maximun_Price  
           ,[Maximun QTY]                      =               @Maximun_QTY  
           ,[Calc Excl VAT]                    =               @Calc_Excl_VAT  


WHERE      [Code]            =               @Code                          
                             
          
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateItem]

                               @No                                  AS                 nvarchar(15), 
                               @Description                         AS                 nvarchar(210), 
                               @Descripcion2                         AS                nvarchar(510), 
                               @Qty_Inventory                       AS                 decimal(18,5),  
                               @Is_Use                              AS                 int, 
                               @Billed_Units                        AS                 int, 
                               @Qty_Purshase                        AS                 int, 
                               @Qty_Sales                           AS                 decimal(18,5), 
                               @Amount_Purchases                    AS                 decimal(18,5), 
                               @Amount_Sales                        AS                 decimal(18,5), 
                               @Qty_Positive_adjustment             AS                 int, 
                               @Qty_Negative_adjustment             AS                 int, 
                               @Amount_Positive_adjustment          AS                 int, 
                               @Amount_Negative_adjustment          AS                 int, 
                               @Qty_in_Order                        AS                 int, 
                               @Qty_transfer                        AS                 decimal(18,5), 
                               @Transfer_amount                     AS                 decimal(18,5), 
                               @Price_without_VAT                   AS                 decimal(18,5), 
                               @Price_including_VAT                 AS                 decimal(18,5), 
                               @VAT                                 AS                 decimal(18,5), 
                               @Qty_in_Transit                      AS                 int, 
                               @Qty_Sale_Returns                    AS                 decimal(18,5), 
                               @Qty_Purchase_Returns                AS                 int, 
                               @Allow_Negative_Inventory            AS                 int, 
                               @Qty_Negative                        AS                 int, 
                               @Auto_Code                           AS                 nvarchar(15), 
                               @Variant                             AS                 nvarchar(15), 
                               @Weight                              AS                 decimal(18,5), 
                               @Base_Unit_of_Measure_Purched        AS                 nvarchar(15), 
                               @Base_Unit_of_Measure_Sales          AS                 nvarchar(15), 
                               @Barcode                             AS                 nvarchar(15), 
                               @Allow_Discount                      AS                 tinyint, 
                               @Cost_Unity                          AS                 decimal(18,5), 
                               @Cost_Standard                       AS                 nvarchar(10), 
                               @Last_cost                           AS                 decimal(18,5), 
                               @date_last_cost                      AS                 datetime, 
                               @Cost_indirect                       AS                 decimal(18,5), 
                               @Cost_Ajust                          AS                 decimal(18,5),
                               @Profit                              AS                 decimal(18,5), 
                               @Profit_percentage                   AS                 decimal(18,5), 
                               @Special_Groups                      AS                 nvarchar(15), 
                               @Sustitute                           AS                 nvarchar(15), 
                               @Cross_References                    AS                 nvarchar(15), 
                               @Additional_text                     AS                 text, 
                               @Imagen                              AS                 image, 
                               @Translations                        AS                 nvarchar(50), 
                               @Block                               AS                 tinyint, 
                               @No_Vendor                           AS                 nvarchar(15), 
                               @Reorder_point                       AS                 decimal(18,5), 
                               @Qty_Reorder_point                   AS                 int, 
                               @Inventory_Security                  AS                 int, 
                               @Reserve                             AS                 int, 
                               @Lot_size                            AS                 decimal(18,5), 
                               @No_Serial                           AS                 nvarchar(15), 
                               @No_Lot							    AS                 nvarchar(15), 
                               @Calculation_Due				        AS                 nvarchar(15), 
                               @Due_Date						    AS                 datetime, 
                               @Creation_date				        AS                 datetime, 
                               @Created_by_User				        AS                 nvarchar(50), 
                               @Last_modified_date					AS				   datetime,
                               @Last_modified_by_the_user           AS                 nvarchar(50), 
                               @Warning_shortages                   AS                 int, 
                               @Location						    AS                 nvarchar(15), 
                               @Start_Date_counting                 AS                 datetime, 
                               @End_Date_counting                   AS                 datetime,
                               @VAT_Prod_Posting_Group				AS                 nvarchar(15), 
                               @VAT_Bus_Posting_Group				AS                 nvarchar(15), 
                               @Item_Category_Code					AS                 nvarchar(15), 
                               @Product_Group_Code					AS                 nvarchar(15)
AS
BEGIN
                    UPDATE Item
                    SET 
                                [Description]						     =  @Description  
                               ,[Descripcion 2]				   		     =  @Descripcion2   
                               ,[Qty. Inventory]                         =  @Qty_Inventory  
                               ,[Is Use]                                 =  @Is_Use 
                               ,[Billed Units]                           =  @Billed_Units  
                               ,[Qty. Purshase]                          =  @Qty_Purshase
                               ,[Qty. Sales]                             =  @Qty_Sales  
                               ,[Amount Purchases]                       =  @Amount_Purchases
                               ,[Amount Sales]                           =  @Amount_Sales 
                               ,[Qty. Positive adjustment]               =  @Qty_Positive_adjustment 
                               ,[Qty. Negative adjustment]               =  @Qty_Negative_adjustment
                               ,[Amount Positive adjustment]             =  @Amount_Positive_adjustment 
                               ,[Amount Negative adjustment]             =  @Amount_Negative_adjustment  
                               ,[Qty. in Order]                          =  @Qty_in_Order    
                               ,[Qty. transfer]                          =  @Qty_transfer  
                               ,[Transfer amount]                        =  @Transfer_amount
                               ,[Price without VAT]                      =  @Price_without_VAT  
                               ,[Price including VAT]                    =  @Price_including_VAT  
                               ,[VAT]                                    =  @VAT 
                               ,[Qty. in Transit]                        =  @Qty_in_Transit
                               ,[Qty. Sale Returns]                      =  @Qty_Sale_Returns  
                               ,[Qty. Purchase Returns ]                 =  @Qty_Purchase_Returns   
                               ,[Allow Negative Inventory]               =  @Allow_Negative_Inventory 
                               ,[Qty. Negative]                          =  @Qty_Negative    
                               ,[Auto Code]                              =  @Auto_Code     
                               ,[Variant]                                =  @Variant    
                               ,[Weight]                                 =  @Weight  
                               ,[Base Unit of Measure Purched]           =  @Base_Unit_of_Measure_Purched  
                               ,[Base Unit of Measure Sales]             =  @Base_Unit_of_Measure_Sales   
                               ,[Barcode]                                =  @Barcode    
                               ,[Allow Discount]                         =  @Allow_Discount   
                               ,[Cost Unity]                             =  @Cost_Unity   
                               ,[Cost Standard]                          =  @Cost_Standard   
                               ,[Last cost]                              =  @Last_cost 
                               ,[date last cost]                         =  @date_last_cost  
                               ,[Cost indirect]                          =  @Cost_indirect  
                               ,[Cost Ajust]                             =  @Cost_Ajust 
                               ,[Profit]                                 =  @Profit  
                               ,[Profit %]                               =  @Profit_percentage 
                               ,[Special Groups]                         =  @Special_Groups
                               ,[Sustitute]                              =  @Sustitute
                               ,[Cross References]                       =  @Cross_References 
                               ,[Additional text]                        =  @Additional_text
                               ,[Imagen]                                 =  @Imagen
                               ,[Translations]                           =  @Translations 
                               ,[Block]                                  =  @Block
                               ,[No Vendor]                              =  @No_Vendor 
                               ,[Reorder point]                          =  @Reorder_point 
                               ,[Qty. Reorder point]                     =  @Qty_Reorder_point
                               ,[Inventory Security]                     =  @Inventory_Security 
                               ,[Reserve]                                =  @Reserve 
                               ,[Lot size]                               =  @Lot_size 
                               ,[No Serial]                              =  @No_Serial
                               ,[No Lot]                                 =  @No_Lot
                               ,[Calculation Due]                        =  @Calculation_Due
                               ,[Due Date]                               =  @Due_Date
                               ,[Creation date]                          =  @Creation_date
                               ,[Created by user]                        =  @Created_by_User	
                               ,[Last modified date]                     =  @Last_modified_date		
                               ,[Last modified by the user]              =  @Last_modified_by_the_user
                               ,[Warning shortages]                      =  @Warning_shortages 
                               ,[Location]                               =  @Location	
                               ,[Start Date counting]                    =  @Start_Date_counting 
                               ,[End Date counting]                      =  @End_Date_counting
                               ,[VAT Prod Posting Group]                 =  @VAT_Prod_Posting_Group
                               ,[VAT Bus Posting Group]                  =  @VAT_Bus_Posting_Group 
                               ,[Item Category Code]                     =  @Item_Category_Code	
                               ,[Product Group Code]                     =  @Product_Group_Code			

                        WHERE No = @No  
                     
            
                             
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateItem_Category]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateItem_Category]

           @Item_Category_Code                              AS                  nvarchar(15),
           @Description										AS                  nvarchar(50),
           @Def_Gen_Prod_Posting_Group			       	    AS                  nvarchar(50),
           @Def_Inventory_Posting_Group						AS                  nvarchar(50),
           @Def_Tax_Group_Code								AS                  nvarchar(50),
           @Def_Costing_Method								AS                  nvarchar(50),
           @Def_VAT_Prod_Posting_Group                      AS                  nvarchar(50)

AS 
BEGIN


UPDATE [Item Category]
SET
            [Description]                     =  @Description	
           ,[Def. Gen. Prod. Posting Group]   =  @Def_Gen_Prod_Posting_Group	
           ,[Def. Inventory Posting Group]    =  @Def_Inventory_Posting_Group	
           ,[Def. Tax Group Code]             =  @Def_Tax_Group_Code	
           ,[Def. Costing Method]             =  @Def_Costing_Method		
           ,[Def. VAT Prod. Posting Group]    = @Def_VAT_Prod_Posting_Group   

           WHERE [Item Category Code] = @Item_Category_Code  

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateItem_Variant]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateItem_Variant]

           @Item_Code                                 AS			   nvarchar(15),
           @Item_Code_Variant_Comb                    AS			   nvarchar(15),
           @Description					              AS		       nvarchar(100),
           @Dimension1					              AS               nvarchar(50),
           @Dimension2					              AS		       nvarchar(50),
           @Dimension3					              AS               nvarchar(50),
           @Code_Template_Variant_Header              AS		       nvarchar(15),
           @Common_Item_No                            AS		       nvarchar(50),
           @Barcode                                   AS               nvarchar(50),
           @Creation_date                             AS               datetime,
           @Created_by_user                           AS               nvarchar(50),
           @Last_modified_date                        AS               datetime,
           @Last_modified_by_the_user                 AS               nvarchar(50)

AS
BEGIN

            UPDATE [Item Variant]
            SET
            
            [Description]				 =  @Description
           ,[Dimension1]			     =  @Dimension1
           ,[Dimension2]				 =  @Dimension2
           ,[Dimension3]				 =  @Dimension3
           ,[Code Template Variant Header]  =  @Code_Template_Variant_Header
           ,[Common Item No]			 = @Common_Item_No
           ,[Barcode]				     = @Barcode    
           ,[Creation date]              = @Creation_date 
           ,[Created by user]            = @Created_by_user 
           ,[Last modified date]         = @Last_modified_date  
           ,[Last modified by the user]  = @Last_modified_by_the_user

        WHERE  
        [Item Code]               =  @Item_Code              AND 
        [Item Code Variant Comb]  =  @Item_Code_Variant_Comb
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateItemJournal]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateItemJournal]

        @EntryNo			AS	  int,
        @LineNo			AS	  int,
        @ItemNo			AS	  nvarchar(15),
        @Description		AS	  nvarchar(50),
        @DocumentType		AS	  int,
        @NoTransaccion		AS	  nvarchar(15),
        @StoreNo    		AS	  nvarchar(15),
        @LocationCode		AS	  nvarchar(15),
        @Qty				AS	  decimal(18, 15),
        @QtyRemaining		AS	  decimal(18, 15),
        @QtyperUnitofMeasure	AS	  decimal(18, 15),
        @QtyInvoiced		AS	  decimal(18, 15),
        @QtyReserved		AS	  decimal(18, 15),
        @FinalAmount            AS	  decimal(18, 15),
        @AppliestoEntry		AS	  int,
        @Open				AS	  tinyint,
        @DocumentDate		AS	  datetime,
        @PostingDate		AS	  datetime,
        @ExternalDocumentNo	AS	  nvarchar(35),
        @NoSeries			AS	  nvarchar(15),
        @SerialNo			AS	  nvarchar(15),
        @VariantCode    		AS	  nvarchar(15),
        @UnitofMeasureCode	AS	  nvarchar(15),
        @ItemCategoryCode		AS	  nvarchar(15),
        @ProductGroupCode		AS	  nvarchar(15),
        @LastInvoiceDate		AS	  datetime,
        @ReturnCode			AS	  nvarchar(15)
AS BEGIN

UPDATE  [dbo].[Item Journal]
SET      		 
         [ItemNo]=@ItemNo
        ,[Description]=@Description
        ,[DocumentType]=@DocumentType
        ,[No Transaccion]=@NoTransaccion
        ,[Store No]=@StoreNo
        ,[LocationCode]=@LocationCode
        ,[Qty]=@Qty
        ,[QtyRemaining]=@QtyRemaining
        ,[QtyperUnitofMeasure]=@QtyperUnitofMeasure
        ,[QtyInvoiced]=@QtyInvoiced
        ,[QtyReserved]=@QtyReserved
        ,[FinalAmount]=@FinalAmount
        ,[AppliestoEntry]=@AppliestoEntry
        ,[Open]=@Open
        ,[DocumentDate]=@DocumentDate
        ,[PostingDate]=@PostingDate
        ,[ExternalDocumentNo]=@ExternalDocumentNo
        ,[NoSeries]=@NoSeries
        ,[SerialNo]=@SerialNo
        ,[VariantCode]=@VariantCode
        ,[UnitofMeasureCode]=@UnitofMeasureCode
        ,[ItemCategoryCode]=@ItemCategoryCode
        ,[ProductGroupCode]=@ProductGroupCode
        ,[LastInvoiceDate]=@LastInvoiceDate
        ,[ReturnCode]=@ReturnCode
WHERE
     [EntryNo]=@EntryNo AND
     [LineNo]=@LineNo
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateLanguageList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateLanguageList]
           @Customer_ID		AS          nvarchar(15),
           @Languaje_ID		AS          nvarchar(15),
           @Date			AS          datetime
AS
BEGIN
UPDATE [dbo].[Language List]
 SET   [Date] = @Date

 WHERE [Customer ID] = @Customer_ID AND
       [Languaje ID] = @Languaje_ID	
         
       
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateLanguaje]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateLanguaje]
         @Code                            AS       nvarchar(15),
         @Name                            AS       nvarchar(50),
         @Windows_Language_ID             AS       nvarchar(15),
         @Windows_Language_Name           AS       nvarchar(max)
AS
BEGIN 

    UPDATE Language 
    SET                             
    Name                    = @Name                  ,
    [Windows Language ID]   = @Windows_Language_ID   ,
    [Windows Language Name] = @Windows_Language_ID

    WHERE 	Code = @Code   

END


    



GO
/****** Object:  StoredProcedure [dbo].[spUpdateNoSeries]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateNoSeries]

           @Code                           AS               nvarchar(15),
           @Description                    AS              nvarchar(50),
           @Default_Nos_                   AS              tinyint,
           @Manual_Nos_                    AS              tinyint,
           @Date_Order                     AS              tinyint,
           @No_Series_Type                 AS              int

           AS
           BEGIN

UPDATE [dbo].[No Series]
   SET        
            [Description]                      =               @Description
           ,[Default Nos_]                     =               @Default_Nos_ 
           ,[Manual Nos_]                      =               @Manual_Nos_  
           ,[Date Order]                       =               @Date_Order  
           ,[No Series Type]                   =               @No_Series_Type 
   WHERE
           [Code]     =      @Code                           

END






GO
/****** Object:  StoredProcedure [dbo].[spUpdateNoSeriesLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC  [dbo].[spUpdateNoSeriesLine]

           @Series_Code                     AS              nvarchar(15),
           @Line_No                         AS              int,
           @Starting_Date                   AS              datetime,
           @Starting_No                     AS              nvarchar(20),
           @Ending_No                       AS              nvarchar(20),
           @Warning_No                      AS              nvarchar(20),
           @Increment_by_No                 AS              int,
           @Last_No_Used                    AS              nvarchar(20),
           @Open                            AS              tinyint,
           @Last_Date_Used                  AS              datetime


AS
BEGIN


UPDATE [dbo].[No Series Line]

SET
 
            [Starting Date]                       =               @Starting_Date
           ,[Starting No_]                        =               @Starting_No 
           ,[Ending No_]                          =               @Ending_No 
           ,[Warning No_]                         =               @Warning_No
           ,[Increment-by No_]                    =               @Increment_by_No  
           ,[Last No_ Used]                       =               @Last_No_Used  
           ,[Open]                                =               @Open 
           ,[Last Date Used]                      =               @Last_Date_Used  

     WHERE
           [Series Code]          =           @Series_Code        AND
           [Line No_]             =           @Line_No  
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateNoSeriesRelationship]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateNoSeriesRelationship]

           @Code          AS     nvarchar(15),
           @Series_Code   AS     nvarchar(15),
           @Description   AS     nvarchar(50)

AS
BEGIN

UPDATE [dbo].[No Series Relationship]
SET           
            [Description] = @Description
     WHERE
           [Code]          =    @Code          AND
           [Series Code]   =    @Series_Code    
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateOffers]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateOffers]

           @Code									  AS           nvarchar(15),
           @Description								  AS           nvarchar(50),
           @Percent									  AS           decimal(18,5),
           @Status									  AS           nvarchar(50),
           @Amount_Discount_Excl_Vat				  AS           decimal(18,5),
           @Code_Validation_Period					  AS           nvarchar(15),
           @Creation_date                             AS           datetime,
           @Created_by_user                           AS           nvarchar(50),
           @Last_modified_date                        AS           datetime,
           @Last_modified_by_the_user                 AS           nvarchar(50)

AS
BEGIN


UPDATE [dbo].[Offers]
SET

            [Description]  =  @Description
           ,[Percent]  =  @Percent
           ,[Status]  =  @Status
           ,[Amount Discount Excl Vat]  =  @Amount_Discount_Excl_Vat 
           ,[Code Validation Period]  =  @Code_Validation_Period
           ,[Creation date]              = @Creation_date 
           ,[Created by user]            = @Created_by_user 
           ,[Last modified date]         = @Last_modified_date  
           ,[Last modified by the user]  = @Last_modified_by_the_user

WHERE [Code] = @Code 

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateOffersDetails]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateOffersDetails]

           @Code_Offers  				AS         nvarchar(15),
           @Type	                  	AS         int,
           @Code_Type		            AS         nvarchar(15),
           @Description_Code_Type		AS         nvarchar(50),
           @Standard_Price_Inc_IVA      AS         decimal(18,5),
           @Standard_Price_Excl_IVA     AS         decimal(18,5),
           @Offer_Price_Inc_Iva         AS         decimal(18,5),
           @Offer_Price_Excl_Iva        AS         decimal(18,5),
           @Disc_percent_Incl_Vat       AS         decimal(18,5),
           @Disc_percent_Excl_Vat       AS         decimal(18,5),
           @Disc_Amount_Inc_IVA         AS         decimal(18,5),
           @Disc_Amount_Excl_IVA        AS         decimal(18,5)

AS
BEGIN

UPDATE [dbo].[Offers Details]

SET
            [Type]  =  @Type
           ,[Code Type]  =  @Code_Type
           ,[Description Code Type]     =  @Description_Code_Type
           ,[Standard Price Inc. IVA]   = @Standard_Price_Inc_IVA 
           ,[Standard Price Excl. IVA]  = @Standard_Price_Excl_IVA
           ,[Offer Price Inc. Iva]      = @Offer_Price_Inc_Iva
           ,[Offer Price Excl. Iva]     = @Offer_Price_Excl_Iva  
           ,[Disc % Incl Vat]           = @Disc_percent_Incl_Vat 
           ,[Disc % Excl Vat]           = @Disc_percent_Excl_Vat 
           ,[Disc Amount Inc. IVA]      = @Disc_Amount_Inc_IVA
           ,[Disc Amount Excl. IVA]     = @Disc_Amount_Excl_IVA

WHERE [Code Offers]  =  @Code_Offers 
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePaymentmethods]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdatePaymentmethods]

           @Store_Code                     AS              nvarchar(15),
           @Code_Payment_Setup             AS              nvarchar(15),
           @Default_Funtion                AS              int,
           @Description                    AS              nvarchar(100),
           @Card_Tender                    AS              int,
           @Currency_Tender                AS              int,
           @OverPayment_Allow              AS              int,
           @OverPayment_Max_Amount         AS              decimal(18,5),
           @UnderPayment_Allow             AS              int,
           @UnderPayment_Max_Amount        AS              decimal(18,5),
           @Rounding_Type                  AS              int,
           @Rounding_To                    AS              int,
           @Remove_Float_Type              AS              int,
           @Remove_Float_Description       AS              nvarchar(50),
           @Counting_Requeried             AS              int,
           @Float_Requeried                AS              int,
           @Change_Line_Of_Reception       AS              nvarchar(100),
           @Change_Payment_Type            AS              int

AS
BEGIN


UPDATE [dbo].[Payment methods]

SET		              
            [Default Funtion]				 =         @Default_Funtion
           ,[Description]                    =         @Description
           ,[Card Tender]                    =         @Card_Tender 
           ,[Currency Tender]                =         @Currency_Tender
           ,[OverPayment Allow]              =         @OverPayment_Allow 
           ,[OverPayment Max Amount]         =         @OverPayment_Max_Amount 
           ,[UnderPayment Allow]             =         @UnderPayment_Allow  
           ,[UnderPayment Max Amount]        =         @UnderPayment_Max_Amount 
           ,[Rounding Type]                  =         @Rounding_To  
           ,[Rounding To]                    =         @Rounding_Type 
           ,[Remove/Float Type]              =         @Remove_Float_Type  
           ,[Remove/Float Description]       =         @Remove_Float_Description
           ,[Counting Requeried]             =         @Counting_Requeried  
           ,[Float Requeried]                =         @Float_Requeried   
           ,[Change Line Of Reception]       =         @Change_Line_Of_Reception  
           ,[Change Payment Type]            =         @Change_Payment_Type 
WHERE
           [Store Code]            =     @Store_Code         AND  
           [Code Payment Setup]    =     @Code_Payment_Setup
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePaymentMethodsSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdatePaymentMethodsSetup]

           @Code                          AS              nvarchar(15),
           @Description                   AS              nvarchar(100),
           @Default_Funtion               AS              int,
           @Card_Tender                   AS              int,
           @Currency_Tender               AS              int

AS
BEGIN

UPDATE [dbo].[Payment Methods Setup]
SET 
            [Description]           =     @Description
           ,[Default Funtion]       =     @Default_Funtion 
           ,[Card Tender]           =     @Card_Tender  
           ,[Currency Tender]       =     @Currency_Tender
WHERE
           [Code]        =        @Code

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePermissionprofiles]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdatePermissionprofiles]

           @Code              AS      nvarchar(15),
           @Description       AS      nvarchar(20)

AS
BEGIN

UPDATE [dbo].[Permission profiles]

SET          [Description] = @Description  

    WHERE  [Code]  = @Code

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePointOfSale]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdatePointOfSale]

           @Code                         AS              uniqueidentifier,
           @Store_No                     AS              nvarchar(15),
           @Description                  AS              nvarchar(100),
           @Exit_After_Each_Trans        AS              int,
           @Auto_Logoff                  AS              datetime,
           @Stament_Method_Type          AS              int,
           @No_Series_Return_No	         AS              nvarchar(15),
           @No_Series_Receipt_No	     AS              nvarchar(15),
           @No_Series_Transaction_No     AS				 nvarchar(15),
           @Code_Funtional_Profile       AS				 nvarchar(15),
           @Code_Printer_Fiscal          AS				 nvarchar(15)
AS
BEGIN


UPDATE [dbo].[Point Of Sale]
SET
    
            [Description]                   =       @Description
           ,[Store No]                      =       @Store_No     
           ,[Exit After Each Trans]         =       @Exit_After_Each_Trans
           ,[Auto Logoff]                   =       @Auto_Logoff
           ,[Stament Method Type]           =       @Stament_Method_Type
           ,[No Series Transaction No]      =   	@No_Series_Return_No	 
           ,[No Series Return No]	        =       @No_Series_Receipt_No
           ,[No Series Receipt No]	        =       @No_Series_Transaction_No
           ,[Code Funtional Profile]        =       @Code_Funtional_Profile
           ,[Code Printer Fiscal]	        =       @Code_Printer_Fiscal 
WHERE
            [Code]             =       @Code    
                      
 
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePosFixedStartAmount]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdatePosFixedStartAmount]

           @Store_Code                     AS              nvarchar(15),
           @Stament_Method_Type            AS              int,
           @ID							   AS              int,
           @Code_Payment_Methods           AS              nvarchar(15),
           @Description_Payment_Methods    AS              nvarchar(100),
           @Amount                         AS              decimal(18,5)

AS
BEGIN

UPDATE [dbo].[Pos Fixed Start Amount]

SET

            [Description Payment Methods] =   @Description_Payment_Methods
           ,[Amount]                      =   @Amount
WHERE
           [Store Code]            = @Store_Code                       AND
           [Stament Method Type]   = @Stament_Method_Type              AND
           [ID]                    = @ID				               AND
           [Code Payment Methods]  = @Code_Payment_Methods           


END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePrinterFiscalSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdatePrinterFiscalSetup]


           @Code                     AS              uniqueidentifier,
           @Description              AS              nvarchar(50),
           @Model                    AS              nvarchar(50),
           @Port                     AS              nvarchar(50)

AS
BEGIN


UPDATE [dbo].[Printer Fiscal Setup]
SET         
            [Description]   =   @Description
           ,[Model]         =   @Model 
           ,[Port]          =   @Port
WHERE
           [Code]           =   @Code                  
                       
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateProductGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateProductGroup]

           @Product_Group_Code         AS      nvarchar(15), 
           @Item_Category_Code         AS      nvarchar(15),
           @Description                AS      nvarchar(100)

AS
BEGIN

UPDATE [Product Group]
SET [Description]                    =      @Description 

     WHERE  
     [Product Group Code]             =      @Product_Group_Code
     AND
     [Item Category Code]             =      @Item_Category_Code     
          
 
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePromotion]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdatePromotion]

           @Code									  AS            nvarchar(15),
           @Description								  AS            nvarchar(50),
           @Percent									  AS            decimal(18,5),
           @Status									  AS            nvarchar(50),
           @Amount_Discount_Excl_Vat				  AS            decimal(18,5),
           @Code_Validation_Period					  AS            nvarchar(15),
           @Creation_date                             AS            datetime,
           @Created_by_user                           AS            nvarchar(50),
           @Last_modified_date                        AS            datetime,
           @Last_modified_by_the_user                 AS            nvarchar(50)

AS
BEGIN


UPDATE [dbo].[Promotion]
SET

            [Description]  =  @Description
           ,[Percent]  =  @Percent
           ,[Status]  =   @Status  
           ,[Amount Discount Excl Vat]  =  @Amount_Discount_Excl_Vat 
           ,[Code Validation Period]  =  @Code_Validation_Period
           ,[Creation date]              = @Creation_date 
           ,[Created by user]            = @Created_by_user 
           ,[Last modified date]         = @Last_modified_date  
           ,[Last modified by the user]  = @Last_modified_by_the_user

WHERE [Code] = @Code 

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePromotionDetails]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdatePromotionDetails]

           @Code_Promotion 				AS         nvarchar(15),
           @Type	                  	AS         int,
           @Code_Type		            AS         nvarchar(15),
           @Description_Code_Type		AS         nvarchar(50),
           @Standard_Price_Inc_IVA      AS        decimal(18,5),
           @Standard_Price_Excl_IVA     AS        decimal(18,5),
           @Promotion_Price_Inc_Iva     AS        decimal(18,5),
           @Promotion_Price_Excl_Iva    AS        decimal(18,5),
           @Disc_percent_Incl_Vat       AS        decimal(18,5),
           @Disc_percent_Excl_Vat       AS        decimal(18,5),
           @Disc_Amount_Inc_IVA         AS        decimal(18,5),
           @Disc_Amount_Excl_IVA        AS        decimal(18,5)

AS
BEGIN

UPDATE [dbo].[Promotion Details]

SET
            [Type]  =  @Type
           ,[Code Type]  =  @Code_Type
           ,[Description Code Type]  =  @Description_Code_Type
           ,[Standard Price Inc. IVA]   = @Standard_Price_Inc_IVA 
           ,[Standard Price Excl. IVA]  = @Standard_Price_Excl_IVA
           ,[Promotion Price Inc. Iva]      = @Promotion_Price_Inc_Iva 
           ,[Promotion Price Excl. Iva]     = @Promotion_Price_Excl_Iva  
           ,[Disc % Incl Vat]           = @Disc_percent_Incl_Vat 
           ,[Disc % Excl Vat]           = @Disc_percent_Excl_Vat 
           ,[Disc Amount Inc. IVA]      = @Disc_Amount_Inc_IVA
           ,[Disc Amount Excl. IVA]     = @Disc_Amount_Excl_IVA


WHERE [Code Promotion]  =   @Code_Promotion 
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdatePurcharseHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdatePurcharseHeader]

           @Document_Type                     AS              int,
           @No_Receipt                        AS              nvarchar(20),
           @No_Transaccion                    AS              nvarchar(20),
           @Store_No                          AS              nvarchar(20),
           @Customer_No                       AS              nvarchar(20),
           @Customer_Name                     AS              nvarchar(50),
           @Terminal_No                       AS              nvarchar(20),
           @Document_Date                     AS              datetime,
           @Posting_Date                      AS              datetime,
           @Due_Date                          AS              datetime,
           @Posting_No                        AS              nvarchar(20),
           @Posting_Description               AS              nvarchar(50),
           @Payment_Terms_Code                AS              nvarchar(10),
           @Location_Code                     AS              nvarchar(10),
           @Currency_Code                     AS              nvarchar(10),
           @Currency_Factor                   AS              decimal(18,5),
           @Customer_Price_Group              AS              nvarchar(10),
           @Customer_Disc_Group               AS              nvarchar(20),
           @Language_Code                     AS              nvarchar(10),
           @Salesperson_Code                  AS              nvarchar(10),
           @No_Printed                        AS              int,
           @Status                            AS              int,
           @Prices_Including_VAT              AS              tinyint,
           @Allow_Line_Disc                   AS              tinyint,
           @Print_Posted_Documents            AS              tinyint,
           @Last_Posting_No                   AS              nvarchar(20),
           @VAT_Registration_No               AS              nvarchar(20),
           @VAT_Bussines_Posting_Group        AS              nvarchar(20),
           @External_Document_No              AS              nvarchar(35),
           @No_Series                         AS              nvarchar(10),
           @Posting_No_Series                 AS              nvarchar(10),
           @Return_Receipt_No                 AS              nvarchar(20),
           @Return_Receipt_No_Series          AS              nvarchar(10),
           @Last_Return_Receipt_No            AS              nvarchar(20),
           @Assigned_User_ID                  AS              nvarchar(50),
           @Statement_No                      AS              nvarchar(20),
           @Subtotal_Excl_IVA                 AS              decimal(18,5),
           @Subtotal_Inc_IVA                  AS              decimal(18,5),
           @Discount_percent                  AS              decimal(18,5),
           @Discount_Amount_Inc_IVA           AS              decimal(18,5),
           @Discount_Amount_Excl_IVA          AS              decimal(18,5),
           @IVA_Amount                        AS              decimal(18,5),
           @Total_Amount                      AS              decimal(18,5)

AS
BEGIN

UPDATE [dbo].[Purcharse Header]
SET         
         
            [No Transaccion]                      =               @No_Transaccion
           ,[Store No]                            =               @Store_No
           ,[Customer No]                         =               @Customer_No
           ,[Customer Name]                       =               @Customer_Name 
           ,[Terminal No]                         =               @Terminal_No
           ,[Document Date]                       =               @Document_Date
           ,[Posting Date]                        =               @Posting_Date 
           ,[Due Date]                            =               @Due_Date
           ,[Posting No]                          =               @Posting_No
           ,[Posting Description]                 =               @Posting_Description
           ,[Payment Terms Code]                  =               @Payment_Terms_Code
           ,[Location Code]                       =               @Location_Code
           ,[Currency Code]                       =               @Currency_Code
           ,[Currency Factor]                     =               @Currency_Factor
           ,[Customer Price Group]                =               @Customer_Price_Group
           ,[Customer Disc_ Group]                =               @Customer_Disc_Group 
           ,[Language Code]                       =               @Language_Code 
           ,[Salesperson Code]                    =               @Salesperson_Code 
           ,[No_ Printed]                         =               @No_Printed
           ,[Status]                              =               @Status 
           ,[Prices Including VAT]                =               @Prices_Including_VAT 
           ,[Allow Line Disc]                     =               @Allow_Line_Disc  
           ,[Print Posted Documents]              =               @Print_Posted_Documents
           ,[Last Posting No_]                    =               @Last_Posting_No
           ,[VAT Registration No_]                =               @VAT_Registration_No
           ,[VAT Bussines Posting Group]          =               @VAT_Bussines_Posting_Group 
           ,[External Document No_]               =               @External_Document_No
           ,[No_ Series]                          =               @No_Series 
           ,[Posting No_ Series]                  =               @Posting_No_Series 
           ,[Return Receipt No_]                  =               @Return_Receipt_No 
           ,[Return Receipt No_ Series]           =               @Return_Receipt_No_Series 
           ,[Last Return Receipt No_]             =               @Last_Return_Receipt_No
           ,[Assigned User ID]                    =               @Assigned_User_ID
           ,[Statement No]                        =               @Statement_No
           ,[Subtotal Excl IVA]                   =               @Subtotal_Excl_IVA 
           ,[Subtotal Inc. IVA]                   =               @Subtotal_Inc_IVA
           ,[Discount %]                          =               @Discount_percent
           ,[Discount Amount Inc IVA]             =               @Discount_Amount_Inc_IVA
           ,[Discount Amount Excl IVA]            =               @Discount_Amount_Excl_IVA
           ,[IVA Amount]                          =               @IVA_Amount
           ,[Total Amount]                        =               @Total_Amount 
WHERE 
           [Document Type] = @Document_Type                   AND
           [No Receipt]    = @No_Receipt                        
     
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdatePurcharseLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdatePurcharseLine]



           @Document_Type                       AS              int,
           @No_Receipt                          AS              nvarchar(20),
           @Line_No                             AS              int,
           @No_Transaccion                      AS              nvarchar(20),
           @Customer_No                         AS              nvarchar(20),
           @Type                                AS              int,
           @Item_No                             AS              nvarchar(50),
           @Location_Code                       AS              nvarchar(10),
           @Description                         AS              nvarchar(50),
           @Unit_of_Measure                     AS              nvarchar(10),
           @Posting_Date                        AS              datetime,
           @Quantity                            AS              decimal(18,5),
           @Amount								AS              decimal(18,5),
           @Unit_Cost							AS              decimal(18,5),
           @VAT									AS              decimal(18,5),
           @VAT_Base_Amount                     AS              decimal(18,5),
           @Unit_Price_Incl_VAT                 AS              decimal(18,5),
           @Unit_Price_Excl_VAT                 AS              decimal(18,5),
           @Amount_Incl_VAT                     AS              decimal(18,5),
           @Amount_Excl_VAT                     AS              decimal(18,5),
           @Line_Discount_percent               AS              decimal(18,5),
           @Line_Discount_Amount_Inc_IVA        AS              decimal(18,5),
           @Line_Discount_Amount_Exl_IVA        AS              decimal(18,5),
           @Profit_percent                      AS              decimal(18,5),
           @Line_Amount                         AS              decimal(18,5),
           @Customer_Price_Group                AS              nvarchar(10),
           @Gen_Bus_Posting_Group               AS              nvarchar(10),
           @Gen_Prod_Posting_Group              AS              nvarchar(10),
           @VAT_Bus_Posting_Group               AS              nvarchar(10),
           @VAT_Prod_Posting_Group              AS              nvarchar(10),
           @Currency_Code                       AS              nvarchar(10),
           @Variant_Code                        AS              nvarchar(10),
           @Unit_of_Measure_Code                AS              nvarchar(10),
           @Qty_per_Unit_of_Measure             AS              decimal(18,5),
           @Quantity_Base                       AS              decimal(18,5),
           @Return_Qty_to_Receive               AS              decimal(18,5),
           @Return_Qty_to_Receive_Base          AS              decimal(18,5),
           @Cross_Reference_No                  AS              nvarchar(20),
           @Unit_of_Measure_Cross_Ref__         AS              nvarchar(10),
           @Product_Group_Code                  AS              nvarchar(10),
           @Return_Receipt_No                   AS              nvarchar(20),
           @Allow_Invoice_Disc                  AS              tinyint,
           @Nonstock                            AS              tinyint,
           @Out_of_Stock_Substitution           AS              tinyint,
           @Allow_Line_Disc                     AS              tinyint,
           @Return_Receipt_Line_No              AS              int,
           @Return_Policy                       AS              int,
           @Cancel_Permitted                    AS              int,
           @Non_Refund_Amount                   AS              decimal(18,5),
           @Return_Reason_Code                  AS              nvarchar(10),
           @Store_No                            AS              nvarchar(10),
           @Current_Cust_Price_Group            AS              nvarchar(20),
           @Offer_No                            AS              nvarchar(20),
           @Promotion_No                        AS              nvarchar(20),
           @Store_Sales_Location                AS              nvarchar(10),
           @Vendor_No                           AS              nvarchar(20),
           @Reserved_By_POS_No                  AS              nvarchar(10),
           @Code_Payment_methods	            AS              nvarchar(20),
           @Description_Payment_methods	        AS              nvarchar(100),
           @Amount_Payment_methods	            AS              decimal(18, 5)	

AS
BEGIN

UPDATE [dbo].[Purcharse Lines]
SET
            [No Transaccion]                       =               @No_Transaccion
           ,[Customer No]                          =               @Customer_No 
           ,[Type]                                 =               @Type
           ,[Item No]                              =               @Item_No  
           ,[Location Code]                        =               @Location_Code 
           ,[Description]                          =               @Description 
           ,[Unit of Measure]                      =               @Unit_of_Measure  
           ,[Posting Date]                         =               @Posting_Date 
           ,[Quantity]                             =               @Quantity  
           ,[Amount]                               =               @Amount	
           ,[Unit Cost]                            =               @Unit_Cost
           ,[VAT]                                  =               @VAT
           ,[VAT Base Amount]                      =               @VAT_Base_Amount 
           ,[Unit Price Incl VAT]                  =               @Unit_Price_Incl_VAT 
           ,[Unit Price Excl VAT]                  =               @Unit_Price_Excl_VAT  
           ,[Amount Incl VAT]                      =               @Amount_Incl_VAT 
           ,[Amount Excl VAT]                      =               @Amount_Excl_VAT 
           ,[Line Discount %]                      =               @Line_Discount_percent
           ,[Line Discount Amount Inc IVA]         =               @Line_Discount_Amount_Inc_IVA
           ,[Line Discount Amount Exl IVA]         =               @Line_Discount_Amount_Exl_IVA 
           ,[Profit %]                             =               @Profit_percent 
           ,[Line Amount]                          =               @Line_Amount  
           ,[Customer Price Group]                 =               @Customer_Price_Group 
           ,[Gen Bus Posting Group]                =               @Gen_Bus_Posting_Group 
           ,[Gen Prod Posting Group]               =               @Gen_Prod_Posting_Group 
           ,[VAT Bus Posting Group]                =               @VAT_Bus_Posting_Group 
           ,[VAT Prod Posting Group]               =               @VAT_Prod_Posting_Group 
           ,[Currency Code]                        =               @Currency_Code   
           ,[Variant Code]                         =               @Variant_Code
           ,[Unit of Measure Code]                 =               @Unit_of_Measure_Code 
           ,[Qty_ per Unit of Measure]             =               @Qty_per_Unit_of_Measure 
           ,[Quantity (Base)]                      =               @Quantity_Base 
           ,[Return Qty_ to Receive]               =               @Return_Qty_to_Receive
           ,[Return Qty_ to Receive Base]          =               @Return_Qty_to_Receive_Base
           ,[Cross-Reference No]                   =               @Cross_Reference_No 
           ,[Unit of Measure (Cross Ref_)]         =               @Unit_of_Measure_Cross_Ref__
           ,[Product Group Code]                   =               @Product_Group_Code
           ,[Return Receipt No]                    =               @Return_Receipt_No
           ,[Allow Invoice Disc]                   =               @Allow_Invoice_Disc
           ,[Nonstock]                             =               @Nonstock  
           ,[Out-of-Stock Substitution]            =               @Out_of_Stock_Substitution
           ,[Allow Line Disc]                      =               @Allow_Line_Disc 
           ,[Return Receipt Line No]               =               @Return_Receipt_Line_No
           ,[Return Policy]                        =               @Return_Policy 
           ,[Cancel Permitted]                     =               @Cancel_Permitted
           ,[Non Refund Amount]                    =               @Non_Refund_Amount
           ,[Return Reason Code]                   =               @Return_Reason_Code  
           ,[Store No]                             =               @Store_No  
           ,[Current Cust_ Price Group]            =               @Current_Cust_Price_Group  
           ,[Offer No]                             =               @Offer_No 
           ,[Promotion No]                         =               @Promotion_No  
           ,[Store Sales Location]                 =               @Store_Sales_Location
           ,[Vendor No]                            =               @Vendor_No  
           ,[Reserved By POS No_]                  =               @Reserved_By_POS_No  
           ,[Code Payment methods]                 =               @Code_Payment_methods
           ,[Description Payment methods]          =               @Description_Payment_methods
           ,[Amount Payment methods]               =               @Amount_Payment_methods

WHERE

           [Document Type] =  @Document_Type                     AND
           [No Receipt]    =  @No_Receipt                        AND
           [Line No]       =  @Line_No                             
                         
      
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateReserveSummary]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateReserveSummary]

            @EntryNo                   AS    int,
        @LineNo                    AS    int,
            @ItemNo			   AS    nvarchar(15),
            @Description		   AS	   nvarchar(50),
            @ReservationStatus	   AS	   int,
            @SummaryType		   AS	   nvarchar(15),
        @NoTransaccion             AS    nvarchar(15),
            @StoreNo			   AS    nvarchar(15),
            @TerminalNo			   AS    nvarchar(15),
            @TotalQuantity		   AS	   decimal(18, 5),
            @TotalReservedQuantity	   AS	   decimal(18, 5),
            @TotalAvailableQuantity	   AS	   decimal(18, 5),
            @CurrentReservedQuantity   AS	   decimal(18, 5),
            @QtyToReserve		   AS	   decimal(18, 5),
            @QtyReserved		   AS	   decimal(18, 5),
            @QteUnreserverd		   AS	   decimal(18, 5),
            @QuantityBase		   AS	   decimal(18, 5),
            @QtyperUnitofMeasure	   AS	   decimal(18, 5),
            @Quantity			   AS	   decimal(18, 5),
            @SerialNo			   AS	   nvarchar(15),
            @LotNo			   AS	   nvarchar(15),
            @LocationCode		   AS	   nvarchar(15),
            @TransferredfromEntryNo	   AS	   int,
            @ItemLedgerEntryNo	   AS	   int,
            @VariantCode		   AS	   nvarchar(15),
            @CreatedBy			   AS	   nvarchar(15),
            @ModifyBy			   AS	   nvarchar(15),
            @CreationDate		   AS	   datetime
AS BEGIN

UPDATE  [dbo].[Reserve Summary]
SET
            
            [ItemNo]=@ItemNo
           ,[Description]=@Description
           ,[ReservationStatus]=@ReservationStatus
           ,[SummaryType]=@SummaryType
         ,[No Transaccion]=@NoTransaccion
         ,[Store No]=@StoreNo
         ,[Terminal No]=@TerminalNo
           ,[TotalQuantity]=@TotalQuantity
           ,[TotalReservedQuantity]=@TotalReservedQuantity
           ,[TotalAvailableQuantity]=@TotalAvailableQuantity
           ,[CurrentReservedQuantity]=@CurrentReservedQuantity
           ,[QtyToReserve]=@QtyToReserve
           ,[QtyReserved]=@QtyReserved
           ,[QteUnreserverd]=@QteUnreserverd
           ,[QuantityBase]=@QuantityBase
           ,[QtyperUnitofMeasure]=@QtyperUnitofMeasure
           ,[Quantity]=@Quantity
           ,[SerialNo]=@SerialNo
           ,[LotNo]=@LotNo
           ,[LocationCode]=@LocationCode
           ,[TransferredfromEntryNo]=@TransferredfromEntryNo
           ,[ItemLedgerEntryNo]=@ItemLedgerEntryNo
           ,[VariantCode]=@VariantCode
           ,[CreatedBy]=@CreatedBy
           ,[ModifyBy]=@ModifyBy
           ,[CreationDate]=@CreationDate
WHERE
     [EntryNo] = @EntryNo 
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateSalesHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSalesHeader]

           @Document_Type                     AS              int,
           @No_Receipt                        AS              nvarchar(15),
           @No_Transaccion                    AS              nvarchar(15),
           @Store_No                          AS              nvarchar(15),
           @Customer_No                       AS              nvarchar(15),
           @Customer_Name                     AS              nvarchar(50),
           @Terminal_No                       AS              nvarchar(15),
           @Document_Date                     AS              datetime,
           @Posting_Date                      AS              datetime,
           @Due_Date                          AS              datetime,
           @Posting_No                        AS              nvarchar(15),
           @Posting_Description               AS              nvarchar(50),
           @Payment_Terms_Code                AS              nvarchar(15),
           @Location_Code                     AS              nvarchar(15),
           @Currency_Code                     AS              nvarchar(15),
           @Currency_Factor                   AS              decimal(18,5),
           @Customer_Price_Group              AS              nvarchar(15),
           @Customer_Disc_Group               AS              nvarchar(15),
           @Language_Code                     AS              nvarchar(15),
           @Salesperson_Code                  AS              nvarchar(15),
           @No_Printed                        AS              int,
           @Status                            AS              int,
           @Prices_Including_VAT              AS              tinyint,
           @Allow_Line_Disc                   AS              tinyint,
           @Print_Posted_Documents            AS              tinyint,
           @Last_Posting_No                   AS              nvarchar(15),
           @VAT_Registration_No               AS              nvarchar(15),
           @VAT_Bussines_Posting_Group        AS              nvarchar(15),
           @External_Document_No              AS              nvarchar(35),
           @No_Series                         AS              nvarchar(15),
           @Posting_No_Series                 AS              nvarchar(15),
           @Return_Receipt_No                 AS              nvarchar(15),
           @Return_Receipt_No_Series          AS              nvarchar(15),
           @Last_Return_Receipt_No            AS              nvarchar(15),
           @Assigned_User_ID                  AS              nvarchar(15),
           @Statement_No                      AS              nvarchar(15),
           @Subtotal_Excl_IVA                 AS              decimal(18,5),
           @Subtotal_Inc_IVA                  AS              decimal(18,5),
           @Discount_percent                  AS              decimal(18,5),
           @Discount_Amount_Incl_IVA          AS              decimal(18,5),
           @Discount_Amount_Excl_IVA          AS              decimal(18,5),
           @IVA_Amount                        AS              decimal(18,5),
           @Total_Amount                      AS              decimal(18,5),
         @TotalAmountEXO                    AS              decimal(18,5),
         @DiscountAmountOnSubtotal          AS              decimal(18,5),
         @DocumentTypeFiscal                AS              int,
         @CustomerVATResgistrationAux       AS              nvarchar(20),
         @CustomerAddressAux                AS              nvarchar(100),
         @StatementPOS                      AS              nvarchar(15)
AS
BEGIN

UPDATE [dbo].[Sales Header]
SET         
        
            [Customer No]                         =               @Customer_No
           ,[Customer Name]                       =               @Customer_Name 
           ,[Document Date]                       =               @Document_Date
           ,[Posting Date]                        =               @Posting_Date 
           ,[Due Date]                            =               @Due_Date
           ,[Posting No]                          =               @Posting_No
           ,[Posting Description]                 =               @Posting_Description
           ,[Payment Terms Code]                  =               @Payment_Terms_Code
           ,[Location Code]                       =               @Location_Code
           ,[Currency Code]                       =               @Currency_Code
           ,[Currency Factor]                     =               @Currency_Factor
           ,[Customer Price Group]                =               @Customer_Price_Group
           ,[Customer Disc_ Group]                =               @Customer_Disc_Group 
           ,[Language Code]                       =               @Language_Code 
           ,[Salesperson Code]                    =               @Salesperson_Code 
           ,[No_ Printed]                         =               @No_Printed
           ,[Status]                              =               @Status 
           ,[Prices Including VAT]                =               @Prices_Including_VAT 
           ,[Allow Line Disc]                     =               @Allow_Line_Disc  
           ,[Print Posted Documents]              =               @Print_Posted_Documents
           ,[Last Posting No_]                    =               @Last_Posting_No
           ,[VAT Registration No_]                =               @VAT_Registration_No
           ,[VAT Bussines Posting Group]          =               @VAT_Bussines_Posting_Group 
           ,[External Document No_]               =               @External_Document_No
           ,[No_ Series]                          =               @No_Series 
           ,[Posting No_ Series]                  =               @Posting_No_Series 
           ,[Return Receipt No_]                  =               @Return_Receipt_No 
           ,[Return Receipt No_ Series]           =               @Return_Receipt_No_Series 
           ,[Last Return Receipt No_]             =               @Last_Return_Receipt_No
           ,[Assigned User ID]                    =               @Assigned_User_ID
           ,[Statement No]                        =               @Statement_No
           ,[Subtotal Excl IVA]                   =               @Subtotal_Excl_IVA 
           ,[Subtotal Inc. IVA]                   =               @Subtotal_Inc_IVA
           ,[Discount %]                          =               @Discount_percent
           ,[Discount Amount Incl IVA]            =               @Discount_Amount_Incl_IVA
           ,[Discount Amount Excl IVA]            =               @Discount_Amount_Excl_IVA
           ,[IVA Amount]                          =               @IVA_Amount
           ,[Total Amount]                        =               @Total_Amount 
         ,[TotalAmountEXO]                      =               @TotalAmountEXO
         ,[No Receipt]                          =               @No_Receipt     
         ,[DiscountAmountOnSubtotal]            =               @DiscountAmountOnSubtotal 
           ,[DocumentTypeFiscal]                  =               @DocumentTypeFiscal   
         ,[CustomerVATResgistrationAux]         =               @CustomerVATResgistrationAux
         ,[CustomerAddressAux]                  =               @CustomerAddressAux
         ,[StatementPOS]                        =               @StatementPOS
WHERE 
           [Document Type]  = @Document_Type     AND
           [Store No]       = @Store_No          AND
         [No Transaccion] = @No_Transaccion    AND
           [Terminal No]    = @Terminal_No

     
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateSalesLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSalesLine]



           @Document_Type                       AS              int,
           @No_Receipt                          AS              nvarchar(15),
           @Line_No                             AS              int,
           @No_Transaccion                      AS              nvarchar(15),
           @Customer_No                         AS              nvarchar(15),
           @Type                                AS              int,
           @Item_No                             AS              nvarchar(15),
           @Location_Code                       AS              nvarchar(15),
           @Description                         AS              nvarchar(210),
           @Unit_of_Measure                     AS              nvarchar(15),
           @Posting_Date                        AS              datetime,
           @Quantity                            AS              decimal(18,5),
           @Amount					AS              decimal(18,5),
           @Unit_Cost					AS              decimal(18,5),
           @VAT						AS              decimal(18,5),
           @VAT_Base_Amount                     AS              decimal(18,5),
           @Unit_Price_Incl_VAT                 AS              decimal(18,5),
           @Unit_Price_Excl_VAT                 AS              decimal(18,5),
           @Amount_Incl_VAT                     AS              decimal(18,5),
           @Amount_Excl_VAT                     AS              decimal(18,5),
           @Line_Discount_percent               AS              decimal(18,5),
           @Line_Discount_Amount_Inc_IVA        AS              decimal(18,5),
           @Line_Discount_Amount_Exl_IVA        AS              decimal(18,5),
           @Profit_percent                      AS              decimal(18,5),
           @Line_Amount                         AS              decimal(18,5),
           @Customer_Price_Group                AS              nvarchar(15),
           @Gen_Bus_Posting_Group               AS              nvarchar(15),
           @Gen_Prod_Posting_Group              AS              nvarchar(15),
           @VAT_Bus_Posting_Group               AS              nvarchar(15),
           @VAT_Prod_Posting_Group              AS              nvarchar(15),
           @Currency_Code                       AS              nvarchar(15),
           @Variant_Code                        AS              nvarchar(15),
           @Unit_of_Measure_Code                AS              nvarchar(15),
           @Qty_per_Unit_of_Measure             AS              decimal(18,5),
           @Quantity_Base                       AS              decimal(18,5),
           @Return_Qty_to_Receive               AS              decimal(18,5),
           @Return_Qty_to_Receive_Base          AS              decimal(18,5),
           @Cross_Reference_No                  AS              nvarchar(15),
           @Unit_of_Measure_Cross_Ref__         AS              nvarchar(15),
           @Product_Group_Code                  AS              nvarchar(15),
           @Return_Receipt_No                   AS              nvarchar(15),
           @Allow_Invoice_Disc                  AS              tinyint,
           @Nonstock                            AS              tinyint,
           @Out_of_Stock_Substitution           AS              tinyint,
           @Allow_Line_Disc                     AS              tinyint,
           @Return_Receipt_Line_No              AS              int,
           @Return_Policy                       AS              int,
           @Cancel_Permitted                    AS              int,
           @Non_Refund_Amount                   AS              decimal(18,5),
           @Return_Reason_Code                  AS              nvarchar(15),
           @Store_No                            AS              nvarchar(15),
           @Current_Cust_Price_Group            AS              nvarchar(15),
           @Offer_No                            AS              nvarchar(15),
           @Promotion_No                        AS              nvarchar(15),
           @Terminal_No                         AS              nvarchar(15),
           @Vendor_No                           AS              nvarchar(15),
           @Reserved_By_POS_No                  AS              nvarchar(15),
         @Code_Payment_methods	            AS              nvarchar(15),
           @Description_Payment_methods	      AS              nvarchar(100),
           @Amount_Payment_methods	            AS              decimal(18, 5),
           @WasIsReturned	                  AS              tinyint,
         @Comment	                        AS              nvarchar(210),
         @QtyReserved                         AS              decimal(18,5),
         @QtyReservedBase                     AS              decimal(18,5), 
         @EntryReserveNo                      AS              int 

AS
BEGIN

UPDATE [dbo].[Sales Line]
SET
            [Customer No]                          =               @Customer_No 
           ,[Type]                                 =               @Type
           ,[Item No]                              =               @Item_No  
           ,[Location Code]                        =               @Location_Code 
           ,[Description]                          =               @Description 
           ,[Unit of Measure]                      =               @Unit_of_Measure  
           ,[Posting Date]                         =               @Posting_Date 
           ,[Quantity]                             =               @Quantity  
           ,[Amount]                               =               @Amount	
           ,[Unit Cost]                            =               @Unit_Cost
           ,[VAT]                                  =               @VAT
           ,[VAT Base Amount]                      =               @VAT_Base_Amount 
           ,[Unit Price Incl VAT]                  =               @Unit_Price_Incl_VAT 
           ,[Unit Price Excl VAT]                  =               @Unit_Price_Excl_VAT  
           ,[Amount Incl VAT]                      =               @Amount_Incl_VAT 
           ,[Amount Excl VAT]                      =               @Amount_Excl_VAT 
           ,[Line Discount %]                      =               @Line_Discount_percent
           ,[Line Discount Amount Inc IVA]         =               @Line_Discount_Amount_Inc_IVA
           ,[Line Discount Amount Exl IVA]         =               @Line_Discount_Amount_Exl_IVA 
           ,[Profit %]                             =               @Profit_percent 
           ,[Line Amount]                          =               @Line_Amount  
           ,[Customer Price Group]                 =               @Customer_Price_Group 
           ,[Gen Bus Posting Group]                =               @Gen_Bus_Posting_Group 
           ,[Gen Prod Posting Group]               =               @Gen_Prod_Posting_Group 
           ,[VAT Bus Posting Group]                =               @VAT_Bus_Posting_Group 
           ,[VAT Prod Posting Group]               =               @VAT_Prod_Posting_Group 
           ,[Currency Code]                        =               @Currency_Code   
           ,[Variant Code]                         =               @Variant_Code
           ,[Unit of Measure Code]                 =               @Unit_of_Measure_Code 
           ,[Qty_ per Unit of Measure]             =               @Qty_per_Unit_of_Measure 
           ,[Quantity (Base)]                      =               @Quantity_Base 
           ,[Return Qty_ to Receive]               =               @Return_Qty_to_Receive
           ,[Return Qty_ to Receive Base]          =               @Return_Qty_to_Receive_Base
           ,[Cross-Reference No]                   =               @Cross_Reference_No 
           ,[Unit of Measure (Cross Ref_)]         =               @Unit_of_Measure_Cross_Ref__
           ,[Product Group Code]                   =               @Product_Group_Code
           ,[Return Receipt No]                    =               @Return_Receipt_No
           ,[Allow Invoice Disc]                   =               @Allow_Invoice_Disc
           ,[Nonstock]                             =               @Nonstock  
           ,[Out-of-Stock Substitution]            =               @Out_of_Stock_Substitution
           ,[Allow Line Disc]                      =               @Allow_Line_Disc 
           ,[Return Receipt Line No]               =               @Return_Receipt_Line_No
           ,[Return Policy]                        =               @Return_Policy 
           ,[Cancel Permitted]                     =               @Cancel_Permitted
           ,[Non Refund Amount]                    =               @Non_Refund_Amount
           ,[Return Reason Code]                   =               @Return_Reason_Code  
           ,[Current Cust_ Price Group]            =               @Current_Cust_Price_Group  
           ,[Offer No]                             =               @Offer_No 
           ,[Promotion No]                         =               @Promotion_No  
           ,[Vendor No]                            =               @Vendor_No  
           ,[Reserved By POS No_]                  =               @Reserved_By_POS_No  
         ,[Code Payment methods]                 =               @Code_Payment_methods
           ,[Description Payment methods]          =               @Description_Payment_methods
           ,[Amount Payment methods]               =               @Amount_Payment_methods
         ,[WasIsReturned]                        =               @WasIsReturned
         ,[Comment]                              =               @Comment
         ,[QtyReserved]                          =               @QtyReserved
         ,[QtyReservedBase]                      =               @QtyReservedBase
         ,[EntryReserveNo]                       =               @EntryReserveNo
            
WHERE

           [Document Type]  =  @Document_Type                     AND
             [No Receipt]     =  @No_Receipt                        AND
             [Store No]       =  @Store_No                          AND
             [Line No]        =  @Line_No                           AND
             [No Transaccion] =  @No_Transaccion                    AND
           [Terminal No]    =  @Terminal_No
                         
      
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateSalesPaymentMethods]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSalesPaymentMethods]

           @Document_Type                  AS              int,
           @Line_No                        AS              int,
           @No_Receipt                     AS              nvarchar(15),
         @StoreCode                      AS              nvarchar(15),
           @Transaction_No                 AS              nvarchar(15),
           @Code_Payment_Metodth           AS              nvarchar(15),
           @Terminal_No                    AS              nvarchar(15),
           @Description_Payment_Metodth    AS              nvarchar(100),
           @Amount                         AS              decimal(18,5),
         @State                          AS              int,
         @Reference                      AS              nvarchar(MAX),
         @Creation_date			 AS              datetime, 
         @Created_by_User			 AS              nvarchar(50), 
         @Last_modified_date		 AS		     datetime,
             @Last_modified_by_the_user      AS              nvarchar(50),
         @Prepayment                     AS              int

AS
BEGIN


UPDATE [dbo].[Sales Payment methods]
SET

            [Description Payment Metodth]    =   @Description_Payment_Metodth
           ,[Amount]                         =   @Amount
           ,[State]                          =   @State
           ,[Reference]                      =   @Reference
           ,[Creation date]                  =   @Creation_date
           ,[Created by user]                =   @Created_by_User
           ,[Last modified date]             =   @Last_modified_date
           ,[Last modified by the user]      =   @Last_modified_by_the_user
           ,[Prepayment]                    =   @Prepayment
WHERE
           [Document Type]         =  @Document_Type                AND
           [Line No]               =  @Line_No                      AND
           [No Receipt]            =  @No_Receipt                   AND
         [StoreCode]             =  @StoreCode                    AND
         [Transaction No]        =  @Transaction_No               AND
         [Terminal No]           =  @Terminal_No                  AND
         [Code Payment Metodth]  =  @Code_Payment_Metodth 

     
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateSalesperson_Employee]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[spUpdateSalesperson_Employee]
           @Code                   AS                 nvarchar(15),
           @Name                   AS                 nvarchar(50),
           @Type                   AS                 nvarchar(50),
           @Comision               AS                 decimal(18,5),
           @Phone                  AS                 nvarchar(50),
           @EMail                  AS                 nvarchar(50),
           @Avg_Estimated_Value    AS                 decimal(18,5),
           @Photo                  AS                 nvarchar(50),
           @CodeAddress            AS                 nvarchar(15),
           @Code_Permission        AS                 nvarchar(15)

AS
BEGIN
        UPDATE [Salesperson/Employee]
        SET
            [Name]                   =  @Name 
           ,[Type]                   =  @Type 
           ,[Comision%]              =  @Comision 
           ,[Phone]                  =  @Phone 
           ,[E-Mail]                 =  @EMail 
           ,[Avg. Estimated Value]   =  @Avg_Estimated_Value 
           ,[Photo]                  =  @Photo 
           ,[CodeAddress]            =  @CodeAddress  
           ,[Code Permission]        =  @Code_Permission
        WHERE
           [Code] = @Code                 
      
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateSalespersonList]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateSalespersonList]
           @Customer_ID                   AS                 nvarchar(15),
           @Salesperson_ID                AS                 nvarchar(15),
           @Date						  AS				 datetime

AS
BEGIN

UPDATE [dbo].[Salesperson List]
SET   [Date] = @Date

    WHERE 
    [Customer ID]      =   @Customer_ID      AND 
    [Salesperson ID]   =   @Salesperson_ID


END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateSalesPrices]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSalesPrices]

           @Item_No                                   AS              nvarchar(15), 
           @Sales_Code					              AS              nvarchar(15), 
           @Variant_Code							  AS              nvarchar(15),
           @Starting_Date				              AS              datetime, 
           @Ending_Date								  AS              datetime, 
           @Unit_Price								  AS              decimal(18,5), 
           @Price_Includes_VAT						  AS              int, 
           @VAT_Bus_Posting_Gr_Price				  AS              nvarchar(15), 
           @Sales_Type								  AS              int, 
           @Minimum_Quantity						  AS              decimal(18,5),      
           @Unit_of_Measure_Code					  AS              nvarchar(15), 
           @Creation_date                             AS              datetime,
           @Created_by_user                           AS              nvarchar(50),
           @Last_modified_date                        AS              datetime,
           @Last_modified_by_the_user                 AS              nvarchar(50)		

           
AS
BEGIN

UPDATE [dbo].[Sales Prices]
SET
           
            [Starting Date]                 = @Starting_Date
           ,[Ending Date]				    = @Ending_Date	
           ,[Unit Price]                    = @Unit_Price	
           ,[Price Includes VAT]            = @Price_Includes_VAT
           ,[VAT Bus. Posting Gr. (Price)]  = @VAT_Bus_Posting_Gr_Price
           ,[Sales Type]				    = @Sales_Type	
           ,[Minimum Quantity]              = @Minimum_Quantity 	
           ,[Unit of Measure Code]          = @Unit_of_Measure_Code      
           ,[Creation date]                 = @Creation_date 
           ,[Created by user]               = @Created_by_user 
           ,[Last modified date]            = @Last_modified_date  
           ,[Last modified by the user]     = @Last_modified_by_the_user

WHERE  [Item No]       =  @Item_No     AND
       [Sales Code]    =  @Sales_Code  AND
       [Variant Code] =  @Variant_Code	 

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateSalesPricesHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSalesPricesHeader]
 
           @Sales_Code       AS      nvarchar(15),
           @Description      AS      nvarchar(50)

AS 
BEGIN

UPDATE [dbo].[Sales Prices Header]
SET
           [Description]= @Description

WHERE
           [Sales Code] = @Sales_Code    
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateSequenceTypes]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSequenceTypes]
           @Id      AS      uniqueidentifier,
           @Name    AS      nvarchar(50)

           AS
           BEGIN

UPDATE[dbo].[SequenceTypes]
SET
        
           [Name]= @Name
WHERE
            [Id]= @Id   
               
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateSerialNumbersShelf]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateSerialNumbersShelf]

           @Sequence_Type_Id                AS              uniqueidentifier,
           @Serial_Value                    AS              int
          
AS
BEGIN

UPDATE [dbo].[SerialNumbersShelf]
SET
Is_Hold = 0
WHERE
Sequence_Type_Id = @Sequence_Type_Id
AND
Serial_Value = @Serial_Value

END



GO
/****** Object:  StoredProcedure [dbo].[spUpdateSerialSchemas]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSerialSchemas]

           @Id                     AS              uniqueidentifier,
           @Store_code_Id          AS              nvarchar(15),
           @POS_code_Id            AS              uniqueidentifier,
           @Sequence_Type_Id       AS              uniqueidentifier,
           @Initial_Value          AS              int,
           @Increment              AS              int,
           @Serial_Mask            AS              nvarchar(50),
           @Leading_Zeros_Length   AS              tinyint,
           @Expiry_Date            AS              datetime2(7),
           @Max_Value              AS              bigint,
           @Is_Cycle               AS              bit,
           @Last_Serial            AS              bigint

AS
BEGIN

UPDATE [dbo].[SerialSchemas]
SET

            [POS_code_Id]                      =               @POS_code_Id
           ,[Store_code_Id]                    =               @Store_code_Id
           ,[Sequence_Type_Id]                 =               @Sequence_Type_Id 
           ,[Initial_Value]                    =               @Initial_Value
           ,[Increment]                        =               @Increment 
           ,[Serial_Mask]                      =               @Serial_Mask  
           ,[Leading_Zeros_Length]             =               @Leading_Zeros_Length 
           ,[Expiry_Date]                      =               @Expiry_Date   
           ,[Max_Value]                        =               @Max_Value   
           ,[Is_Cycle]                         =               @Is_Cycle   
           ,[Last_Serial]                      =               @Last_Serial  
WHERE
           [Id]                      =               @Id                         
           
END



GO
/****** Object:  StoredProcedure [dbo].[spUpdateSpecialGroups]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSpecialGroups]

           @Code            AS      nvarchar(15),
           @Description     AS      nvarchar(100)

AS BEGIN
UPDATE [Special Groups]
SET
          [Description]   = @Description  
          WHERE [Code] = @Code    
           

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateSpecialGroupsItem]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSpecialGroupsItem]

           @Item_Number                    AS       nvarchar(15),
           @Code_Special_Group             AS       nvarchar(15),
           @Special_Group_Description      AS       nvarchar(100)

AS
BEGIN

UPDATE [Special Group Item]
SET
            
           [Special Group Description]    =     @Special_Group_Description 

           WHERE [Item Number]=@Item_Number  AND [Code Special Group]=@Code_Special_Group 

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateState]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateState]

     @Code          AS   nvarchar(15),
     @Description   AS   nvarchar(50)
AS
BEGIN

     UPDATE [State]
     SET
     [Description] = @Description 
     WHERE
     [Code]        = @Code
        

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateStatementLines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateStatementLines]
       
         @No_Transaccion	      AS    nvarchar(15),
         @Store_No	            AS    nvarchar(15),
         @Terminal_No	            AS    nvarchar(15),
         @SalesPaymentMethodCode	AS    nvarchar(15),
         @LineNo	            AS    int,
         @Description	            AS    nvarchar(100),
         @Counted	            AS    decimal(18, 5),
         @TransactionAmount	      AS    decimal(18, 5),
         @DiferentAmount	      AS    decimal(18, 5),
         @StatementCode	      AS    nvarchar(20),
         @Quantity	            AS    int,
         @Status	            AS    int,
         @CreationDate	      AS    datetime,
         @CreatedByUser	      AS    nvarchar(50),
         @ModifyDate	            AS    datetime,
         @ModifyByUser	      AS    nvarchar(50)	

AS
BEGIN


UPDATE [dbo].[StatementLines]
SET
            [Description]      = @Description
           ,[Counted]          = @Counted
           ,[TransactionAmount]= @TransactionAmount
           ,[DiferentAmount]   = @DiferentAmount
           ,[StatementCode]    = @StatementCode
           ,[Quantity]         = @Quantity
           ,[Status]           = @Status
           ,[CreationDate]     = @CreationDate
           ,[CreatedByUser]    = @CreatedByUser
           ,[ModifyDate]       = @ModifyDate
           ,[ModifyByUser]     = @ModifyByUser
         
     where
             [No Transaccion]             =   @No_Transaccion          AND
           [Store No]                   =   @Store_No                AND
           [Terminal No]                =   @Terminal_No		   AND
           [SalesPaymentMethodCode]     =   @SalesPaymentMethodCode  AND
           [LineNo]                     =   @LineNo
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateStore]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateStore]

           @Code                     AS              nvarchar(15),
           @Sales_Code               AS              nvarchar(15),
           @Name                     AS              nvarchar(50),
           @Code_Address             AS              nvarchar(15),
           @Stament_Method           AS              int,
           @Max_Diff_to_Allow        AS              nvarchar(10),
           @image                    AS              image

AS
BEGIN


UPDATE [dbo].[Store]
SET
            [Sales Code]        =  @Sales_Code
           ,[Name]              =  @Name 
           ,[Code Address]      =  @Code_Address
           ,[Stament Method]    =  @Stament_Method
           ,[Max Diff to Allow] =  @Max_Diff_to_Allow
           ,[image]             =  @image

WHERE
           [Code]=@Code
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateStyle]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateStyle]

           @Code              AS      nvarchar(50),
           @Descripcion       AS      nchar(10)

AS
BEGIN
     UPDATE Style
     SET
     [Descripcion]= @Descripcion
     WHERE  [Code] = @Code 
       
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateSutitute]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateSutitute]

          @Code_item                  AS        nvarchar(15),		  
          @Code_Item_Sustitute        AS        nvarchar(15),
          @Description                AS        nvarchar(100)

AS
BEGIN


UPDATE [dbo].Sustitute
   SET 
       [Description] =  @Description 

   WHERE [Code Item]             =     @Code_item             AND 
         [Code Item Sustitute]   =     @Code_Item_Sustitute  

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateTemplateVariantHeader]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateTemplateVariantHeader]

           @Code_Template_Variant_Header           AS    nvarchar(15),
           @Description                            AS    nvarchar(50)

AS
BEGIN
UPDATE [dbo].[Template Variant Header] 

SET [Description] = @Description 

WHERE [Code Template Variant Header] = @Code_Template_Variant_Header


END



GO
/****** Object:  StoredProcedure [dbo].[spUpdateTemplateVariantLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateTemplateVariantLine]

           @Code_Template_Variant_Header           AS    nvarchar(15),
           @Code_Variant                           AS    nvarchar(15),
           @Description                            AS    nvarchar(50)

AS
BEGIN
UPDATE [dbo].[Template Variant Line]
    
    SET  [Description] = @Description

    WHERE [Code Template Variant Header] = @Code_Template_Variant_Header AND
          [Code Variant] = @Code_Variant


END



GO
/****** Object:  StoredProcedure [dbo].[spUpdateUniteMeasure]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateUniteMeasure]
            @Code               AS        nvarchar(15),
            @Description        AS        nvarchar(50)
AS
BEGIN
UPDATE [dbo].[Unit of measure]
SET
           [Code]          =      @Code 
           ,[Description]   =     @Description  
    
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateUser]
    -- Add the parameters for the stored procedure here
    @iUserId UNIQUEIDENTIFIER,
    @iFirstName varchar(51),
    @iSecondName varchar(51) = '',
    @iLastName varchar(51),
    @iUserName varchar(40),
    @iNamePrefix varchar(5) = '',
    @iNameSufix varchar(5) = '',
    @iNeedChangePswd tinyint = 1,
    @iExpireDate DateTime = '9999-12-31 00:00:00'
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    UPDATE [User]
    SET 
        [FirstName] = @iFirstName
        ,[SecondName] = @iSecondName
        ,[LastName] = @iLastName
        ,[NamePrefix] = @iNamePrefix
        ,[NameSufix] = @iNameSufix
        ,[ExpireDate] = @iExpireDate
        ,[LastChageDate] = CURRENT_TIMESTAMP
        ,[NeedChangePassword] = @iNeedChangePswd
        ,[Username] = @iUserName 
    WHERE [UserId] = @iUserId

END


GO
/****** Object:  StoredProcedure [dbo].[spUpdateValidationPeriod]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateValidationPeriod]

           @Code                    AS         nvarchar(15),
           @Description             AS         nvarchar(50),
           @Starting_Date           AS         datetime,
           @Ending_Date             AS         datetime,
           @Starting_Time           AS         time(7),
           @Ending_Time             AS         time(7)

AS
BEGIN
UPDATE [dbo].[Validation Period]
SET
            
            [Description]  =  @Description  
           ,[Starting Date]  =  @Starting_Date 
           ,[Ending Date]  =  @Ending_Date 
           ,[Starting Time]  =  @Starting_Time 
           ,[Ending Time]  =  @Ending_Time 

  WHERE [Code]  =  @Code 
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateVariantGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateVariantGroup]

           @Code_Template_Variant_Header           AS    nvarchar(15),
           @Code_Variant                           AS    nvarchar(15),
           @Code_Variant_Line					   AS    nvarchar(15),
           @Date								   AS    datetime

AS
BEGIN

UPDATE [dbo].[Variant Group]
SET [Date] = @Date
WHERE 
            [Code Template Variant Header]=@Code_Template_Variant_Header 
            AND [Code Variant]=@Code_Variant 
            AND [Code Variant Line]=@Code_Variant_Line

END



GO
/****** Object:  StoredProcedure [dbo].[spUpdateVariantHeaders]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateVariantHeaders]
           @Code_variant            AS     nvarchar(15),
           @Description             AS     nvarchar(50)
AS
BEGIN

    UPDATE [Variant Headers]
    SET                             
    [Code Variant]= @Code_variant
    WHERE 	Description = @Description
END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateVariantLines]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[spUpdateVariantLines]
           @CodeVariant            AS     nvarchar(15),
           @Code_variant_Line      AS     nvarchar(15),
           @Description            AS     nvarchar(50)
AS
BEGIN

    UPDATE [Variant Lines]
    SET                             
    Description     =  @Description 

    
    WHERE 	[Code Variant]         =     @CodeVariant                 AND
            [Code Variant Line]    =     @Code_variant_Line 

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateVATBusinessPostingGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateVATBusinessPostingGroup]

           @Code                               AS            nvarchar(15),
           @Description                        AS            nvarchar(50),
           @Default_Operation_Sales_Type       AS            nvarchar(15),
           @Default_Operation_Purchas_Type     AS            nvarchar(15),
           @Check_Vat_Exemtion                 AS            int,
           @Serie_Sales                        AS            nvarchar(15)


AS
BEGIN


UPDATE [dbo].[VAT Business Posting Group]
   SET 
       [Description]                       =  @Description 
      ,[Default Operation Sales Type]      =  @Default_Operation_Sales_Type
      ,[Default Operation Purchas Type]    =  @Default_Operation_Purchas_Type
      ,[Check Vat Exemtion]                =  @Check_Vat_Exemtion 
      ,[Serie Sales]                       =  @Serie_Sales  


 WHERE [Code]                              =  @Code   

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateVATPostingSetup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateVATPostingSetup]

           @VAT_Bus_Posting_Group            AS     nvarchar(15),
           @VAT_Prod_Posting_Group           AS     nvarchar(15),
           @VAT_Calculation_Type             AS     int,
           @VAT_percent                      AS     decimal(18,5),
           @Unrealized_VAT_Type              AS     nvarchar(15),
           @VAT_Identifier                   AS     nvarchar(15)

AS 
BEGIN

UPDATE [dbo].[VAT Posting Setup]
SET

            [VAT Prod. Posting Group]     =    @VAT_Prod_Posting_Group  
           ,[VAT Calculation Type]        =    @VAT_Calculation_Type  
           ,[VAT %]                       =    @VAT_percent    
           ,[Unrealized VAT Type]         =    @Unrealized_VAT_Type  
           ,[VAT Identifier]              =    @VAT_Identifier  
    WHERE            [VAT Bus. Posting Group]       =    @VAT_Bus_Posting_Group 
END




GO
/****** Object:  StoredProcedure [dbo].[spUpdateVATProdPostingGroup]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateVATProdPostingGroup]

           @Code                               AS            nvarchar(15),
           @Description                        AS            nvarchar(50)


AS
BEGIN


UPDATE [dbo].[VAT Prod. Posting Group]
   SET 
       [Description] =  @Description 

   WHERE [Code] = @Code   

END





GO
/****** Object:  StoredProcedure [dbo].[spUpdateVendor]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spUpdateVendor]

           @No						    	   AS               nvarchar(20), 
           @Name						       AS               nvarchar(50),
           @Name2                              AS               nvarchar(50),
           @Address                            AS               nvarchar(50),
           @Phone                              AS               nvarchar(50),
           @Block                              AS               int,
           @Balance                            AS               decimal(18,5),
           @Purchases                          AS               decimal(18,5),
           @Inv_Discounts                      AS               decimal(18,5),
           @Balance_Due                        AS               decimal(18,5),
           @Payments                           AS               decimal(18,5),
           @Invoice_Amounts                    AS               decimal(18,5),
           @Cr_Memo_Amounts                    AS               decimal(18,5),
           @Outstanding_Orders                 AS               decimal(18,5),
           @Amt_Rcd_Not_Invoiced               AS               decimal(18,5),
           @Prices_Including_VAT               AS               decimal(18,5),
           @VAT_Registration_No                AS               nvarchar(50),
           @Debit_Amount                       AS               decimal(18,5),
           @Credit_Amount                      AS               decimal(18,5),
           @Refunds                            AS               decimal(18,5),
           @Other_Amounts                      AS               decimal(18,5),
           @Prepayment                         AS               decimal(18,5),
           @Outstanding_Invoices               AS               decimal(18,5),
           @Partner_Type                       AS               int,
           @Preferred_Bank_Account             AS               nvarchar(50),
           @No_of_Pstd_Receipts                AS               int,
           @No_of_Pstd_Invoices                AS               int,
           @No_of_Pstd_Return_Shipments        AS               int,
           @No_of_Pstd_Credit_Memos            AS               int,
           @No_of_Quotes                       AS               int,
           @No_of_Blanket_Orders               AS               int,
           @No_of_Orders                       AS               int,
           @No_of_Invoices                     AS               int,
           @No_of_Return_Orders                AS               int,
           @No_of_Credit_Memos                 AS               int,
           @Creation_date                      AS               datetime,
           @Created_by_user                    AS               nvarchar(50),
           @Last_modified_date                 AS               datetime,
           @Last_modified_by_the_user          AS               nvarchar(50)

AS
BEGIN

            UPDATE [Vendor]
            SET 
            [Name] = @Name
           ,[Name2] = @Name2     
           ,[Address] = @Address  
           ,[Phone] =@Phone
           ,[Block] =@Block
           ,[Balance] =@Balance
           ,[Purchases] =@Purchases  
           ,[Inv. Discounts] =@Inv_Discounts  
           ,[Balance Due] =@Balance_Due 
           ,[Payments] =@Payments   
           ,[Invoice Amounts] =@Invoice_Amounts 
           ,[Cr. Memo Amounts] =@Cr_Memo_Amounts 
           ,[Outstanding Orders] = @Outstanding_Orders  
           ,[Amt. Rcd. Not Invoiced] = @Amt_Rcd_Not_Invoiced    
           ,[Prices Including VAT] =@Prices_Including_VAT 
           ,[VAT Registration No.] =@VAT_Registration_No
           ,[Debit Amount] = @Debit_Amount
           ,[Credit Amount] =@Credit_Amount
           ,[Refunds] =@Refunds  
           ,[Other Amounts] =@Other_Amounts    
           ,[Prepayment %] =@Prepayment 
           ,[Outstanding Invoices] =@Outstanding_Invoices   
           ,[Partner Type] =@Partner_Type  
           ,[Preferred Bank Account] =@Preferred_Bank_Account 
           ,[No. of Pstd. Receipts] =@No_of_Pstd_Receipts 
           ,[No. of Pstd. Invoices] =@No_of_Pstd_Invoices 
           ,[No. of Pstd. Return Shipments] =@No_of_Pstd_Return_Shipments
           ,[No. of Pstd. Credit Memos] =@No_of_Pstd_Credit_Memos 
           ,[No. of Quotes] = @No_of_Quotes  
           ,[No. of Blanket Orders] =@No_of_Blanket_Orders
           ,[No. of Orders] =@No_of_Orders   
           ,[No. of Invoices] =@No_of_Invoices 
           ,[No. of Return Orders] =@No_of_Return_Orders
           ,[No. of Credit Memos] = @No_of_Credit_Memos
           ,[Creation date]              = @Creation_date 
           ,[Created by user]            = @Created_by_user 
           ,[Last modified date]         = @Last_modified_date  
           ,[Last modified by the user]  = @Last_modified_by_the_user
     WHERE	No = @No

END





GO
/****** Object:  StoredProcedure [dbo].[spValidateEmail]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC	[dbo].[spValidateEmail]
AS
BEGIN
    SELECT
      [E-Mail], 
      CASE WHEN [E-Mail] LIKE '%_@_%_.__%' 
                AND [E-Mail] NOT LIKE '%[any obviously invalid characters]%' 
      THEN 'Email Address is Correct'
      ELSE 'Invalid Email Address'
      END Validates
    FROM 
      Customer
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateConversion_Value]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[UpdateConversion_Value]

           @Base_Unit_Code             AS         nvarchar(50),
           @Comparasion_Unit_Code      AS         nvarchar(50),
           @Conversion_Factor          AS         decimal(18, 5)

AS
BEGIN


UPDATE [dbo].[Conversion Value]
SET
            [Comparasion Unit Code]  =   @Comparasion_Unit_Code
           ,[Conversion Factor]      =   @Conversion_Factor 

           WHERE   [Base Unit Code]  =   @Base_Unit_Code  

END




GO
/****** Object:  StoredProcedure [dbo].[uspGenerateSerialNumber]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[uspGenerateSerialNumber]
     @SequenceType uniqueidentifier 
    ,@SerialValue bigint output
    ,@SerialNumber nvarchar(100)  output
as

BEGIN  

DECLARE @TranName VARCHAR(20)
SELECT @TranName = 'GenerateSerialNumber'

BEGIN TRANSACTION @TranName


BEGIN TRY



IF  Not Exists(Select 1 From SerialSchemas tblSerialSchema
Where 
(tblSerialSchema.Sequence_Type_Id = @SequenceType)
)
Begin
    RAISERROR ('Serial Number Schema not exists!', 16, 1)
End


/*  Constants   */
Declare @SerialValueTag varchar(3) = '{#}'
Declare @YearTag varchar(4) = '{yy}'
Declare @Year2Tag varchar(6) = '{yyyy}'
Declare @MonthTag varchar(4) = '{mm}'
Declare @DayTag varchar(4) = '{dd}'
Declare @POS_code_IdTag varchar(4) = '{fy}'
Declare @Store_code_IdTag varchar(4) = '{co}'


/*  Variables   */
Declare @SchemaId uniqueidentifier 
Declare @IncrementValue int 
Declare @InitialValue int 
Declare @POS_code_Id uniqueidentifier
Declare @Store_code_Id nvarchar(15) 
Declare @LeadingZerosLength nvarchar(50) 
Declare @ExpiryDate datetime2
Declare @MaxValue bigint
Declare @IsCycle bit
Declare @LastSerial bigint


Select 
         @SchemaId = tblSerialSchema.Id
       , @IncrementValue = ISNULL(NULLIF(tblSerialSchema.Increment, 0), 1)
       , @InitialValue = ISNULL(tblSerialSchema.Initial_Value, 0)
       , @SerialNumber = ISNULL(tblSerialSchema.Serial_Mask, @SerialValueTag) 
       , @POS_code_Id = tblSerialSchema.POS_code_Id
       , @Store_code_Id = tblSerialSchema.Store_code_Id
       , @LeadingZerosLength = ISNULL(Leading_Zeros_Length, 0)
       , @ExpiryDate = Expiry_Date
       , @MaxValue = Max_Value
       , @LastSerial = Last_Serial
       , @IsCycle = ISNULL(Is_Cycle, 0)
From SerialSchemas tblSerialSchema
Where 
( tblSerialSchema.Sequence_Type_Id = @SequenceType )


IF (@ExpiryDate is NOT NULL)
    Begin
        IF (DATEDIFF(MINUTE, GETDATE(), @ExpiryDate) <= 0 )
            Begin
                RAISERROR ('Schema is expired!', 16, 1)
            End
    End

SELECT @SerialValue = ISNULL(MIN(Serial_Value), IsNull(@LastSerial, @InitialValue - @IncrementValue ) + @IncrementValue) FROM SerialNumbersShelf WHERE Is_Hold = 0 AND Sequence_Type_Id = @SequenceType

IF (@MaxValue is NOT NULL)
    Begin
        IF (@SerialValue > @MaxValue AND @IsCycle = 1)
            Begin
                SET @SerialValue = @InitialValue
            End
            ELSE
            Begin
                RAISERROR ('Max value exceeded', 16, 1)
            End
    End


IF Not Exists(SELECT 1 FROM SerialNumbersShelf WHERE Sequence_Type_Id = @SequenceType AND Serial_Value = @SerialValue)
BEGIN
    Insert into SerialNumbersShelf 
    (Sequence_Type_Id, Serial_Value, Is_Hold) 
    values 
    (@SequenceType, @SerialValue , 1)
END
ELSE
BEGIN
    UPDATE SerialNumbersShelf
    SET Is_Hold = 1
    WHERE 
    Sequence_Type_Id = @SequenceType AND Serial_Value = @SerialValue
END





If (LEN(@SerialValue) > @LeadingZerosLength)
 BEGIN
    Set @LeadingZerosLength = LEN(@SerialValue)
 END

/* Serial */
IF (PATINDEX('%'+@SerialValueTag+'%', @SerialNumber) > 0)
 Begin
    Set @SerialNumber = REPLACE(@SerialNumber,@SerialValueTag,RIGHT(REPLICATE('0', @LeadingZerosLength) + CONVERT(NVARCHAR,@SerialValue),@LeadingZerosLength))
 End
/* Year */
IF (PATINDEX('%'+@YearTag+'%', @SerialNumber) > 0)
    Begin
     Set @SerialNumber = REPLACE(@SerialNumber,@YearTag,RIGHT(YEAR(GetDate()), 2))
    End
IF (PATINDEX('%'+@Year2Tag+'%', @SerialNumber) > 0)
    Begin
        Set @SerialNumber = REPLACE(@SerialNumber,@Year2Tag,YEAR(GetDate()))
    End
/* Month */
IF (PATINDEX('%'+@MonthTag+'%', @SerialNumber) > 0)
    Begin
     Set @SerialNumber = REPLACE(@SerialNumber,@MonthTag,Month(GetDate()))
    End
/* Day */
IF (PATINDEX('%'+@DayTag+'%', @SerialNumber) > 0)
    Begin
     Set @SerialNumber = REPLACE(@SerialNumber,@DayTag,Day(GetDate()))
    END
/* Fiscal Year */
IF (PATINDEX('%'+@POS_code_IdTag+'%', @SerialNumber) > 0)
Begin
    Declare @FiscalYear nvarchar(10) = ''
    Select @FiscalYear =  Code  From FiscalYears where (@POS_code_Id IS NOT NULL AND Id = @POS_code_Id)
    Set @SerialNumber = REPLACE(@SerialNumber,@POS_code_IdTag, @FiscalYear)
End
/* Compamy */
IF (PATINDEX('%'+@Store_code_IdTag+'%', @SerialNumber) > 0)
Begin
    Declare @CompanyName nvarchar(10) = ''
    Select @CompanyName =  Code  From Companies where (@Store_code_Id IS NOT NULL AND Id = @Store_code_Id)
    Set @SerialNumber = REPLACE(@SerialNumber,@Store_code_IdTag, @CompanyName)
End


UPDATE SerialSchemas
   SET Last_Serial = @SerialValue
Where
Id = @SchemaId

Select @SerialNumber SerialNumber, @SerialValue SerialValue


END TRY
BEGIN CATCH

    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION @TranName

DECLARE @ErrorMessage NVARCHAR(4000);
SELECT @ErrorMessage = 'Cannot Generate Serial Number, ' + ERROR_MESSAGE()
RAISERROR (@ErrorMessage, 16, 1)

END CATCH


     IF @@TRANCOUNT > 0
         COMMIT TRANSACTION @TranName

END





GO
/****** Object:  Trigger [dbo].[replicate_Receipt_SalesLine]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[replicate_Receipt_SalesLine]
ON [dbo].[Sales Header] AFTER UPDATE
AS

BEGIN

   UPDATE [Sales Line] 
   SET [No Receipt]  =(SELECT TOP(1) [No Receipt] FROM INSERTED)
   where 
    [Document Type]  =(SELECT TOP(1) [Document Type] FROM INSERTED) AND
    [No Transaccion] =(SELECT TOP(1) [No Transaccion] FROM INSERTED) AND
    [Store No]	   =(SELECT TOP(1) [Store No] FROM INSERTED) AND
    [Terminal No]	   =(SELECT TOP(1) [Terminal No] FROM INSERTED); 

  UPDATE [Sales Payment methods] 
   SET [No Receipt]  =(SELECT TOP(1) [No Receipt] FROM INSERTED)
   where 
    [Document Type]  =(SELECT TOP(1) [Document Type] FROM INSERTED) AND
    [Transaction No] =(SELECT TOP(1) [No Transaccion] FROM INSERTED) AND
    [StoreCode]	   =(SELECT TOP(1) [Store No] FROM INSERTED) AND
    [Terminal No]	   =(SELECT TOP(1) [Terminal No] FROM INSERTED); 

END

GO
ALTER TABLE [dbo].[Sales Header] ENABLE TRIGGER [replicate_Receipt_SalesLine]
GO
/****** Object:  Trigger [dbo].[disable_Payment_Method]    Script Date: 15/9/2016 12:15:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[disable_Payment_Method]
ON [dbo].[Sales Payment methods] AFTER UPDATE
AS

BEGIN

--DECLARE INSERTED AS TABLE = INSERTED;

IF (SELECT TOP (1) [STATE] FROM INSERTED) = 0 AND (SELECT TOP (1) [Code Payment Metodth] FROM INSERTED ) = '07'
BEGIN 

DECLARE @TRANSACCION_NO AS NVARCHAR (MAX) = (SELECT [REFERENCE] FROM INSERTED);
UPDATE [SALES HEADER] SET [STATUS] = 4
 
WHERE [NO TRANSACCION] IN (SELECT RTRIM (LTRIM (DATA)) FROM [dbo].[Split](@TRANSACCION_NO , ',')) 
AND [Store No] = (SELECT [STORECODE] FROM INSERTED) 
AND [Terminal No] = (SELECT [Terminal No] FROM INSERTED);

END

END

GO
ALTER TABLE [dbo].[Sales Payment methods] ENABLE TRIGGER [disable_Payment_Method]
GO

GO

INSERT INTO [Code/Contry] ([Code],[Description]) 
VALUES ('01','')
GO

INSERT INTO [State]([Code],[Description]) 
VALUES('01','')
GO

INSERT INTO [City]([Code],[City],[Code State],[Code/Contry])
VALUES('01','01','01','01')
GO

INSERT INTO [Address]([Code],[Address 1],[Address 2],[Zip code],[City code],[State code],[Country Code]) 
VALUES ('01','','','','01','01','01')
     
GO


INSERT INTO [Store]([Code],[Sales Code],[Name],[Code Address],[Stament Method],[Max Diff to Allow],[image]) 
VALUES ('01','01','TIENDA PRINCIPAL','01',1,'01',NULL)

GO


[spCreateUser] 
@iFirstName = N'Admin',
@iSecondName = N'',
@iLastName = N'Administrator',
@iUserName = N'100',
@iPassword = N'1001',
@iNamePrefix = N' ',
@iNameSufix = N' ',
@iNeedChangePswd =  0,
@iExpireDate = N'9999-12-1'

GO

[spCreateUser] 
@iFirstName = N'User 1',
@iSecondName = N'',
@iLastName = N'User One',
@iUserName = N'101',
@iPassword = N'10011',
@iNamePrefix = N' ',
@iNameSufix = N' ',
@iNeedChangePswd =  0,
@iExpireDate = N'9999-12-1'

GO

[spCreateUser] 
@iFirstName = N'User 2',
@iSecondName = N'',
@iLastName = N'User Two',
@iUserName = N'102',
@iPassword = N'10012',
@iNamePrefix = N' ',
@iNameSufix = N' ',
@iNeedChangePswd =  0,
@iExpireDate = N'9999-12-1'

GO

INSERT INTO [Payment Methods Setup] ([Code],[Description],[Default Funtion],[Card Tender],[Currency Tender]) 
VALUES 
('01','EFECTIVO',1,1,1),
('02','TARJETA DE CREDITO',1,1,1),
('03','TARJETA DE DEBITO',1,1,1),
('04','CREDITO',1,1,1),
('05','GIFT CARDS',1,1,1),
('06','CHEQUES',1,1,1),
('07','NOTA DE CREDITO',1,1,1)

GO

INSERT INTO [Payment methods]([Store Code],[Code Payment Setup],[Default Funtion],[Description],[Card Tender],[Currency Tender],[OverPayment Allow],[OverPayment Max Amount],[UnderPayment Allow],[UnderPayment Max Amount],[Rounding Type],[Rounding To],[Remove/Float Type],[Remove/Float Description],[Counting Requeried],[Float Requeried],[Change Line Of Reception],[Change Payment Type])
VALUES
('01','01',1,'EFECTIVO'          ,1,1,1,1000,0,0    ,0,1,0,'0',1,0,'1',1),
('01','02',1,'TARJETA DE CREDITO',1,1,1,1000,0,2500 ,0,1,0,'0',1,0,'1',1),
('01','03',1,'TARJETA DE DEBITO' ,1,1,1,1000,0,1000 ,0,1,0,'0',1,0,'1',1),
('01','04',1,'CREDITO'           ,1,1,1,1000,0,0    ,0,1,0,'0',1,0,'1',1),
('01','05',1,'GIFT CARDS'        ,1,1,1,1000,0,0    ,0,1,0,'0',1,0,'1',1),
('01','06',1,'CHEQUES'           ,1,1,1,1000,0,10000,0,1,0,'0',1,0,'1',1),
('01','07',1,'NOTA DE CREDITO'   ,1,1,1,1000,0,10000,0,1,0,'0',1,0,'1',1)
GO 

INSERT INTO [SequenceTypes] ([Id],[Name]) 
VALUES

(N'9037e889-63aa-4055-96d3-44c4eae48286', N'Credit Memo Gr'),
(N'd38889ef-f6c9-4e5a-bc6e-5a5dd6c38a66', N'Payments'),
(N'8838c6a5-3132-4f8f-b07e-82ea76fba4b6', N'Item Journals'),
(N'39106af5-391b-4721-ae8f-8388809762f5', N'Customer Invoice 2014'),
(N'e7d2be77-fef8-432e-9386-976d79f5db5f', N'Sales Prices'),
(N'fdd59ac6-3014-4a1b-8b43-a310c1a8fe6b', N'Customer Invoice 2015'),
(N'fdd59ac5-5015-5a5b-5b45-a510c1a8fe5b', N'Reservation Journals'),
(N'bb333dd3-3333-3333-3333-dc3ec33333c3', N'Quotes'),
(N'bb777dd7-7777-7777-7777-dc7ec77777c7', N'Statement GR'),
(N'bb899dd2-1072-4364-9414-dc8ec22233c3', N'Invoice'),
(N'bb899dd2-1072-4364-9414-dc8ec22233c4', N'Customer Gr'),
(N'bb899dd2-1072-4364-9414-dc8ec22233c5', N'Invoice Gr'),
(N'65788455-5fae-4e06-a1eb-de046935de57', N'Employees'),
(N'65788455-5fae-4e06-a1eb-de046935de58', N'Transaccion Especial Documents')

GO

INSERT [dbo].[Numbering Setup] (
                               [id], 
					 [Customer_Nos], 
					 [Quote_Nos], 
					 [Order_Nos], 
					 [Return_Order_Nos], 
					 [Number_Control_Nos], 
					 [Invoice_Nos], 
					 [Credit_Memo_Nos], 
					 [Debit_Nos], 
					 [Employees_Nos], 
					 [InfoPrinter_Nos], 
					 [ItemJournalNos], 
					 [ReservationJournalNos], 
					 [Statement]) 
VALUES (N'01', N'bb899dd2-1072-4364-9414-dc8ec22233c4', N'bb333dd3-3333-3333-3333-dc3ec33333c3', N'bb899dd2-1072-4364-9414-dc8ec22233c4', N'bb899dd2-1072-4364-9414-dc8ec22233c4', N'bb899dd2-1072-4364-9414-dc8ec22233c4', N'bb899dd2-1072-4364-9414-dc8ec22233c5', N'9037e889-63aa-4055-96d3-44c4eae48286', N'bb899dd2-1072-4364-9414-dc8ec22233c5', N'65788455-5fae-4e06-a1eb-de046935de57', N'65788455-5fae-4e06-a1eb-de046935de58', N'8838c6a5-3132-4f8f-b07e-82ea76fba4b6', N'fdd59ac5-5015-5a5b-5b45-a510c1a8fe5b', N'bb777dd7-7777-7777-7777-dc7ec77777c7')
GO

INSERT INTO [FiscalYears] ([Id],[Code],[Name])
     VALUES
    ('70208FA1-0846-4D93-84DF-407C7FF8CB0C','2013','2013'),
    ('918D1C58-C48C-45F5-99AA-7D59C845D813','2012','2012'),
    ('D383C981-81C1-4B49-9118-A1D5313EB77A','2014','2014'),
    ('AC6E8D86-6D5F-45F6-A50B-E3E9EEDDE7B5','2015','2015')

GO

INSERT INTO [Point Of Sale]
           ([Code]
           ,[Store No]
           ,[Description]
           ,[Exit After Each Trans]
           ,[Auto Logoff]
           ,[Stament Method Type]
           ,[No Series Receipt No]
           ,[No Series Return No]
           ,[No Series Transaction No]
           ,[Code Funtional Profile]
           ,[Code Printer Fiscal])
     VALUES
        ('D383C981-81C1-4B49-9118-A1D5313EB77A','01','CAJA1',	0,	'2015-09-08 00:00:00.000',	0,	'1',	'1',	'1',	NULL,	NULL),
        ('AC6E8D86-6D5F-45F6-A50B-E3E9EEDDE7B5','01','CAJA1',	0,	'2015-09-08 00:00:00.000',	0,	'1',	'1',	'1',	NULL,	NULL)
GO

INSERT INTO [SerialSchemas]
           ([Id]
           ,[Store_code_Id]
           ,[POS_code_Id]
           ,[Sequence_Type_Id]
           ,[Initial_Value]
           ,[Increment]
           ,[Serial_Mask]
           ,[Leading_Zeros_Length]
           ,[Expiry_Date]
           ,[Max_Value]
           ,[Is_Cycle]
           ,[Last_Serial])
     VALUES
         (N'f446027b-45b8-42a2-baa7-76bd6ac29e0e', N'01', N'd383c981-81c1-4b49-9118-a1d5313eb77a', N'd38889ef-f6c9-4e5a-bc6e-5a5dd6c38a66', 200   , NULL, N'P{#}- desc'    , 5   , NULL              , NULL, 1, 0),
         (N'1b6a7d8d-577d-41f3-a092-96e45ce4026b', N'01', N'd383c981-81c1-4b49-9118-a1d5313eb77a', N'8838c6a5-3132-4f8f-b07e-82ea76fba4b6', 1     , 1   , N'{#}'           , NULL, NULL              , NULL, 1, 0),
         (N'fdd59ac5-5015-5a5b-5b45-a510c1a8fe5b', N'01', N'fdd59ac5-5015-5a5b-5b45-a510c1a8fe5b', N'fdd59ac5-5015-5a5b-5b45-a510c1a8fe5b', 1     , 1   , N'{#}'           , NULL, NULL              , NULL, 1, 0),
         (N'97d588b3-0ba5-4134-b91b-c1951e3100bb', N'02', N'ac6e8d86-6d5f-45f6-a50b-e3e9eedde7b5', N'fdd59ac6-3014-4a1b-8b43-a310c1a8fe6b', 500   , 1   , N'{#}'           , 5   , '2021-01-01 00:00', NULL, 1, 0),
         (N'4b985891-9957-421d-84b3-cb04bcfa6e02', N'02', N'd383c981-81c1-4b49-9118-a1d5313eb77a', N'39106af5-391b-4721-ae8f-8388809762f5', 1000  , 10  , N'INV-{co}-{#}'  , 4   , '2021-01-01 00:00', NULL, 1, 0),
         (N'4b985891-9957-421d-84b3-cb04bcfa6e09', N'01', N'd383c981-81c1-4b49-9118-a1d5313eb77a', N'bb899dd2-1072-4364-9414-dc8ec22233c4', 1     , 1   , N'C-{#}'         , 8   , '2021-01-01 00:00', NULL, 1, 0),
         (N'4b985891-9957-421d-84b3-cb04bcfa6e55', N'01', N'ac6e8d86-6d5f-45f6-a50b-e3e9eedde7b5', N'65788455-5fae-4e06-a1eb-de046935de57', 1     , 1   , N'E-{#}'         , 8   , '2021-01-01 00:00', NULL, 1, 0),
         (N'4b985891-9957-421d-84b3-cb14bcfa6e55', N'01', N'ac6e8d86-6d5f-45f6-a50b-e3e9eedde7b5', N'bb899dd2-1072-4364-9414-dc8ec22233c5', 10001 , 1   , N'Inv-{#}'       , 8   , NULL              , NULL, 1, 0),
         (N'4b985891-9957-421d-84b3-cb14bcfa6e75', N'01', N'ac6e8d86-6d5f-45f6-a50b-e3e9eedde7b5', N'65788455-5fae-4e06-a1eb-de046935de58', 1     , 1   , N'REF-{#}'       , 4   , NULL              , NULL, 1, 0),
         (N'4b985891-9957-421d-84b3-cb14bcfa6e77', N'01', N'ac6e8d86-6d5f-45f6-a50b-e3e9eedde7b5', N'9037e889-63aa-4055-96d3-44c4eae48286', 10001 , 1   , N'NC-{#}'        , 8   , NULL              , NULL, 1, 0),
         (N'4b985891-9957-421d-84b3-cb14bcfa6e78', N'01', N'ac6e8d86-6d5f-45f6-a50b-e3e9eedde7b5', N'bb777dd7-7777-7777-7777-dc7ec77777c7', 10001 , 1   , N'ST-{#}'        , 8   , NULL              , NULL, 1, 0),
         (N'bb333dd3-3333-3333-3333-dc3ec33333c3', N'01', N'ac6e8d86-6d5f-45f6-a50b-e3e9eedde7b5', N'bb333dd3-3333-3333-3333-dc3ec33333c3', 10001 , 1   , N'Cot-{#}'       , 8   , NULL              , NULL, 1, 0)
         

GO

INSERT INTO [VAT Prod. Posting Group]([Code],[Description]) VALUES ('01','Grupo de IVA Producto'),('IVA','IVA12%')

GO

INSERT INTO [Customer Price Group]
           ([Code]
           ,[Price Includes VAT]
           ,[VAT Bus. Posting Gr. (Price)]
           ,[Description])
     VALUES
     ('01',1,'01','PRUEBA')

GO

INSERT INTO [VAT Posting Setup]
           ([VAT Bus. Posting Group]
           ,[VAT Prod. Posting Group]
           ,[VAT Calculation Type]
           ,[VAT %]
           ,[Unrealized VAT Type]
           ,[VAT Identifier])
     VALUES
           ('01','01',0,12.00000,'0','iva12') 

GO

INSERT INTO [VAT Business Posting Group]
           ([Code]
           ,[Description]
           ,[Default Operation Sales Type]
           ,[Default Operation Purchas Type]
           ,[Check Vat Exemtion]
           ,[Serie Sales])
     VALUES
           ('01','Grupo de IVA Prueba','Ventas','Compras',0,'0') 

GO



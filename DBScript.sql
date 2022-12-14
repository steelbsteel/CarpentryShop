USE [master]
GO
/****** Object:  Database [CarpentryShop]    Script Date: 05.12.2022 17:55:30 ******/
CREATE DATABASE [CarpentryShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarpentryShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.OBSSQL\MSSQL\DATA\CarpentryShop.mdf' , SIZE = 38208KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'CarpentryShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.OBSSQL\MSSQL\DATA\CarpentryShop_log.ldf' , SIZE = 6912KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CarpentryShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarpentryShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarpentryShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarpentryShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarpentryShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarpentryShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarpentryShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarpentryShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarpentryShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarpentryShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarpentryShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarpentryShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarpentryShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarpentryShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarpentryShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarpentryShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarpentryShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CarpentryShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarpentryShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarpentryShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarpentryShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarpentryShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarpentryShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarpentryShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarpentryShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CarpentryShop] SET  MULTI_USER 
GO
ALTER DATABASE [CarpentryShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarpentryShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarpentryShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarpentryShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CarpentryShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarpentryShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CarpentryShop] SET QUERY_STORE = OFF
GO
USE [CarpentryShop]
GO
/****** Object:  Table [dbo].[Carpenter]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carpenter](
	[idCarpenter] [int] IDENTITY(1,1) NOT NULL,
	[NameCarpenter] [varchar](50) NOT NULL,
	[SurnameCarpenter] [varchar](50) NOT NULL,
	[ImageCarpenter] [image] NULL,
	[StaminaCarpenter] [int] NOT NULL,
	[BalanceCarpenter] [int] NOT NULL,
 CONSTRAINT [PK_Carpenter] PRIMARY KEY CLUSTERED 
(
	[idCarpenter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentReceipts]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentReceipts](
	[idCompontentReceipt] [int] IDENTITY(1,1) NOT NULL,
	[idWoodDetail] [int] NULL,
	[idTool] [int] NULL,
	[idMachine] [int] NULL,
	[idMetalDetail] [int] NULL,
 CONSTRAINT [PK_ComponentReceipts] PRIMARY KEY CLUSTERED 
(
	[idCompontentReceipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Components]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Components](
	[idComponent] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[idComponentReceipt] [int] NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_Components] PRIMARY KEY CLUSTERED 
(
	[idComponent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailReceipts]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailReceipts](
	[idDetailReceipt] [int] IDENTITY(1,1) NOT NULL,
	[idMaterial] [int] NULL,
	[idTool] [int] NULL,
	[idMachine] [int] NULL,
 CONSTRAINT [PK_DetailReceipts] PRIMARY KEY CLUSTERED 
(
	[idDetailReceipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryCarpenter]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryCarpenter](
	[idInventory] [int] IDENTITY(1,1) NOT NULL,
	[idCarpenter] [int] NOT NULL,
 CONSTRAINT [PK_InventoryCarpenter] PRIMARY KEY CLUSTERED 
(
	[idInventory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryMaterials]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryMaterials](
	[idInventoryMaterial] [int] IDENTITY(1,1) NOT NULL,
	[idMaterial] [int] NOT NULL,
	[idInventory] [int] NOT NULL,
 CONSTRAINT [PK_InventoryMaterials] PRIMARY KEY CLUSTERED 
(
	[idInventoryMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryMetalDetails]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryMetalDetails](
	[idInventoryMetalDetail] [int] IDENTITY(1,1) NOT NULL,
	[idMetalDetail] [int] NOT NULL,
	[idInventory] [int] NOT NULL,
 CONSTRAINT [PK_InventoryDetails] PRIMARY KEY CLUSTERED 
(
	[idInventoryMetalDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTools]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTools](
	[idInventoryTool] [int] IDENTITY(1,1) NOT NULL,
	[idTool] [int] NOT NULL,
	[idInventory] [int] NOT NULL,
 CONSTRAINT [PK_InventoryTools] PRIMARY KEY CLUSTERED 
(
	[idInventoryTool] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryWoodDetails]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryWoodDetails](
	[idInventoryWoodDetail] [int] IDENTITY(1,1) NOT NULL,
	[idWoodDetail] [int] NOT NULL,
	[idInventory] [int] NOT NULL,
 CONSTRAINT [PK_InventoryWoodDetails] PRIMARY KEY CLUSTERED 
(
	[idInventoryWoodDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Machines]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machines](
	[idMachine] [int] IDENTITY(1,1) NOT NULL,
	[NameMachine] [varchar](50) NOT NULL,
	[ImageMachine] [image] NULL,
 CONSTRAINT [PK_Machines] PRIMARY KEY CLUSTERED 
(
	[idMachine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[idMaterial] [int] IDENTITY(1,1) NOT NULL,
	[idTypeMaterial] [int] NOT NULL,
	[ImageMaterial] [image] NULL,
	[NameMaterial] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[idMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetalDetails]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetalDetails](
	[idMetalDetail] [int] IDENTITY(1,1) NOT NULL,
	[NameMetalDetail] [varchar](50) NOT NULL,
	[ImageMetalDetail] [image] NULL,
	[idDetailReceipt] [int] NULL,
 CONSTRAINT [PK_Details] PRIMARY KEY CLUSTERED 
(
	[idMetalDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReceiptDetails]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReceiptDetails](
	[idProductReceiptDetail] [int] IDENTITY(1,1) NOT NULL,
	[idWoodDetail] [int] NULL,
	[idMetalDetail] [int] NULL,
	[idProductReceipt] [int] NOT NULL,
 CONSTRAINT [PK_ProductReceiptDetails] PRIMARY KEY CLUSTERED 
(
	[idProductReceiptDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReceipts]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReceipts](
	[idProductReceipt] [int] IDENTITY(1,1) NOT NULL,
	[idTool] [int] NULL,
	[idMachine] [int] NULL,
 CONSTRAINT [PK_ProductReceipts] PRIMARY KEY CLUSTERED 
(
	[idProductReceipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReceiptsComponents]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReceiptsComponents](
	[idProductReceiptComponents] [int] IDENTITY(1,1) NOT NULL,
	[idComponent] [int] NULL,
	[idProductReceipt] [int] NOT NULL,
 CONSTRAINT [PK_ProductReceiptsComponents] PRIMARY KEY CLUSTERED 
(
	[idProductReceiptComponents] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[idProduct] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [varchar](50) NOT NULL,
	[ImageProduct] [image] NULL,
	[idProductReceipt] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools](
	[idTool] [int] IDENTITY(1,1) NOT NULL,
	[NameTool] [varchar](50) NOT NULL,
	[ImageTool] [image] NULL,
 CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED 
(
	[idTool] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMaterials]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMaterials](
	[idTypeMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TypeMaterials] PRIMARY KEY CLUSTERED 
(
	[idTypeMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WoodDetails]    Script Date: 05.12.2022 17:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WoodDetails](
	[idWoodDetail] [int] IDENTITY(1,1) NOT NULL,
	[NameWoodDetail] [varchar](50) NOT NULL,
	[ImageWoodDetail] [image] NULL,
	[idDetailReceipt] [int] NULL,
 CONSTRAINT [PK_WoodDetails] PRIMARY KEY CLUSTERED 
(
	[idWoodDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ComponentReceipts]  WITH CHECK ADD  CONSTRAINT [FK_ComponentReceipts_MetalDetails] FOREIGN KEY([idMetalDetail])
REFERENCES [dbo].[MetalDetails] ([idMetalDetail])
GO
ALTER TABLE [dbo].[ComponentReceipts] CHECK CONSTRAINT [FK_ComponentReceipts_MetalDetails]
GO
ALTER TABLE [dbo].[ComponentReceipts]  WITH CHECK ADD  CONSTRAINT [FK_ComponentReceipts_WoodDetails] FOREIGN KEY([idWoodDetail])
REFERENCES [dbo].[WoodDetails] ([idWoodDetail])
GO
ALTER TABLE [dbo].[ComponentReceipts] CHECK CONSTRAINT [FK_ComponentReceipts_WoodDetails]
GO
ALTER TABLE [dbo].[Components]  WITH CHECK ADD  CONSTRAINT [FK_Components_ComponentReceipts] FOREIGN KEY([idComponentReceipt])
REFERENCES [dbo].[ComponentReceipts] ([idCompontentReceipt])
GO
ALTER TABLE [dbo].[Components] CHECK CONSTRAINT [FK_Components_ComponentReceipts]
GO
ALTER TABLE [dbo].[DetailReceipts]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceipts_Machines] FOREIGN KEY([idMachine])
REFERENCES [dbo].[Machines] ([idMachine])
GO
ALTER TABLE [dbo].[DetailReceipts] CHECK CONSTRAINT [FK_DetailReceipts_Machines]
GO
ALTER TABLE [dbo].[DetailReceipts]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceipts_Materials] FOREIGN KEY([idMaterial])
REFERENCES [dbo].[Materials] ([idMaterial])
GO
ALTER TABLE [dbo].[DetailReceipts] CHECK CONSTRAINT [FK_DetailReceipts_Materials]
GO
ALTER TABLE [dbo].[DetailReceipts]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceipts_Tools] FOREIGN KEY([idTool])
REFERENCES [dbo].[Tools] ([idTool])
GO
ALTER TABLE [dbo].[DetailReceipts] CHECK CONSTRAINT [FK_DetailReceipts_Tools]
GO
ALTER TABLE [dbo].[InventoryCarpenter]  WITH CHECK ADD  CONSTRAINT [FK_InventoryCarpenter_Carpenter] FOREIGN KEY([idCarpenter])
REFERENCES [dbo].[Carpenter] ([idCarpenter])
GO
ALTER TABLE [dbo].[InventoryCarpenter] CHECK CONSTRAINT [FK_InventoryCarpenter_Carpenter]
GO
ALTER TABLE [dbo].[InventoryMaterials]  WITH CHECK ADD  CONSTRAINT [FK_InventoryMaterials_InventoryCarpenter] FOREIGN KEY([idInventory])
REFERENCES [dbo].[InventoryCarpenter] ([idInventory])
GO
ALTER TABLE [dbo].[InventoryMaterials] CHECK CONSTRAINT [FK_InventoryMaterials_InventoryCarpenter]
GO
ALTER TABLE [dbo].[InventoryMaterials]  WITH CHECK ADD  CONSTRAINT [FK_InventoryMaterials_Materials] FOREIGN KEY([idMaterial])
REFERENCES [dbo].[Materials] ([idMaterial])
GO
ALTER TABLE [dbo].[InventoryMaterials] CHECK CONSTRAINT [FK_InventoryMaterials_Materials]
GO
ALTER TABLE [dbo].[InventoryMetalDetails]  WITH CHECK ADD  CONSTRAINT [FK_InventoryDetails_Details] FOREIGN KEY([idMetalDetail])
REFERENCES [dbo].[MetalDetails] ([idMetalDetail])
GO
ALTER TABLE [dbo].[InventoryMetalDetails] CHECK CONSTRAINT [FK_InventoryDetails_Details]
GO
ALTER TABLE [dbo].[InventoryMetalDetails]  WITH CHECK ADD  CONSTRAINT [FK_InventoryMetalDetails_InventoryCarpenter] FOREIGN KEY([idInventory])
REFERENCES [dbo].[InventoryCarpenter] ([idInventory])
GO
ALTER TABLE [dbo].[InventoryMetalDetails] CHECK CONSTRAINT [FK_InventoryMetalDetails_InventoryCarpenter]
GO
ALTER TABLE [dbo].[InventoryTools]  WITH CHECK ADD  CONSTRAINT [FK_InventoryTools_InventoryCarpenter] FOREIGN KEY([idInventory])
REFERENCES [dbo].[InventoryCarpenter] ([idInventory])
GO
ALTER TABLE [dbo].[InventoryTools] CHECK CONSTRAINT [FK_InventoryTools_InventoryCarpenter]
GO
ALTER TABLE [dbo].[InventoryTools]  WITH CHECK ADD  CONSTRAINT [FK_InventoryTools_Tools] FOREIGN KEY([idTool])
REFERENCES [dbo].[Tools] ([idTool])
GO
ALTER TABLE [dbo].[InventoryTools] CHECK CONSTRAINT [FK_InventoryTools_Tools]
GO
ALTER TABLE [dbo].[InventoryWoodDetails]  WITH CHECK ADD  CONSTRAINT [FK_InventoryWoodDetails_InventoryCarpenter] FOREIGN KEY([idInventory])
REFERENCES [dbo].[InventoryCarpenter] ([idInventory])
GO
ALTER TABLE [dbo].[InventoryWoodDetails] CHECK CONSTRAINT [FK_InventoryWoodDetails_InventoryCarpenter]
GO
ALTER TABLE [dbo].[InventoryWoodDetails]  WITH CHECK ADD  CONSTRAINT [FK_InventoryWoodDetails_WoodDetails] FOREIGN KEY([idWoodDetail])
REFERENCES [dbo].[WoodDetails] ([idWoodDetail])
GO
ALTER TABLE [dbo].[InventoryWoodDetails] CHECK CONSTRAINT [FK_InventoryWoodDetails_WoodDetails]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_TypeMaterials] FOREIGN KEY([idTypeMaterial])
REFERENCES [dbo].[TypeMaterials] ([idTypeMaterial])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_TypeMaterials]
GO
ALTER TABLE [dbo].[MetalDetails]  WITH CHECK ADD  CONSTRAINT [FK_Details_DetailReceipts] FOREIGN KEY([idDetailReceipt])
REFERENCES [dbo].[DetailReceipts] ([idDetailReceipt])
GO
ALTER TABLE [dbo].[MetalDetails] CHECK CONSTRAINT [FK_Details_DetailReceipts]
GO
ALTER TABLE [dbo].[ProductReceiptDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductReceiptDetails_MetalDetails] FOREIGN KEY([idMetalDetail])
REFERENCES [dbo].[MetalDetails] ([idMetalDetail])
GO
ALTER TABLE [dbo].[ProductReceiptDetails] CHECK CONSTRAINT [FK_ProductReceiptDetails_MetalDetails]
GO
ALTER TABLE [dbo].[ProductReceiptDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductReceiptDetails_ProductReceipts] FOREIGN KEY([idProductReceipt])
REFERENCES [dbo].[ProductReceipts] ([idProductReceipt])
GO
ALTER TABLE [dbo].[ProductReceiptDetails] CHECK CONSTRAINT [FK_ProductReceiptDetails_ProductReceipts]
GO
ALTER TABLE [dbo].[ProductReceiptDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductReceiptDetails_WoodDetails] FOREIGN KEY([idWoodDetail])
REFERENCES [dbo].[WoodDetails] ([idWoodDetail])
GO
ALTER TABLE [dbo].[ProductReceiptDetails] CHECK CONSTRAINT [FK_ProductReceiptDetails_WoodDetails]
GO
ALTER TABLE [dbo].[ProductReceipts]  WITH CHECK ADD  CONSTRAINT [FK_ProductReceipts_Machines] FOREIGN KEY([idMachine])
REFERENCES [dbo].[Machines] ([idMachine])
GO
ALTER TABLE [dbo].[ProductReceipts] CHECK CONSTRAINT [FK_ProductReceipts_Machines]
GO
ALTER TABLE [dbo].[ProductReceipts]  WITH CHECK ADD  CONSTRAINT [FK_ProductReceipts_Tools] FOREIGN KEY([idTool])
REFERENCES [dbo].[Tools] ([idTool])
GO
ALTER TABLE [dbo].[ProductReceipts] CHECK CONSTRAINT [FK_ProductReceipts_Tools]
GO
ALTER TABLE [dbo].[ProductReceiptsComponents]  WITH CHECK ADD  CONSTRAINT [FK_ProductReceiptsComponents_Components] FOREIGN KEY([idComponent])
REFERENCES [dbo].[Components] ([idComponent])
GO
ALTER TABLE [dbo].[ProductReceiptsComponents] CHECK CONSTRAINT [FK_ProductReceiptsComponents_Components]
GO
ALTER TABLE [dbo].[ProductReceiptsComponents]  WITH CHECK ADD  CONSTRAINT [FK_ProductReceiptsComponents_ProductReceipts] FOREIGN KEY([idProductReceipt])
REFERENCES [dbo].[ProductReceipts] ([idProductReceipt])
GO
ALTER TABLE [dbo].[ProductReceiptsComponents] CHECK CONSTRAINT [FK_ProductReceiptsComponents_ProductReceipts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductReceipts] FOREIGN KEY([idProductReceipt])
REFERENCES [dbo].[ProductReceipts] ([idProductReceipt])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductReceipts]
GO
ALTER TABLE [dbo].[WoodDetails]  WITH CHECK ADD  CONSTRAINT [FK_WoodDetails_DetailReceipts] FOREIGN KEY([idDetailReceipt])
REFERENCES [dbo].[DetailReceipts] ([idDetailReceipt])
GO
ALTER TABLE [dbo].[WoodDetails] CHECK CONSTRAINT [FK_WoodDetails_DetailReceipts]
GO
USE [master]
GO
ALTER DATABASE [CarpentryShop] SET  READ_WRITE 
GO

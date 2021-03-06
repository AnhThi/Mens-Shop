USE [master]
GO
/****** Object:  Database [Mens]    Script Date: 09/03/2015 08:06:09 ******/
CREATE DATABASE [Mens] ON  PRIMARY 
( NAME = N'G-Sale', FILENAME = N'D:\Studying\SQL\Mens\Mens.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 2048KB )
 LOG ON 
( NAME = N'G-Sale_Log', FILENAME = N'D:\Studying\SQL\Mens\Mens_log.ldf' , SIZE = 3072KB , MAXSIZE = 2048GB , FILEGROWTH = 2048KB )
GO
ALTER DATABASE [Mens] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mens].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mens] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Mens] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Mens] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Mens] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Mens] SET ARITHABORT OFF
GO
ALTER DATABASE [Mens] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Mens] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Mens] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Mens] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Mens] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Mens] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Mens] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Mens] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Mens] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Mens] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Mens] SET  ENABLE_BROKER
GO
ALTER DATABASE [Mens] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Mens] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Mens] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Mens] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Mens] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Mens] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Mens] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Mens] SET  READ_WRITE
GO
ALTER DATABASE [Mens] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Mens] SET  MULTI_USER
GO
ALTER DATABASE [Mens] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Mens] SET DB_CHAINING OFF
GO
USE [Mens]
GO
/****** Object:  Table [dbo].[BAIVIET]    Script Date: 09/03/2015 08:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BAIVIET](
	[mabv] [varchar](20) NOT NULL,
	[ngayviet] [datetime] NULL,
	[anhbaiviet] [nvarchar](100) NULL,
	[tieude] [ntext] NULL,
	[noidung] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[mabv] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BAIVIET] ([mabv], [ngayviet], [anhbaiviet], [tieude], [noidung]) VALUES (N'20150410003944', CAST(0x0000A476000AEAA0 AS DateTime), N'20150410003944.jpg', N'Phong Cách No Style Mùa Xuân', N'<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">C&aacute;c bạn nam thường bị b&oacute; hẹp trong phong c&aacute;ch v&agrave; m&agrave;u sắc khi lựa chọn trang phục, m&agrave; kh&ocirc;ng biết việc vận dụng m&agrave;u sắc c&ugrave;ng với c&aacute;c chi tiết nhỏ tr&ecirc;n &aacute;o, quần cũng khiến bạn trở n&ecirc;n tinh tế, nổi bật, đ&aacute;nh tan sự nh&agrave;m ch&aacute;n, mang đến n&eacute;t c&aacute; t&iacute;nh nhưng kh&ocirc;ng k&eacute;m phần trang trọng.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">M&ugrave;a xu&acirc;n năm nay, YaMe đ&atilde; cho ra mắt th&ecirc;m nhiều thiết kế mới trong d&ograve;ng h&agrave;ng No Style với những ứng dụng cung bậc m&agrave;u sắc v&agrave; h&igrave;nh ảnh tươi trẻ tạo n&ecirc;n n&eacute;t c&aacute; t&iacute;nh m&agrave; kh&ocirc;ng k&eacute;m phần duy&ecirc;n d&aacute;ng cho c&aacute;c bạn trẻ.</span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">C&ugrave;ng YaMe lướt qua c&aacute;c mẫu thiết kế No Style mới v&agrave; chọn lựa cho m&igrave;nh những sản phẩm ưng &yacute; nhất để đ&oacute;n xu&acirc;n nh&eacute;.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><strong>1. &Aacute;o thun</strong>&nbsp;trơn m&agrave;u lu&ocirc;n lu&ocirc;n chiếm ưu thế trong việc kết hợp trang phục v&agrave; gi&agrave;y. Với chi tiết t&uacute;i mổ tr&ecirc;n ngực tr&aacute;i, phối m&agrave;u miệng t&uacute;i nổi bật l&agrave;m cho tổng thể chiếc &aacute;o trở n&ecirc;n kh&aacute;c biệt.</span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">&Aacute;o thun No Style (9926) 150k</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/9926_150_2_.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="color:rgb(0, 0, 128); font-family:roboto; font-size:medium">Những gam m&agrave;u đậm, mạnh mang lại n&eacute;t c&aacute; t&iacute;nh m&agrave; bạn kh&ocirc;ng ngờ tới.</span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/9926_150.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="color:rgb(0, 0, 128); font-family:roboto; font-size:medium">Những gam m&agrave;u pastel, nhạt v&agrave; ngọt d&agrave;nh cho c&aacute;c bạn th&iacute;ch phong c&aacute;ch nhẹ nh&agrave;ng</span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">&nbsp;Hay với thiết kế cổ tim v&agrave; nền chất liệu vải g&acirc;n cotton tho&aacute;ng m&aacute;t, mẫu &aacute;o thun 0131 với gi&aacute; nhỉnh hơn một ch&uacute;t 165k</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/0131_165.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="color:rgb(0, 0, 128); font-family:roboto; font-size:medium">Kết hợp &aacute;o thun trơn ngắn tay với quần jeans d&agrave;i vẫn c&oacute; một set đồ rất lịch sự</span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><strong>2. Sơ mi:</strong>&nbsp;những mẫu sơ mi No Style của YaMe cũng ph&aacute; c&aacute;ch với m&agrave;u sắc</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/_MG_0640-Edit_Fotor_Collage.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="color:rgb(0, 0, 128); font-family:roboto; font-size:medium">C&oacute; thể l&agrave; sự kh&aacute;c m&agrave;u n&uacute;t v&agrave; th&acirc;n &aacute;o</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/8_copy_Fotor_Collage.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="color:rgb(0, 0, 128); font-family:roboto; font-size:medium">Đặc biệt hơn nữa, mặt trong v&agrave; ngo&agrave;i &aacute;o, c&oacute; hai m&agrave;u đậm nhạt kh&aacute;c nhau, nếu bạn xoăn lai tay &aacute;o sẽ c&agrave;ng th&ecirc;m nổi bật.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/0105_165.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="color:rgb(0, 0, 128); font-family:roboto; font-size:medium">Hay mẫu sơ mi ngắn tay c&oacute; phần l&oacute;t cổ kh&aacute;c m&agrave;u.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/9194_9646_9585_9864.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">3. V&agrave; một&nbsp;chiếc<strong>&nbsp;quần jean</strong>&nbsp;đen hoặc xanh đen rất đ&aacute;ng để đầu tư.&nbsp;V&igrave; c&oacute; thể kết hợp với bất k&igrave; mẫu &aacute;o n&agrave;o: sơ mi tay d&agrave;i, sơ mi tay ngắn, &aacute;o thun c&oacute; cổ, &aacute;o thun kh&ocirc;ng cổ,...</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><strong><span style="font-family:roboto; font-size:medium">4. &Aacute;o kho&aacute;c:</span></strong></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/9932_255.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="color:rgb(0, 0, 128); font-family:roboto; font-size:medium">Mẫu &aacute;o kho&aacute;c No Syle mới nhất với họa tiết nhịp tim đập tr&ecirc;n ngực &aacute;o</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/Nostyle/6.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="color:rgb(0, 0, 128); font-family:roboto; font-size:medium">&nbsp;&Aacute;o kho&aacute;c cardigan nhẹ cho những ng&agrave;y se lạnh</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">N&eacute;t tinh tế v&agrave; chất lượng l&agrave; hai yếu tố được đặt l&ecirc;n h&agrave;ng đầu của d&ograve;ng sản phẩm No Style, để mọi người kh&ocirc;ng cảm thấy nh&agrave;m ch&aacute;n khi mặc tung tăng khắp phố phường, kh&ocirc;ng lo lắng khi tham gia v&agrave;o c&aacute;c hoạt động thể thao, vận động c&ugrave;ng bạn b&egrave;.&nbsp;</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">Với thiết kế&nbsp;<strong>tối giản, tinh tế v&agrave; nhiều m&agrave;u sắc</strong>, NO STYLE c&oacute; thể ph&ugrave; hợp với tất cả mọi người, mọi sở th&iacute;ch, mọi lứa tuổi nhưng vẫn giữ được cho từng bạn một phong c&aacute;ch thời trang ri&ecirc;ng đầy c&aacute; t&iacute;nh. Điều quan trọng hơn hết l&agrave;, bạn chắc chắn sẽ kh&ocirc;ng qu&aacute; lạc l&otilde;ng trong những buổi tụ tập vui chơi c&ugrave;ng bạn b&egrave;, v&igrave; biết đ&acirc;u, ng&agrave;y h&ocirc;m đ&oacute;, người bạn th&acirc;n của bạn, cũng đang mặc một chiếc &aacute;o NO STYLE giống bạn. Mọi người sẽ thật vui, thật th&acirc;n thiết!</span></p>

<div>&nbsp;</div>
')
INSERT [dbo].[BAIVIET] ([mabv], [ngayviet], [anhbaiviet], [tieude], [noidung]) VALUES (N'20150410004055', CAST(0x0000A476000B3DF0 AS DateTime), N'20150410004055.jpg', N'BST: Cơ-Rô-Chuồn-Bích', N'<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">Bộ sưu tập đặc biệt&nbsp;<span style="color:rgb(255, 0, 0)"><strong>Cơ-R&ocirc;-Chuồn-B&iacute;ch</strong></span>&nbsp;đ&oacute;n Tết của YaMe ch&iacute;nh thức khoe h&agrave;ng v&agrave;o ng&agrave;y&nbsp;<strong>20/01/2015</strong>&nbsp;tại tất cả c&aacute;c cửa h&agrave;ng thuộc hệ thống YaMe !</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">Những mẫu &aacute;o thun độc đ&aacute;o n&agrave;y gi&aacute; chỉ&nbsp;<strong>99.000đ</strong>. YaMe mong rằng bạn n&agrave;o diện &aacute;o n&agrave;y đi ch&uacute;c Tết đều gặp nhiều may mắn: được nhiều l&igrave; x&igrave;, chơi game thắng to, v&agrave; thật thật nhiều niềm vui đến nha.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">C&ugrave;ng YaMe lướt qua một lượt những mẫu &aacute;o thun n&agrave;y v&agrave; chọn ra những mẫu m&agrave; bạn th&iacute;ch nhất trước khi đến cửa h&agrave;ng mua hoặc đặt h&agrave;ng nh&eacute;!</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0647.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="font-family:roboto; font-size:medium">L&agrave;m gi&agrave;u kh&ocirc;ng kh&oacute;! Chỉ cần tranh thủ đi ch&uacute;c Tết l&agrave; c&oacute; kha kh&aacute; tiền l&igrave; x&igrave; rồi.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0810.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0611.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0853.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="font-family:roboto; font-size:medium">Ta n&oacute;i Tết m&agrave; mặc &aacute;o n&agrave;y đi qu&yacute;nh *** l&agrave; b&aacute; chấy lun nha</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0882.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0781.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="font-family:roboto; font-size:medium">Tết n&agrave;y mong được &quot;th&aacute;nh&quot; nhập để dễ l&agrave;m ăn.&nbsp;Đầu tư trước 99k mua &aacute;o n&agrave;y để c&oacute; được mẻ to nha!</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0638.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0831.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0803.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0848.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0860.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="font-family:roboto; font-size:medium">Ra con g&igrave;, ra con g&igrave; đ&acirc;y!</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0624.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0736.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0678.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="font-family:roboto; font-size:medium">Xong v&aacute;n n&agrave;y chắc &quot;ngh&egrave;o&quot; lu&ocirc;n qu&aacute;!</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0877.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0793.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:center"><span style="font-family:roboto; font-size:medium">Học b&oacute;i b&agrave;i, Tết n&agrave;y &quot;dụ&quot; mấy bạn g&aacute;i!</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/BSTlabai/_MG_0762.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">Bạn đ&atilde; t&igrave;m được mẫu &aacute;o m&agrave; m&igrave;nh th&iacute;ch nhất chưa.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">&Aacute;o thun Cơ R&ocirc; Chuồn B&iacute;ch c&oacute; 4 m&agrave;u cơ bản: trắng-đen-x&aacute;m-đỏ. h&igrave;nh in sắc n&eacute;t tr&ecirc;n ngực &aacute;o, tay v&agrave; cổ &aacute;o được viền kh&aacute;c m&agrave;u nổi bật. Chất liệu thun cotton hai chiều tho&aacute;ng m&aacute;t.&nbsp;</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">BST &aacute;o thun nằm trong d&ograve;ng h&agrave;ng HiHiHaHa. Chỉ cần 99.000đ để sở hữu một chiếc &aacute;o thật KH&Aacute;C BIỆT cho m&ugrave;a Tết n&agrave;y r&ugrave;i!</span></p>
')
INSERT [dbo].[BAIVIET] ([mabv], [ngayviet], [anhbaiviet], [tieude], [noidung]) VALUES (N'20150410004157', CAST(0x0000A476000B8690 AS DateTime), N'20150410004157.jpg', N'Khám Phá Tính Cách Các Chòm Sao', N'<p style="text-align:justify"><span style="color:rgb(51, 51, 51); font-family:roboto; font-size:medium">Theo c&aacute;c nh&agrave; thi&ecirc;n văn học&nbsp;thời cổ đại, trong khoảng thời gian chừng 30 - 31 ng&agrave;y, Mặt Trời&nbsp;sẽ đi qua một trong mười hai ch&ograve;m sao&nbsp;đặc biệt. Ai sinh ra trong thời gian Mặt Trời&nbsp;đi qua ch&ograve;m sao n&agrave;o th&igrave; họ sẽ được ch&ograve;m sao đ&oacute; chiếu mệnh v&agrave; t&iacute;nh c&aacute;ch của họ cũng bị ch&ograve;m sao ảnh hưởng nhiều.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="color:rgb(51, 51, 51); font-family:roboto; font-size:medium">12 ch&ograve;m sao tạo th&agrave;nh 12 cung trong v&ograve;ng tr&ograve;n&nbsp;<strong>Ho&agrave;ng đạo</strong>, c&oacute; nghĩa &quot;Đường đi của mặt trời&quot;. Theo phương T&acirc;y, v&ograve;ng tr&ograve;n n&agrave;y t&ecirc;n l&agrave;&nbsp;<strong>Horoscope</strong>. Tiếng Hy Lạp&nbsp;l&agrave;&nbsp;<em>Zodiakus Kyklos</em>&nbsp;(&zeta;&omega;&delta;&iota;&alpha;&kappa;ό&sigmaf; &kappa;ύ&kappa;&lambda;&omicron;&sigmaf;) - &quot;V&ograve;ng tr&ograve;n của c&aacute;c động vật.&quot;</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/ws-TheZodiacHoroscope.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></p>

<h3 style="text-align:justify">&nbsp;</h3>

<h3 style="text-align:justify"><span style="color:rgb(51, 51, 51); font-family:roboto; font-size:medium">Bốn nh&oacute;m nguy&ecirc;n tố Ho&agrave;ng Đạo</span></h3>

<p style="text-align:justify"><span style="color:rgb(51, 51, 51); font-family:roboto; font-size:medium">V&ograve;ng tr&ograve;n Ho&agrave;ng đạo chia th&agrave;nh 12 cung, ph&acirc;n ra bốn nguy&ecirc;n tố đ&atilde; tạo ra của thế giới theo quan niệm cổ phương T&acirc;y: đất, lửa, nước, kh&iacute;. Cứ ba cung l&agrave; được xếp v&agrave;o một nh&oacute;m nguy&ecirc;n tố, những cung c&ugrave;ng chung nh&oacute;m lu&ocirc;n tương hợp nhau nhất.</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">1. Nguy&ecirc;n tố&nbsp;</span><strong>Lửa</strong><span style="font-family:roboto; font-size:medium">: Bạch Dương, Sư Tử, Nh&acirc;n M&atilde;</span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:roboto; font-size:medium">T&iacute;ch c&aacute;ch những người nh&oacute;m Lửa đặc biệt nồng ch&aacute;y, đam m&ecirc;, n&ocirc;ng nổi nhưng rất gan dạ</span></p>

<p>&nbsp;</p>

<p><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Bach_Duong_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></p>

<p><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Su_Tu_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium">2. Nguy&ecirc;n Tố&nbsp;</span><strong>Đất</strong><span style="font-family:roboto; font-size:medium">: Kim Ngưu, Xử Nữ, Ma Kết</span></p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium">Những người nh&oacute;m Đất rất chung thủy, cần c&ugrave;, &ocirc;n h&ograve;a v&agrave; khoan thai.</span></p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Kim_Nguu_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Xu_Nu_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Ma_Ket_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium">3. Nguy&ecirc;n tố<strong>&nbsp;Kh&iacute;</strong>: Thi&ecirc;n B&igrave;nh, Bảo B&igrave;nh, Song Tử</span></p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium">Nh&oacute;m n&agrave;y lại y&ecirc;u tự do, th&ocirc;ng minh, t&iacute;nh t&igrave;nh ph&oacute;ng kho&aacute;ng, tư tưởng cấp tiến.</span></p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Thien_Xung_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Bao_Binh_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Song_Tu_-_Den_.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium">4. Nguy&ecirc;n tố&nbsp;<strong>Nước</strong>: Cự Giải, Bọ Cạp, Song Ngư</span></p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium">Người nh&oacute;m Nước thường nhạy cảm, dễ bị tổn thương v&agrave; c&oacute; thi&ecirc;n hướng nghệ thuật.</span></p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium"><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Cu_Giai_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></span></p>

<p><span style="font-family:roboto; font-size:medium"><strong><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Thien_Yet_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></strong></span></p>

<p><span style="font-family:roboto; font-size:medium"><strong><img alt="" src="http://yame.vn/media/wysiwyg/Story/zodiac/Song_Ngu_-_Den.jpg" style="border:0px; box-sizing:border-box; margin:0px; padding:0px; width:857.5px" /></strong></span></p>

<p>&nbsp;</p>

<p><span style="font-family:roboto; font-size:medium">C&ugrave;ng với h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; 12 cung ho&agrave;ng đạo, YaMe đ&atilde; cho ra đời Bộ Sưu Tập Zodiac in tr&ecirc;n nền &aacute;o thun m&agrave;u đen v&agrave; trắng.</span></p>
')
/****** Object:  Table [dbo].[NCC]    Script Date: 09/03/2015 08:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NCC](
	[manhacc] [char](5) NOT NULL,
	[tenhacc] [nvarchar](50) NULL,
	[diachi] [nvarchar](100) NULL,
	[sdt] [varchar](15) NULL,
	[email] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[manhacc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 09/03/2015 08:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[madm] [char](2) NOT NULL,
	[tendanhmuc] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[madm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DANHMUC] ([madm], [tendanhmuc]) VALUES (N'AO', N'Áo')
INSERT [dbo].[DANHMUC] ([madm], [tendanhmuc]) VALUES (N'BT', N'Balo - Túi xách')
INSERT [dbo].[DANHMUC] ([madm], [tendanhmuc]) VALUES (N'GD', N'Giày Dép')
INSERT [dbo].[DANHMUC] ([madm], [tendanhmuc]) VALUES (N'PK', N'Phụ kiện')
INSERT [dbo].[DANHMUC] ([madm], [tendanhmuc]) VALUES (N'QU', N'Quần')
/****** Object:  Table [dbo].[THONGTINCUAHANG]    Script Date: 09/03/2015 08:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THONGTINCUAHANG](
	[diachi] [nvarchar](100) NULL,
	[email] [varchar](100) NOT NULL,
	[sodienthoai] [varchar](15) NULL,
	[kinhdo] [varchar](40) NULL,
	[vido] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[THONGTINCUAHANG] ([diachi], [email], [sodienthoai], [kinhdo], [vido]) VALUES (N'Số 6, Phan Đình Giót, Quận Tân Bình, TP Hồ Chí Minh', N'mens.formen@gmail.com', N'01642777610', N'10.8024516', N'106.6652514')
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 09/03/2015 08:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[email] [varchar](100) NOT NULL,
	[matkhau] [varchar](32) NULL,
	[hoten] [nvarchar](50) NULL,
	[diachi] [nvarchar](200) NULL,
	[sdt] [varchar](15) NULL,
	[kichhoat] [varchar](20) NULL,
	[makichhoat] [varchar](50) NULL,
	[diemtichluy] [int] NULL,
 CONSTRAINT [PK__THANHVIE__AB6E616520C1E124] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[THANHVIEN] ([email], [matkhau], [hoten], [diachi], [sdt], [kichhoat], [makichhoat], [diemtichluy]) VALUES (N'kiris.nat@gmail.com', N'+fFWXdbZ1IcpdBPyLzUK0A==', N'Nguyễn Anh Thi', N'Quận Gò Vấp', N'0923944345', N'da kich hoat', N'+eOR8DbWhmZ5zmPpUIJdqw==', 410000)
INSERT [dbo].[THANHVIEN] ([email], [matkhau], [hoten], [diachi], [sdt], [kichhoat], [makichhoat], [diemtichluy]) VALUES (N'mens', N'kH4CZl64SKwN+eq7Ywb8oA==', N'Mens Shop', N'Số 6, Phan Đình Giót, Quận Tân Bình', N'01642777610', N'da kich hoat', N'/yupNTO81tMyXahKAZJhbA==', 0)
/****** Object:  StoredProcedure [dbo].[sp_Thongtincuahang_Update]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Thongtincuahang_Update]
@diachi nvarchar(100),
@email varchar(100),
@sodienthoai varchar(15),
@kinhdo varchar(40),
@vido varchar(40)
as
	begin
		update THONGTINCUAHANG
		set diachi=@diachi,
			email=@email,
			sodienthoai=@sodienthoai,
			kinhdo=@kinhdo,
			vido=@vido
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thongtincuahang_Get]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Thongtincuahang_Get]
as
	begin
		select *
		from THONGTINCUAHANG
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanvien_Lock]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Thanvien_Lock]
@email varchar(100)
as
	begin
		update THANHVIEN
		set kichhoat='chua kich hoat'
		where email=@email
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_UpdatePassword]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Thanhvien_UpdatePassword]
@email varchar(100),
@matkhau varchar(32)
as
	begin
		update THANHVIEN
		set matkhau=@matkhau
		where email=@email
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_Update]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Thanhvien_Update]
@email varchar(100),
@matkhau varchar(32),
@hoten nvarchar(50),
@diachi nvarchar(200),
@sdt varchar(15)
as
	begin
		update THANHVIEN
		set	matkhau=@matkhau,
			hoten=@hoten,
			diachi=@diachi,
			sdt=@sdt
		where email=@email
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_SumDiemTichLuy]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Thanhvien_SumDiemTichLuy]
@email varchar(100),
@cong int
as
	begin
		update THANHVIEN
		set diemtichluy=diemtichluy+@cong
		where email=@email
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_Set0DiemTichLuy]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Thanhvien_Set0DiemTichLuy]
@email varchar(100)
as
	begin
		update THANHVIEN
		set diemtichluy='0'
		where email=@email
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_Login]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Thanhvien_Login]
@email varchar(100),
@matkhau varchar(32)
as
	begin
		select email, matkhau, hoten, diachi, sdt, diemtichluy
		from THANHVIEN
		where email=@email and matkhau=@matkhau and kichhoat='da kich hoat'
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_Insert]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Thanhvien_Insert]
@email varchar(100),
@matkhau varchar(32),
@hoten nvarchar(50),
@diachi nvarchar(200),
@sdt varchar(15),
@kichhoat varchar(20),
@makichhoat varchar(50),
@diemtichluy int
as
	begin
		if not exists(	select *
						from THANHVIEN
						where email=@email)
			begin
				insert THANHVIEN
				values(@email, @matkhau, @hoten, @diachi, @sdt, @kichhoat, @makichhoat, @diemtichluy)
				return 0
			end
		else
			return 1
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_GetbyId]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Thanhvien_GetbyId]
@email varchar(100)
as
	begin
		select *
		from THANHVIEN
		where email=@email
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_Get]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Thanhvien_Get]
as
	begin
		select *
		from THANHVIEN
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_Delete]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Thanhvien_Delete]
@email varchar(100)
as
	begin
		delete THANHVIEN
		where email=@email
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Thanhvien_Active]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Thanhvien_Active]
@makichhoat varchar(50)
as
	begin
			update THANHVIEN
			set kichhoat='da kich hoat'
			where makichhoat=@makichhoat
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Danhmuc_Get]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Danhmuc_Get]
as
	begin
		select *
		from DANHMUC
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_dangnhap]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_dangnhap]
@email varchar(100),
@matkhau varchar(32)
as
	begin
		select *
		from THANHVIEN
		where email=@email and matkhau=@matkhau and kichhoat='da kich hoat'
	end
GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATHANG](
	[mamh] [char](6) NOT NULL,
	[tenmh] [nvarchar](50) NULL,
	[hinhdd] [nvarchar](100) NULL,
	[madm] [char](2) NULL,
	[mota] [ntext] NULL,
	[giaban] [money] NULL,
	[giagiam] [money] NULL,
	[khuyenmai]  AS ([giaban]-[giagiam]),
PRIMARY KEY CLUSTERED 
(
	[mamh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'AO0001', N'Áo thun No Style', N'AO0001.jpg', N'AO', N'<p><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-1.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-2.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-3.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-4.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-5.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-6.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-7.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-8.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-9.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-10.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-11.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-12.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-13.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-14.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-15.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/19/AT-No-Style-150-7910016-16.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /></p>
', 95000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'AO0002', N'Áo thun No Style White', N'AO0002.jpg', N'AO', N'<p><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/23/AT-No-STyle-150-8139004-1.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/23/AT-No-STyle-150-8139004-2.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/23/AT-No-STyle-150-8139004-3.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /></p>
', 120000.0000, 10000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'AO0004', N'Áo sơ mi Denyl', N'AO0004.jpg', N'AO', N'<p><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/05/QT-M-255-6966003-1.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/05/QT-M-255-6966003-2.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/05/QT-M-255-6966003-3.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /></p>
', 210000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'AO0005', N'Áo thun Somu ', N'AO0005.jpg', N'AO', N'<p><img src="http://res.yame.vn/20150127/0009938004/71DB664F7FC6FBD8776FBA05E0065116.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150127/0009938004/138B01B682F2C80EB1A39FD83FC53D9A.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150127/0009938004/7044CC537C56695826A75307EAFF52E6.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150127/0009938004/33EFFBF3A1C25490A8F98186917564AD.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 75000.0000, 15.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'AO0006', N'Áo thun cặp Adachi', N'AO0006.jpg', N'AO', N'<p><img src="http://res.yame.vn/20150325/0009884005/D1DDCBD217979202A6088B0453A11347.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150325/0009884005/93C0CA626701AD36756AE54288D7B737.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150325/0009884005/B8CD35B67C63C6ADC237FB7224F1B47F.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 114000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'AO0007', N'Áo Khoát Da RellBum', N'AO0007.jpg', N'AO', N'<p><img src="http://res.yame.vn/20141212/0006753003/152506B74748FE095F9B255F37ACA8B3.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141212/0006753003/72E0B7EF19651F759BE46F5C241F6447.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141212/0006753003/FE852359C0DFD8328EE943A94F322650.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141212/0006753003/65F57D527D9A34754738870184B17857.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141212/0006753003/259039E9065DE22C58BB9F286E5AFC88.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 270000.0000, 5000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'AO0008', N'Áo thun WhiteGuy', N'AO0008.jpg', N'AO', N'<p><img src="http://res.yame.vn/20150207/0010123002/619424D1924C4FA1DAB219B4EAB0B813.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150207/0010123002/21FBB23B84E8C9BD382636DEC8824ECA.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150207/0010123002/D4405E8DE11B19FA9C5B709C9F347A5A.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150207/0010123002/04D0667FA54E61684E6F5D110390BC4E.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150207/0010123002/43DBFF48486D5A2CB14689653F657701.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150207/0010123002/2E2BD3785FA918C94E4D454D9B7AAF70.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150207/0010123002/53C2E9AD10089A26D8DACA6BB14A86AA.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150207/0010123002/F40DDA6D38C19341A62B6C8B5B78002F.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150207/0010123002/AA1FC0B54799D020176D4B777BF00FD7.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 85000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'BT0001', N'Balo Van Nice', N'BT0001.jpg', N'BT', N'<p><img src="http://res.yame.vn/20150402/0009350001/5D9D247691FA38FDC945FE4C473CF5F7.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150402/0009350001/5306B6B5D48149853116BBA8B464CF1E.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:1520px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 308000.0000, 5000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'BT0002', N'Balo Dynamic', N'BT0002.jpg', N'BT', N'<p><img src="http://res.yame.vn/20141224/0007726007/2E96AE6EB8F702CA96E58C9C6CB307A5.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141224/0007726007/2E6DAE50AA6137B2EF1053F85A2CEE84.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:902px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141224/0007726007/38E6EFD2652202B5D11D855C5203B727.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141224/0007726007/42494D00CC8007666213987015330D98.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 345000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'BT0003', N'Túi xách Sindy', N'BT0003.jpg', N'BT', N'<p><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang4/22/bltx-mabu-299-5101004a.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:1164px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /></p>
', 420000.0000, 30.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'BT0004', N'Balo Purple Vans', N'BT0004.jpg', N'BT', N'<p><img src="http://res.yame.vn/20141226/0009349002/A39E207A848676F2F15106FDF3485700.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:902px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141226/0009349002/89EE9AC962B7E9F3F3CF3FC9345C11C5.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141226/0009349002/2D3A95BE90758560E65F145EFF9A5ACA.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141226/0009349002/0A126EE727FBF406CF8334B26EE9BD2B.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 520000.0000, 15000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'BT0005', N'Túi xách LongMan', N'BT0005.jpg', N'BT', N'<p><img src="http://res.yame.vn/20141224/0005588001/C086D087709CF19AEB295115033A877A.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141224/0005588001/4A680A4F687006BD99EA728079D6615C.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141224/0005588001/96350595964CE12224A20B8E9B59973A.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:805px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141224/0005588001/0131A4DCF027BB5B373916657F5A8265.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 4000000.0000, 10000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'GD0001', N'Giày Boot NaNoMax', N'GD0001.jpg', N'GD', N'<p style="text-align:justify"><span style="font-size:medium">Một trong những item gi&agrave;y sẽ được c&aacute;c bạn nam ưa chuộng nhất trong m&ugrave;a Tết n&agrave;y l&agrave; gi&agrave;y Kaito Kid. M&ugrave;a đ&ocirc;ng n&agrave;y c&aacute;c bạn nam của ch&uacute;ng ta sẽ kh&ocirc;ng c&ograve;n tốn thời gian để mang gi&agrave;y nữa.</span></p>

<p>&nbsp;</p>

<p style="text-align:justify"><span style="font-size:medium">Gi&agrave;y Kaito Kid với thiết kế cao cổ&nbsp;ho&agrave;n to&agrave;n ph&ugrave; hợp&nbsp;với thời tiết trong những ng&agrave;y m&ugrave;a đ&ocirc;ng n&agrave;y, vừa thời trang vừa giữ ấm cho đ&ocirc;i ch&acirc;n của bạn. Đ&ocirc;i gi&agrave;y được thiết kế theo phong c&aacute;ch teenboy trẻ trung, cực phong c&aacute;ch, rất ph&ugrave; hợp với trang phục c&aacute; t&iacute;nh, lạ mắt của c&aacute;c bạn trẻ. Gi&agrave;y c&oacute; kiểu d&aacute;ng hiện đại, rất an to&agrave;n lại cực s&agrave;nh điệu. Chất liệu da cao cấp, đường chỉ may chắc chắn v&agrave; nổi bật, đế gi&agrave;y c&oacute; nhiều r&atilde;nh, chống trơn trượt, cổ gi&agrave;y được trang bị một lớp vải gi&uacute;p giự ấm tuyệt đối cho cổ ch&acirc;n của bạn.&nbsp;</span></p>

<p>&nbsp;</p>

<p style="text-align:justify"><span style="font-size:medium">Gi&agrave;y Kaito Kid c&ugrave;ng chất liệu da b&ecirc;n trong c&oacute; lớp nỉ &ecirc;m &aacute;i, mềm mại sẽ mang lại sự ấm &aacute;p, thoải m&aacute;i v&agrave; dễ chịu nhất cho đ&ocirc;i ch&acirc;n bạn trong nhiều giờ liền. Nhanh tay sở hữu một đ&ocirc;i nh&eacute;!</span></p>

<p>&nbsp;</p>

<p style="text-align:justify"><span style="font-size:medium"><img alt="" src="http://static.mta.vn/yameshop_com/2013-Sanphammoi/Thang1/TTT/21a.jpg" style="border:0px; box-sizing:border-box; height:2715px; margin:0px; padding:0px; width:715.5px" /></span></p>
', 450000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'GD0002', N'Giày Kaito Kid X39', N'GD0002.jpg', N'GD', N'<p><img src="http://res.yame.vn/20141225/0008804015/3E5E4424D2222FAF7471CAAC3CF12068.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141225/0008804015/B5FE29E2E1B643857A47F0AB312A2D30.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:24px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141225/0008804015/9F73C8C6433071E5FA67C6C00988B415.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141225/0008804015/936272462BA3C0E56FC48659235459CB.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141225/0008804015/AD6EF27EE8A78330E4BA2B2BEFAF44EF.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:1520px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 475000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'GD0003', N'Giày SunDay Black X5', N'GD0003.jpg', N'GD', N'<p><img src="http://res.yame.vn/20150119/0009640003/225FDFCE5673B8E7F336B3F1D6F41BD5.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0009640003/AC9903CA42B7999DA1633768D8C0EC5E.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0009640003/CE465A263736326E363427E02C55EE87.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0009640003/9A7EB84D50B6C50FBF2555C159076EFC.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0009640003/5053D27EEE660C4273AD08C4F2539714.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0009640003/EE5A0B06708CFDE0718287B5E0311829.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:775px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 550000.0000, 50000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'GD0004', N'Giày Boot Army D4', N'GD0004.jpg', N'GD', N'<p><img src="http://res.yame.vn/20141222/5242894005/DBF7444208C72B7B6A028AE1CD3EFF6C.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141222/5242894005/0726C5A0976339B693905295DD0D70B7.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141222/5242894005/692C35C723013F6478C66D3A7CA73A4D.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141222/5242894005/FA6A387C050826FE3D5B95B8AC511618.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 570000.0000, 20000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'GD0005', N'Giày Van', N'GD0005.jpg', N'GD', N'<p><img src="http://res.yame.vn/20141205/0009213015/C883704E3E289FCD253231FA4A18F1F7.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141205/0009213015/92DEFDEB426A345AB76E34AFF5CE6688.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141205/0009213015/BD67B45E8594C7F3F12A8D802398FBEA.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141205/0009213015/BBDC042FA8610EDFAAF7851089D934B7.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141205/0009213015/2BAB2B45EF295051AFF205F133B554B1.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:2057px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 450000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'PK0001', N'Nón Korean SS', N'PK0001.jpg', N'PK', N'<p><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang5/13a/Non-SS-140-5535002a.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:1197px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang5/13a/Non-SS-140-5535002b''.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:24px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang5/13a/Non-SS-140-5535002c.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:572px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang5/13a/Non-SS-140-5535002d.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:931px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /></p>
', 90000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'PK0002', N'Nón Cạp 302', N'PK0002.jpg', N'PK', N'<p><img src="http://res.yame.vn/20150128/0009998001/E2E3223C29556C71E0241FA3D6EBA715.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150128/0009998001/3022F61F9272B74C34EC6D82CF808DA7.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150128/0009998001/9C052E43B44AAE9DFAF88D5007AE6E0B.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150128/0009998001/F260FAE0A89D82CF25FA6B6760E90BA4.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150128/0009998001/A0A0734244E2B388333CFB78787CC06A.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 112000.0000, 10000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'PK0003', N'Đồng Hồ Thụy Sĩ Z13', N'PK0003.jpg', N'PK', N'<p><img src="http://res.yame.vn/20141225/5243945001/4083D51B6149FCF09869CBAD46D4DC09.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141225/5243945001/1725CD17D72A11880643315D1C5470C4.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141225/5243945001/F3172C7EC674CF8082AAF3236B77243D.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:805px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 233000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'PK0004', N'Đồng Hồ LaZac', N'PK0004.jpg', N'PK', N'<p><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/15a/DH-MaBu-BM14-249-7506002-1.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/15a/DH-MaBu-BM14-249-7506002-2.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/15a/DH-MaBu-BM14-249-7506002-3.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang08/15a/DH-MaBu-BM14-249-7506002-4.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /></p>
', 550000.0000, 50000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'PK0005', N'Thắt lưng NTT', N'PK0005.jpg', N'PK', N'<p><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang6/09/DN-225-6633001a.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:663px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang6/09/DN-225-6633001b.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:418px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang6/09/DN-225-6633001c.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:418px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang6/09/DN-225-6633001d.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:1197px; line-height:normal; margin:0px; padding:0px; text-align:justify; width:715.5px" /></p>
', 150000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'PK0006', N'Mắt Kính Rayban G4', N'PK0006.jpg', N'PK', N'<p style="text-align:justify"><span style="font-size:medium">K&iacute;nh kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu&nbsp; cần thiết bảo vệ thị lực m&agrave; c&ograve;n gi&uacute;p bảo vệ đ&ocirc;i mắt của bạn tr&aacute;nh khỏi những t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i g&acirc;y ra. K&iacute;nh m&aacute;t H&agrave;n Quốc với gọng k&iacute;nh chất lượng mang đến vẻ đẹp trẻ trung v&agrave; s&agrave;nh điệu cho người đeo.</span></p>

<p>&nbsp;</p>

<p style="text-align:justify"><span style="font-size:medium">Song song đ&oacute;, K&iacute;nh m&aacute;t H&agrave;n Quốc c&ograve;n l&agrave; một phụ kiện kh&ocirc;ng thể thiếu trong t&uacute;i của bạn nhất l&agrave; trong điều kiện thời tiết nắng n&oacute;ng, kh&oacute;i, bụi gi&uacute;p chống lại t&aacute;c động của tia cực t&iacute;m. Một điều đặc biệt bạn n&ecirc;n biết, chiếc k&iacute;nh m&aacute;t n&agrave;y c&ograve;n c&oacute; t&aacute;c dụng che bớt những khuyết điểm v&agrave; t&ocirc;n l&ecirc;n vẻ đẹp của khu&ocirc;n mặt. Kiểu d&aacute;ng k&iacute;nh hiện đại, sang trọng sẽ l&agrave; m&oacute;n qu&agrave; tuyệt vời cho người th&acirc;n, bạn b&egrave; của bạn.</span></p>

<p>&nbsp;</p>

<p style="text-align:justify"><span style="font-size:medium">Những lần đi du lịch c&oacute; lẽ chiếc k&iacute;nh m&aacute;t H&agrave;n Quốc n&agrave;y sẽ l&agrave; người bạn đồng h&agrave;nh th&acirc;n thiết nhất của bạn.</span></p>

<p>&nbsp;</p>

<p style="text-align:justify"><span style="font-size:medium"><img alt="" src="http://static.mta.vn/yameshop_com/2013-Sanphammoi/Thang12/khoa/mk/09.jpg" style="border:0px; box-sizing:border-box; height:1121px; margin:0px; padding:0px; width:715.5px" /><img alt="" src="http://static.mta.vn/yameshop_com/2014/thang3/27/Q%203280%20-%20AT%203460%20-%20G%20Vans%200021%20-%20K%C3%ADnh%207212%20-%20%20%C4%90H%20Z15%203896-17-3.jpg" style="border:0px; box-sizing:border-box; height:954px; margin:0px; padding:0px; width:715.5px" /></span></p>
', 130000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'QU0001', N'Quần Jean MaBox', N'QU0001.jpg', N'QU', N'<p><img src="http://res.yame.vn/20141229/0006961009/417C18C81968327D94A04D5018203DEB.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141229/0006961009/264B54782D09B294DE9682E53AD893C1.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141229/0006961009/3E46B16E8A393683EACEC400642CA091.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141229/0006961009/43482FD8D9BDD2AD915EB1F67590D3FD.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20141229/0006961009/BFC7C30DD8FB07A646636C17019897F6.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:1334px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 375000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'QU0002', N'Quần Jean Dam', N'QU0002.jpg', N'QU', N'<p><img src="http://res.yame.vn/20150124/0008208013/838A1F703769A78F24765942A400E348.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150124/0008208013/E34EC1F237E6D790FEE58B516F6728A3.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150124/0008208013/47657935B944A5D9AC10580E2AA93A43.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150124/0008208013/691D55C5F275B7CA2EE739952C7F9BBE.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150124/0008208013/CFE24F74FBD8004351C40D632CBA74E5.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150124/0008208013/0866B6A89320903D66A758667BD11499.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 572000.0000, 50000.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'QU0003', N'Quần Soock Đi Biển', N'QU0003.jpg', N'QU', N'<p><img src="http://res.yame.vn/20150306/3240151013/D5629587217A02A6E3DAEE6C0393B469.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150306/3240151013/3699EEE007C5ECAEFC6A4B2977FFB7C4.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150306/3240151013/3972DE4A1FBACCA32B58B18C1FFF0C25.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150306/3240151013/7E6E9A8921E000F56AF49532D01F8829.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:814px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 320000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'QU0004', N'Quần Kaki Ma Bư', N'QU0004.jpg', N'QU', N'<p><img src="http://res.yame.vn/20150119/0008208001/3F696CFF7457CADDB23483DC154DCE71.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0008208001/C044E5111FEEB327C04A2F3BA8BF7146.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0008208001/7C1B0F97938FD85428BA58346E280CAF.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0008208001/5ABA6E87EF778D826276D13D3B8D7697.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img src="http://res.yame.vn/20150119/0008208001/D358E9CF6DD4612303DA0CDFAC551BE3.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 300000.0000, 0.0000)
INSERT [dbo].[MATHANG] ([mamh], [tenmh], [hinhdd], [madm], [mota], [giaban], [giagiam]) VALUES (N'QU0005', N'Quần Kaki Denim', N'QU0005.jpg', N'QU', N'<p><img alt="" src="http://yame.vn/media/wysiwyg/ngay12-9-2014/foder2/AT-MaBu-225-8439008-2.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img alt="" src="http://yame.vn/media/wysiwyg/ngay12-9-2014/foder2/AT-MaBu-225-8439008-3.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /><img alt="" src="http://yame.vn/media/wysiwyg/ngay12-9-2014/foder2/AT-MaBu-225-8439008-4.jpg" style="border:0px; box-sizing:border-box; color:rgb(68, 67, 52); font-family:roboto,arial; font-size:14px; height:776px; line-height:normal; margin:0px; padding:0px; width:715.5px" /></p>
', 440000.0000, 20000.0000)
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[sogh] [varchar](20) NOT NULL,
	[ngaylap] [datetime] NULL,
	[email] [varchar](100) NULL,
	[tenkh] [nvarchar](50) NULL,
	[sdt] [varchar](15) NULL,
	[diachi] [nvarchar](200) NULL,
	[ghichu] [ntext] NULL,
	[tinhtrang] [bit] NULL,
 CONSTRAINT [PK_GIOHANG] PRIMARY KEY CLUSTERED 
(
	[sogh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GIOHANG] ([sogh], [ngaylap], [email], [tenkh], [sdt], [diachi], [ghichu], [tinhtrang]) VALUES (N'GH2015417232928932', CAST(0x0000A47D01832038 AS DateTime), N'kiris.nat@gmail.com', N'Nguyễn Ngọc Yến Huỳnh', N'0923944345', N'Quận Gò Vấp', N'', 0)
INSERT [dbo].[GIOHANG] ([sogh], [ngaylap], [email], [tenkh], [sdt], [diachi], [ghichu], [tinhtrang]) VALUES (N'GH2015419194744564', CAST(0x0000A47F0146392A AS DateTime), N'kiris.nat@gmail.com', N'Nguyễn Anh Thi', N'0923944345', N'Quận Gò Vấp', N'', 0)
/****** Object:  Table [dbo].[DDHANG]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDHANG](
	[soddh] [char](6) NOT NULL,
	[ngaydh] [datetime] NULL,
	[manhacc] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[soddh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_Baiviet_Insert]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Baiviet_Insert]
@mabv varchar(20),
@ngayviet datetime,
@anhbaiviet nvarchar(100),
@tieude ntext,
@noidung ntext
as
	begin
		insert into BAIVIET
		values(@mabv, @ngayviet, @anhbaiviet, @tieude, @noidung)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Baiviet_GetbyNum]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Baiviet_GetbyNum]
@rowstart int,
@rowend int
as
	begin
		select *
		from(
			select BAIVIET.*, ROW_NUMBER() over (order by mabv desc) as rownum
			from BAIVIET
		) as tbl
		where tbl.rownum between @rowstart and @rowend
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Baiviet_GetbyId]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Baiviet_GetbyId]
@id varchar(20)
as
	begin
		select *
		from BAIVIET
		where mabv=@id
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Baiviet_Get]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Baiviet_Get]
as
	begin
		select *
		from BAIVIET
		order by mabv desc
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Baiviet_Delete]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Baiviet_Delete]
@mabv varchar(20)
as
	begin
		delete BAIVIET
		where mabv=@mabv
	end
GO
/****** Object:  Table [dbo].[SIZE]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIZE](
	[mamh] [char](6) NULL,
	[loaisize] [char](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0001', N'S  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0001', N'M  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0001', N'L  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0002', N'L  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0002', N'XL ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0007', N'S  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0007', N'M  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0004', N'S  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0004', N'M  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0004', N'L  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0005', N'S  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0005', N'M  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0006', N'M  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0006', N'L  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0007', N'L  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0007', N'XL ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0008', N'S  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0008', N'M  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'AO0008', N'L  ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0001', N'30 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0001', N'31 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0001', N'32 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0001', N'33 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0001', N'34 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0002', N'30 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0002', N'31 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0002', N'32 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0002', N'33 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0002', N'34 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0001', N'40 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0001', N'41 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0001', N'42 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0001', N'43 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0002', N'41 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0002', N'42 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0002', N'43 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0002', N'44 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0003', N'40 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0003', N'41 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0003', N'42 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0003', N'43 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0003', N'44 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0004', N'41 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0004', N'42 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0004', N'43 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0004', N'44 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0003', N'31 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0003', N'32 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0003', N'33 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0003', N'34 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0004', N'31 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0004', N'32 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0004', N'33 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0004', N'34 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0005', N'30 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0005', N'31 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0005', N'32 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0005', N'33 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'QU0005', N'34 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0005', N'40 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0005', N'41 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0005', N'42 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0005', N'43 ')
INSERT [dbo].[SIZE] ([mamh], [loaisize]) VALUES (N'GD0005', N'44 ')
/****** Object:  Table [dbo].[PNHAP]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PNHAP](
	[sopn] [char](6) NOT NULL,
	[ngaynhap] [datetime] NULL,
	[soddh] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[sopn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTGIOHANG]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTGIOHANG](
	[sogh] [varchar](20) NOT NULL,
	[mamh] [char](6) NOT NULL,
	[size] [char](3) NULL,
	[sl] [int] NULL,
	[dgban] [money] NULL,
 CONSTRAINT [PK_CTGIOHANG] PRIMARY KEY CLUSTERED 
(
	[sogh] ASC,
	[mamh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CTGIOHANG] ([sogh], [mamh], [size], [sl], [dgban]) VALUES (N'GH2015417232928932', N'AO0005', N'S  ', 1, 74985.0000)
INSERT [dbo].[CTGIOHANG] ([sogh], [mamh], [size], [sl], [dgban]) VALUES (N'GH2015417232928932', N'GD0002', N'41 ', 1, 475000.0000)
INSERT [dbo].[CTGIOHANG] ([sogh], [mamh], [size], [sl], [dgban]) VALUES (N'GH2015419194744564', N'GD0001', N'40 ', 1, 450000.0000)
INSERT [dbo].[CTGIOHANG] ([sogh], [mamh], [size], [sl], [dgban]) VALUES (N'GH2015419194744564', N'GD0004', N'42 ', 1, 550000.0000)
INSERT [dbo].[CTGIOHANG] ([sogh], [mamh], [size], [sl], [dgban]) VALUES (N'GH2015419194744564', N'PK0005', N'   ', 1, 150000.0000)
/****** Object:  Table [dbo].[CTDDHANG]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTDDHANG](
	[soddh] [char](6) NOT NULL,
	[mamh] [char](6) NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_CTDDHANG] PRIMARY KEY CLUSTERED 
(
	[soddh] ASC,
	[mamh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_Update]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Mathang_Update]
@mamh char(6),
@tenmh nvarchar(50),
@giaban money,
@giagiam money
as
	begin
		update MATHANG
		set tenmh=@tenmh,
			giaban=@giaban,
			giagiam=@giagiam
		where mamh=@mamh
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_SearchText]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mathang_SearchText]
@keyword nvarchar(20)
as
	begin
		select *,case when giagiam=0 then 'hidden' else '' end as [saleoff]
		from MATHANG join DANHMUC on MATHANG.madm=DANHMUC.madm
		where(tenmh like '%' + @keyword + '%')
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_SearchNum]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mathang_SearchNum]
@keyword money
as
	begin
		select *,case when giagiam=0 then 'hidden' else '' end as [saleoff]
		from MATHANG
		where giaban < @keyword+100000 and giaban > @keyword-100000 
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_SalesTop6]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mathang_SalesTop6]
as
	begin
		select top 5 *
		from MATHANG
		where giagiam!=0
		order by NEWID()
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_Sales]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mathang_Sales]
as
	begin
		select *,case when giagiam=0 then 'hidden' else '' end as [saleoff]
		from MATHANG
		where giagiam!=0
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_Insert]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Mathang_Insert]
@mamh char(6),
@tenmh nvarchar(50),
@hinhdd nvarchar(100),
@madm char(2),
@mota ntext,
@giaban money,
@giagiam money
as
	begin
		insert into MATHANG
		values(@mamh, @tenmh, @hinhdd, @madm, @mota, @giaban, @giagiam)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_GetbySameCategory]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mathang_GetbySameCategory]
@madm char(2),
@mamh char(6)
as
	begin
		select top 6 *
		from MATHANG
		where mamh!=@mamh and madm=@madm
		order by NEWID()
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_GetbyNotSameCategory]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Mathang_GetbyNotSameCategory]
@madm char(2)
as
	begin
		select top 6 *
		from MATHANG
		where madm!=@madm
		order by NEWID()
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_GetbyId]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Mathang_GetbyId]
@mamh char(6)
as
	begin
		select *
		from MATHANG
		where mamh=@mamh
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_GetbyDMTop1]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mathang_GetbyDMTop1]
@madm char(2)
as
	begin
		select top 1 mamh
		from MATHANG
		where madm=@madm
		order by(mamh) desc
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_GetbyDM]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mathang_GetbyDM]
@madm char(2)
as
	begin
		select * ,case when giagiam=0 then 'hidden' else '' end as [saleoff]
		from MATHANG
		where madm=@madm
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_get]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Mathang_get]
as
	begin
		select *
		from MATHANG
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Mathang_Delete]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Mathang_Delete]
@mamh char(6)
as
	begin
		delete MATHANG
		where mamh=@mamh
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_giohang_update]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_giohang_update]
@sogh varchar(20),
@tinhtrang bit
as
begin
	update GIOHANG 
		set tinhtrang=@tinhtrang
	where sogh=@sogh
end
GO
/****** Object:  StoredProcedure [dbo].[sp_giohang_selectBysogh]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_giohang_selectBysogh]
@sogh varchar(20)
as
begin
	select * from GIOHANG
	where sogh=@sogh
end
GO
/****** Object:  StoredProcedure [dbo].[sp_giohang_select_Bytinhtrang]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_giohang_select_Bytinhtrang]
@tinhtrang bit
as
begin
	select * from GIOHANG
	where tinhtrang=@tinhtrang
end
GO
/****** Object:  StoredProcedure [dbo].[sp_giohang_select]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_giohang_select]
as
begin
	select * from GIOHANG
end
GO
/****** Object:  StoredProcedure [dbo].[sp_giohang_insert]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_giohang_insert]
@sogh varchar(20),
@ngaylap datetime,
@email varchar(100),
@tenkh nvarchar(50),
@sdt varchar(15),
@diachi nvarchar(200),
@ghichu ntext,
@tinhtrang bit
as
begin
	insert GIOHANG
	 values(@sogh,@ngaylap,@email,@tenkh,@sdt,@diachi,@ghichu,@tinhtrang)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Giohang_GetbyEmail]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Giohang_GetbyEmail]
@email varchar(100)
as
	begin	
		select sogh, ngaylap, sdt, diachi, ghichu, case when tinhtrang='True' then N'Đã thanh toán' else N'Chưa thanh toán' end as tinhtrang
		from GIOHANG
		where email=@email
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Giohang_DeletebyEmail]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Giohang_DeletebyEmail]
@email varchar(100)
as
	begin
		delete GIOHANG
		where email=@email
	end
GO
/****** Object:  Table [dbo].[TONKHO]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TONKHO](
	[namthang] [nchar](6) NOT NULL,
	[mamh] [char](6) NOT NULL,
	[sldau] [int] NULL,
	[tongslnhap] [int] NULL,
	[tongslxuat] [int] NULL,
	[slcuoi]  AS (([sldau]+[tongslnhap])-[tongslxuat]),
 CONSTRAINT [PK_TONKHO] PRIMARY KEY CLUSTERED 
(
	[namthang] ASC,
	[mamh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_ctgiohang_insert]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ctgiohang_insert]
@sogh varchar(20),
@mamh char(6),
@size char(3),
@sl int,
@dgia money
as
begin
	insert CTGIOHANG
		values(@sogh,@mamh,@size,@sl,@dgia)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ChiTietGioHang_GetbyId]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ChiTietGioHang_GetbyId]
@sogh varchar(20)
as
	begin
		select *
		from CTGIOHANG inner join MATHANG on CTGIOHANG.mamh=MATHANG.mamh
		where sogh=@sogh
	end
GO
/****** Object:  Table [dbo].[CTPNHAP]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTPNHAP](
	[sopn] [char](6) NOT NULL,
	[mamh] [char](6) NOT NULL,
	[soluong] [int] NULL,
	[gianhap] [int] NULL,
 CONSTRAINT [PK_CTPNHAP] PRIMARY KEY CLUSTERED 
(
	[sopn] ASC,
	[mamh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_Size_Insert]    Script Date: 09/03/2015 08:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Size_Insert]
@mamh char(6),
@loaisize char(3)
as
	begin
		insert into SIZE
		values(@mamh, @loaisize)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Size_GetbyId]    Script Date: 09/03/2015 08:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Size_GetbyId]
@mamh char(6)
as
	begin
		select *
		from SIZE
		where mamh=@mamh
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_Size_Delete]    Script Date: 09/03/2015 08:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Size_Delete]
@mamh char(6)
as
	begin
		delete SIZE
		where mamh=@mamh
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_giohang_delete]    Script Date: 09/03/2015 08:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_giohang_delete]
@sogh varchar(20)
as
begin
	if exists (select * from CTGIOHANG where sogh=@sogh)
		begin
			delete CTGIOHANG where sogh=@sogh
		end
	delete GIOHANG where sogh=@sogh
end
GO
/****** Object:  Default [DEF_TONKHO_SLDAU]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[TONKHO] ADD  CONSTRAINT [DEF_TONKHO_SLDAU]  DEFAULT ((0)) FOR [sldau]
GO
/****** Object:  Default [DEF_TONKHO_TONGSLNHAP]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[TONKHO] ADD  CONSTRAINT [DEF_TONKHO_TONGSLNHAP]  DEFAULT ((0)) FOR [tongslnhap]
GO
/****** Object:  Default [DEF_TONKHO_TONGSLXUAT]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[TONKHO] ADD  CONSTRAINT [DEF_TONKHO_TONGSLXUAT]  DEFAULT ((0)) FOR [tongslxuat]
GO
/****** Object:  Check [CHK_TONKHO]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[TONKHO]  WITH CHECK ADD  CONSTRAINT [CHK_TONKHO] CHECK  (([sldau]>=(0) AND [tongslnhap]>=(0) AND [tongslxuat]>=(0)))
GO
ALTER TABLE [dbo].[TONKHO] CHECK CONSTRAINT [CHK_TONKHO]
GO
/****** Object:  ForeignKey [FK_MATHANG_DANHMUC]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG_DANHMUC] FOREIGN KEY([madm])
REFERENCES [dbo].[DANHMUC] ([madm])
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [FK_MATHANG_DANHMUC]
GO
/****** Object:  ForeignKey [FK_GIOHANG_THANHVIEN]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_THANHVIEN] FOREIGN KEY([email])
REFERENCES [dbo].[THANHVIEN] ([email])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_THANHVIEN]
GO
/****** Object:  ForeignKey [FK_DDHANG_NCC]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[DDHANG]  WITH CHECK ADD  CONSTRAINT [FK_DDHANG_NCC] FOREIGN KEY([manhacc])
REFERENCES [dbo].[NCC] ([manhacc])
GO
ALTER TABLE [dbo].[DDHANG] CHECK CONSTRAINT [FK_DDHANG_NCC]
GO
/****** Object:  ForeignKey [FK_SIZE_MATHANG]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[SIZE]  WITH CHECK ADD  CONSTRAINT [FK_SIZE_MATHANG] FOREIGN KEY([mamh])
REFERENCES [dbo].[MATHANG] ([mamh])
GO
ALTER TABLE [dbo].[SIZE] CHECK CONSTRAINT [FK_SIZE_MATHANG]
GO
/****** Object:  ForeignKey [FK_PNHAP_DDHANG]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[PNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PNHAP_DDHANG] FOREIGN KEY([soddh])
REFERENCES [dbo].[DDHANG] ([soddh])
GO
ALTER TABLE [dbo].[PNHAP] CHECK CONSTRAINT [FK_PNHAP_DDHANG]
GO
/****** Object:  ForeignKey [FK_CTGH_GIOHANG]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[CTGIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTGH_GIOHANG] FOREIGN KEY([sogh])
REFERENCES [dbo].[GIOHANG] ([sogh])
GO
ALTER TABLE [dbo].[CTGIOHANG] CHECK CONSTRAINT [FK_CTGH_GIOHANG]
GO
/****** Object:  ForeignKey [FK_CTGH_MATHANG]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[CTGIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTGH_MATHANG] FOREIGN KEY([mamh])
REFERENCES [dbo].[MATHANG] ([mamh])
GO
ALTER TABLE [dbo].[CTGIOHANG] CHECK CONSTRAINT [FK_CTGH_MATHANG]
GO
/****** Object:  ForeignKey [FK_CTDDHANG_DDHANG]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[CTDDHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDDHANG_DDHANG] FOREIGN KEY([soddh])
REFERENCES [dbo].[DDHANG] ([soddh])
GO
ALTER TABLE [dbo].[CTDDHANG] CHECK CONSTRAINT [FK_CTDDHANG_DDHANG]
GO
/****** Object:  ForeignKey [FK_TONKHO_MATHANG]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[TONKHO]  WITH CHECK ADD  CONSTRAINT [FK_TONKHO_MATHANG] FOREIGN KEY([mamh])
REFERENCES [dbo].[MATHANG] ([mamh])
GO
ALTER TABLE [dbo].[TONKHO] CHECK CONSTRAINT [FK_TONKHO_MATHANG]
GO
/****** Object:  ForeignKey [FK_CTPNHAP]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[CTPNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CTPNHAP] FOREIGN KEY([sopn])
REFERENCES [dbo].[PNHAP] ([sopn])
GO
ALTER TABLE [dbo].[CTPNHAP] CHECK CONSTRAINT [FK_CTPNHAP]
GO
/****** Object:  ForeignKey [FK_MATHANG]    Script Date: 09/03/2015 08:06:11 ******/
ALTER TABLE [dbo].[CTPNHAP]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG] FOREIGN KEY([mamh])
REFERENCES [dbo].[MATHANG] ([mamh])
GO
ALTER TABLE [dbo].[CTPNHAP] CHECK CONSTRAINT [FK_MATHANG]
GO

USE [Assgn_PRJ301_Dan]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/29/2023 01:14:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/29/2023 01:14:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/29/2023 01:14:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/29/2023 01:14:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/29/2023 01:14:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 10/29/2023 01:14:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 10/29/2023 01:14:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'admin', N'1', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'TSR5MR', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Vera', N'CZB2VM', 0, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (23, N'Katell', N'SFS0IW', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (25, N'Robin', N'KIS9AF', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (27, N'admin', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (28, N'mra', N'mra', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (29, N'mrb', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (30, N'Camden', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (31, N'manhdsz', N'123456', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (32, N'sfdfds', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (33, N'aaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (34, N'bbbb', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (35, N'luong', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (38, N'mit', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (39, N'aaaaaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (40, N'bantq', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (41, N'thong', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (42, N'abcdd', N'1', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (43, N'quan', N'1', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (44, N'z', N'1', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (45, N'abc', N'1', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'String Instruments')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Woodwind Instruments')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Keyboard Instruments')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Percussion Instruments')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO


SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (14, 1, 1030, N'hàng dễ vỡ xin cẩn thận ', CAST(N'2022-03-15' AS Date), 14)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (15, 41, 360, N'non', CAST(N'2022-03-17' AS Date), 15)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (16, 1, 290, N'hàng dẽ vo', CAST(N'2022-07-03' AS Date), 16)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (17, 1, 140, N'e', CAST(N'2022-07-07' AS Date), 17)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (18, 44, 300, N'ds', CAST(N'2022-11-06' AS Date), 18)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'Guitar ', N'data:image/jpeg;base64,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', 30.0000, N'Đàn Guitar', N'Đàn guitar là một loại đàn dây phổ biến trên khắp thế giới. Được chia thành nhiều biến thể như guitar cổ điển, guitar acoustic, và guitar điện. Đàn guitar thường có sáu dây và được chơi bằng cách bấm hoặc gảy dây để tạo ra âm thanh. Nó được sử dụng trong nhiều thể loại âm nhạc từ nhạc cổ điển đến rock và pop.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'Violin ', N'https://nhaccudanhuong.com/libraries/libraryxhome-678/images/%C4%91%C3%A0n%20VIOLIN/phuong-phap-hoc-dan-piano-tot-nhat-ma-ban-chua-biet.jpg', 35.0000, N'Đàn Violon', N'Violin là một loại đàn dây gỗ với bốn dây, được đánh bằng cách sử dụng cánh cung. Nó có âm thanh trong trẻo và đa dạng, thường được sử dụng trong âm nhạc cổ điển, nhạc giao hưởng và nhạc dân gian. Violin có lịch sử lâu đời và là một phần quan trọng của nhiều tác phẩm nổi tiếng.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Clarinet ', N'https://vietthuongshop.vn/image/catalog/2-san-pham/ken-sao/ken-sao/ken-selmer/ken-clarinet-selmer-student-model-cl301-bb-1.jpg', 40.0000, N'Kèn Clarinet', N' Clarinet là một loại đàn gỗ hoặc kim loại với một ống thổi và nhiều phím để điều chỉnh âm thanh. Âm thanh của clarinet thường có sự ấm áp và đa dạng, thường được sử dụng trong âm nhạc cổ điển, nhạc dân gian, và jazz. Đàn clarinet là một phần quan trọng của dàn nhạc giao hưởng và dàn nhạc nhẹ.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'Oboe ', N'https://product.hstatic.net/200000314229/product/untitled_design__17__d495dfc6c19c4398b685390382b4a610_large.jpg', 25.0000, N'Kèn Oboe', N'Oboe là một loại đàn gỗ với một ống đôi. Điều đặc biệt về oboe là âm thanh của nó có sự độc đáo và đặc biệt. Người chơi phải thổi vào đôi ống để tạo ra âm thanh. Oboe thường xuất hiện trong nhạc cổ điển và nhạc giao hưởng, tạo ra các phần nhạc tươi sáng và sâu lắng.', 2, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'Bassoon ', N'https://salt.tikicdn.com/cache/w400/ts/product/a4/da/d0/541bfa6f8ac1d181049efe4379896a78.jpg', 50.0000, N'Kèn Bassoon', N'Bassoon là một loại đàn gỗ với ống cong và phần đôi để tạo ra âm thanh. Đây là một loại đàn có âm thanh độc đáo và sâu sắc, thường được sử dụng trong các bản nhạc cổ điển và giao hưởng. Bassoon có khả năng tạo ra âm thanh thấp và mạnh mẽ, là một phần quan trọng của dàn nhạc giao hưởng.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'Cello ', N'https://tongkhonhaccu.com/Data/upload/images/Product/Violin/SCOTTCAO/stc150/dan-cello-scott-cao-stc150.jpg', 25.0000, N'Đàn Cello', N'Cello là một loại đàn dây gỗ lớn hơn violon và thường được đánh ngồi trên ghế. Nó có âm thanh ấm áp và sâu sắc, thường xuất hiện trong nhạc cổ điển và nhạc giao hưởng. Đàn cello có lịch sử lâu đời và thường được chơi bằng cánh cung.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Mandolin ', N'https://nhaccutienmanh.vn/wp-content/uploads/2019/11/dan-mandolin-viet-nam-tm-dmt9-1.jpg', 45.0000, N'Đàn Mandolin', N'Đàn mandolin là một loại đàn dây tiếng gọi với một dãy nhỏ các dây kim loại. Nó có hình dáng giống hình trái lê và thường được chơi bằng cách bấm dây. Đàn mandolin phổ biến trong âm nhạc dân gian và bluegrass, tạo ra âm thanh tươi sáng và sôi động.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Bass Guitar', N'https://vietthuongshop.vn/image/catalog/2-san-pham/dan-guitar/Squier/Affinity-Series-Jazz-Bass-Black-0370760506-01.jpg', 30.0000, N'Đàn Bass', N'Đàn bass là một loại đàn dây dùng để tạo ra âm thanh nền và nền nhịp trong âm nhạc. Nó thường có bốn dây và có âm thanh sâu, mạnh mẽ. Đàn bass thường xuất hiện trong các nhóm nhạc rock, funk, và jazz để tạo nền nhịp và rythm cho bản nhạc.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Flute ', N'https://solg.vn/wp-content/uploads/2019/10/solg_d7c717184043cf899730bdb76167dd11.jpg', 100.0000, N'Sáo', N' Sáo là một trong những loại đàn gỗ phổ biến nhất trên thế giới. Nó là một nhạc cụ có ống thổi được làm từ gỗ hoặc kim loại. Để tạo âm thanh, người chơi thổi khí qua một lỗ trên đầu ống, tạo ra âm thanh trong trẻo và ngọt ngào. Sáo được sử dụng trong nhiều thể loại âm nhạc, từ nhạc cổ điển đến nhạc dân gian và thậm chí trong âm nhạc hiện đại.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Piano ', N'https://nhaccudotruong.com/wp-content/uploads/2022/06/Dan-Piano-Co_22.jpg', 38.0000, N'Đàn Piano', N'Đàn piano là một loại đàn bàn phím phổ biến và có âm thanh đa dạng. Nó có một loạt phím trắng và đen để tạo ra âm thanh khi người chơi nhấn vào chúng. Piano tạo ra âm thanh giàu cảm xúc và thường được sử dụng trong nhiều thể loại âm nhạc từ nhạc cổ điển đến pop. Nó có thể được chơi solo hoặc là một phần của dàn nhạc.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Organ ', N'https://vn.yamaha.com/vi/files/Image-Index_PSR-E473_900x900_10acf460c08f457db264fac40ee6f03e.jpg?impolicy=resize&imwid=396&imhei=396', 40.0000, N'Đàn Organ', N'Đàn organ là một loại đàn bàn phím có một hệ thống ống thổi và bàn phím. Nó tạo ra âm thanh mạnh mẽ và phức tạp và thường được sử dụng trong các nhà thờ, trong âm nhạc giao hưởng và nhạc cổ điển. Organ có nhiều bộ điều khiển và âm thanh đa dạng, cho phép người chơi tạo ra nhiều hiệu ứng âm nhạc khác nhau.', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Drums ', N'https://goodpiano.vn/upload/sanpham/j0427700000100000500x5001_1499846894.jpg', 55.0000, N'Trống', N'Trống là một trong những loại đàn trống cơ bản nhất trong nhạc cụ percussion. Nó bao gồm một thùng trống và một bề mặt trống (đôi khi gọi là đầu trống) được búa hoặc đánh để tạo ra âm thanh. Có nhiều loại trống khác nhau như trống bass, trống tom-tom, và trống snare, mỗi loại mang âm thanh riêng biệt. Trống thường xuất hiện trong nhiều thể loại nhạc, bao gồm rock, pop, jazz, và nhạc dân gian.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Harpsichord ', N'https://img.alicdn.com/imgextra/i1/916409206/TB2Y3IMlrFlpuFjy0FgXXbRBVXa_!!916409206.jpg_400x400.jpg_.webp', 70.0000, N'Đàn cimbalom', N'Đàn cimbalom là một loại đàn bàn phím chứa nhiều dây gập để tạo ra âm thanh khi bấm phím. Không giống như piano, đàn cimbalom không cho phép người chơi kiểm soát độ lớn của âm thanh bằng cách điều chỉnh áp lực nhấn phím, mà thay vào đó tạo ra âm thanh đa dạng dựa trên dây gập.', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Clavichord ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmgorR2s7acsOEwDyA5pDzyDn53MU1aPqChg&usqp=CAU', 80.0000, N'Đàn clavichord', N'Đàn clavichord là một loại đàn bàn phím chứa một loạt động cơ gập để tạo ra âm thanh. Điểm đặc biệt của clavichord là người chơi có thể kiểm soát độ lớn và âm sắc của âm thanh bằng cách thay đổi áp lực nhấn phím.', 3, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Marimba ', N'data:image/jpeg;base64,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', 90.0000, N'Đàn Marimba', N'Marimba là một loại đàn với thanh gỗ được đánh để tạo ra âm thanh. Đàn marimba có thanh được xếp thành một loạt để tạo ra các nốt âm nhạc khác nhau. Điều này tạo ra âm thanh ấm áp và rất độc đáo. Marimba thường xuất hiện trong âm nhạc giao hưởng, nhạc dân gian, và jazz.', 4, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Accordion ', N'https://vietthuong.vn/image/catalog/roland/organ/roland-fr-4x-01.jpg', 95.0000, N'Đàn accordion', N'Đàn accordion là một loại đàn bàn phím có nhiều bản đánh cùng nhau, tạo ra âm thanh khi kéo và bật. Nó thường được sử dụng trong nhạc dân gian và nhạc truyền thống. Đàn accordion có thể tạo ra âm thanh vui nhộn và sôi động và thường được sử dụng trong các nhóm nhạc dân gian.



', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Xylophone ', N'https://www.jaqueslondon.co.uk/cdn/shop/products/KidsXylophone-Xylophoneataslightanglewithwoodenbattens-90111_800x.png?v=1626867042', 150.0000, N'Xylophone', N'Xylophone là một loại đàn với thanh gỗ hoặc kim loại được đánh để tạo ra âm thanh. Thanh xylophone được xếp thành một loạt và có âm thanh rất trong trẻo và vui nhộn. Xylophone thường được sử dụng trong âm nhạc dân gian, nhạc trẻ em, và trong dàn nhạc giao hưởng để tạo các nốt âm nhạc sáng sủa.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Bongo Drums', N'https://amnhacvietthanh.vn/wp-content/uploads/2020/09/trong-Bongo-Meinl-HB100.jpg', 85.0000, N'Trống Bongo', N'Trống bongo là một cặp trống nhỏ, thường bằng gỗ hoặc da, được đánh bằng tay. Chúng có âm thanh sôi động và rất thích hợp cho nhạc vùng Caribbean và Latin. Trống bongo thường được sử dụng trong các ban nhạc salsa, mambo và nhạc dân gian Latin.', 4, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (14, N'sasori', N'0375801453', N'da nang')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (15, N'thong ml', N'12345678', N'da nang')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (16, N'viet hai', N'0375801453', N'da nang')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (17, N'buu', N'12345678', N'da nang')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (18, N'huy', N'0375801453', N'da nang')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'truong', N'12345678', N'da nang')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO

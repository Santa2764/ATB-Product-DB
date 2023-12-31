﻿USE [master]
GO
/****** Object:  Database [ATB]    Script Date: 11.07.2023 14:11:27 ******/
CREATE DATABASE [ATB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product', FILENAME = N'E:\Приложения\SQL Server\ШАГ\Product.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_log', FILENAME = N'E:\Приложения\SQL Server\ШАГ\Product_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ATB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ATB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATB] SET RECOVERY FULL 
GO
ALTER DATABASE [ATB] SET  MULTI_USER 
GO
ALTER DATABASE [ATB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ATB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ATB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ATB', N'ON'
GO
ALTER DATABASE [ATB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ATB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ATB]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.07.2023 14:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](100) NULL,
	[price] [float] NULL,
	[discount] [float] NULL,
	[quantity] [int] NULL,
	[measurement] [nvarchar](50) NULL,
	[producer] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'Родзинки', N'Сухофрукти та гооріхи', 27.8, 10, 500, N'пачка (150 г.)', N'Своя Лінія', N'Україна', N'АТБ', CAST(N'2023-05-05' AS Date), CAST(N'2023-11-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (2, N'Асорті фруктово горіхове', N'Сухофрукти та гооріхи', 40.3, 11, 1000, N'пачка (125 г.)', N'Своя Лініія', N'Україна', N'АТБ', CAST(N'2023-05-05' AS Date), CAST(N'2025-11-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (3, N'Чіпсы Lays', N'Снеки', 53.49, 0, 1200, N'пачка (200 г.)', N'Frito Lay', N'США', N'TM Hinto', CAST(N'2023-06-01' AS Date), CAST(N'2025-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (4, N'Молоко', N'Молочка', 39.75, 9.99, 400, N'пляшка (2 л.)', N'ГМЗ', N'Україна', N'ГМЗ', CAST(N'2023-07-07' AS Date), CAST(N'2023-08-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (5, N'Молочний шоколад', N'Солодощі', 45, 0, 1000, N'пачка (200 г.)', N'Milennium', N'Україна', N'Milennium Gold', CAST(N'2023-07-07' AS Date), CAST(N'2024-01-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (6, N'Pepsi', N'Напої', 38.49, 2.3, 1000, N'пляшка (2 л.)', N'Pepsi Co', N'США', N'Simons Bad', CAST(N'2023-06-14' AS Date), CAST(N'2026-06-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (7, N'Хліб', N'Хлібобулочні вироби', 20, 0, 150, N'шт', N'Одеський Хлібзавод', N'Україна', N'Хлібзавод', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (8, N'Вода газована', N'Напої', 35.2, 0, 2000, N'пляшка (2 л.)', N'Morshinska', N'Україна', N'Love Water', CAST(N'2023-05-01' AS Date), CAST(N'2026-05-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'Картопля', N'Овочі', 19.25, 2.5, 1000, N'кг', N'Моя Ферма', N'Україна', N'Зелене поле', CAST(N'2023-06-05' AS Date), CAST(N'2023-07-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (10, N'Морозиво', N'Заморожені вироби', 95.59, 9.99, 500, N'шт', N'Ласунка', N'Україна', N'Road Cream', CAST(N'2023-07-01' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (11, N'Хліб Бородинський', N'Хлібобулочні вироби', 25.2, 0, 100, N'шт', N'Хлібзавод', N'Україна', N'Хлібзавод', CAST(N'2023-07-02' AS Date), CAST(N'2023-07-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (12, N'Олія Оливкова', N'Бакалія', 119.99, 5, 700, N'пляшка (1 л.)', N'Barilla', N'Італія', N'Barilla', CAST(N'2023-05-01' AS Date), CAST(N'2024-05-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (13, N'Яблука', N'Фрукти', 49.99, 0, 2000, N'кг', N'Золота осінь', N'Україна', N'Зелене поле', CAST(N'2023-06-01' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (14, N'Сік "Виноградний"', N'Напої', 38.2, 10, 1500, N'пляшка (1 л.)', N'Sandora', N'Україна', N'Sandora', CAST(N'2023-02-25' AS Date), CAST(N'2025-02-25' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (15, N'Йогурт "Activia"', N'Молочка', 40, 5.3, 200, N'пляшка (0.5 л.)', N'Данон', N'Франція', N'Данон ООО', CAST(N'2023-07-01' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (16, N'Макарони "Спагетті"', N'Бакалія', 55.5, 0, 4000, N'кг', N'Barilla', N'Італія', N'Паста-Фабрик ООО', CAST(N'2023-05-10' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (17, N'Цукор', N'Бакалія', 45.09, 2.5, 1500, N'кг', N'Цукровий комбінат', N'Україна', N'Цукровий комбінат ООО', CAST(N'2023-06-01' AS Date), CAST(N'2028-06-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (18, N'Рис', N'Бакалія', 85.65, 0, 4000, N'кг', N'Рисовая плантація', N'Індія', N'Рисова плантація ООО', CAST(N'2022-11-10' AS Date), CAST(N'2024-05-26' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (19, N'Томати "Черри"', N'Овочі', 149.4, 6, 1000, N'кг', N'Хозяйство "Сонячне"', N'Україна', N'Зелене поле', CAST(N'2023-06-10' AS Date), CAST(N'2023-09-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (20, N'Чай "Фруктовий"', N'Напої', 89.1, 0, 2100, N'пачка (100 г.)', N'Ahman Tea', N'Англія', N'Ahman Tea', CAST(N'2023-02-01' AS Date), CAST(N'2026-06-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (21, N'Сир "Чеддер"', N'Молочка', 248.5, 7.5, 500, N'кг', N'Сирзавод "Смачний"', N'Україна', N'ГМЗ', CAST(N'2023-06-01' AS Date), CAST(N'2023-09-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (22, N'Олія Соняшникова', N'Бакалія', 112, 0, 800, N'пляшка (0.5 л.)', N'Соняечне', N'Молдоваа', N'Соняечне', CAST(N'2023-05-05' AS Date), CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (23, N'Картопля фрі', N'Заморожені вироби', 129.99, 5.5, 400, N'кг', N'Завод заморозки', N'Україна', N'Заморозка ООО', CAST(N'2023-01-25' AS Date), CAST(N'2025-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (24, N'Майонез', N'Бакалія', 48.13, 2.3, 1000, N'шт', N'Чумак', N'Молдова', N'Чумак', CAST(N'2023-03-20' AS Date), CAST(N'2024-03-20' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (25, N'Кукурудза консервована', N'Консерви', 49.1, 0, 2700, N'шт', N'Зелений світ', N'Україна', N'Чумак', CAST(N'2023-02-01' AS Date), CAST(N'2027-10-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (26, N'Макарони "Фарфалле"', N'Бакалія', 58.75, 0, 1500, N'кг', N'Barilla', N'Італія', N'Італія ООО', CAST(N'2023-02-10' AS Date), CAST(N'2028-02-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (27, N'Молоко кокосове', N'Молочка', 115.9, 20, 500, N'пляшка (0.5 л.)', N'Кокосова ферма', N'Тайланд', N'Кокосовая ферма ООО', CAST(N'2023-05-01' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (28, N'Горіх "Мигдаль"', N'Сухофрукти та гооріхи', 499.99, 0, 600, N'кг', N'Alesto', N'Польща', N'Здоровый орех ООО', CAST(N'2023-02-14' AS Date), CAST(N'2024-02-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (29, N'Соус Томатний', N'Бакалія', 52.3, 10, 500, N'шт', N'Чумак', N'Україна', N'Чумак', CAST(N'2023-04-01' AS Date), CAST(N'2024-04-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (30, N'Чай "Ассам"', N'Напої', 135.5, 5.5, 1000, N'шт', N'Ahman Tea', N'Англія', N'Ahman Tea', CAST(N'2023-05-05' AS Date), CAST(N'2025-08-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (31, N'Сир "Моцарелла"', N'Молочка', 210.65, 10, 350, N'кг', N'Сирзавод "Смачний"', N'Україна', N'ГМЗ', CAST(N'2023-07-01' AS Date), CAST(N'2023-10-20' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (32, N'Мед "Липовый"', N'Пчелопродукты', 298.25, 0, 200, N'кг', N'Ahman Tea', N'Англія', N'Ahman Tea', CAST(N'2023-07-05' AS Date), CAST(N'2025-07-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (33, N'Coca Cola', N'Напої', 34.5, 8.5, 500, N'пляшка (1.5 л.)', N'Pepsi Co', N'США', N'TM Hinto', CAST(N'2023-01-01' AS Date), CAST(N'2024-01-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (34, N'Томати', N'Овочі', 49.49, 0, 500, N'кг', N'Зелёний рай', N'Україна', N'Зелене поле', CAST(N'2023-06-20' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (35, N'Оливки', N'Консерви', 75.56, 10, 1000, N'шт', N'Своя Лінія', N'Греция', N'АТБ', CAST(N'2023-02-02' AS Date), CAST(N'2025-07-02' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (36, N'Гречка', N'Бакалія', 85, 0, 900, N'кг', N'Золота греча', N'Молдова', N'Зелене поле', CAST(N'2023-03-01' AS Date), CAST(N'2025-03-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (37, N'Соєве молоко', N'Молочка', 62.39, 5, 200, N'пляшка (0.5 л.)', N'Здорова альтернатива', N'Молдова', N'Здорова альтернатива ООО', CAST(N'2023-07-01' AS Date), CAST(N'2023-09-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (38, N'Сік "Апельсиновий"', N'Напої', 56.2, 6.5, 450, N'пляшка (1 л.)', N'Наш Сік', N'Україна', N'Sandora', CAST(N'2023-05-20' AS Date), CAST(N'2023-12-20' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (39, N'Банани', N'Фрукти', 65.5, 0, 1000, N'кг', N'Тропічный рай', N'Еквадор', N'Тропічный рай', CAST(N'2023-06-10' AS Date), CAST(N'2023-08-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (40, N'Кетчуп', N'Бакалія', 39.49, 10, 500, N'шт', N'Чумак', N'Україна', N'Чумак', CAST(N'2023-05-01' AS Date), CAST(N'2025-05-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (41, N'Цибуля репчата', N'Овочі', 15.19, 0, 500, N'кг', N'Зелене поле', N'Молдова', N'Зелене поле', CAST(N'2023-07-02' AS Date), CAST(N'2023-10-02' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (42, N'Морква', N'Овочі', 26.5, 7.5, 800, N'кг', N'Своя Лінія', N'Україна', N'АТБ', CAST(N'2023-07-01' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (43, N'Кіноа', N'Бакалія', 123.4, 12, 650, N'кг', N'Своя Лінія', N'Болівія', N'АТБ', CAST(N'2023-06-25' AS Date), CAST(N'2024-03-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (44, N'Квасоля консервована', N'Консерви', 56.29, 0, 1500, N'кг', N'Вкусные бобы', N'Молдова', N'АТБ', CAST(N'2023-05-01' AS Date), CAST(N'2026-11-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (45, N'Кифір', N'Молочка', 69.96, 5, 1000, N'пляшка(1 л.)', N'ГМЗ', N'Україна', N'ГМЗ', CAST(N'2023-07-05' AS Date), CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (46, N'Картопля "Біла"', N'Овочі', 35.5, 0, 1000, N'кг', N'Зелене поле', N'Молдова', N'Зелене поле', CAST(N'2023-07-01' AS Date), CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (47, N'Шпинат', N'Овочі', 64.49, 0, 600, N'кг', N'Зелене поле', N'Україна', N'Зелене поле', CAST(N'2023-06-06' AS Date), CAST(N'2023-10-06' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (48, N'Олія кокосова', N'Бакалія', 246.25, 23, 200, N'пляшка (0.5 л.)', N'Тропічный рай', N'Філіппіни', N'Тропічный рай', CAST(N'2023-05-10' AS Date), CAST(N'2025-11-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (49, N'Огірки "Маринованные"', N'Консерви', 145.1, 5, 500, N'кг', N'Господарка', N'Україна', N'Господарка', CAST(N'2023-02-10' AS Date), CAST(N'2026-10-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (50, N'Яблука "Голден"', N'Фрукти', 48.59, 0, 1000, N'кг', N'Зелене поле', N'Україна', N'Зелене поле', CAST(N'2023-06-01' AS Date), CAST(N'2023-09-01' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [ATB] SET  READ_WRITE 
GO

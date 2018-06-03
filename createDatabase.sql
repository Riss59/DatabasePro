CREATE DATABASE DatabasePro;
go

USE [DatabasePro]
GO
/****** Object:  Table [dbo].[Historia_Rozgrywek]    Script Date: 02.06.2018 23:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historia_Rozgrywek](
	[Data] [int] NOT NULL,
	[Zloty] [nvarchar](50) NOT NULL,
	[Srebrny] [nvarchar](50) NOT NULL,
	[Brazowy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Historia_Rozgrywek] PRIMARY KEY CLUSTERED 
(
	[Data] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kraj]    Script Date: 02.06.2018 23:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kraj](
	[Id] [int] NOT NULL,
	[Kraj] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kraj] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ranking]    Script Date: 02.06.2018 23:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranking](
	[Pozycja] [int] NOT NULL,
	[Druzyna] [nvarchar](50) NOT NULL,
	[Punkty] [int] NOT NULL,
	[Mecze] [int] NOT NULL,
	[W] [int] NOT NULL,
	[R] [int] NOT NULL,
	[P] [int] NOT NULL,
 CONSTRAINT [PK_Ranking] PRIMARY KEY CLUSTERED 
(
	[Pozycja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stadion]    Script Date: 02.06.2018 23:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadion](
	[Pozycja] [int] NOT NULL,
	[Miasto] [nvarchar](50) NOT NULL,
	[Stadion] [nvarchar](50) NOT NULL,
	[Pojemnosc] [float] NOT NULL,
 CONSTRAINT [PK_Stadion] PRIMARY KEY CLUSTERED 
(
	[Pozycja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strzelcy]    Script Date: 02.06.2018 23:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strzelcy](
	[NrRanking] [int] NOT NULL,
	[Klub] [int] NOT NULL,
	[Zawodnik] [nvarchar](50) NOT NULL,
	[Gry] [int] NOT NULL,
	[Gole] [int] NOT NULL,
 CONSTRAINT [PK_Strzelcy] PRIMARY KEY CLUSTERED 
(
	[NrRanking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trener]    Script Date: 02.06.2018 23:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trener](
	[Pozycja] [int] NOT NULL,
	[Trener] [nvarchar](50) NOT NULL,
	[Kraj_Trener] [int] NOT NULL,
	[Kapitan] [nvarchar](50) NOT NULL,
	[Kraj_Kapitan] [int] NOT NULL,
	[Sponsor_tech] [nvarchar](50) NOT NULL,
	[Sponsor_strateg] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trener] PRIMARY KEY CLUSTERED 
(
	[Pozycja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zawodnik]    Script Date: 02.06.2018 23:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zawodnik](
	[Id] [int] NOT NULL,
	[Numer] [int] NOT NULL,
	[PozycjaBoisko] [nvarchar](50) NOT NULL,
	[Pilkarz] [nvarchar](50) NOT NULL,
	[Klub] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Zawodnik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (1992, N'Manchester City', N'Manchester United', N'Arsenal Londyn')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (1993, N'Arsenal Londyn', N'Leicester City', N'Southampton')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (1994, N'Liverpool FC', N'Everton', N'Aston Villa')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (1995, N'Norwich', N'Arsenal Londyn', N'Manchester City')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (1996, N'Watford', N'Crystal Palace', N'Manchester City')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (1997, N'Arsenal Londyn', N'Manchester City', N'Leicester City')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (1998, N'Manchester City', N'Manchester United', N'Everton')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (1999, N'Sunderland', N'Newcastle United', N'Stoke City')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2000, N'Manchester City', N'Arsenal Londyn', N'Leicester City')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2001, N'Watford', N'Arsenal Londyn', N'Norwich')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2002, N'Manchester City', N'Arsenal Londyn', N'Manchester United')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2003, N'Stoke City', N'Watford', N'Sunderland')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2004, N'West Ham United', N'Watford', N'Everton')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2005, N'Crystal Palace', N'Leicester City', N'Arsenal Londyn')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2006, N'Newcastle United', N'Manchester City', N'Aston Villa')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2007, N'Manchester City', N'Arsenal Londyn', N'Leicester City')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2008, N'Arsenal Londyn', N'Manchester City', N'Everton')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2009, N'Leicester City', N'Sunderland', N'Watford')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2010, N'Watford', N'Everton', N'Crystal Palace')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2011, N'Manchester City', N'Leicester City', N'Crystal Palace')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2012, N'Sunderland', N'Everton', N'Arsenal Londyn')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2013, N'Norwich', N'Liverpool FC', N'Manchester City')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2014, N'Manchester City', N'Norwich', N'Manchester United')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2015, N'Manchester City', N'Liverpool FC', N'Norwich')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2016, N'Arsenal Londyn', N'Manchester United', N'Sunderland')
GO
INSERT [dbo].[Historia_Rozgrywek] ([Data], [Zloty], [Srebrny], [Brazowy]) VALUES (2017, N'Manchester United', N'Liverpool FC', N'Manchester City')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (1, N'Francja')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (2, N'Hiszpania')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (3, N'Wielka Brytania')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (4, N'Holandia')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (5, N'Australia')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (6, N'Wlochy')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (7, N'Niemcy')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (8, N'Belgia')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (9, N'Argentyna')
GO
INSERT [dbo].[Kraj] ([Id], [Kraj]) VALUES (10, N'Portugalia')
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (1, N'Leicester City', 81, 38, 23, 12, 3)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (2, N'Arsenal Londyn', 71, 38, 20, 11, 7)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (3, N'Tottenham Hotspur', 70, 38, 19, 13, 6)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (4, N'Manchester City', 66, 38, 19, 9, 10)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (5, N'Manchester United', 66, 38, 19, 9, 10)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (6, N'Southampton', 63, 38, 18, 9, 11)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (7, N'West Ham United', 62, 38, 16, 14, 8)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (8, N'Liverpool FC', 60, 38, 16, 12, 10)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (9, N'Stoke City', 51, 38, 14, 9, 15)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (10, N'Chelsea Londyn', 50, 38, 12, 14, 12)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (11, N'Everton', 47, 38, 11, 14, 13)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (12, N'Swansea City', 47, 38, 12, 11, 15)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (13, N'Watford', 45, 38, 12, 9, 17)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (14, N'West Bromwich Albion', 43, 38, 10, 13, 15)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (15, N'Crystal Palace', 42, 38, 11, 9, 18)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (16, N'AFC Bournemouth', 42, 38, 11, 9, 18)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (17, N'Sunderland', 39, 38, 9, 12, 17)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (18, N'Newcastle United', 37, 38, 9, 10, 19)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (19, N'Norwich', 34, 38, 9, 7, 22)
GO
INSERT [dbo].[Ranking] ([Pozycja], [Druzyna], [Punkty], [Mecze], [W], [R], [P]) VALUES (20, N'Aston Villa', 17, 38, 3, 8, 27)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (1, N'Leicester', N'King Power Stadium', 32312)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (2, N'Londyn', N'Emirates Stadium', 60260)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (3, N'Londyn', N'White Hart Lane', 36284)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (4, N'Manchester', N'City of Manchester Stadium', 55097)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (5, N'Manchester', N'Old Trafford', 75653)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (6, N'Southampton', N'St Marys Stadium', 32505)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (7, N'Londyn', N'Boleyn Ground', 35345)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (8, N'Liverpool', N'Anfield Road', 44742)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (9, N'Stoke-on-Trent', N'Britannia Stadium', 27740)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (10, N'Londyn', N'Stamford Bridge', 41798)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (11, N'Liverpool', N'Goodison Park', 39571)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (12, N'Swansea', N'Liberty Stadium', 20999)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (13, N'Watford', N'Vicarage Road', 21500)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (14, N'West Bromwich', N'The Hawthorns', 26850)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (15, N'Londyn', N'Selhurst Park', 25073)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (16, N'Bournemouth', N'Dean Court', 11464)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (17, N'Sunderland', N'Stadium of Light', 48707)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (18, N'Newcastle upon Tyne', N'St James Park', 52338)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (19, N'Norwich', N'Carrow Road', 27010)
GO
INSERT [dbo].[Stadion] ([Pozycja], [Miasto], [Stadion], [Pojemnosc]) VALUES (20, N'Birmingham', N'Villa Park', 42660)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (1, 3, N'Harry Kane', 38, 25)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (2, 4, N'Sergio Aguero', 30, 24)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (3, 1, N'Jamie Vardy', 36, 24)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (4, 11, N'Romelu Lukaku', 37, 18)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (5, 1, N'Riyad Mahrez', 37, 17)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (6, 2, N'Olivier Giroud', 38, 16)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (7, 17, N'Jermain Defoe', 33, 15)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (8, 13, N'Odion Ighalo', 37, 15)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (9, 2, N'Alexis Sanchez', 30, 13)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (10, 13, N'Troy Deeney', 38, 13)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (11, 10, N'Diego Costa', 28, 12)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (12, 12, N'Andre Ayew', 34, 12)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (13, 6, N'Graziano Pelle', 30, 11)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (14, 6, N'Sadio Mane', 37, 11)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (15, 5, N'Anthony Martial', 31, 11)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (16, 9, N'Marko Arnautovic', 34, 11)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (17, 12, N'Gylfi Sigurdsson', 36, 11)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (18, 18, N'Georginio Wijnaldum', 38, 11)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (19, 8, N'Roberto Firmino', 31, 10)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (20, 6, N'Shane Long', 28, 10)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (21, 3, N'Dele Alli', 33, 10)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (22, 7, N'Andy Carroll', 27, 9)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (23, 8, N'Christian Benteke', 29, 9)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (24, 18, N'Aleksandar Mitrovic', 34, 9)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (25, 14, N'Salomon Rondon', 34, 9)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (26, 7, N'Dimitri Payet', 30, 9)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (27, 4, N'Kelechi Iheanacho', 26, 8)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (28, 8, N'Daniel Sturridge', 14, 8)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (29, 8, N'Philippe Coutinho', 26, 8)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (30, 7, N'Michail Antonio', 26, 8)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (31, 5, N'Wayne Rooney', 28, 8)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (32, 11, N'Ross Barkley', 38, 8)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (33, 19, N'Dieumerci Mbokani', 29, 7)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (34, 9, N'Bojan', 27, 7)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (35, 4, N'Kevin De Bruyne', 25, 7)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (36, 10, N'Pedro', 29, 7)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (37, 6, N'Dusan Tadic', 34, 7)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (38, 20, N'Jordan Ayew', 30, 7)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (39, 7, N'Mark Noble', 37, 7)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (40, 1, N'Leonardo Ulloa', 29, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (41, 12, N'Bafetimbi Gomis', 33, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (42, 7, N'Manuel Lanzini', 26, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (43, 4, N'Raheem Sterling', 31, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (44, 16, N'Joshua King', 31, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (45, 18, N'Ayoze Perez', 34, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (46, 4, N'Yaya Toure', 32, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (47, 19, N'Nathan Redmond', 35, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (48, 5, N'Juan Mata', 38, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (49, 3, N'Christian Eriksen', 35, 6)
GO
INSERT [dbo].[Strzelcy] ([NrRanking], [Klub], [Zawodnik], [Gry], [Gole]) VALUES (50, 2, N'Mesut Ozil', 35, 6)
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (1, N'Claudio Ranieri', 6, N'Wes Morgan', 3, N'Puma', N'King Power')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (2, N'Arsene Wenger', 1, N'Mikel Arteta', 2, N'Puma', N'Emirates')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (3, N'Mauricio Pochettino', 5, N'Hugo Lloris', 3, N'Under Armour', N'AIA')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (4, N'Manuel Pellegrini', 3, N'Vincent Kompany', 8, N'Nike', N'Etihad Airways')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (5, N'Louis van Gaal', 4, N'Wayne Rooney', 3, N'Adidas', N'Chevrolet')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (6, N'Ronald Koeman', 4, N'José Fonte', 10, N'Adidas', N'Veho')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (7, N'Slaven Bilić', 3, N'Mark Noble', 3, N'Umbro', N'Betway')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (8, N'Jurgen Klopp', 7, N'Jordan Henderson', 3, N'New Balance', N'Standard Chartered')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (9, N'Mark Hughes', 3, N'Ryan Shawcross', 3, N'New Balance', N'Bet365')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (10, N'Guus Hiddink', 4, N'John Terry', 3, N'Adidas', N'Yokohama')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (11, N'David Unsworth', 3, N'Phil Jagielka', 3, N'Umbro', N'Chang')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (12, N'Francesco Guidolin', 10, N'Ashley Williams', 2, N'Adidas', N'GWFX')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (13, N'Quique Flores', 2, N'Troy Deeney', 3, N'Puma', N'138com')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (14, N'Tony Pulis', 3, N'Darren Fletcher', 4, N'Adidas', N'Tlcbet')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (15, N'Alan Pardew', 3, N'Mile Jedinak', 5, N'Macron', N'Mansion Group')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (16, N'Eddie Howe', 3, N'Tommy Elphick', 3, N'JD Sports', N'Mansion Group')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (17, N'Sam Allardyce', 3, N'John OShea', 3, N'Adidas', N'Dafabet')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (18, N'Rafael Benitez', 2, N'Fabricio Coloccini', 9, N'Puma', N'Wonga')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (19, N'Alex Neil', 3, N'Russell Martin', 3, N'Erreà', N'Aviva')
GO
INSERT [dbo].[Trener] ([Pozycja], [Trener], [Kraj_Trener], [Kapitan], [Kraj_Kapitan], [Sponsor_tech], [Sponsor_strateg]) VALUES (20, N'Eric Black', 3, N'Micah Richards', 3, N'Macron', N'Intuit QuickBooks')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (1, 1, N'BR', N'Willy Caballero', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (2, 2, N'OB', N'Antonio Rudiger', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (3, 3, N'OB', N'Marcos Alonso', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (4, 4, N'PO', N'Cesc Fabregas', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (5, 6, N'PO', N'Danny Drinkwater', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (6, 7, N'PO', N'NGolo Kante', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (7, 8, N'PO', N'Ross Barkley', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (8, 9, N'NA', N'Alvaro Morata', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (9, 10, N'PO', N'Eden Hazard', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (10, 11, N'PO', N'Pedro', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (11, 13, N'BR', N'Thibaut Courtois', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (12, 14, N'PO', N'Tiemoue Bakayoko', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (13, 15, N'PO', N'Victor Moses', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (14, 18, N'NA', N'Olivier Giroud', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (15, 21, N'OB', N'Davide Zappacosta', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (16, 22, N'PO', N'Willian', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (17, 24, N'OB', N'Gary Cahill', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (18, 27, N'OB', N'Andreas Christensen', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (19, 28, N'OB', N'Cesar Azpilicueta', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (20, 30, N'OB', N'David Luiz', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (21, 33, N'OB', N'Emerson Palmieri', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (22, 36, N'PO', N'Kyle Scott', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (23, 37, N'BR', N'Eduardo', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (24, 44, N'PO', N'Ethan Ampadu', N'Chelsea Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (25, 1, N'BR', N'Claudio Bravo', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (26, 2, N'OB', N'Kyle Walker', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (27, 3, N'OB', N'Danilo', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (28, 4, N'OB', N'Vincent Kompany', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (29, 5, N'OB', N'John Stones', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (30, 7, N'PO', N'Raheem Sterling', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (31, 8, N'PO', N'Ilkay GUndogan', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (32, 10, N'NA', N'Sergio Aguero', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (33, 14, N'OB', N'Aymeric Laporte', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (34, 17, N'PO', N'Kevin De Bruyne', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (35, 18, N'PO', N'Fabian Delph', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (36, 19, N'PO', N'Leroy Sane', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (37, 20, N'PO', N'Bernardo Silva', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (38, 21, N'PO', N'David Silva', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (39, 22, N'OB', N'Benjamin Mendy', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (40, 24, N'OB', N'Tosin Adarabioyo', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (41, 25, N'PO', N'Fernandinho', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (42, 30, N'OB', N'Nicolas Otamendi', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (43, 31, N'BR', N'Ederson Moraes', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (44, 33, N'NA', N'Gabriel Jesus', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (45, 35, N'PO', N'Oleksandr Zinczenko', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (46, 42, N'PO', N'Yaya Toure', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (47, 47, N'NA', N'Phil Foden', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (48, 55, N'PO', N'Brahim Diaz', N'Manchester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (49, 4, N'OB', N'Per Mertesacker', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (50, 6, N'OB', N'Laurent Koscielny', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (51, 7, N'PO', N'Henrich Mychitarian', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (52, 8, N'PO', N'Aaron Ramsey', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (53, 9, N'NA', N'Alexandre Lacazette', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (54, 10, N'PO', N'Jack Wilshere', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (55, 11, N'PO', N'Mesut Ozil', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (56, 13, N'BR', N'David Ospina', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (57, 14, N'NA', N'Pierre-Emerick Aubameyang', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (58, 16, N'OB', N'Rob Holding', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (59, 17, N'NA', N'Alex Iwobi', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (60, 18, N'OB', N'Nacho Monreal', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (61, 19, N'PO', N'Santi Cazorla', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (62, 20, N'OB', N'Shkodran Mustafi', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (63, 21, N'OB', N'Calum Chambers', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (64, 23, N'NA', N'Danny Welbeck', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (65, 24, N'OB', N'Hector Bellerin', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (66, 27, N'OB', N'Konstandinos Mawropanos', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (67, 29, N'PO', N'Granit Xhaka', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (68, 30, N'PO', N'Ainsley Maitland-Niles', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (69, 31, N'OB', N'Sead Kolasinac', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (70, 33, N'BR', N'Petr Cech', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (71, 35, N'PO', N'Mohamed Elneny', N'Arsenal Londyn')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (72, 1, N'BR', N'David de Gea', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (73, 2, N'OB', N'Victor Lindelof', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (74, 3, N'OB', N'Eric Bailly', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (75, 4, N'OB', N'Phil Jones', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (76, 5, N'OB', N'Marcos Rojo', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (77, 6, N'PO', N'Paul Pogba', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (78, 7, N'NA', N'Alexis Sanchez', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (79, 8, N'PO', N'Juan Mata', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (80, 9, N'NA', N'Romelu Lukaku', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (81, 11, N'NA', N'Anthony Martial', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (82, 12, N'OB', N'Chris Smalling', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (83, 14, N'PO', N'Jesse Lingard', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (84, 16, N'PO', N'Michael Carrick', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (85, 17, N'OB', N'Daley Blind', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (86, 18, N'PO', N'Ashley Young', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (87, 19, N'NA', N'Marcus Rashford', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (88, 20, N'BR', N'Sergio Romero', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (89, 21, N'PO', N'Ander Herrera', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (90, 23, N'OB', N'Luke Shaw', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (91, 25, N'OB', N'Antonio Valencia', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (92, 27, N'PO', N'Marouane Fellaini', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (93, 31, N'PO', N'Nemanja Matić', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (94, 36, N'OB', N'Matteo Darmian', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (95, 39, N'PO', N'Scott McTominay', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (96, 40, N'BR', N'Joel Castro Pereira', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (97, 43, N'OB', N'Cameron Borthwick-Jackson', N'Manchester United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (98, 1, N'BR', N'Hugo Lloris', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (99, 2, N'OB', N'Kieran Trippier', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (100, 3, N'OB', N'Danny Rose', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (101, 4, N'OB', N'Toby Alderweireld', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (102, 5, N'OB', N'Jan Vertonghen', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (103, 6, N'OB', N'Davinson Sanchez', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (104, 7, N'PO', N'Son Heung-min', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (105, 10, N'NA', N'Harry Kane', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (106, 11, N'PO', N'Erik Lamela', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (107, 12, N'PO', N'Victor Wanyama', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (108, 13, N'BR', N'Michel Vorm', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (109, 15, N'PO', N'Eric Dier', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (110, 17, N'PO', N'Moussa Sissoko', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (111, 18, N'NA', N'Fernando Llorente', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (112, 19, N'PO', N'Moussa Dembele', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (113, 20, N'PO', N'Dele Alli', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (114, 21, N'OB', N'Juan Foyth', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (115, 22, N'BR', N'Paulo Gazzaniga', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (116, 23, N'PO', N'Christian Eriksen', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (117, 24, N'OB', N'Serge Aurier', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (118, 27, N'PO', N'Lucas', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (119, 29, N'PO', N'Harry Winks', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (120, 33, N'OB', N'Ben Davies', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (121, 37, N'OB', N'Kyle Walker-Peters', N'Tottenham Hotspur')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (122, 1, N'BR', N'Loris Karius', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (123, 2, N'OB', N'Nathaniel Clyne', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (124, 4, N'OB', N'Virgil van Dijk', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (125, 5, N'PO', N'Georginio Wijnaldum', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (126, 6, N'OB', N'Dejan Lovren', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (127, 7, N'PO', N'James Milner', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (128, 9, N'NA', N'Roberto Firmino', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (129, 11, N'NA', N'Mohamed Salah', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (130, 12, N'OB', N'Joe Gomez', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (131, 14, N'PO', N'Jordan Henderson', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (132, 17, N'OB', N'Ragnar Klavan', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (133, 18, N'OB', N'Alberto Moreno', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (134, 19, N'NA', N'Sadio Mané', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (135, 20, N'PO', N'Adam Lallana', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (136, 21, N'PO', N'Alex Oxlade-Chamberlain', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (137, 22, N'BR', N'Simon Mignolet', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (138, 23, N'PO', N'Emre Can', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (139, 26, N'OB', N'Andy Robertson', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (140, 28, N'NA', N'Danny Ings', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (141, 29, N'NA', N'Dominic Solanke', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (142, 32, N'OB', N'Joel Matip', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (143, 34, N'BR', N'Adam Bogdan', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (144, 52, N'BR', N'Danny Ward', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (145, 58, N'NA', N'Ben Woodburn', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (146, 66, N'OB', N'Trent Alexander-Arnold', N'Liverpool FC')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (147, 2, N'OB', N'Cedric', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (148, 3, N'OB', N'Maya Yoshida', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (149, 5, N'OB', N'Jack Stephens', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (150, 6, N'OB', N'Wesley Hoedt', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (151, 7, N'NA', N'Shane Long', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (152, 8, N'PO', N'Steven Davis', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (153, 9, N'NA', N'Guido Carrillo', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (154, 10, N'NA', N'Charlie Austin', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (155, 11, N'PO', N'Dusan Tadic', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (156, 13, N'BR', N'Alex McCarthy', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (157, 14, N'PO', N'Oriol Romeu', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (158, 16, N'PO', N'James Ward-Prowse', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (159, 18, N'PO', N'Mario Lemina', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (160, 19, N'PO', N'Sofiane Boufal', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (161, 20, N'NA', N'Manolo Gabbiadini', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (162, 21, N'OB', N'Ryan Bertrand', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (163, 22, N'PO', N'Nathan Redmond', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (164, 23, N'PO', N'Pierre Hojbjerg', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (165, 25, N'OB', N'Florin Gardos', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (166, 26, N'OB', N'Jeremy Pied', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (167, 28, N'BR', N'Stuart Taylor', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (168, 30, N'OB', N'Will Wood', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (169, 32, N'OB', N'Alfie Jones', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (170, 34, N'PO', N'Jake Flannigan', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (171, 35, N'OB', N'Jan Bednarek', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (172, 38, N'PO', N'Sam McQueen', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (173, 39, N'PO', N'Josh Sims', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (174, 42, N'PO', N'Jake Hesketh', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (175, 43, N'PO', N'Yan Valery', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (176, 44, N'BR', N'Fraser Forster', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (177, 61, N'NA', N'Michael Obafemi', N'Southampton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (178, 1, N'BR', N'Lukasz Fabianski', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (179, 2, N'NA', N'Wilfried Bony', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (180, 4, N'PO', N'Ki Sung yong', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (181, 5, N'OB', N'Mike van der Hoorn', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (182, 6, N'OB', N'Alfie Mawson', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (183, 7, N'PO', N'Leon Britton', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (184, 8, N'PO', N'Leroy Fer', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (185, 10, N'NA', N'Tammy Abraham', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (186, 11, N'NA', N'Luciano Narsingh', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (187, 12, N'PO', N'Nathan Dyer', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (188, 13, N'BR', N'Kristoffer Nordfeldt', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (189, 14, N'PO', N'Tom Carroll', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (190, 15, N'PO', N'Wayne Routledge', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (191, 16, N'OB', N'Martin Olsson', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (192, 17, N'NA', N'Sam Clucas', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (193, 18, N'NA', N'Jordan Ayew', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (194, 19, N'NA', N'AndreAyew', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (195, 22, N'OB', N'Angel Rangel', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (196, 24, N'NA', N'Andy King ', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (197, 25, N'BR', N'Erwin Mulder', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (198, 26, N'OB', N'Kyle Naughton', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (199, 27, N'OB', N'Kyle Bartley', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (200, 33, N'OB', N'Federico Fernandez', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (201, 35, N'PO', N'Renato Sanches', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (202, 52, N'OB', N'Connor Roberts', N'Swansea City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (203, 1, N'BR', N'Jack Butland', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (204, 2, N'OB', N'Moritz Bauer', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (205, 3, N'OB', N'Erik Pieters', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (206, 4, N'PO', N'Joe Allen', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (207, 5, N'OB', N'Kevin Wimmer', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (208, 6, N'OB', N'Kurt Zouma ', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (209, 7, N'PO', N'Stephen Ireland', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (210, 8, N'OB', N'Glen Johnson', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (211, 9, N'NA', N'Saido Berahino', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (212, 10, N'PO', N'Eric Maxim Choupo Moting', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (213, 11, N'NA', N'Jesé Rodriguez', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (214, 14, N'PO', N'Ibrahim Afellay', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (215, 15, N'OB', N'Bruno Martins Indi', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (216, 16, N'PO', N'Charlie Adam', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (217, 17, N'OB', N'Ryan Shawcross', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (218, 18, N'NA', N'Mame Biram Diouf', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (219, 20, N'OB', N'Geoff Cameron', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (220, 21, N'OB', N'Kostas Stafilidis', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (221, 22, N'PO', N'Xherdan Shaqiri', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (222, 24, N'PO', N'Darren Fletcher', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (223, 25, N'NA', N'Peter Crouch', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (224, 27, N'PO', N'Papa Alioune Ndiaye', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (225, 29, N'BR', N'Jakob Haugaard', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (226, 31, N'PO', N'Thibaud Verlinden', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (227, 32, N'PO', N'Ramadan Sobhi', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (228, 33, N'BR', N'Lee Grant', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (229, 36, N'OB', N'Harry Souttar', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (230, 40, N'NA', N'Tyrese Campbell', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (231, 42, N'OB', N'Thomas Edwards', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (232, 55, N'PO', N'Lasse Sorensen', N'Stoke City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (233, 1, N'BR', N'Julian Speroni', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (234, 2, N'OB', N'Joel Ward', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (235, 3, N'OB', N'Patrick van Aanholt', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (236, 4, N'PO', N'Luka Milivojevic', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (237, 5, N'OB', N'James Tomkins', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (238, 6, N'OB', N'Scott Dann ', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (239, 7, N'PO', N'Yohan Cabaye', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (240, 8, N'PO', N'Ruben Loftus- Cheek', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (241, 10, N'PO', N'Andros Townsend', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (242, 11, N'PO', N'Wilfried Zaha', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (243, 12, N'OB', N'Mamadou Sakho', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (244, 13, N'BR', N'Wayne Hennessey', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (245, 14, N'PO', N'Lee Chung yong', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (246, 17, N'NA', N'Christian Benteke', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (247, 18, N'PO', N'James McArthur', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (248, 19, N'NA', N'Freddie Ladapo', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (249, 21, N'NA', N'Connor Wickham', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (250, 22, N'PO', N'Jordon Mutch', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (251, 23, N'OB', N'Pape Souare', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (252, 24, N'NA', N'Timothy Fosu', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (253, 25, N'PO', N'Sullay Kaikai', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (254, 26, N'PO', N'Bakary Sako', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (255, 27, N'OB', N'Damien Delaney', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (256, 31, N'OB', N'Jeff Schlupp', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (257, 32, N'NA', N'Levi Lumeka', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (258, 34, N'OB', N'Martin Kelly', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (259, 42, N'PO', N'Jason Puncheon', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (260, 44, N'OB', N'Jairo Riedewald', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (261, 33, N'OB', N'Jaroslaw Jach', N'Crystal Palace')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (262, 1, N'BR', N'Jordan Pickford', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (263, 2, N'PO', N'Morgan Schneiderlin', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (264, 3, N'OB', N'Leighton Baines', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (265, 4, N'OB', N'Michael Keane', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (266, 5, N'OB', N'Ashley Williams', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (267, 6, N'OB', N'Phil Jagielka', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (268, 7, N'PO', N'Yannick Bolasie', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (269, 10, N'NA', N'Wayne Rooney', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (270, 11, N'PO', N'Theo Walcott', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (271, 13, N'OB', N'Eliaquim Mangala', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (272, 14, N'NA', N'Cenk Tosun', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (273, 15, N'PO', N'Cuco Martina', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (274, 16, N'PO', N'James McCarthy', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (275, 17, N'PO', N'Idrissa Gueye', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (276, 18, N'PO', N'Gylfi Sigurosson', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (277, 19, N'NA', N'Baye Oumar Niasse', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (278, 20, N'PO', N'Davy Klaassen', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (279, 22, N'BR', N'Maarten Stekelenburg', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (280, 23, N'OB', N'Seamus Coleman', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (281, 25, N'OB', N'Ramiro Funes Mori', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (282, 26, N'PO', N'Tom Davies', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (283, 27, N'PO', N'Nikola Vlasic', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (284, 29, N'NA', N'Dominic Calvert Lewin', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (285, 30, N'OB', N'Mason Holgate', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (286, 33, N'BR', N'Joel Robles', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (287, 43, N'OB', N'Jonjoe Kenny', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (288, 54, N'PO', N'Beni Baningime', N'Everton')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (289, 2, N'OB', N'Winston Reid', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (290, 3, N'OB', N'Aaron Cresswell', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (291, 5, N'OB', N'Pablo Zabaleta', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (292, 7, N'NA', N'Marko Arnautovic', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (293, 8, N'PO', N'Cheikhou Kouyate', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (294, 9, N'NA', N'Andy Carroll', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (295, 10, N'PO', N'Manuel Lanzini', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (296, 12, N'NA', N'Jordan Hugill', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (297, 13, N'BR', N'Adrian', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (298, 14, N'PO', N'Pedro Obiang', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (299, 16, N'PO', N'Mark Noble', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (300, 17, N'NA', N'Javier Hernandez', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (301, 18, N'PO', N'Joao Mari', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (302, 19, N'OB', N'James Collins', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (303, 21, N'OB', N'Angelo Ogbonna', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (304, 22, N'OB', N'Sam Byram', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (305, 23, N'PO', N'Sead Haksabanović', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (306, 25, N'BR', N'Joe Hart', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (307, 26, N'OB', N'Arthur Masuaku', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (308, 27, N'OB', N'Patrice Evra', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (309, 30, N'PO', N'Michail Antonio', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (310, 31, N'PO', N'Edimilson Fernandes', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (311, 32, N'OB', N'Reece Burke', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (312, 33, N'OB', N'Josh Cullen', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (313, 39, N'OB', N'Josh Pask', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (314, 41, N'OB', N'Declan Rice', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (315, 43, N'PO', N'Marcus Browne', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (316, 45, N'PO', N'Grady Diangana', N'West Ham United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (317, 1, N'BR', N'Ben Foster', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (318, 2, N'OB', N'Allan Nyom', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (319, 3, N'OB', N'Kieran Gibbs', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (320, 4, N'NA', N'Hal Robson Kanu', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (321, 5, N'PO', N'Claudio Yacob', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (322, 6, N'OB', N'Jonny Evans', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (323, 7, N'PO', N'James Morrison', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (324, 8, N'PO', N'Jake Livermore', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (325, 9, N'NA', N'Salomón Rondón', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (326, 10, N'PO', N'Matt Phillips', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (327, 11, N'PO', N'Chris Brunt', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (328, 13, N'BR', N'Boaz Myhill', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (329, 14, N'PO', N'James McClean', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (330, 15, N'NA', N'Daniel Sturridge', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (331, 16, N'OB', N'Ali Gabr', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (332, 17, N'PO', N'Oliver Burke', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (333, 18, N'PO', N'Gareth Barry', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (334, 19, N'NA', N'Jay Rodriguez', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (335, 20, N'PO', N'Grzegorz Krychowiak', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (336, 22, N'PO', N'Nacer Chadli', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (337, 23, N'OB', N'Gareth McAuley', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (338, 25, N'OB', N'Craig Dawson', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (339, 26, N'OB', N'Ahmad Hidzazi', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (340, 28, N'PO', N'Sam Field', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (341, 34, N'OB', N'Rekeem Harper', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (342, 40, N'BR', N'Alex Palmer', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (343, 45, N'NA', N'Jonathan Leko', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (344, 54, N'OB', N'Max Melbourne', N'West Bromwich Albion')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (345, 1, N'BR', N'Kasper Schmeichel', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (346, 2, N'OB', N'Danny Simpson', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (347, 3, N'PO', N'Ben Chilwell', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (348, 5, N'OB', N'Wes Morgan', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (349, 6, N'OB', N'Robert Huth', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (350, 7, N'NA', N'Demarai Gray', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (351, 8, N'NA', N'Kelechi Iheanacho', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (352, 9, N'NA', N'Jamie Vardy', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (353, 11, N'PO', N'Marc Albrighton', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (354, 12, N'BR', N'Ben Hamer', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (355, 14, N'NA', N'Adrien Silva', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (356, 15, N'OB', N'Harry Maguire', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (357, 16, N'OB', N'Aleksandar Dragovic', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (358, 17, N'BR', N'Eldin Jakupovićc', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (359, 18, N'PO', N'Daniel Amartey', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (360, 20, N'NA', N'Shinji Okazaki', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (361, 21, N'PO', N'Vicente Iborra', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (362, 22, N'PO', N'Matty James', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (363, 25, N'PO', N'Wilfred Ndidi', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (364, 26, N'PO', N'Riyad Mahrez', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (365, 28, N'OB', N'Christian Fuchs', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (366, 29, N'OB', N'Yohan Benalouane', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (367, 30, N'NA', N'George Thomas', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (368, 32, N'PO', N'Harvey Barnes', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (369, 33, N'PO', N'Fousseni Diabate', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (370, 34, N'OB', N'Josh Knight', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (371, 38, N'PO', N'Hamza Choudhury', N'Leicester City')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (372, 1, N'BR', N'Rob Elliot', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (373, 2, N'OB', N'Ciaran Clark', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (374, 3, N'OB', N'Paul Dummett', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (375, 6, N'OB', N'Jamaal Lascelles', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (376, 7, N'NA', N'Jacob Murphy', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (377, 8, N'PO', N'Jonjo Shelvey', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (378, 9, N'NA', N'Dwight Gayle', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (379, 10, N'PO', N'Mohamed Diame', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (380, 11, N'PO', N'Matt Ritchie', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (381, 12, N'BR', N'Martin Dubravka', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (382, 13, N'NA', N'Islam Slimani', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (383, 14, N'PO', N'Isaac Hayden', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (384, 15, N'PO', N'Kenedy', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (385, 17, N'NA', N'Ayoze Perez', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (386, 18, N'OB', N'Chancel Mbemba', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (387, 19, N'OB', N'Javier Manquillo', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (388, 20, N'OB', N'Florian Lejeune', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (389, 21, N'NA', N'Joselu', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (390, 22, N'OB', N'DeAndre Yedlin', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (391, 23, N'PO', N'Mikel Merino', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (392, 25, N'OB', N'Massadio Haïdara', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (393, 26, N'BR', N'Karl Darlow', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (394, 27, N'OB', N'Jesus Gamez', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (395, 30, N'PO', N'Christian Atsu', N'Newcastle United')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (396, 1, N'BR', N'Jason Steele', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (397, 2, N'OB', N'Billy Jones', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (398, 3, N'OB', N'Bryan Oviedo', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (399, 4, N'PO', N'Paddy McNair', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (400, 5, N'OB', N'Papy Djilobodji', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (401, 6, N'PO', N'Lee Cattermole', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (402, 7, N'NA', N'Jeremain Lens', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (403, 8, N'PO', N'Jack Rodwell', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (404, 9, N'NA', N'James Vaughan', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (405, 10, N'PO', N'Wahbi Khazri', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (406, 11, N'OB', N'Lewis Grabban', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (407, 12, N'BR', N'Mika', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (408, 14, N'NA', N'Duncan Watmore', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (409, 15, N'OB', N'Brendan Galloway', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (410, 16, N'OB', N'John OShea', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (411, 17, N'PO', N'Didier Ndong', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (412, 18, N'OB', N'Tyias Browning', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (413, 19, N'NA', N'Aiden McGeady', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (414, 20, N'NA', N'Josh Maja', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (415, 21, N'OB', N'Adam Matthews', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (416, 22, N'OB', N'Donald Love', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (417, 23, N'OB', N'Lamine Kone', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (418, 24, N'PO', N'Darron Gibson', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (419, 25, N'BR', N'Robbin Ruiter', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (420, 26, N'PO', N'George Honeyman', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (421, 27, N'PO', N'Lynden Gooch', N'Sunderland')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (422, 1, N'BR', N'Sam Johnstone', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (423, 2, N'OB', N'Ritchie De Laet', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (424, 3, N'OB', N'Neil Taylor', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (425, 4, N'OB', N'Christopher Samba', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (426, 5, N'OB', N'James Chester', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (427, 6, N'PO', N'Glenn Whelan', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (428, 7, N'PO', N'Robert Snodgrass', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (429, 8, N'PO', N'Henri Lansbury', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (430, 9, N'NA', N'Scott Hogan', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (431, 10, N'PO', N'Jack Grealish', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (432, 11, N'NA', N'Gabriel Agbonlahor', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (433, 13, N'BR', N'Jed Steer', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (434, 14, N'PO', N'Conor Hourihane', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (435, 15, N'PO', N'Mile Jedinak', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (436, 16, N'OB', N'James Bree', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (437, 17, N'OB', N'Micah Richards', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (438, 18, N'PO', N'Josh Onomah', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (439, 19, N'NA', N'Andre Green', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (440, 20, N'PO', N'Birkir Bjarnason', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (441, 21, N'OB', N'Alan Hutton', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (442, 22, N'NA', N'Jonathan Kodjia', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (443, 24, N'OB', N'Tommy Elphick', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (444, 26, N'OB', N'John Terry', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (445, 27, N'PO', N'Ahmed El Mohamadi', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (446, 31, N'BR', N'Mark Bunn', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (447, 37, N'NA', N'Albert Adomah', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (448, 38, N'PO', N'Jordan Lyden', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (449, 44, N'NA', N'Ross McCormack', N'Aston Villa')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (450, 1, N'BR', N'Artur Boruc', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (451, 2, N'OB', N'Simon Francis', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (452, 3, N'OB', N'Steve Cook', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (453, 4, N'OB', N'Dan Gosling', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (454, 5, N'OB', N'Nathan Ake', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (455, 6, N'PO', N'Andrew Surman', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (456, 7, N'PO', N'Marc Pugh', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (457, 8, N'PO', N'Harry Arter', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (458, 11, N'PO', N'Charlie Daniels', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (459, 13, N'NA', N'Callum Wilson', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (460, 14, N'OB', N'Brad Smith', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (461, 15, N'NA', N'Adam Smith', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (462, 16, N'PO', N'Lewis Cook', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (463, 17, N'NA', N'Joshua King', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (464, 18, N'NA', N'Jermain Defoe', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (465, 19, N'PO', N'Junior Stanislas', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (466, 22, N'PO', N'Emerson Hyndman', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (467, 24, N'PO', N'Ryan Fraser', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (468, 26, N'OB', N'Tyrone Mings', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (469, 27, N'BR', N'Asmir Begovic', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (470, 29, N'OB', N'Rhoys Wiggins', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (471, 31, N'NA', N'Lys Mousset', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (472, 33, N'PO', N'Jordon Ibe', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (473, 42, N'OB', N'Jack Simpson', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (474, 58, N'PO', N'Kyle Taylor', N'AFC Bournemouth')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (475, 1, N'BR', N'Heurelho Gomes', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (476, 2, N'OB', N'Daryl Janmaat', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (477, 3, N'OB', N'Miguel Britos', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (478, 4, N'OB', N'Younes Kaboul', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (479, 5, N'OB', N'Sebastian Prodl', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (480, 6, N'OB', N'Adrian Mariappa', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (481, 7, N'NA', N'Gerard Deulofeu', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (482, 8, N'PO', N'Tom Cleverley', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (483, 9, N'NA', N'Troy Deeney', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (484, 11, N'PO', N'Richarlison', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (485, 12, N'PO', N'Didier Ibrahim Ndong', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (486, 13, N'OB', N'Molla Wague', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (487, 14, N'PO', N'Nathaniel Chalobah', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (488, 15, N'OB', N'Craig Cathcart', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (489, 16, N'PO', N'Abdoulaye Doucoure', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (490, 17, N'NA', N'Jerome Sinclair', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (491, 18, N'NA', N'Andre Gray', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (492, 19, N'PO', N'Will Hughes', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (493, 20, N'PO', N'Dodi Lukebakio', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (494, 21, N'OB', N'Kiko Femenia', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (495, 22, N'OB', N'Marvin Zeegelaar', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (496, 25, N'OB', N'Jose Holebas', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (497, 27, N'OB', N'Christian Kabasele', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (498, 28, N'PO', N'Andre Carrillo', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (499, 29, N'PO', N'Etienne Capoue', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (500, 30, N'BR', N'Orestis Karnezis', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (501, 31, N'OB', N'Thomas Hoban', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (502, 33, N'NA', N'Stefano Okaka', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (503, 35, N'BR', N'Daniel Bachmann', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (504, 37, N'PO', N'Roberto Pereyra', N'Watford')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (505, 4, N'PO', N'Graham Dorrans', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (506, 5, N'OB', N'Russell Martin', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (507, 7, N'NA', N'Steven Naismith', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (508, 8, N'PO', N'Jonny Howson', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (509, 9, N'NA', N'Nelson Oliveira', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (510, 10, N'NA', N'Cameron Jerome', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (511, 11, N'NA', N'Matt Jarvis', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (512, 13, N'BR', N'Paul Jones', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (513, 14, N'PO', N'Wes Hoolahan', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (514, 15, N'OB', N'Timm Klose', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (515, 17, N'NA', N'Yanic Wildschut', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (516, 21, N'PO', N'Alex Pritchard', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (517, 22, N'PO', N'Jacob Murphy', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (518, 25, N'OB', N'Ivo Pinto', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (519, 27, N'PO', N'Alexander Tettey', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (520, 28, N'PO', N'James Maddison', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (521, 30, N'NA', N'Carlton Morris', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (522, 31, N'NA', N'Josh Murphy', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (523, 33, N'BR', N'Michael McGovern', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (524, 34, N'PO', N'Louis Thompson', N'Norwich')
GO
INSERT [dbo].[Zawodnik] ([Id], [Numer], [PozycjaBoisko], [Pilkarz], [Klub]) VALUES (525, 35, N'OB', N'Ben Godfrey', N'Norwich')
GO

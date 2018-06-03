
USE DatabasePro

GO

ALTER DATABASE [DatabasePro] ADD FILEGROUP [grupa_1]

GO

ALTER DATABASE [DatabasePro] ADD FILEGROUP [grupa_2]

GO

ALTER DATABASE [DatabasePro] ADD FILEGROUP [grupa_3]

GO

ALTER DATABASE [DatabasePro] ADD FILEGROUP [grupa_4]

GO


ALTER DATABASE [DatabasePro] ADD FILE

(NAME = N'Players2017_TOP5',

FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Players2017_TOP5.ndf',

SIZE = 2048KB , FILEGROWTH = 1024KB ) TO FILEGROUP [grupa_1]

GO


ALTER DATABASE [DatabasePro] ADD FILE

(NAME = N'Players2017_TOP5_10',

FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Players2017_TOP5_10.ndf',

SIZE = 2048KB , FILEGROWTH = 1024KB ) TO FILEGROUP [grupa_2]

GO


ALTER DATABASE [DatabasePro] ADD FILE

(NAME = N'Players2017_TOP10_15',

FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Players2017_TOP10_15.ndf',

SIZE = 2048KB , FILEGROWTH = 1024KB ) TO FILEGROUP [grupa_3]

GO


ALTER DATABASE [DatabasePro] ADD FILE

(NAME = N'Players2017_TOP15_20',

FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Players2017_TOP15_20.ndf',

SIZE = 2048KB , FILEGROWTH = 1024KB ) TO FILEGROUP [grupa_4]

GO

USE DatabasePro

GO

CREATE PARTITION FUNCTION funkcja_Pozycja(int)

AS RANGE RIGHT

FOR VALUES(5,10,15)

GO

CREATE PARTITION SCHEME schemat_ZawodnikPoz

AS PARTITION funkcja_Pozycja

TO (grupa_1,grupa_2,grupa_3,grupa_4)

GO

CREATE TABLE PartitionTable (ID int , Pozycja int, Pilkarz char(100), PozycjaBoisko char(5), Klub char(50))  
    ON schemat_ZawodnikPoz(Pozycja) ;  

go

select a.ID,b.Pozycja,a.Pilkarz,a.PozycjaBoisko,a.Klub
into tab1
from DatabasePro.dbo.Zawodnik a
inner join DatabasePro.dbo.Ranking b
on b.druzyna=a.klub

insert into PartitionTable
(
ID,
Pozycja,
Pilkarz,
PozycjaBoisko,
Klub
)
select
ID,
Pozycja,
Pilkarz,
PozycjaBoisko,
Klub
from tab1
go


SELECT 

ID,
Pozycja,
Pilkarz,
PozycjaBoisko,
Klub,
$PARTITION.funkcja_Pozycja ([Pozycja]) AS [Numer partycji]
FROM PartitionTable

GO

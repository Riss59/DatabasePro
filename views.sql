
Use DatabasePro;

create view dbo.vbramkarzeTop10
WITH SCHEMABINDING
 as 
select b.ID,a.Pozycja,b.Klub,b.Pilkarz
from dbo.Ranking a
inner join dbo.Zawodnik b
on a.Druzyna=b.Klub
where b.PozycjaBoisko='BR' and a.Pozycja<10
go

SET STATISTICS TIME ON;
select * from vbramkarzeTop10
select * from (select b.ID,a.Pozycja,b.Klub,b.Pilkarz
from DatabasePro.dbo.Ranking a
inner join DatabasePro.dbo.Zawodnik b
on a.Druzyna=b.Klub
where b.PozycjaBoisko='BR' and a.Pozycja<10) t
go

CREATE UNIQUE CLUSTERED INDEX IDX_bramkarze 
    ON dbo.vbramkarzeTop10 (ID);
go

SET STATISTICS io ON;

select * from vbramkarzeTop10 order by Pozycja
select b.ID,a.Pozycja,b.Klub,b.Pilkarz
from DatabasePro.dbo.Ranking a
inner join DatabasePro.dbo.Zawodnik b
on a.Druzyna=b.Klub
where b.PozycjaBoisko='BR' and a.Pozycja<10
order by Pozycja

/****** Script for SelectTopNRows command from SSMS  ******/
--Przygotowć selecty pobierające dane z użyciem select-from-where-group by-having, 
--zastosować również funkcje agregujące oraz funkcje okna (agregujące (np. sum()...
--over (.....)), rankingowe (rank, dense_rank,row_number), 
--analityczne (lag, lead, first_value, last_value))

Use DatabasePro;

Select Zawodnik, gole from Strzelcy where Gole > 20 order by Gole;

select b.[Druzyna],b.[Punkty],
       a.[Sponsor_tech]
  from [DatabasePro].dbo.[Trener] a
  inner join [DatabasePro].dbo.[Ranking] b
  on a.[Pozycja]=b.[Pozycja]
  where Sponsor_tech = 'Adidas'
  order by Punkty;
        

  select PozycjaBoisko,count(*) as Liczba from
  (select * from [DatabasePro].[dbo].[Zawodnik] where klub='Manchester United') a
  group by PozycjaBoisko


select SUM(Gole) from Strzelcy;
select AVG(Gole) from Strzelcy;
select Klub,sum(Gole) as Gole
	from Strzelcy
	Group by Klub
go


select Klub,
	SUM(Gole) OVER(Partition by Klub ) as Gole
from Strzelcy;



SELECT Ranking.Druzyna, Gole,  
ROW_NUMBER() OVER( ORDER BY Gole desc ) AS Pozycja
FROM (select Klub,sum(gole) as Gole from Strzelcy group by klub) P
inner join Ranking 
on P.Klub=Ranking.Pozycja


SELECT Ranking.Druzyna, Gole,  
Rank() OVER( ORDER BY Gole desc ) AS Pozycja
FROM (select Klub,sum(gole) as Gole from Strzelcy group by klub) P
inner join Ranking 
on P.Klub=Ranking.Pozycja

SELECT Ranking.Druzyna, Gole,  
DENSE_RANK() OVER( ORDER BY Gole desc ) AS Pozycja
FROM (select Klub,sum(gole) as Gole from Strzelcy group by klub) P
inner join Ranking 
on P.Klub=Ranking.Pozycja



select Zawodnik,Gole,ntile(5) over(order by Gole desc) as Grupa
FROM Strzelcy 


select Pozycja,Druzyna,Punkty,Punkty - lead(Punkty,1) over(order by Pozycja) Roznica,
Punkty-lag(Punkty,1) over(order by Pozycja) PktDoMscWyzej 
from Ranking


Select ZLOTY,LAST_VALUE(Data) over(order by Zloty) as ostatni_zloty
 from Historia_Rozgrywek

 select *  into tab2 from Zawodnik where Zawodnik.Numer>10
 
 select tab2.*, FIRST_VALUE(Numer) over(partition by klub order by Numer) as najmniejszy_numer,
 First_VALUE(Numer) over(partition by klub order by Numer desc) as najwiekszy_numer
 from  tab2 
 





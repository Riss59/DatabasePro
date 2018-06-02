--Proceduroa wyciagajaca top najwiekszych stadionow
create or alter procedure [TopStadion] @City int
as
if @City<=(select count(*) from [DatabasePro].dbo.[Stadion])
begin
select TOP (@City) [Miasto]
      ,[Stadion]
      ,[Pojemnosc]
  from [DatabasePro].dbo.[Stadion]
  order by [Pojemnosc] desc
end
else
	begin
		select 'Za duża liczba'
	end
go

Exec TopStadion 3
go

--Procedura podajacy nazwy klubow ktorych sponsorem technicznym jest dana firma
create or alter procedure [ClubsofSponsor] @Sponsor varchar(100)
as
if lower(@Sponsor)  in (select lower([Sponsor_tech]) from [DatabasePro].dbo.[Trener])
begin
select b.[Druzyna],
       a.[Sponsor_tech]
  from [DatabasePro].dbo.[Trener] a
  inner join [DatabasePro].dbo.[Ranking] b
  on a.[Pozycja]=b.[Pozycja]
  where lower([Sponsor_tech])=lower(@Sponsor)
end
else
	begin
		select 'Nie ma takiego Sponsora'
	end
go

Exec ClubsofSponsor 'Adidas'
go

Exec ClubsofSponsor 'niewiem'
go


--Funkcja wyciagajaca srednia liczbe pkt na mecz
create or alter function AvergageOnMatch (@Klub varchar(40))
returns float
as
begin
	declare @average Float;

	Set @average = (select round(Punkty*1.00/Mecze,2) from DatabasePro.dbo.Ranking where lower(Druzyna) = lower(@Klub));

return @average;
end
go

select Druzyna, dbo.AvergageOnMatch(Druzyna)
from DatabasePro.dbo.Ranking

--Funkcja wyciagajaca srednia pensje pilkarza - obliczajaca ja jako stawka za miejsce w lidze plus
-- pieniadze za zdobyte gole

create or alter function getPayment (@SumaPodzialu INT,@BonusGol int, @Zawodnik varchar(100),@withPremium bit)
returns float
as
begin
	declare @basicAmount float;
	declare @premiumGoals float;
	declare @numberPlayers int;
	declare @pozycja int;
	declare @Klub varchar(100);


	set @Klub=(select Klub from DatabasePro.dbo.Zawodnik where Pilkarz=@Zawodnik)
	set @numberPlayers= (select count(*) from DatabasePro.dbo.Zawodnik a where klub=@Klub);
	set @pozycja=(select Pozycja from DatabasePro.dbo.Ranking where Druzyna=@Klub);
	if @pozycja<=5
		set @basicAmount=(0.08*@SumaPodzialu)/@numberPlayers;
	else
		if @pozycja >15
			set @basicAmount=(0.05*@SumaPodzialu)/@numberPlayers;
		else
		 	set @basicAmount=(0.02*@SumaPodzialu)/@numberPlayers;

	if @withPremium=1
	 set @premiumGoals=@BonusGol*(select gole from DatabasePro.dbo.Strzelcy where Zawodnik=@Zawodnik);
	else
	 set @premiumGoals=0;
return round(@basicAmount,2)+coalesce(@premiumGoals,0);
end
go

 --Premia
select DatabasePro.dbo.getPayment(10000,1000,'Romelu Lukaku',1);
--brakpremii
select Projekt.dbo.getPayment(10000,1000,'Romelu Lukaku',0);


select top(4)  Zawodnik, Projekt.dbo.getPayment(10000,1000,Zawodnik,1) from [Projekt].[dbo].[Strzelcy];


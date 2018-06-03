--indeksy
use DatabasePro;
--plusy - indeksy poprawiaja select (wyszykiwanie, sortowanie, zlaczenia)
--minusy - indeksy pogarszaja DML (insert, update,delete), 
--        zajmuja dodatkowe miejsce

--demo uzycia indeksu
drop table Zawodnik2;

select * into Zawodnik2 from Zawodnik1;

--uwaga: tabela nie ma klucza g³ównego ani ograniczenia unique a zatem
--nie ma ¿adnego indeksu


--w³¹czamy I/O statystyki
set statistics io on
select * from Zawodnik2
inner join Ranking on
Zawodnik2.Klub=Ranking.Druzyna

select * from Zawodnik2

select * from Zawodnik2
where id=100

set statistics io off
create nonclustered index idx1 on Zawodnik2(id)
set statistics io on

select * from Zawodnik2
where id=100

select * from Zawodnik2

select id from Zawodnik2


select * from Zawodnik2
where id>100 and id < 200
set statistics io off
alter table Zawodnik2 add id2 int
go

declare @i int = 525
--declare @j int
while @i>=0
begin
update Zawodnik2 set id2=@i
where id=@i
set @i=@i-1
end

drop index idx1 on Zawodnik2

create clustered index idx2 on Zawodnik2(id2) 

set statistics io on
select * from Zawodnik2

select id2 from Zawodnik2


select top 300 * from Zawodnik2
select * from Zawodnik2
inner join Ranking on
Zawodnik2.Klub=Ranking.Druzyna














with condition1 as (
    select tiv_2015, count(pid) as sametiv2015s
    from insurance
    group by tiv_2015
    having count(pid) > 1),
condition2 as (
    select lat, lon
    from insurance
    group by lat, lon
    having count(pid) = 1)
select round(sum(tiv_2016),2) as tiv_2016
from insurance
where tiv_2015 in (select tiv_2015 from condition1) and lat in (select lat from condition2) and lon in (select lon from condition2)

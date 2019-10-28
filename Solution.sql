/**Get patient with only asthma - given two drugs with two different dates**/
select a.patientkey, a.[first name] from
(select * from [dbo].[Patient] 
where age >= 65) a

join 
(select patientkey,drugkey,supply
from
(SELECT distinct patientkey, drugkey, servicedate, supply
from [dbo].[RxClaims]
group by patientkey, drugkey,servicedate, supply
having count(distinct reversal) = 1) Claims
group by patientkey,drugkey,supply
having count(distinct servicedate) > 1) b

on a.patientkey = b.patientkey

/**Get variance**/
select a.patientkey, (b.kpi-a.kpi) KpiDiff, c.[control]
from
(select patientkey,kpi from [dbo].[kpi_results]
where datekey = '20180101') a
join
(select patientkey, kpi from [dbo].[kpi_results]
where datekey = '20181231') b
on a.patientkey = b.patientkey
join
(select patientkey, [control] from [dbo].[Patients]) c
on a.patientkey = c.patientkey

/**Get days where no drug took**/
select a.id, b.[fill day], a.[fill day],
(b.[fill day] - a.[fill day])-a.[amount of pills] 'No Drug Days'
from
(select id, [fill day], [amount of pills]
from dbo.prescription) a
join
(select id, [fill day], [amount of pills]
from dbo.prescription) b
on a.id + 1 = b.id
where  (b.[fill day] - a.[fill day])-a.[amount of pills] > 0
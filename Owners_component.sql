--Fetch Pets associated with Owner with Id 13 (Akshaj Kandada)
-------------------------------------
select owner0_.id as id1_0_0_, pets1_.id as id1_1_1_, owner0_.first_name
as first_na2_0_0_, owner0_.last_name as last_nam3_0_0_, owner0_.address as address4_0_0_, owner0_.city
as city5_0_0_, owner0_.telephone as telephon6_0_0_, pets1_.name
as name2_1_1_, pets1_.birth_date as birth_da3_1_1_, pets1_.owner_id
as owner_id4_1_1_, pets1_.type_id as type_id5_1_1_, pets1_.owner_id
as owner_id4_1_0__, pets1_.id as id1_1_0__
from owners owner0_
left outer join pets pets1_ on owner0_.id=pets1_.owner_id
where owner0_.id=13;

--Fetch Pet type for the Pets
----------------------------
select pettype0_.id as id1_4_0_, pettype0_.name as name2_4_0_ from types pettype0_ where pettype0_.id=1;
select pettype0_.id as id1_4_0_, pettype0_.name as name2_4_0_ from types pettype0_ where pettype0_.id=3;

--Fetch Visits for the Pets
---------------------------
select visits0_.pet_id as pet_id4_8_0_, visits0_.id as id1_8_0_, visits0_.id as id1_8_1_, visits0_.visit_date
as visit_da2_8_1_, visits0_.description as descript3_8_1_, visits0_.pet_id as pet_id4_8_1_
from visits visits0_ where visits0_.pet_id=17;

select visits0_.pet_id as pet_id4_8_0_, visits0_.id as id1_8_0_, visits0_.id as id1_8_1_, visits0_.visit_date
as visit_da2_8_1_, visits0_.description as descript3_8_1_, visits0_.pet_id as pet_id4_8_1_
from visits visits0_ where visits0_.pet_id=16;

select visits0_.pet_id as pet_id4_8_0_, visits0_.id as id1_8_0_, visits0_.id as id1_8_1_, visits0_.visit_date
as visit_da2_8_1_, visits0_.description as descript3_8_1_, visits0_.pet_id as pet_id4_8_1_
from visits visits0_ where visits0_.pet_id=15;

select visits0_.pet_id as pet_id4_8_0_, visits0_.id as id1_8_0_, visits0_.id as id1_8_1_, visits0_.visit_date
as visit_da2_8_1_, visits0_.description as descript3_8_1_, visits0_.pet_id as pet_id4_8_1_
from visits visits0_ where visits0_.pet_id=14;

select * from Persons;

--given a table persons which consists of name,age 
--display the total number of persons from each age group.example of age group 0-10,11-20,21-30......91-100 ages 
select 
case
when age between 0 and 10 then 'toddlers'
when age between 11 and 25 then 'teens'
when age between 26 and 50 then 'adults'
when age between 51 and 80 then 'senior_citizens'
else 'no one'
end as display_age_group, count(*)
from Persons
group by display_age_group;


--display the total number of prsons by age 
select age,count(person_name)
from Persons
group by age

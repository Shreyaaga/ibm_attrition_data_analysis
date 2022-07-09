-- some random. stuff
-- select min(PercentSalaryHike)
-- from skill.ss;
-- select max(PercentSalaryHike)
-- from skill.ss;





-- 1. department has highest attrition percentage(reffer table: dep_att_percentage)


-- create table dep_att as (select skill.ss.department,count(skill.ss.attrition) as attrition_count from skill.ss  where attrition='yes' group by department)
-- select * from dep_att
-- create table tot_dep as (select skill.ss.department,count(skill.ss.attrition) as total_people from skill.ss group by department)
-- select * from tot_dep

-- create table dep_att_percentage
-- select * 
-- from dep_att
-- join tot_dep
-- using (department)

-- select department,attrition_count,total_people,(attrition_count/total_people)*100 as percentage from dep_att_percentage






-- 3. gender and attrition ratio(reffer table :genderattrition)


--  create table candidate as (select skill.ss.gender,count(skill.ss.gender) as total_candidates from skill.ss group by gender )
--  select * from candidate
 -- create table attrition as (select gender,count(gender) as yes_attrition from skill.ss where attrition='yes' group by gender)
--     select * from attrition
-- create table genderattrition as
-- SELECT 
--  *
--   FROM candidate
--    JOIN attrition
--     USING (gender)

 -- select gender,total_candidates,yes_attrition,(yes_attrition/total_candidates)*100 from genderattrition;




-- 5 experience (reffer table: experience)
-- create table experience as(
-- select TotalWorkingYears,EmployeeNumber,
-- case 
-- WHEN TotalWorkingYears<5 THEN 'fresher'
-- WHEN TotalWorkingYears between 5 and 15 then 'morderate'
-- WHEN TotalWorkingYears between 15 and 25 THEN 'experienced'

-- ELSE 'great experience'
-- END as exp
-- from skill.ss
-- );

-- select TotalWorkingYears,count(exp)
--  from experience
--  where exp='fresher' and attrition='yes'
--  group by TotalWorkingYears
--  order by TotalWorkingYears;
-- select * from experience



-- 2.age(reffer table: )
-- select age,count(*) as emp_count_per_age from skill.ss
-- group by age 
-- order by 1


-- select age,count(Attrition)as yes_attrition_per_age from skill.ss
-- where Attrition='Yes'
-- group by age 
-- order by 1

-- attrition by jobrole(reffer table attrition by job role)

-- create table att_by_jobrole as(
-- select jobrole,count(jobrole)from skill.ss
-- where attrition='yes'
-- group by jobrole)

-- select* from att_by_jobrole
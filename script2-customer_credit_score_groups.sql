--given a table with cust_name, credit_score, table name(customer_scores)

create table customer_scores
(cust_name character varying , credit_score numeric);
insert into customer_scores
values('anjaneyulu', 400)
select * from customer_scores



--display total number of customers based on the credit_score groups for eg:if credit_score between 300 and 600 display as avgerage, 
--601 and 700 is good and 701 and 850 excellent .otherwise invalid score. 

select case 
when credit_score between 300 and 600 then 'average'
when credit_score between 601 and 700 then 'good'
when credit_score between 701 and 850 then 'excellent'
else 'invalid score' end as display_credit_score, count(cust_name)
from customer_scores
group by display_credit_score



--display total number of customers by credit_score

select credit_score,count(cust_name)
from customer_scores
group by credit_score 
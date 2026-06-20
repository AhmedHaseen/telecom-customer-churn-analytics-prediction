
select distinct Customer_Status
from prod_Churn;

create view vw_ChurnData as
select *
from prod_Churn
where Customer_Status in ('Churned','Stayed');

create view vw_JoinData as
select *
from prod_Churn
where Customer_Status = 'Joined';


CREATE VIEW vw_JoinData AS
SELECT *
FROM prod_Churn
WHERE Customer_Status = 'Joined';
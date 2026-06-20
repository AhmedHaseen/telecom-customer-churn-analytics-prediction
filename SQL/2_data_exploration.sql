use db_Churn;
-- Gender Distribution

SELECT
    Gender,
    COUNT(Gender) AS Total_Count,
    CAST(
        ROUND(
            COUNT(Gender) * 100.0 /
            (SELECT COUNT(*) FROM stg_Churn),
            2
        ) AS DECIMAL(10,2)
    ) AS Percentage
FROM stg_Churn
GROUP BY Gender;

-- Contract Distribution
SELECT
    contract,
    COUNT(contract) AS Total_Count,
    CAST(
        ROUND(
            COUNT(contract) * 100.0 /
            (SELECT COUNT(*) FROM stg_Churn),
            2
        ) AS DECIMAL(10,2)
    ) AS Percentage
FROM stg_Churn
GROUP BY contract;

-- State distribution
select customer_status, count(customer_status) as Total_Count, sum(total_revenue) as TotalRev,
sum(total_revenue)/ (select sum(total_revenue) from stg_Churn) * 100.0 as RevPercentage
from stg_Churn
group by Customer_Status;

-- State Distribution
SELECT State,
       COUNT(State) AS TotalCount,
       COUNT(State) * 100.0 /
       (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY State
ORDER BY Percentage DESC;

-- find distinct items in particular column
select distinct internet_type
from stg_Churn;
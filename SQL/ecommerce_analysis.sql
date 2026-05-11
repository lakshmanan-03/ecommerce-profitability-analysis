create database ecommerce_db;
use ecommerce_db;

select count(*) from superstore;
select * from superstore limit 5;

#1.Overall business health
select sum(Sales) as total_sales, sum(Profit) as total_profit, round(sum(Profit)/sum(Sales)*100,2) as profit_margin_percent
from superstore;

-- Category-wise Profitability
SELECT 
    category,
    SUM(sales) as total_sales,
    SUM(profit) AS total_profit,
    CASE 
        WHEN SUM(profit) > 0 THEN 'Profit'
        WHEN SUM(profit) < 0 THEN 'Loss'
        ELSE 'Break-even'
    END AS profit_status
FROM superstore
GROUP BY category
ORDER BY total_profit;

-- Sub-Category Profit Analysis
SELECT 
    `Sub-Category`,
    SUM(`Profit`) AS total_profit,
    CASE 
        WHEN SUM(`Profit`) > 0 THEN 'Profit'
        WHEN SUM(`Profit`) < 0 THEN 'Loss'
        ELSE 'Break-even'
    END AS profit_status
FROM superstore
GROUP BY `Sub-Category`
ORDER BY total_profit;


-- Discount Impact Analysis
SELECT 
    discount,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY discount
ORDER BY discount;

-- Regional Performance

SELECT 
    region,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit;


-- Region  contributing most to losses in Tables/Bookcases
SELECT 
    region,
    `Sub-Category`,
    SUM(profit) AS total_profit
FROM superstore
WHERE `Sub-Category` IN ('Tables', 'Bookcases')
GROUP BY region, `Sub-Category`
ORDER BY total_profit;

-- Top Loss-Making Products
SELECT
    `Product Name`,
    SUM(Profit) AS total_loss
FROM superstore
GROUP BY `Product Name`
ORDER BY total_loss ASC
LIMIT 10;



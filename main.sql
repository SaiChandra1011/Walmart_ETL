SELECT * FROM walmart_sales limit 10;


-- checking number of payments made for each payment type
SELECT payment_method, COUNT(*)  FROM walmart_sales
GROUP BY payment_method

-- creating view to get total sales and profit for each branch
CREATE OR REPLACE VIEW branch_sales_profit AS
SELECT 
    branch,
    city,
    SUM(total_price) AS total_sales,
    SUM(total_price * profit_margin) AS total_profit
FROM walmart_sales
GROUP BY branch, city;

select * from branch_sales_profit;



-- creating view to get total sales over time
CREATE OR REPLACE VIEW sales_trend AS
SELECT 
    TO_DATE(date, 'DD/MM/YY') AS sale_date,
    DATE_TRUNC('month', TO_DATE(date, 'DD/MM/YY')) AS sale_month,
    SUM(total_price) AS total_sales
FROM walmart_sales
GROUP BY sale_date, sale_month
ORDER BY sale_date;


select * from sales_trend;


-- view to get sales by product category
CREATE OR REPLACE VIEW category_sales AS
SELECT 
    category,
    SUM(quantity) AS total_quantity,
    SUM(total_price) AS total_sales,
    ROUND(AVG(profit_margin)::numeric, 2) AS avg_profit_margin
FROM walmart_sales
GROUP BY category
ORDER BY total_sales DESC;

select * from category_sales;

-- view to get payment distibution methods
CREATE OR REPLACE VIEW payment_distribution AS
SELECT 
    payment_method,
    COUNT(*) AS transaction_count,
    SUM(total_price) AS total_sales
FROM walmart_sales
GROUP BY payment_method
ORDER BY total_sales DESC;

select * from payment_distribution;




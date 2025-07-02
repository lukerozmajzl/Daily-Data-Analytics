USE TestDB;

/* 
SELECT 
  bike_number,
  member_type,
  duration,
  AVG(duration) OVER(PARTITION BY member_type) AS avg_trip_duration
FROM tbl_bikeshare;

SELECT 
  first_name,
  last_name,
  salary,
  salary - AVG(salary) OVER() AS difference
FROM employee;

SELECT
  first_name,
  last_name,
  department,
  title,
  COUNT(*) OVER(PARTITION BY department) AS num_employees_department
FROM employee;

SELECT
  sales_date,
  brand,
  quantity,
  SUM(quantity) OVER(ORDER BY sales_date) AS running_total_quantity
FROM apple_sales_quantity_by_month;

SELECT
  *,
  SUM(quantity) OVER(ORDER BY sales_date
                     ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS reverse_running_total_quantity
FROM apple_sales_quantity_by_month;

SELECT
  *,
  AVG(quantity) OVER(ORDER BY sales_date) AS running_avg
FROM apple_sales_quantity_by_month;

SELECT
  *,
  AVG(revenue) OVER(PARTITION BY brand
                    ORDER BY sales_date
                    ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS avg_previous_revenues
FROM phone_sales_revenue_by_month;

SELECT
  *,
  SUM(quantity) OVER(
                  ORDER BY sales_date
                  RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
                ) AS rev_run_quantity
FROM samsung_sales_quantity;

SELECT
  *,
  AVG(quantity) OVER (PARTITION BY sales_date) AS average,
  quantity - (AVG(quantity) OVER (PARTITION BY sales_date)) AS difference
FROM phone_sales_quantity;

SELECT
  *,
  AVG(quantity * unit_price) OVER(PARTITION BY brand
                                 ORDER BY sales_date
                                 ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_average,
  AVG(quantity * unit_price) OVER(PARTITION BY brand
                                  ORDER BY sales_date
                                  ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS three_month_average
FROM phone_sales_by_month;

SELECT
  first_name,
  last_name,
  salary
FROM (SELECT
        first_name,
        last_name,
        salary,
        AVG(salary) OVER() AS average_salary
      FROM employees) AS subquery
WHERE salary > average_salary;

SELECT
  EXTRACT(MONTH FROM sales_date) AS month,
  brand,
  SUM(quantity * unit_price) AS monthly_brand_revenue,
  SUM(SUM(quantity * unit_price)) OVER(PARTITION BY brand) AS total_brand_revenue
FROM phone_sales_by_month
GROUP BY month, brand
ORDER BY brand, month;
*/

SELECT
  first_name,
  last_name,
  department,
  salary,
  AVG(salary) OVER(PARTITION BY department) AS dep_avg_salary
FROM employees
ORDER BY dep_avg_salary DESC;
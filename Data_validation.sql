-- 1. Total orders, unique customer IDs and products
select
count(*) as total_orders,
count(distinct customer_id) as unique_customers,
count(distinct product_name) as unique_products
from supply_chain_orders;

-- 2. Total orders by status
select order_status,
count(*) as total_orders
from supply_chain_orders
group by order_status
order by total_orders desc;

-- 3. Total profit by product category
select product_category,
sum(profit) as total_profit
from supply_chain_orders
group by product_category
order by total_profit desc;

-- 4. Top TEN products by quantity
select product_name,
sum(order_quantity) as total_quantity
from supply_chain_orders
group by product_name
order by total_quantity desc
limit 10;

-- 5. Total orders by customer region
select customer_region,
count(*) as total_orders
from supply_chain_orders
group by customer_region
order by total_orders desc;

-- 6. Compare orders and shipping costs by transportation mode
select
transportation_mode,
count(*) as total_orders,
round(avg(shipping_cost),2) as avg_shipping_cost,
round(sum(shipping_cost),2) as total_shipping_cost
from supply_chain_orders
group by transportation_mode
order by total_orders desc;

-- 7. Average profit and transportation mode comparison
select
transportation_mode,
round(avg(profit),2) as avg_profit
from supply_chain_orders
group by transportation_mode
order by avg_profit desc;

-- 8. Total profit by customer region
select
customer_region,
round(sum(profit),2 ) as total_profit
from supply_chain_orders
group by customer_region
order by total_profit desc;

-- 9. Average profit by customer region 
select
customer_region,
round(avg(profit), 2) as avg_profit
from supply_chain_orders
group by customer_region
order by avg_profit desc;

-- 10. Total orders by month
select
date_trunc('month',order_date)::date as order_month,
count(*) as total_orders
from supply_chain_orders
group by date_trunc('month',order_date)
order by order_month;

-- 11. Average delivery time by order status
select
order_status,
count(*) as total_orders,
round(avg(delivery_time_days),2) as avg_delivery_days
from supply_chain_orders
group by order_status
order by avg_delivery_days DESC;

-- 12. Orders with negative profit
select
count(*) as loss_orders,
round(sum(profit),2) as total_loss
from supply_chain_orders
where profit <0;

-- 13. List orders with negative profit
select
order_id,
product_category,
order_status,
profit
from supply_chain_orders
where profit <0
order by profit;

-- 14. Loss making orders by status
select
order_status,
count(*) as loss_orders,
round(sum(profit), 2 ) as total_loss
from supply_chain_orders
where profit <0
group by order_status
order by loss_orders desc;

-- 15.  Order count and profit by category comparison
select
product_category,
count(*) as total_orders,
round(sum(profit), 2 ) as total_profit,
round(avg(profit),2) as avg_profit
from supply_chain_orders
group by product_category
order by total_profit desc;

-- 16. Top 10 profitable orders
select
order_id,
product_category,
customer_region,
order_status,
profit
from supply_chain_orders
order by profit desc
limit 10;

-- 17.  Above average profit orders by region
select
customer_region,
count(*) as high_profit_orders
from supply_chain_orders
where profit > (select avg(profit) from supply_chain_orders)
group by customer_region
order by high_profit_orders desc;

-- 18. Total profit by transportation mode
select
transportation_mode,
count(*) as total_orders,
round(sum(profit), 2) as total_profit
from supply_chain_orders
group by transportation_mode
order by total_profit desc;

-- 19. Order status across customer regions
select
customer_region,
order_status,
count(*) as total_orders
from  supply_chain_orders
group by customer_region,order_status
order by customer_region,total_orders desc;

-- 20. Delayed orders by region
select
customer_region,
count(*) as total_orders,
count(*) filter (where order_status = 'Delayed') as delayed_orders,
round(100.0 * count(*) filter (where order_status = 'Delayed') /count(*),
2
) as delayed_percentage
from supply_chain_orders
group by customer_region
order by delayed_percentage desc;

-- 21.  Average order value by category
select
product_category,
count(*) as total_orders,
round(avg(total_cost), 2) as avg_order_value
from supply_chain_orders
group by product_category
order by avg_order_value desc;

-- 22. Average order quantity by category
select
product_category,
round(avg(order_quantity), 2) as avg_quantity
from supply_chain_orders
group by product_category
order by avg_quantity desc;

-- 23. Monthly profit trends
select
date_trunc('month', order_date)::date as order_month,
count(*) as total_orders,
round(sum(profit), 2) as total_profit
from supply_chain_orders
group by date_trunc('month', order_date)
order by order_month;

-- 24. Average profit by month
select
date_trunc('month', order_date)::date as order_month,
round(avg(profit), 2) as avg_profit
from supply_chain_orders
group by date_trunc('month', order_date)
order by order_month;

-- 25. Delayed orders by month
select
date_trunc('month', order_date)::date as order_month,
count(*) as delayed_orders
from supply_chain_orders
where order_status = 'Delayed'
group by date_trunc('month', order_date)
order by order_month;

-- 26. Calculate delayed-order percentage by month
select
date_trunc('month', order_date)::date as order_month,
count(*) as total_orders,
count(*) filter (where order_status = 'Delayed') as delayed_orders,
round(
100.0 * count(*) filter 
(where order_status = 'Delayed') / count(*),
2
) as delayed_percentage
from supply_chain_orders
group by date_trunc('month', order_date)
order by order_month;

-- 27. Top 10 products by total profit
select
product_name,
product_category,
round(sum(profit), 2) as total_profit
from supply_chain_orders
group by product_name, product_category
order by total_profit desc
limit 10;

-- 28. Top 10 products by average profit per order
select
product_name,
product_category,
count(*) as total_orders,
round(avg(profit), 2) as avg_profit
from supply_chain_orders
group by product_name, product_category
order by avg_profit desc
limit 10;

-- 29. Profit across order statuses
select
order_status,
count(*) as total_orders,
round(sum(profit), 2) as total_profit,
round(avg(profit), 2) as avg_profit
from supply_chain_orders
group by order_status
order by total_profit desc;

-- 30. Summary of profitabilty
select
count(*) as total_orders,
round(sum(profit), 2) as total_profit,
round(avg(profit),2) as avg_profit,
min(profit) as lowest_profit,
max(profit) as highest_profit,
count(*) filter (where profit< 0) as loss_orders
from supply_chain_orders;

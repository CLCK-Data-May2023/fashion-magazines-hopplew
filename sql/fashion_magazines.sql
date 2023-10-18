-- Add your sql here
SELECT
c.customer_name As Customer,
printf('$%.2f', sum(s.price_per_month*s.subscription_length)) AS 'Amount Due'
FROM 
orders o
JOIN 
customers c ON c.customer_id = o.customer_id
JOIN
subscriptions s ON s.subscription_id = o.subscription_id
WHERE 
o.order_status = 'unpaid'
AND s.description = 'Fashion Magazine'
GROUP BY
Customer


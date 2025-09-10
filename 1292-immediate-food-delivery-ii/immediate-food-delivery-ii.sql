# Write your MySQL query statement below
Select Round(SUM(If(order_date = customer_pref_delivery_date,1,0))*100/count(Distinct customer_id), 2) As immediate_percentage
From delivery
WHERE(customer_id, order_date) IN (
    Select customer_id, MIN(order_date) AS first_order_date
    From Delivery 
    group by customer_id
)
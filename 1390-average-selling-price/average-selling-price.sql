# Write your MySQL query statement below
Select p.product_id, ifnull(Round(SUM(p.price*u.units)/SUM(u.units),2),0) AS  average_price
from Prices p
Left Join UnitsSold u
On p.product_id = u.product_id
AND u.purchase_date >= p.start_date
AND u.purchase_date <= p.end_date
GROUP BY p.product_id
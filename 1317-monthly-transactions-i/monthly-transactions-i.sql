Select
Date_format(trans_date, '%Y-%m') As month, country, COUNT(id) AS trans_count,  SUM(state = 'approved') AS approved_count, SUM(amount) AS trans_total_amount, SUM(IF(state = 'approved' , amount, 0)) AS approved_total_amount

from transactions 
group by month,country;
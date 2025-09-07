Select query_name, Round(Avg(rating/position), 2) As quality, Round(AVG(IF(rating < 3 , 1 , 0))*100, 2) AS poor_query_percentage 
From queries
Group by query_name
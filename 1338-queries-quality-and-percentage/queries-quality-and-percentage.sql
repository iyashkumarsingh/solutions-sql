# Write your MySQL query statement below

Select query_name, Round(Avg(rating/position),2) AS Quality , Round(AVG(IF(rating <3, 1, 0))*100,2) AS poor_query_percentage
From Queries
Group by query_name
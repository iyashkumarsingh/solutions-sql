# Write your MySQL query statement below
Select p.project_id, Round(AVG(e.experience_years),2) AS average_years
from Project p
left join Employee e
on p.employee_id = e.employee_id
Group by p.project_id
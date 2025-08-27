# Write your MySQL query statement below
SELECT e.name,b.bonus
FROM Employee e
left join Bonus b
on e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus is NULL
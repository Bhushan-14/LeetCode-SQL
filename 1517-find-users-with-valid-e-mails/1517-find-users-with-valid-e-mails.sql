# Write your MySQL query statement below
select user_id, name, mail from Users
where mail REGEXP '^[a-zA-Z]+[a-zA-Z-._0-9]*@leetcode[.]com' > 0
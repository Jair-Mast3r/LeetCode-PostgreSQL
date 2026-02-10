-- Write your PostgreSQL query statement below
SELECT email
FROM (SELECT email, COUNT(email) as amount
      FROM PERSON
      GROUP BY email
      HAVING COUNT(email) > 1) as duplicated
WHERE amount > 1
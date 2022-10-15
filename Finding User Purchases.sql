Write a query that'll identify returning active users. A returning active user is a user that has made a
second purchase within 7 days of any other of their purchases. Output a list of user_ids of these returning active users.

SELECT a1.user_id
      FROM amazon_transactions as a1
      LEFT JOIN amazon_transactions a2
           ON a1.user_id = a2.user_id
           AND a1.id <> a2.id
     WHERE ABS(DATEDIFF(a1.created_at, a2.created_at)) < 7
     GROUP BY a1.user_id 
     ORDER BY a1.user_id

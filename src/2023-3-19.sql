-- doc: https://www.mysqltutorial.org/mysql-window-functions/mysql-rank-function/
SELECT 
  p.id,
  p.name,
  count(s) as sale_count,
  RANK() OVER (ORDER BY count(s) DESC) as sale_rank
FROM 
  people p
Left JOIN sales s ON p.id = s.people_id
GROUP BY p.id, p.name;
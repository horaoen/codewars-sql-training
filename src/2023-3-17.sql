-- one
SELECT * 
FROM departments
WHERE id IN(
  SELECT department_id as id
  FROM sales
  WHERE price > 98.00
)

-- two
select 
 abs(number1) abs,
 log(64, number2) log
from decimals

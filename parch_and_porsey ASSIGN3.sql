---1

SELECT primary_poc, occurred_at AS time_of_event, channel, name
FROM web_events
JOIN accounts ON web_events.account_id = accounts.id
WHERE name = 'Walmart';

---2

SELECT region.name AS region_name, sales_reps.name AS sales_rep_name,
accounts.name AS account_name
FROM sales_reps
JOIN region ON region.id = sales_reps.region_id
JOIN accounts ON sales_rep_id = accounts.sales_rep_id
ORDER BY accounts.name ASC;


---3

SELECT region.name,
       accounts.name,
       total_amt_usd / (total + 0.01) AS unit_price
FROM accounts
JOIN orders ON accounts.id = orders.account_id
JOIN region ON region.id = accounts.id;



---4

SELECT region.name AS region_name, sales_reps.name AS sales_rep_name, accounts.name AS account_name
FROM sales_reps
JOIN region ON region.id = sales_reps.region_id
JOIN accounts ON sales_reps.id = accounts.sales_rep_id
WHERE region.name = 'Midwest'
ORDER BY accounts.name ASC;


---5


SELECT
    region.name AS region_name,
    sales_reps.name AS sales_rep_name,
    accounts.name AS account_name
FROM sales_reps
JOIN region ON region.id = sales_reps.region_id
JOIN accounts ON sales_reps.id = accounts.sales_rep_id
WHERE sales_reps.name LIKE 'S%' 
AND region.name = 'Midwest'
ORDER BY accounts.name;

---6

SELECT region.name, sales_reps.name, accounts.name
FROM sales_reps
JOIN region ON sales_reps.region_id = region.id
JOIN accounts ON sales_reps.id = accounts.sales_rep_id
WHERE sales_reps.name LIKE '% K%' AND region.name = 'Midwest'
ORDER BY accounts.name ASC;


----7

SELECT region.name AS region_name, accounts.name AS region_name,
orders.total_amt_usd / (total +0.01) AS unit_price
FROM accounts
JOIN orders ON accounts.id = orders.account_id
LEFT OUTER JOIN region ON accounts.id = region.id
WHERE standard_qty > 100;


----8

SELECT region.name AS region_name, accounts.name AS region_name,
orders.total_amt_usd / (total +0.01) AS unit_price
FROM accounts
JOIN orders ON accounts.id = orders.account_id
LEFT OUTER JOIN region ON accounts.id = region.id
WHERE standard_qty > 100 AND poster_qty > 50;
	
	
----9

SELECT accounts.name AS account_name, web_events.channel AS channels
FROM accounts
LEFT JOIN web_events ON accounts.id = web_events.account_id
WHERE accounts.id = 1001;
SELECT DISTINCT accounts.name AS account_name, web_events.channel AS channels
FROM accounts
LEFT JOIN web_events ON accounts.id = web_events.account_id
WHERE accounts.id = 1001;










	
	













SELECT *
FROM orders;





















    


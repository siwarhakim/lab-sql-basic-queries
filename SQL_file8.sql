USE bank;
SELECT * FROM bank.order
WHERE k_symbol='SIPO';

SELECT amount, k_symbol AS Symbol FROM bank.order
WHERE k_symbol='SIPO';

SELECT amount, k_symbol AS Symbol FROM bank.order
WHERE (k_symbol IN ('SIPO', 'UVER') AND (amount>1000));

SELECT amount, k_symbol AS Symbol FROM bank.order
WHERE (k_symbol IN ('SIPO', 'UVER') OR (amount>1000));

SELECT amount, k_symbol AS Symbol FROM bank.order
WHERE (k_symbol IN ('SIPO', 'UVER') AND NOT (amount>1000));

SELECT *, amount - payments AS balance, payments * duration AS 'Total payments'
FROM bank.loan;

SELECT A3 AS district_name, A4 AS average_salary
FROM bank.district
WHERE A4>10000; 

SELECT *
FROM bank.loan
WHERE status ='B'; 

SELECT * FROM card 
WHERE type ='junior'
ORDER BY issued ASC
LIMIT 10;

SELECT amount, loan_id, account_id
FROM bank.loan
WHERE status ='B';


SELECT A2 AS district_name, ROUND(A4 * 10 / 100.0) AS urban_population
FROM bank.district;

SELECT A2 AS district_name, ROUND(A4*A10/100.0) AS urban_population, A10
FROM bank.district
WHERE A10<50.0;

SELECT*, CONCAT(order_id,account_id) AS 'concat'
FROM bank.order;

SELECT * 
FROM bank.card
WHERE type='junior' AND issued > 980000;

SELECT * 
FROM bank.trans
WHERE operation !='VKLAD'
ORDER BY date ASC
LIMIT 10;

-- 3

SELECT loan_id, amount, account_id
FROM bank.loan
WHERE status ='B' AND amount> 1000
ORDER BY amount DESC; 

 -- 4

SELECT MAX(amount) AS max_transaction, MIN(amount) AS min_transaction
FROM bank.trans
WHERE amount!=0;

SELECT*, CONVERT(date,DATE) FROM bank.account;
SELECT*, date_format(CONVERT(LEFT(issued,6),DATE) '%M' AS 'issuedate'FROM bank.account;
SELECT*, CONVERT(950324,DATETIME
) FROM bank.account;  
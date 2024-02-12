-- sql learnings -------------------------------------------------------------------------------------------------------> 

-- for using a data base we use USE query as a keyword to select it
USE sql_store;

-- we use SELECT to select a particular column in a db and access it
-- FROM keyword is use to select a particular table in db "from where we need to access the data" 
-- SELECT * FROM customers
-- * is used to select every col

-- we can use WHERE clause to get the data with a specific condition 
-- SELECT * FROM customers WHERE customer_id = 1;  

-- we can use relational operator for specifing the condition base on math ex - =, >= , <= , >, <, <>(NOT EQUAL) 
-- ORDER BY clause is used to sort the data in order (DESC is used to sort in descending order) ascending order is set by default

-- SELECT * FROM customers ORDER BY first_name;

-- we can get specific col by mentioning it after select
-- SELECT first_name,last_name FROM customers;


-- SELECT first_name,last_name FROM customers;

-- SELECT first_name,last_name,points FROM customers;
-- SELECT first_name,last_name,points + 10  FROM customers;

-- we can use mathematical operators to do mathematical operations like +, -, *, /, % all these are valid operators
-- if we want to keep a alias to a column name we use "AS" clause to keep it
-- we can use "", '' to keep the alias having spaces like "new points" or we have to keep new_points cause it throughs a error
-- SELECT 
-- 	first_name,
--     last_name,
--     points,
--     (points + 10) * 100 AS new_point 
-- FROM customers;

-- SELECT 
-- 	first_name,
--     last_name,
--     points,
--     (points + 10) * 100 AS 'new point' 
-- FROM customers;

-- we can use DISTINCT clause to get all the distinct things we wanna get

-- SELECT DISTINCT state
-- FROM customers 

-- EXCERCISE:

-- return all the products name,unitprice,unitprice*1.1
-- SELECT 
-- name,
-- unit_price,
-- unit_price*1.1 AS 'new priceproducts'
-- FROM products;

-- to filter data use WHERE clause 

-- SELECT * FROM customers WHERE points >= 3000;

-- EXCERCISE 
-- GET THE ORDERS PLACED THIS YEAR

-- SELECT * FROM orders WHERE order_date > '2018-01-01' 
-- we have to use '',"" for comparing strings or date in sql

-- lets combine multiple conditions to get the req data 
-- we have AND OR NOT clause for doing it 

-- for and BOTH the conditions must be true to execute 
-- SELECT * FROM customers WHERE birth_date > '1990-01-01' AND points > 1000

-- for OR either of the conditions should be true to execute 
-- SELECT * FROM customers WHERE birth_date > '1990-01-01' OR points > 1000


-- SELECT * FROM customers WHERE birth_date > '1990-01-01' OR points > 1000 AND state = 'VA';

-- AND has more presidence than OR we can use () to override the presidence while havind multiple conditions
-- SELECT * FROM customers WHERE birth_date > '1990-01-01' OR (points > 1000 AND state = 'VA');

-- IN clause is when we want to compare with a list of attributes and make it look clean and good without using conditional operator
-- SELECT * FROM customers WHERE NOT (birth_date > '1990-01-01' OR points > 1000);

-- SELECT * FROM customers WHERE state IN('VA','FL','GA') 

-- SELECT * FROM customers WHERE state NOT IN('VA','FL','GA')

-- EXERCISE 
-- return product with quantity in stock equal to 49,38,72

-- SELECT * FROM products WHERE quantity_in_stock  IN(49,38,72) 

-- we can use between clause to get values between a range
 
-- SELECT * FROM customers WHERE points BETWEEN 1000 AND 3000

-- LIKE clause: 
-- we can compare strings using a pattern using LIKE clause we use % to skip words before or after a str

-- SELECT * FROM customers WHERE last_name LIKE 'b%'

-- SELECT * FROM customers WHERE last_name LIKE '%b%'
-- we use _ to skip a single character

-- SELECT * FROM customers WHERE last_name LIKE 'b____y'

-- REGEXP called regular expression clause 

SELECT * FROM customers WHERE last_name REGEXP 'field'

-- ^ is marked to be the begining of the string where as $ is used to mark ending of a string in REGEXP 
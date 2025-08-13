-- the SELECT statement is used to work with columns and specify what columns you want to work see in your output.

# select everything by saying:
SELECT * 
FROM parks_and_recreation.employee_demographics;

# selecting a specific column
SELECT first_name
FROM employee_demographics;

# add some more columns, we just need to separate the columns with columns
SELECT first_name, last_name
FROM employee_demographics;

SELECT last_name, first_name, gender, age
FROM employee_demographics;

SELECT last_name, 
first_name, 
gender, 
age
FROM employee_demographics;

#The query still runs the exact same, but it is easier to read and pick out the columns
#being selected and what you are doing with them.

# the total_money_spent - we can perform calculations on this
SELECT first_name,
 last_name,
 total_money_spent,
 total_money_spent + 100
FROM customers;

#Math in SQL does follow PEMDAS which stands for Parenthesis, Exponent, Multiplication,
#Division, Addition, subtraction - the order of operation for math

SELECT first_name, 
last_name,
salary,
salary + 100
FROM employee_salary;
#This is going to do 10* 100 which is 1000 and then adds the original 540

#Now what will the output be when we do this?
SELECT first_name, 
last_name,
salary,
(salary + 100) * 10
FROM employee_salary;

SELECT department_id
FROM employee_salary;

SELECT DISTINCT department_id
FROM employee_salary;

#WHERE Clause:
#-------------
#The WHERE clause is used to filter records (rows of data)
# So this is only effecting the rows, not the columns
 
SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';


#We can also return rows that do have not "Scranton"
SELECT *
FROM employee_demographics
WHERE gender != 'Female';


#We can use WHERE clause with date value also
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

# LIKE STATEMENT

-- two special characters a % and a _

-- % means anything
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

-- _ means a specific value
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__';


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';


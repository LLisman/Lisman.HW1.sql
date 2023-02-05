use employees;
#Q1: Write SQL Code to count the number of employees
SELECT count(*) from employees;
### There are 300,024 employees.

#Q2: Write SQL Code to output the current name of all of the departments
SELECT dept_name from departments;
### The names of the departments are Customer Service, Development, Finance,
### Human Resources, Marketing, Production, Quality Management, Research and Sales.

#Q3: How many employees are in Finance? 
Select count(*) from dept_emp where dept_no = "d002";
### There are 17,346 employees in Finance.

#Q4: How many women work in development?
select count(*) from departments,employees where dept_no = "d005" and gender ="f";
### There are 120,051 women who work in development.

#Q5: What is the top salary in the company?
select max(salary) from salaries;
### The max salary is $158,220.

#Q6: What is the average salary for Marketing?
Select avg(salary) from salaries, departments where dept_no= "d001";
### The average marketing salary is $63,810.7448

#Q7: What is the lowest salary in the company, who is it and what is their title and department? 
select min(salary) from salaries;
select emp_no from salaries where salary = 38623;
select title from titles where emp_no = 253406;
select first_name, last_name from employees where emp_no= 253406;
select dept_no from dept_emp where emp_no = 253406;
select dept_name from departments where dept_no= "d004";
### The minimum salary is 38,623 from Olivera Baek who is the Technique Leader in the Production Department.

#Q8: Who is the oldest person at the company and what is their age?
SELECT * FROM employees ORDER BY birth_date ASC;
Select birth_date,last_name,first_name from employees where emp_no = 91374;
Select Datediff(now(), "1952-02-01")/365;
### There are 6 people that have the same birthday making them the oldest people at the company.
### The person first listed on the table of ascending birthdays is Eishiro Kuzuoka.
### Eishiro Kuzuoka is 71.0603 years old.
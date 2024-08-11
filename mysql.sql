use rishudb;show tables;
select * from employees;
select * from departments;
select * from sales;
select emp_id,emp_name from employees where dept_id in(select dept_id from departments where dept_name='marketing');

select emp_name from employees where exists(select emp_id from sales where employees.emp_id=sales.emp_id);
select emp_id, emp_name from employees where emp_id in (select emp_id from sales where sale_amt>1000);













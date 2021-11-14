--Welcome to payroll service--

# UC 1
create database payroll_service
use payroll_service

# UC 2
create table employee_payroll
(
id int not null,
name varchar(100) not null,
salary float not null,
startdate date not null
)

# UC 3
insert into employee_payroll values
(1,'Prajwal',100000.00,'2021-04-03'),
(2,'Shubham',200000.00,'2021-05-22'),
(3,'Akash',300000.00,'2021-06-19')

# UC 4
select * from employee_payroll


# UC 5
select salary from employee_payroll where name = 'Prajwal'
select * from employee_payroll
where start between cast ('2018-01-01' as date) and date(now())

# UC 6
alter table employee_payroll add gender char(1)
update employee_payroll set gender = 'M'
where name ='Prajwal' or name = 'Shubham'
update employee_payroll set gender = 'F'
where name ='Akash'

# UC 7

select AVG(salary) from employee_payroll where gender = 'M' group by gender
select SUM(salary) from employee_payroll where gender = 'M' group by gender
select MIN(salary) from employee_payroll where gender = 'M' group by gender
select MAX(salary) from employee_payroll where gender = 'M' group by gender
select COUNT(salary) from employee_payroll where gender = 'M' group by gender

# UC 8

alter table employee_payroll add phone_number varchar(100)
alter table employee_payroll add department varchar(100)
alter table employee_payroll add address varchar(100) not null  default 'TBD'


select * from employee_payroll
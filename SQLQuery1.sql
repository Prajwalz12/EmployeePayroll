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

CREATE DATABASE COMPANY;
USE COMPANY;
select * from employee_survey;


# Q.1 -- How Many Employees We Have?
select count(distinct(EmpID)) from employee_survey;

# Q.2 -- How Many unique commuteMode and count we Have?
select  distinct(CommuteMode),count(*) from employee_survey
group by CommuteMode;

# Q.3 -- Write a Sql Query To Retrieve all the employee whose Joblevel is Junior and maritalstatus single?
select * from employee_survey where JobLevel = "Junior" and MaritalStatus = "Single";

# Q.4 -- Write a Sql Query To Retrieve all the employee in which Dept is IT and Have Commute Mode is walk
select * from employee_survey where Dept = "IT" and CommuteMode = "walk";

# Q.5 -- Write a Sql Query to Retrieve  the employee whose physical activities hours more than 3?
select EmpID,PhysicalActivityHours from employee_survey where PhysicalActivityHours > 3 ;

# Q.6 -- Write a Sql Query to Retrieve Top 10 IT Dept Employee Whose Joblevel is Senior?
select * from employee_survey where Dept = "IT" and JobLevel = "Senior"
limit 10 ;

# Q.7 -- Write  a Sql Query To Find The Total Number of Employee (EmpID) Made By Each Gender In Each Dept ?
select Gender , Dept , count(*) as Total_Number_Employee
from employee_survey 
group by 1,2 
order by 1;


# Q.8 -- Write a Sql Query to retrieve all the employees whose  is Phd ?
select * from employee_survey where EduLevel = "Phd";


# Q.9 -- Write a Sql Query to find the average sleep hour made by each Dept in each  joblevel?
select Dept,JobLevel ,avg(SleepHours) from employee_survey 
group by 1,2
order by 1,2;

# Q. 10 -- Write a Sql Query find the employee whose Emptype is full time and whose workload more than 3?
select * from employee_survey where EmpType = "Full-Time" and Workload >3;



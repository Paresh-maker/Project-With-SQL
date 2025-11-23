-- SQL PROJECT --
-- Database Setup 
-- Create a database called CompanyDB. 
-- Design and create the following two tables with the specified columns: 
-- Departments Table: 
-- DepartmentID (Primary Key, Auto Increment) 
-- DepartmentName (VARCHAR, Not NULL) 
-- Location (VARCHAR) 
-- HeadOfDepartment (VARCHAR) 
-- AnnualBudget (DECIMAL) 

create DATABASE COMPANYDB;

USE COMPANYDB;

CREATE TABLE DEPARTMENTS
(DEPARTMENTID INT PRIMARY KEY AUTO_INCREMENT,
DEPARTMENTNAME VARCHAR(50) NOT NULL,
LOCATION VARCHAR(50),
HEADOFDEPARTENT VARCHAR(50),
ANNUALBUDGET DECIMAL(20,10)
);

CREATE TABLE EMPLOYEES(
EMPLOYEEID INT PRIMARY key auto_increment,
FIRST_NAME varchar(20) NOT NULL,
LAST_NAME VARCHAR(20),
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE SET NULL,
Salary DECIMAL(10,5) Not NULL,
DateOfJoining DATE, 
Email VARCHAR(40) UNIQUE Not NULL
);


DESCRIBE Employees;

DESCRIBE Departments;

INSERT INTO DEPARTMENTS (DepartmentNae, Location, HEADOFDEPARTENT, AnnualBudget)
VALUES
('Data A','Pune','Amit',2500000.00),
('Data S','Mumbai','Ashok',3000000.00),
('Python Dev','Mohali','Abhay',3500000.00),
('Java Dev','Punjab','Raj',1000000.00),
('SQL','Kolkata','Pranav',1500000.00),
('PowerBI','Delhi','Manoj',500000.00),
('Tablew','Ahmedabad','Rajendra',2000000.00),
('Excel','Surat','Ganesh',5000000.00),
('DB','Delhi','Mangesh',500000.00),
('HR','Jammu & Kashmir','Nilesh',4500000.00),
('Marketing','Pune','Rakesh Mehta',1300000);


select * from departments;

DESC EMPLOYEES;
INSERT INTO EMPLOYEES (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) VALUES
('Amit','Sharma',1,55000.00,'2020-01-15','amit.sharma@example.com'),
('Neha','Patel',2,60000.00,'2019-03-20','neha.patel@example.com'),
('Raj','Kumar',3,45000.00,'2021-07-01','raj.kumar@example.com'),
('Priya','Singh',4,48000.00,'2020-11-25','priya.singh@example.com'),
('Suresh','Gupta',5,52000.00,'2018-05-30','suresh.gupta@example.com'),
('Anita','Joshi',6,47000.00,'2022-02-10','anita.joshi@example.com'),
('Manoj','Desai',7,62000.00,'2019-09-15','manoj.desai@example.com'),
('Kiran','Verma',8,58000.00,'2020-12-12','kiran.verma@example.com'),
('Vikas','Mehta',9,51000.00,'2017-04-18','vikas.mehta@example.com'),
('Rita','Nair',10,53000.00,'2021-06-21','rita.nair@example.com');

INSERT INTO EMPLOYEES (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) VALUES
('Deepak','Rao',1,49000.00,'2020-08-14','deepak.rao@example.com'),
('Sunita','Yadav',2,50000.00,'2019-01-10','sunita.yadav@example.com'),
('Ajay','Chopra',3,61000.00,'2022-04-03','ajay.chopra@example.com'),
('Meena','Shah',4,45000.00,'2018-10-28','meena.shah@example.com'),
('Kunal','Malhotra',5,56000.00,'2021-03-16','kunal.malhotra@example.com'),
('Pooja','Bansal',6,47000.00,'2019-11-09','pooja.bansal@example.com'),
('Arjun','Pandey',7,60000.00,'2020-09-25','arjun.pandey@example.com'),
('Sneha','Kapoor',8,54000.00,'2017-12-11','sneha.kapoor@example.com'),
('Rohit','Khanna',9,52000.00,'2018-07-07','rohit.khanna@example.com'),
('Anjali','Trivedi',10,49000.00,'2021-08-22','anjali.trivedi@example.com'),

('Mohit','Saxena',1,53000.00,'2020-02-19','mohit.saxena@example.com'),
('Divya','Menon',2,57000.00,'2019-05-11','divya.menon@example.com'),
('Tarun','Reddy',3,48000.00,'2022-01-05','tarun.reddy@example.com'),
('Geeta','Pawar',4,46000.00,'2021-09-12','geeta.pawar@example.com'),
('Nikhil','Pathak',5,55000.00,'2018-06-27','nikhil.pathak@example.com'),
('Shalini','Kaur',6,50000.00,'2020-04-08','shalini.kaur@example.com'),
('Harish','Agarwal',7,62000.00,'2019-08-30','harish.agarwal@example.com'),
('Monica','Gill',8,57000.00,'2021-12-02','monica.gill@example.com'),
('Yogesh','Kulkarni',9,49000.00,'2020-03-14','yogesh.kulkarni@example.com'),
('Latika','Shetty',10,51000.00,'2017-11-23','latika.shetty@example.com'),

('Sameer','Jain',1,58000.00,'2020-07-10','sameer.jain@example.com'),
('Payal','Mishra',2,54000.00,'2022-06-15','payal.mishra@example.com'),
('Vivek','Dwivedi',3,52000.00,'2019-02-18','vivek.dwivedi@example.com'),
('Swati','Goswami',4,60000.00,'2018-09-05','swati.goswami@example.com'),
('Abhishek','Rawat',5,56000.00,'2020-10-20','abhishek.rawat@example.com'),
('Kavita','Thakur',6,47000.00,'2019-04-27','kavita.thakur@example.com'),
('Deepa','Iyer',7,61000.00,'2021-05-17','deepa.iyer@example.com'),
('Ramesh','Patil',8,49000.00,'2022-03-09','ramesh.patil@example.com'),
('Harsha','Chauhan',9,53000.00,'2017-08-13','harsha.chauhan@example.com'),
('Lalit','Bhatt',10,50000.00,'2021-01-29','lalit.bhatt@example.com');

SELECT * FROM EMPLOYEES;

-- Execute Situational INSERT Queries 
-- Based on the 10 given scenarios, execute the provided INSERT queries to 
-- simulate real-world operations such as hiring employees, creating new 
-- departments, and managing departmental assignments. 

-- Situation -1  
-- We have hired two employees, Siddharth Gupta (email: siddharth.gupta@example.com, 
-- salary: ₹70,000, DOJ: 2024-01-01) and Aarav Jain (email: aarav.jain@example.com, salary: 
-- ₹72,000, DOJ: 2024-01-02), in the IT department (DepartmentID: 3). Add these records. 

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) values ('Siddharth', 'Gupta', 1, 70000,'2024-01-01','siddharth.gupta@example.com');

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) values ('Aarav', 'Jain', 3, 72000,'2024-01-02','aarav.jain@example.com');

SET SQL_SAFE_UPDATES = 0;
delete from employees
where employeeid =42;

select * from employees;

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) values ('Siddharth', 'Gupta', 3, 70000,'2024-01-01','siddharth.gupta@example.com');

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) values ('Aarav', 'Jain', 3, 72000,'2024-01-02','aarav.jain@example.com');

-- Situation -3 
-- Three employees have been hired for the Marketing department (DepartmentID: 11): 
-- Rahul Mehra (email: rahul.mehra@example.com, salary: ₹58,000, DOJ: 2024-01-10), Sara 
-- Kapoor (email: sara.kapoor@example.com, salary: ₹62,000, DOJ: 2024-01-11), and Nitin Shah 
-- (email: nitin.shah@example.com, salary: ₹60,000, DOJ: 2024-01-12). Add these records.

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) values ('Rahul','Mehra',11,58000,'2024-01-10','rahul.mehra@example.com'),
('Sara','Kapoor',11,62000,'2024-01-11','sara.kapoor@example.com'),
('Nitin','Shah',11,60000,'2024-01-12','nitin.shah@example.com');

select * from employees;

-- Situation -4 

-- Two employees have been hired for the HR department (DepartmentID: 1): Riya Sharma 
-- (email: riya.sharma@example.com, salary: ₹50,000, DOJ: 2024-02-01) and Mohit Desai (email: 
-- mohit.desai@example.com, salary: ₹55,000, DOJ: 2024-02-02). Add these records. 

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) values 
('Riya','Sharma',1,50000,'2024-02-01','riya.sharma@example.com'),
('Mohit','Desai',1,55000,'2024-02-02','mohit.desai@example.com');

-- Sneha Rao (email: sneha.rao@example.com) has joined the Finance department 
-- (DepartmentID: 2) on 2024-02-15 with a salary of ₹60,000. Add this record.

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) values 
('Sneha','Rao',2,60000,'2024-02-15','sneha.rao@example.com');

-- Three employees have been hired for the Legal department (DepartmentID: 7): Aditya 
-- Malhotra (email: aditya.malhotra@example.com, salary: ₹65,000, DOJ: 2024-03-01), Priyanka 
-- Kapoor (email: priyanka.kapoor@example.com, salary: ₹67,000, DOJ: 2024-03-02), and Kunal 
-- Singh (email: kunal.singh@example.com, salary: ₹68,000, DOJ: 2024-03-03). Add these 
-- records. 

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL) values 
('Aditya','Malhotra',7,65000,'2024-03-01','aditya.malhotra@example.com'),
('Priyanka','Kapoor',7,67000,'2024-03-02','priyanka.kapoor@example.com'),
('Kunal','Singh',7,68000,'2024-03-03','kunal.singh@example.com')
;

/*- Situation -5 
Sneha Rao (email: sneha.rao@example.com) has joined the Finance department 
(DepartmentID: 2) on 2024-02-15 with a salary of ₹60,000. Add this record. -*/

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL)
values ("Sneha","Rao",2,60000,"2024-02-15","email: sneha.rao@example.com");

/*
Situation -6
Three employees have been hired for the Legal department (DepartmentID: 7): 
Aditya Malhotra (email: aditya.malhotra@example.com, salary: ₹65,000, DOJ: 2024-03-01), 
Priyanka Kapoor (email: priyanka.kapoor@example.com, salary: ₹67,000, DOJ: 2024-03-02), and 
Kunal Singh (email: kunal.singh@example.com, salary: ₹68,000, DOJ: 2024-03-03). Add these records.

*/

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL)
values("Aditya","Malhotra",7,65000,"2024-03-01","aditya.malhotra@example.com"),
("Priyanks","Kapoor",7,67000,"2024-03-02","priyanka.kapoor@example.com"),
("Kunal","Singh",7,68000,"2024-03-03","kunal.singh@example.com");

-- Situation -7
/* The Research department (DepartmentID: 12) has been created with a budget of
₹20,00,000, located in Hyderabad, and headed by Dr. Meera Joshi. Add this department. */

insert into departments (DepartmentNae, Location, HEADOFDEPARTENT, AnnualBudget)
VALUES ("Research","Hydrabad","Dr.Meera Joshi",2000000);

-- Situation -8

/* Two employees have been hired for the Research department (DepartmentID: 12): Arjun Shah (email: arjun.shah@example.com, salary: ₹75,000, DOJ: 2024-04-01) and Riya Patel
(email: riya.patel@example.com, salary: ₹72,000, DOJ: 2024-04-02). Add these records. */

insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL)
values ("Arjun","shah",12,75000,"2024-04-01","arjun.shah@example.com"),
("Riya","patel",12,72000,"2024-04-02","riya.patel@example.com");


/* Situation -9

The Logistics department (DepartmentID: 13) has been created with a budget of
₹9,00,000, located in Chennai, and headed by Ravi Verma. Add this department. */


insert into departments (DepartmentNae, Location, HEADOFDEPARTENT, AnnualBudget)
VALUES ("Logistic Department","Chennai","Ravi Verma",900000);


/* Situation -10

Two employees have been hired for the Logistics department (DepartmentID: 13): Kavita Desai (email: kavita.desai@example.com, salary: ₹50,000, DOJ: 2024-05-01) and Amit Jain
(email: amit.jain@example.com, salary: ₹52,000, DOJ: 2024-05-02). Add these records   */


insert into employees (FIRST_NAME,LAST_NAME,DEPARTMENTID,SALARY,DATEOFJOINING,EMAIL)
values ("Kavita","Desai",13,50000,"2024-05-01","kavita.desai@example.com"),
("Amit","Jain",52000,13,"2024-05-01","jain@example.com");



---------------------------------------------------------------------------------------------------------------

/* 2] Situational Questions on WHERE Clause
Employee Table */

-- Situation -1 We are planning a cybersecurity project. Find all employees working in the IT department (DepartmentID: 3).

Select * from departments
where departmentnae = "IT";

-- Situation -2 To organize a corporate event, we need employees who joined after 2024-01-01. Retrieve their details.


select * from employees
where DateOfJoining > "2024-01-01";

-- Situation -3 The finance team is preparing budgets. List all employees whose salary is greater than ₹60,000.

select * from employees
where salary > 60000;

-- Situation -4 We are sending a company-wide newsletter. Find the details of employees whose email ends with '@example.com'.

select * from employees
where email like "%example.com";

-- Situation -5 The Marketing department is launching a new campaign and needs a cost-effective team. Retrieve the details of employees in the Marketing department (DepartmentID: 11) who earn less than ₹60,000.

select * from employees
where salary < 60000;

-- Situation -6 A client requires a project lead for their team. Find the employee details where the name starts with 'S'.

select * from employees
where first_name like "S%";

-- Situation -7 For recruitment analysis, retrieve all employees who joined in February 2024.

select * from employees
where dateofjoining between "2024-02-01" and "2024-02-29";

-- Situation -8 To shortlist mid-level employees, find the details of employees who are earning between ₹50,000 and ₹70,000.

select * from employees
where salary between 50000 and 70000;


-- Situation -9 We need to identify senior employees. Retrieve the details of employees who joined before 2024-03-01 and earn more than ₹55,000.

select * from employees
where dateofjoining = "2024-03-01" and salary > 55000;

-- Situation -10 A special campaign is being planned for team leaders. Find employees who have "Manager" in their name.

select * from departments
where departmentnae = "Manager";


-- Department Table
-- Situation -11 To identify local opportunities, list all the departments located in Pune.

select * from departments
where location = "Pune";

-- Situation -12 The board is interested in high-budget projects. Find the details of departments where the budget exceeds ₹10,00,000.


select * from departments
where AnnualBudget > 1000000; 

-- Situation -13 For a leadership meeting, retrieve the departments headed by "Rakesh Mehta".

select * from departments
where headofdepartent = "Rakesh Mehta";

-- Situation -14 Marketing expansion is being planned. Find all departments whose names start with "M".

select * from departments
where departmentnae like "M%";

-- Situation -15 To allocate funds efficiently, list all departments where the budget is between ₹8,00,000 and ₹15,00,000.
 
 select * from departments
 where annualbudget between 800000 and 1500000;


-- Situation -1: To analyze salary distribution, find the total salary paid in each department.

select departmentid, sum(salary) AS Total_Salary from Employees
group by departmentid;

-- Situation -2: For employee retention analysis, count the number of employees in each department.

select departmentid, count(employeeid) AS Employee_Count from employees
group by departmentid;


-- Situation -3: The finance team wants to understand salary variation. Find the average salary in each department.

select departmentid, avg(salary) AS Avg_Salary from employees
group by departmentid;

-- Situation -4: To reward experienced employees, identify the earliest joining date in each department.

select departmentid, min(Dateofjoining) AS Earliest_Joining from employees
group by departmentid;


-- Situation -5: The HR team is preparing performance reports. Retrieve the maximum salary in each department.

select departmentid, max(Salary) AS Maximum_Salary from employees
group by departmentid;


-- Situation -6: To analyze junior-level hiring, find the minimum salary in each department.

select departmentid, min(Salary) AS Minimum_Salary from employees
group by departmentid;


-- Situation -7: The finance team wants to review high-salary employees. Find the total salary paid for employees earning more than ₹60,000 in each department.

select departmentid, sum(salary) AS Total_Salary from employees
where salary > 60000
group by departmentid;


-- Situation -8: To monitor departmental growth, count the number of employees who joined in 2024 in each department.

select departmentid, count(Dateofjoining) AS Joined_2024 from employees
where DateofJoining between "2024-01-01" and "2024-12-31"
group by departmentid;

-- Situation -9: For training allocation, count the number of employees with salaries between ₹50,000 and ₹70,000 in each department.

select departmentid, count(salary) AS Employee_count from employees
where Salary between 50000 and 70000
group by departmentid;


-- Situation -10: For diversity analysis, count the number of employees whose names start with each letter of the alphabet

SELECT 
    LEFT(First_Name, 1) AS StartingLetter,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY LEFT(First_Name, 1)
ORDER BY StartingLetter;

-- Situation -11: For city-based analysis, count the number of departments located in each city.

select location, count(departmentnae) Count_Department from departments
group by location;


-- Situation -12: To manage high-budget projects, find the total budget allocated to all departments in each city.

select location, sum(annualbudget) AS Total_Budget from departments
group by location;

-- Situation -13: For leadership tracking, count the number of departments headed by each manager.

select departmentnae, count(departmentid) AS Department_Count from departments
group by departmentnae;

-- Situation -14: To plan budget allocation, calculate the average budget of departments in each city.

select location, avg(annualbudget) AVG_Budget from departments
group by location;


-- Situation -15: For funding efficiency, find the maximum and minimum budgets among departments in each city.
 
 select location, max(AnnualBudget) AS Max_Budget from departments
 group by location;
 
 select location, min(AnnualBudget) AS Min_Budget from departments
 group by location;
 
-- Situation -1: To create a full name column, concatenate the first name and last name of each employee.

select concat(First_Name,"   ",Last_Name) Full_Name from employees;

-- Situation -2: For a project report, concatenate the department name and its location to display a complete department address.

select concat(departmentnae,"   ",location) DepartmentName_Location from departments;

-- Situation -3: To prepare a personalized email greeting, concatenate "Hello " with the employee's name and a comma.

select concat("Hello ","  ",First_Name,Last_Name) AS Employee_Name from employees;

-- Situation -4: For creating a unique employee ID, concatenate the department ID and employee number.

select distinct concat(employeeid,"  ",departmentid) AS Employye_Details from employees;

-- Situation -5: For creating a company contact list, concatenate the employee's phone number with their extension (if applicable).

select concat(First_Name,"  ",Last_Name,"  ",Email) AS Employee_Details from employees;

-- Situation -6: To display the complete address, concatenate the street, city, and postal code of each employee.

-- Situation -7: To create an employee login ID, concatenate the employee’s first name, last name, and their department ID.

select concat(First_Name,"  ",Last_Name," ",departmentid) AS Login_details from employees;

-- Situation -8: For sending out a personalized notification, concatenate the employee's department with their position.

select concat(departmentnae,"  ",Headofdepartent) AS Employees_Department from departments;

-- Situation -9: To display the employee's work status, concatenate their job title and current project.


-- Situation -10: For an annual report, concatenate the year and employee’s first name to create a unique report reference code.


-- 5] Situational Questions on the UPDATE Clause

-- Situation -1: As part of an organizational review, we need to update the salary of all employees who are part of the IT department (DepartmentID: 3). The salary of all employees in this department should be increased by 10%. Make sure that the increase is applied to every employee within the department.


update employees
set salary = salary * 1.10
where departmentid = 3;

-- Situation -2: After the recent promotion evaluation, it has been decided that the employee with EmployeeID 101 should be promoted to a "Senior Developer" role. Update their job title accordingly and make sure the position is reflected correctly in the employee records.

update employees
set jobtitle = "Senior Developer"
where EmployeeID = 101;

-- Situation -3: The HR team has informed us of a change in the contact information of employee with EmployeeID 120. The new contact number for this employee should be updated to "9876543210". Ensure that the correct phone number is reflected in the system for any future communications.

update employees
set phone = 9876543210
where EmployeeID = 120;

-- Situation -4: The company has recently implemented a new email domain. All employees who joined after January 1, 2023, need their email addresses updated to reflect the new domain "@newcompany.com". Update the email addresses accordingly for all the affected employees.

update employees
set email = " @newcompany.com"
where dateofjoining = "2023-01-01";

-- Situation -5: It has come to our attention that there was an error in the naming of the HR department. The department name for DepartmentID 5 needs to be updated from "HR" to "Human Resources" to reflect the company's official title. Perform this update to ensure consistency across the records.

update departments
set departmentnae = "Human Resources"
where departmentid = 5;



-- Situation -6: As part of a company-wide salary review process, all employees who are currently earning below ₹50,000 need to receive a salary increase of ₹5,000. This update should only affect employees with a salary below the threshold and should apply the increase uniformly to each of their records.

update employees
set Salary = Salary * 0.5
where Salary < 50000;


-- Situation -7: The Marketing department has recently moved to a new office in a different city. The location of the Marketing department (DepartmentID: 11) needs to be updated to reflect this change. Please update the location to "Mumbai" in the department's records accordingly.

update departments
set location = "Mumbai"
where departmentid = 11;

-- Situation -8: Update the Salary of EmployeeID 135 to ₹60,000 as part of their annual appraisal.
 
 update employees
 set Salary = 60000
 where Employeeid = 135;

-- Situation -10: The employee with EmployeeID 103 had a delayed start date due to personal reasons. We need to update their joining date to the correct date, which is 2024-03-15, to ensure the records accurately reflect the employee's actual start date with the company.
 
update employees
set Dateofjoining = "2024-03-15"
where employeeid = 103;


-- 6] Situational Questions on the DELETE Clause

-- Situation -1: Due to an employee leaving the company, we need to delete the record of EmployeeID 101 from the Employee table.

delete from employees
where employeeid = 101;

-- Situation -2: The company is undergoing a restructuring. As part of this process, we need to delete all employees in the HR department (DepartmentID: 2) who joined before 2022.

delete from employees
where departmentid = 2
and dateofjoining < "2021-12-31";

-- Situation -3: We are cleaning up the database and need to delete employees with a salary lower than ₹30,000, as they are no longer part of the workforce.

delete from employees
where Salary < 30000;

-- Situation -4: As per a recent audit, employees who joined before 2020 but no longer have any active projects should be removed from the system. Delete these employee records.

delete from employees
where dateofjoining < "2019-12-31";

-- Situation -5: After the closure of "Project Beta", we need to delete all records of employees who were working on this project (assumed to be recorded in ProjectName).



-- Situation -6: An employee, EmployeeID 135, was added mistakenly and is no longer part of the organization. Please delete their record from the Employee table.

delete from employees
where employeeid = 135;

-- Situation -7: The Marketing department (DepartmentID: 3) has undergone significant layoffs. Delete all records of employees who worked in the Marketing department and joined before 2021.

delete from departments
where departmentid =3;


-- Situation -8: As part of a data privacy initiative, we need to delete records of employees who have not provided their email addresses or contact numbers.

delete from employees
where email = null;

-- Situation -9: We need to remove all employees whose salary is above ₹1,00,000 but were part of a temporary contract that has now expired. Delete these employee records.

delete from employees
where salary > 100000;

-- Situation -10: The company has decided to shut down operations in certain regions. Delete the employee records of those who were hired in the "North" region (assuming a Region column exists), and whose employment ended before 2023.
 
 
 delete from employees
 where region = "North";
 
 -- 7] Situational Questions on Table Schema Modifications (with Retrieval for Data Consistency)

-- Situation -1: Due to a change in company policy, we need to rename the Employee table to Staff. Please perform the necessary operation to rename the table.
-- Note: Please do retrieve the changes made for consistency of the data. If you are changing the name of the table, make sure to restore it to the original state as Employee if needed.

RENAME TABLE Employees TO Staff;
RENAME TABLE Staff TO Employees;


/* ituation -2: As the company has decided to start tracking employees' marital status, add a new column MaritalStatus of type VARCHAR(20) to the Employee table.
Note: Please do retrieve the changes made for consistency of the data and ensure the data remains accurate for all future entries. */

alter table employees
add MaritalStatus varchar(20);

/* Situation -3: The company has decided to store the employees' date of birth. Add a DateOfBirth
column of type DATE to the Employee table.
Note: Please ensure to retrieve the changes made to check the column's impact on future data consistency. */

alter table employees
add DateofBirth date;


/* Situation -4: We need to change the data type of the Salary column in the Employee table from INT
to DECIMAL(10,2) to accommodate fractional salary amounts.
Note: Please do retrieve the changes made for consistency of the data, ensuring that all existing salary data is preserved accurately. */

alter table employees
modify salary decimal(10,2);

-- Situation -5: To better categorize employees, we need to add a new column EmployeeCategory in the Employee table. The column should accept values like "Full-time", "Part-time", or "Contract". Note: Please ensure the changes are reflected and retrieve the updated schema for consistency.

alter table employees
add EmployeeCategory varchar(40);

-- Situation -6: The company wants to keep track of the department name for employees. Therefore, a column DepartmentName should be added to the Employee table.
-- Note: After making the change, please retrieve the updates to ensure the column is populated correctly for future entries.
 
 alter table employees
 add DepartmentName varchar(20);
 
 -- Situation -7: We need to set the default value of the Status column in the Employee table to "Active" for any new employee added to the database.
-- Note: After applying this change, please retrieve the changes and verify that all new employee records default to "Active".


ALTER TABLE Employees
ALTER COLUMN Status SET DEFAULT 'Active';


-- Situation -8: As part of a company-wide restructuring, the DepartmentID column in the Employee
-- table should be renamed to TeamID to reflect the new team-based structure.
-- Note: Please retrieve the changes made for consistency of the data. If necessary, restore the column name back to DepartmentID for future references.

ALTER TABLE Employees
CHANGE DepartmentID TeamID INT;


ALTER TABLE Employees
CHANGE TeamID DepartmentID INT;
-- Situation -9: The company has decided to archive old employee data, so the Employee table needs to be partitioned by JoinDate in order to keep the data for employees who joined before 2020 separate.
-- Note: After partitioning the data, ensure to retrieve the changes and check the data consistency and accessibility for employees prior to 2020.

ALTER TABLE Employees
PARTITION BY RANGE (YEAR(JoinDate)) (
    PARTITION p_before_2020 VALUES LESS THAN (2020),
    PARTITION p_2020_and_after VALUES LESS THAN MAXVALUE
);

-- Situation -10: We need to create a foreign key constraint between the Employee table and the
-- Department table to ensure the integrity of the department data linked to each employee. Note: Please retrieve the changes made to verify the foreign key relationship, ensuring data integrity and consistency 

ALTER TABLE Employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);

 
 

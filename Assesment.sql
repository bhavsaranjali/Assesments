 #------------------------------------------ASSESMENT--------------------------------------------------------------------

create database worker ;
create table worker
(
 Worker_Id  int,
 First_Name varchar(30),
 Last_Name varchar(30),
 Salary int,
 Joining_Date datetime,
  Department varchar(30) );
 
 insert into worker (Worker_Id, First_Name, Last_Name,Salary, Joining_Date,Department)
 values	
( '1','Monika','Arora','100000','2014-02-20 09:00:00','HR'),
 ('2','Niharika','Verma','80000','2014-11-06 9:00','Admin'),
('3','Vishal','Singhal','300000','2014-02-20 9:00','HR'),
('4' ,'Amitabh','Singh','500000','2014-2-20 9:00','Admin'),
('5','Vivek', 'Bhati', '500000', '2014-06-11 9:00','Admin'),
('6', 'Vipul', 'Diwan', '200000','2014-06-11 9:00', 'Account'),
('7','Satish','Kumar','75000','2014-01-20 9:00','Account'),
('8','Geetika','Chauhan','90000','2014-04-11 9:00','Admin');

/* 1 . Write an SQL query to print all Worker details from the Worker table
 order by FIRST_NAME Ascending and DEPARTMENT Descending. */
 
select *  from worker
order by First_name asc, department desc;

/*2.Write an SQL query to print details for Workers with the first names  “Vipul” and “Satish” from the Worker table. */

select * from worker 
where First_Name in ('Vipul','Satish');

/*3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. */

select * from worker
where First_Name like '_____h';

/* 4 Write an SQL query to print details of the Workers whose SALARY lies between 1 */
 select * from worker 
 where salary between  0 and 1;

/*5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. */
select  Department , salary,count(*) from worker 
group by  Department , Salary
having count(*) = 2 ;

/* 6. Write an SQL query to show the top 6 records of a table. */
 select * from worker
 order by salary desc
 limit 6;
 
 /*7. Write an SQL query to fetch the departments that have less than five people in them. */
 
 select department ,count(First_name)
 from worker 
 group by Department
 having count(First_name) < 5;


 /*8. Write an SQL query to show all departments along with the number of people in there. */
 
  select department ,count(First_name)
 from worker 
 group by Department;
 
 /*9. Write an SQL query to print the name of employees having the highest salary in each department. */
 
 select  first_name  , Department,salary from worker
 where salary in 
(Select MAX(salary) from worker group by Department);



# Question 2: Open school database, then select student table and use following SQL statements. TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT  #
 
/*1 To display all the records form STUDENT table. */

SELECT * FROM student ;  

/*2. To display any name and date of birth from the table STUDENT.*/

 SELECT StdName, DOB FROM student ;  
 
/*3. To display all students record where percentage is greater of equal to 80 FROM student table. */

SELECT * FROM student WHERE percentage >= 80;  

/*4. To display student name, stream and percentage where percentage of student is more than 80 */

SELECT StdName, Stream, Percentage WHERE percentage > 80;  

/*5. To display all records of science students whose percentage is more than 75 form student table.*/

 SELECT * from student WHERE stream = ‘Science’ AND percentage > 75; 
 

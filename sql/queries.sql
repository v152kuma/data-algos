//Display all information of the employee table

select * from emp;

//display unique jobs from employee table
select distinct job from emp;

//list the emps in asc order of there salaries
select * from emp 
order by sal 
asc ;

select * from emps order by deptno asc , job desc;

select distinct job from emp order by job desc;

select * from emp where empno in (select mgr from emp);




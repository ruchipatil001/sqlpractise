delimiter //
  
 create function calcBonus3(empid int) returns decimal
 begin 
 declare bonus decimal(10,2);
 declare vsal decimal(10,2);
 select sal into vsal from emp
 where empno=empid;
 set bonus=(vsal+vsal*1.10);
 return bonus;
 end //
   
 select empno,ename,sal,calBonus3(empno) from emp;
------------------------------------------------------------------------------------------------------------------------------------------------
create function getdays3(pempid int)returns int
 begin
 declare vhiredate date;
 declare vday int;
 select hiredate into vhiredate from emp 
 where empno=pempid;
 set vday=TIMESTAMPDIFF(DAY, vhiredate, CURDATE());
 return vday;
 end //
   
 select empno,ename,getdays3(empno) from emp //
------------------------------------------------------------------------------------------------------------------------------------------------


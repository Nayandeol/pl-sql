declare 
c_id emp.emp_id%type;
c_name emp.emp_name%type;
c_salary emp.salary%type;
cursor c1 is select emp_id,emp_name,salary from emp;
begin
open c1;
loop
fetch c1 into c_id,c_name,c_salary;
exit when c1%notfound;
dbms_output.put_line(c_id|| ' ' ||c_name|| ' ' ||c_salary);
if c_id=5 then
c_salary:=c_salary+30000;
elsif c_id=6 then
c_salary:=C_salary+4000;
elsif c_id=8 then
c_salary:=c_salary+1000;
else
c_salary:=c_salary+2000;
end if;
update emp set salary=c_salary where c_id=emp_id;
end loop;
close c1;
end;
/

declare
ct customerr.ct%type;
cname customerr.cname%type;
salary customerr.salary%type;
cursor c1 is select ct,cname,salary from customerr;
begin
open c1;
loop
fetch c1 into ct,cname,salary;
exit when c1%notfound;
dbms_output.put_line(ct||''|| cname||''||salary);
end loop;
close c1;
end;
/

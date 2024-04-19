declare
n integer;
fact integer;
i integer;
begin
fact:=1;
n:=&n;
for i in 1..n
loop
fact:=fact*i;
dbms_output.put_line('fact ='||fact);
end loop;
dbms_output.put_line('Factorial of '||n ||'is '||fact);
end;
/

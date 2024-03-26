declare
n integer;
r integer;
num integer;
re integer;
begin
n:=&n;
num:=0;
r:=n;
while n>0
loop
re:= mod(n,10);
num:= num*10 + re;
n:= trunc(n/10);
end loop;

dbms_output.put_line('Reverse of '||r||' is : '||num);
end;
/

declare
total_rows number(2);
begin
update customerr set salary=salary+500;
if sql%notfound then
dbms_output.put_line('no customerr selected');
elsif sql%found then
total_rows:=sql%rowcount;
dbms_output.put_line(total_rows || 'customerr select');
end if;
end;
/

declare 
n integer;
s integer := 0;
i integer;
begin
	n:=&n;
	for i in 1..n
	loop
		s:=s+i;
	end loop;
	dbms_output.put_line('Sum of '||n||' natural numbers are: '||s);
end;
/
		

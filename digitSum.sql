declare
n integer;
r integer;
s integer :=0;

begin
	n:=&n;
	while n>0
		loop
		r:=mod(n,10);
		s:=s+r;
		n:=trunc(n/10);
		end loop;
		
	dbms_output.put_line('The sum of digits: '||s);
end;
/


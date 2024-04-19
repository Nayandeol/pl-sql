declare 
  i integer;
  a integer;
  b integer; 
  begin
  a:=&a;
  b:=&b;
  i:=a+b;
  dbms_output.put_line('sum is'||i);
  end;
  /


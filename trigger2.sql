create or replace trigger stock_updation after insert on purchase
for each row
when(new.no_of_item>0)
begin
update stock set stockavail=stockavail-:new.no_of_item where item=:new.item;
dbms_output.put_line('Stock updated');
end;
/

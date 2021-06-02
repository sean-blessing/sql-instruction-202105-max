-- set a variable with the total
set @order_total = (select sum(price * Quantity) as total
  from lineitem
  join menuitem mi    on MenuItemID = mi.id
 where orderticketid = 2
 group by OrderTicketID);

update orderticket
    set total = @order_total
where id = 2;

select * from orderticket;
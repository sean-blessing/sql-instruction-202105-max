-- set a variable with the total
set @order_total = (select sum(price * Quantity) as total
  from lineitem
  join menuitem mi    on MenuItemID = mi.id
 where orderticketid = 1
 group by OrderTicketID);

update orderticket
    set total = @order_total
where id = 1;

select * from orderticket;

-- (select sum(price * Quantity) as total
--   from lineitem
--   join menuitem mi    on MenuItemID = mi.id
--  where orderticketid = 1
--  group by OrderTicketID);
--  
--  select * 
--    from lineitem li
--    join menuitem mi
--      on MenuItemID = mi.id
--  where OrderTicketID = 1;
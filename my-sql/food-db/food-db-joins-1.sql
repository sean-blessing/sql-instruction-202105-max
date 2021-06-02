-- list line items for an order, with subtotals
select OrderTicketID as 'Order ID', concat(lastname, ', ', firstname) as 'Customer Name', cat.name as Category, 
		mi.name as Item, concat('$', price) as Price, quantity as Qty, 
        concat('$',(price * Quantity)) as Subtotal
  from lineitem
  join menuitem mi		on MenuItemID = mi.id
  join orderticket ot	on orderticketid = ot.id
  join customer c		on customerid = c.id
  join category cat		on categoryid = cat.id
 where orderticketid = 2;

-- calculate total for an order
select sum(price * Quantity) as total
  from lineitem
  join menuitem mi    on MenuItemID = mi.id
 where orderticketid = 2
 group by OrderTicketID;
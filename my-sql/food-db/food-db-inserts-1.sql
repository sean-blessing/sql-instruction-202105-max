-- add some test data to the food_db
insert into menuitem values
 (1, 1, 'Cheese Sticks', 8.99, 800),
 (2, 1, 'Fried Pickles', 5.99, 600),
 (3, 1, 'Bread Sticks', 7.99, 700),
 (4, 1, 'Ultimate Nachos', 11.99, 1200),
 (5, 1, 'Potato Skins', 8.99, 850),
 (6, 1, 'Loaded French Fries', 9.99, 1000),
 (7, 2, 'House Salad', 4.99, 400),
 (8, 2, 'Caesar Salad', 6.99, 600),
 (9, 3, 'Filet Mignon', 28.99, 1100),
 (10, 3, 'Pizza', 13.99, 1400);
 
insert into customer values
 (1, 'SB101', 'Blessing', 'Sean', 'sean@test.com', '513-600-7096'); 

insert into orderticket (id, customerid) values (1, 1);

insert into lineitem (orderticketid, menuitemid, quantity) values
 (1, 9, 2),
 (1, 4, 2),
 (1, 7, 1);
 
-- create and select the database
DROP DATABASE IF EXISTS food_db;
CREATE DATABASE food_db;
USE food_db;

-- create Category table
Create table Category (
ID 			integer 		primary key auto_increment,
Name 		varchar(100) 	not null unique
);

-- create Customer table
Create table Customer (
ID 				integer 		primary key auto_increment,
CustomerNumber 	varchar(5) 		not null unique,
LastName	 	varchar(255)	not null,
FirstName	 	varchar(255)	not null,
Email 			varchar(75)		not null,
Phone 			varchar(12)		not null
);

-- create MenuItem table
Create table MenuItem (
ID 			integer 		primary key auto_increment,
CategoryId	integer 		not null,
Name	 	varchar(75) 	not null,
Price	 	decimal(10,2) 	not null,
Calories	integer 		not null,
Foreign Key (CategoryID) references Category(ID),
CONSTRAINT cat_name unique (CategoryId, Name)
);

-- create OrderTicket table
Create table OrderTicket (
ID 				integer 			primary key auto_increment,
CustomerID 		integer 			not null,
OrderDate		timestamp			not null,
Status		 	varchar(1)			not null,
Total		 	decimal(10,2) 		not null,
Foreign Key (CustomerID) references Customer(ID),
CONSTRAINT cust_ord unique (CustomerID, OrderDate)
);

-- create LineItem table
Create table LineItem (
ID 				integer 			primary key auto_increment,
OrderTicketID	integer 			not null,
MenuItemID 		integer 			not null,
Quantity		integer				not null,
Foreign Key (OrderTicketID) references OrderTicket(ID),
Foreign Key (MenuItemID) references MenuItem(ID),
CONSTRAINT ord_menu unique (OrderTicketID, MenuItemID)
);

-- Add Categories
 insert into Category (Name) VALUES
 	('Appetizers'),
 	('Salads'),
    ('Entrees'),
 	('Sides'),
 	('Drinks'),
 	('Desserts');

-- create a user and grant privileges to that user
DROP USER IF EXISTS fooddb_user@localhost;
CREATE USER fooddb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON food_db.* TO fooddb_user@localhost;
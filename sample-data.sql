-- Populate littlelemondb Database

INSERT INTO customer (CustomerID, CustomerName, CustomerPhone, CustomerBirthdate, CustomerEmail, CustomerAddress) 
VALUES
	(1, 'John Doe', '1234567890', '1985-05-01', 'john.doe@example.com', '123 Main St'),
	(2, 'Jane Smith', '2345678901', '1990-06-02', 'jane.smith@example.com', '456 Park Ave'),
	(3, 'David Lee', '3456789012', '1988-03-15', 'david.lee@example.com', '789 Broadway'),
	(4, 'Sarah Chen', '4567890123', '1995-12-25', 'sarah.chen@example.com', '1010 5th Ave'),
	(5, 'Michael Kim', '5678901234', '1992-09-10', 'michael.kim@example.com', '432 Park Ave'),
	(6, 'Emily Brown', '6789012345', '1980-11-11', 'emily.brown@example.com', '345 Madison Ave'),
	(7, 'Daniel Kim', '7890123456', '1975-01-20', 'daniel.kim@example.com', '100 1st Ave'),
	(8, 'Ava Lee', '8901234567', '2000-04-30', 'ava.lee@example.com', '200 2nd Ave'),
	(9, 'Oliver Chen', '9012345678', '1999-07-05', 'oliver.chen@example.com', '300 3rd Ave'),
	(10, 'Sophia Park', '0123456789', '2005-02-14', 'sophia.park@example.com', '400 4th Ave');

INSERT INTO booking (BookingID, BookingTable, BookingDate, CustomerID) 
VALUES
	(1, 2, '2023-03-15', 1),
	(2, 4, '2023-03-16', 2),
	(3, 1, '2023-03-18', 3),
	(4, 3, '2023-03-20', 4),
	(5, 2, '2023-03-22', 5),
	(6, 4, '2023-03-23', 6),
	(7, 1, '2023-03-25', 7),
	(8, 3, '2023-03-27', 8),
	(9, 2, '2023-03-29', 9),
	(10, 4, '2023-03-30', 10);

INSERT INTO `menuitem` (`MenuItemID`, `MenuItemCourse`, `MenuItemStarter`, `MenuItemDessert`, `MenuItemDrink`) 
VALUES
	(1, 'Main', 'Prawn cocktail', 'Chocolate cake', 'Coca-cola'),
	(2, 'Main', 'Tomato soup', 'Fruit salad', 'Sprite'),
	(3, 'Main', 'Chicken curry', 'Cheesecake', 'Pepsi'),
	(4, 'Main', 'Beef stew', 'Apple pie', 'Lemonade'),
	(5, 'Main', 'Fish and chips', 'Ice cream', 'Fanta'),
	(6, 'Starter', 'Garlic bread', 'Soup of the day', 'Melon'),
	(7, 'Starter', 'Bruschetta', 'Prawn cocktail', 'Soup of the day'),
	(8, 'Starter', 'Mushroom soup', 'Garlic bread', 'Melon'),
	(9, 'Starter', 'Prawn cocktail', 'Bruschetta', 'Soup of the day'),
	(10, 'Starter', 'Soup of the day', 'Mushroom soup', 'Garlic bread');

INSERT INTO `menu` (`MenuID`, `MenuCuisine`, `MenuName`, `MenuItemID`) 
VALUES
	(1, 'Italian', 'Set menu 1', 1),
	(2, 'Italian', 'Set menu 2', 2),
	(3, 'Indian', 'Set menu 3', 3),
	(4, 'British', 'Set menu 4', 4),
	(5, 'British', 'Set menu 5', 5),
	(6, 'Italian', 'Set menu 6', 6),
	(7, 'Italian', 'Set menu 7', 7),
	(8, 'Indian', 'Set menu 8', 8),
	(9, 'Indian', 'Set menu 9', 9),
	(10, 'British', 'Set menu 10', 10);

INSERT INTO role (RoleID, Title) 
VALUES
	(1, 'Manager'),
	(2, 'Chef'),
	(3, 'Waiter'),
	(4, 'Bartender');

INSERT INTO staff (StaffID, StaffName, StaffEmail, StaffSalary, StaffRole) 
VALUES
	(1, 'John Doe', 'johndoe@example.com', 50000, 1),
	(2, 'Jane Smith', 'janesmith@example.com', 40000, 2),
	(3, 'Bob Johnson', 'bobjohnson@example.com', 30000, 3),
	(4, 'Amy Lee', 'amylee@example.com', 35000, 3),
	(5, 'David Brown', 'davidbrown@example.com', 40000, 2),
	(6, 'Sarah Jones', 'sarahjones@example.com', 25000, 3),
	(7, 'Mike Davis', 'mikedavis@example.com', 28000, 3),
	(8, 'Karen Wilson', 'karenwilson@example.com', 32000, 4);
	
INSERT INTO `order` (`OrderID`, `OrderDate`, `OrderQty`, `OrderCost`, `MenuID`, `BookingID`) 
VALUES
	(1, '2022-02-14', 2, 50, 1, 1),
	(2, '2022-02-14', 4, 100, 2, 2),
	(3, '2022-02-15', 3, 75, 3, 3),
	(4, '2022-02-16', 2, 50, 4, 4);

INSERT INTO orderdelivery (DeliveryID, DeliveryDate, DeliveryStatus, StaffID, OrderID)
VALUES 
	(1, '2023-03-15', 'Delivered', 1, 1),
	(2, '2023-03-17', 'In Transit', 2, 2),
	(3, '2023-03-20', 'Out for Delivery', 3, 3),
	(4, '2023-03-22', 'Pending', 4, 4);

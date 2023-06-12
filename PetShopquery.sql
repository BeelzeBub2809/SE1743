Create table Users(
	Id varchar(255) Primary key NOT NULL,
	Username varchar(255),
	Password varchar(15),
	Email varchar(255),
	Permission varchar(255)
)
create table Product_category(
	Id int Primary key NOT NULL,
	name varchar(255),
	info varchar(255),

)
create table Product_inventory(
	Id int Primary key NOT NULL,
	quantity int
)
create table Discount(
	Id int Primary key NOT NULL,
	name varchar(255),
	discount_percent decimal
)
create table Product(
	Id int Primary key NOT NULL,
	Name varchar(255),
	Info varchar(255),
	Price decimal,
	Category_id int foreign key references Product_category(Id),
	Inventory_id int foreign key references Product_inventory(Id),
	Discount_id int foreign key references Discount(Id)
)

create table User_payment(
	Id int Primary key NOT NULL,
	First_name varchar(255),
	Last_name varchar(255),
	Address varchar(255),
	Phone_num varchar(255),
	Payment_type varchar(255),
	User_id varchar(255) foreign key references Users(Id)
)
create table Shoping_session (
	Id int Primary key NOT NULL,
	User_id varchar(255) foreign key references Users(Id),
	Total decimal
)
create table Cart_item(
	Id int Primary key NOT NULL,
	Session_id int foreign key references Shoping_session(Id),
	Product_id int foreign key references Product(Id),
	Quantity int
)

create table Order_detail(
	Id int Primary key NOT NULL,
	User_id varchar(255) foreign key references Users(Id),
	Total decimal,


)
create table order_item(
	Id int Primary key NOT NULL,
	Order_id int foreign key references Order_detail(Id),
	Product_id int foreign key references Product(Id),
	Quantity int
)

create table Services(
	Id int Primary key NOT NULL,
	Services_name varchar(255),
	Services_desc varchar(255),
	Price int,
)

create table Pets(
	Id int Primary key NOT NULL,
	Owner_id varchar(255) foreign key references Users(Id),
	Name varchar(255),
	Species varchar(255),
	Health_status varchar(255),
)
CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY,
  users_id varchar(255),
  pet_id INT,
  service_id INT,
  start_date DATE,
  end_date DATE,
  FOREIGN KEY (users_id) REFERENCES Users(Id),
  FOREIGN KEY (pet_id) REFERENCES Pets(Id),
  FOREIGN KEY (service_id) REFERENCES Services(Id)
)

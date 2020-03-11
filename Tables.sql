CREATE DATABASE umuzi;

create table Customers(
  CustomerID serial primary key ,
  Unique(CustomerID),
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Gender varchar(10) NOT NULL,CHECK (Gender = 'Male' OR Gender = 'Female' ),
  Address varchar(200) NOT NULL,
  Phone varchar(15) NOT NULL,
  Email varchar(100) NOT NULL,CHECK (Email like '%_@__%.__%'),
  City varchar(20) NOT NULL,
  Country varchar(50) NOT NULL
);

Alter table Customers 
Add constraint chk_email check (Email like '%_@__%.__%');

create table Payments(
    CustomerID int references Customers(CustomerID),
    PaymentID serial primary key,
    PaymentDate date not null,
    Amount decimal not null, CHECK(Amount > 0)
);


create table Products(
    ProductID serial primary key,
    unique(ProductID),
    ProductName varchar(100) not null,
    Description varchar(300) not null,
    BuyPrice Decimal(50) not null
);

create table Employees(
    EmployeeID serial primary key,
    unique(EmployeeID),
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Email varchar(100) NOT NULL,
    JobTitle varchar(20) NOT NULL
);

create table Orders(
    OrderId serial primary key,
    ProductID int references Products(ProductID),
    PaymentID int references Payments(PaymentID),
    FulfilledByEmployeeID int references Employees(EmployeeID),
    DateRequired date not null,
    DateShipped date, CHECK(DateRequired > DateShipped),
    Status varchar(20) not null,CHECK(Status = "shippped" or Status = "Not Shipped"
);



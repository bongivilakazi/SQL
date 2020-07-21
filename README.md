# SQL


Search...
Umuzi Remote work
1. Syllabus
2. Topics
3. Workshops
4. Projects
Android with Kotlin Projects
Constraint Layout Using Layout Editor
Data Binding Basics
Linear layout using the Layout Editor
User Activity
Androids
Incremental Counter
Information Page
Angular Tutorial
Assertive programming kata
Bootcamp Writing Assignment
Build your first personal website
Capstone project
Gmail Text Scraper
Pair Stairs
Spaced Repitition machine to help you remember what you read
The Quizmaster
build a Chrome Extension that measures time spent in meetings
Consume Github API
DAGs with Airflow
Data-science-specifics
MEDIUM: Cross-validation & Simple Linear Regression
Dashboard Assignment
EASY: Google Data Studio Assignment
HARD: Live Dashboard Assignment
EASY: Plotly Dashboard Assignment
HARD: Webscraping and Live Dashboard Assignment
Data Modelling Challenges
HARD: Network Intrusion
Data Visualisation Projects
MEDIUM: Evolution of Linux Visualisation
MEDIUM: Financial Services Use in Tanzania
MEDIUM: Data Wrangling
MEDIUM: Decision Trees
Introduction to Jupyter Notebooks
MEDIUM: K-Means Clustering Assignment
Logistic regression
MEDIUM: Predict breast cancer
MEDIUM: Predict credit card approvals
MEDIUM: Multivariate Linear Regression
MEDIUM: Natural language processing
MEDIUM: OOP for data science
MEDIUM: Statistical Thinking
Webscraping Assignment
Distributed workloads with ZeroMQ
Email random inspirational quote
Expose a simple REST api for your game
ExpressJS
Game of life: Angular elements
Git Basic Exercises
How to submit your project
Java Projects
Consume own api using curl
File IO + Logging + Errors
Introduction to Spring Boot
Introduction to Spring Boot - part 1
Introduction to Spring Boot - part 2
Introduction to Spring Boot - part 3
Introduction to Spring Boot - part 4
Introduction to Spring Infrastructure
Introduction to Spring Infrastructure part 1
Introduction to Spring Infrastructure part 2
Introduction to Spring Infrastructure part 3
Java Generics
Java collections
Java data structures
SQL Extended
Level 1 programming katas
Linux challenges
Advanced Linux challenges
Beginner Linux challenges
Memory Game: rebuild using a modern web frontend framework
Memory game in vanilla js
Memory game using Angular Material
Nodejs Challenges
1: Node & File IO
2 (alt): Node & mongoDB assignment
3: Express, forms and templates
4: Expose a JSON API
Add a little Ajax
Node & SQL assignment
OOP Excercises
Animals
Animals Part 1. OOP basics
Animals Part 2. Adding Tests
Bank Accounts
Dice
Person
Pre bootcamp challenges
Python projects
Database migrations with SQLAlchemy
Django - exposing a REST api with a real database
Getting to know Python
Python and Kafka
Python and MongoDB
Python and Spark
create a REST api to interact with actual database
expose a simple JSON rest api
RabbitMQ
SQL
Semitone Challenge
1. semitone difference - basic algorithm
1. Make a simple GUI
3. Advanced algorithm
4. A gui that is more...awesome
Add Redux to your semitone game
Test Driven Development
Password Checker
Add logging to password checker
password-checker
MEDIUM: Resturaunt menu system
EASY: factorials
MEDIUM: lots and lots of tdd katas
MEDIUM: recursive search
EASY: simple-calculator part 1
MEDIUM: simple-calculator part 2
string-calculator
HARD: ten-pin bowling scoring system
Validating user input for web
consuming APIs with the requests module
iOS Mobile
Codable, File Manager, URL
Drag and Drop, Multithreading and Delegation
More Swift, Gestures and Animations
Multithreading Layout and Other Functionality - Animated Set
Multithreading Layout and Other Functionality - Graphical Set
Swift and More
5. Katas
6. Department Processes
Code Review Feedback Notes
Contact
Credits
How to Contribute
Online Learning and bootcamp
More
 Github repo
 Credits
  
 Edit this page Umuzi Tech Department > Projects > SQL
SQL
Story points	3
Hard Prerequisites	
TOPICS: SQL
TOPICS: Intro to Docker and Docker-compose
To submit this project follow the link below: TILDE
Installation:
We are using Postgres
Instead of installing Postgres on your computer, you can launch it with a docker composition
MySQL is nice and lot’s of people use it in industry, but it doesn’t actually implement standard SQL, it sort of does it’s own thing a bit. Postgres is a much more standard DB, and industry loooooves it
Instructions
Part 1: Creating a database
Save all of your instructions in a script file - you will submit this file on Gnomio and github.

Create a database called “Umuzi”.

Create the following tables in the Umuzi database:

Customers
Employees
Orders
Payments
Products
Create a primary key for each table with auto-increment (make sure you correctly specify the data types, e.g. the ID field should be int).

Create foreign keys so that every ID in the order table references an existing ID in the tables referenced (e.g., ProductID, EmployeeID, etc).

INSERT the records in the tables below into the table you created in step 2.

Document what information is stored in your database. Be sure to say what information is kept in what table, and which keys link the records between tables.

Customers Table
CustomerID (int)	FirstName (varchar50)	LastName (varchar50)	Gender (varchar)	Address (varchar200)	Phone (int 10)	Email (varchar100)	City (varchar20)	Country (varchar50)
1	John	Hibert	Male	284 chaucer st	084789657	john@gmail.com	Johannesburg	South Africa
2	Thando	Sithole	Female	240 Sect 1	0794445584	thando@gmail.com	Cape Town	South Africa
3	Leon	Glen	Male	81 Everton Rd,Gillits	0820832830	Leon@gmail.com	Durban	South Africa
4	Charl	Muller	Mal	290A Dorset Ecke	+44856872553	Charl.muller@yahoo.com	Berlin	Germany
5	Julia	Stein	Female	2 Wernerring	+448672445058	Js234@yahoo.com	Frankfurt	Germany
Employees Table
EmployeeID (int)	FirstName (varchar50)	LastName (varchar50)	Email (varchar100)	JobTitle (varchar20)
1	Kani	Matthew	mat@gmail.com	Manager
2	Lesly	Cronje	LesC@gmail.com	Clerk
3	Gideon	Maduku	m@gmail.com	Accountant
Orders Table
OrderId (int)	ProductID (int)	PaymentID (int)	FulfilledByEmployeeID (int)	DateRequired (datetime)	DateShipped (datetime)	Status (varchar20)
1	1	1	2	05-09-2018		Not shipped
2	1	2	2	04-09-2018	03-09-2018	Shipped
3	3	3	3	06-09-2018		Not shipped
Payments Table
CustomerId (int)	PaymentID (int)	PaymentDate (datetime)	Amount (decimal)
1	1	01-09-2018	R150.75
5	2	03-09-2018	R150.75
4	3	03-09-2018	R700.60
Products Table
ProductId (int)	ProductName (varchar100)	Description (varchar300)	BuyPrice (decimal)
1	Harley Davidson Chopper	This replica features working kickstand, front suspension, gear-shift lever	R150.75
2	Classic Car	Turnable front wheels, steering function	R550.75
3	Sports car	Turnable front wheels, steering function	R700.60
Part 2: Querying a database
Save all of your instructions in a script file - you will submit this file on Gnomio and github.

SELECT ALL records from table Customers.

SELECT records only from the name column in the Customers table.

Show the name of the Customer whose CustomerID is 1.

UPDATE the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.

DELETE the record from the Customers table for customer 2 (CustomerID = 2).

Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.

Return the MAXIMUM payment made on the PAYMENTS table.

Select all customers from the “Customers” table, sorted by the “Country” column.

Select all products with a price BETWEEN R100 and R600.

Select all fields from “Customers” where country is “Germany” AND city is “Berlin”.

Select all fields from “Customers” where city is “Cape Town” OR “Durban”.

Select all records from Products where the Price is GREATER than R500.

Return the sum of the Amounts on the Payments table.

Count the number of shipped orders in the Orders table.

Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).

Using INNER JOIN create a query that selects all Payments with Customer information.

Select all products that have turnable front wheels.

RAW CONTENT URL

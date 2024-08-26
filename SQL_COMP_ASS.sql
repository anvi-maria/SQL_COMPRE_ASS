create database library;
create table Branch (Branch_no int primary key,manager_id int,branch_address varchar(100),contact_no bigint);
CREATE TABLE Employee (Emp_Id int primary key ,Emp_name VARCHAR(100),Position VARCHAR(50),Salary DECIMAL(10, 2),Branch_no INT,
FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no));
create table books (ISBN bigint primary key,book_title varchar(100),category varchar(100),rental_price DECIMAL(10, 2),
Status enum('yes','no') default 'yes',Auother varchar(100),publisher varchar(100));
CREATE TABLE Customer (Customer_Id INT PRIMARY KEY,Customer_name VARCHAR(100),Customer_address VARCHAR(200),Reg_date DATE);
create table Issuestatus (issue_id int primary key,issued_cust int,issued_book_name varchar(100),issue_date Date,isbn_book bigint,
foreign key(issued_cust) references Customer(Customer_id),foreign key(isbn_book) references books(ISBN));
drop table returnstatus;
CREATE TABLE ReturnStatus (Return_Id INT PRIMARY KEY,Return_cust INT,Return_book_name VARCHAR(200),Return_date DATE,Isbn_book2 bigint,
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN));
INSERT INTO Branch (Branch_no, Manager_id, Branch_address, Contact_no) VALUES
(1, 101, '123 Main St, City A', 1234567890),
(2, 102, '456 Oak St, City B', 2345678901),
(3, 103, '789 Pine St, City C', 3456789012),
(4, 104, '101 Maple St, City D', 4567890123),
(5, 105, '202 Birch St, City E', 5678901234),
(6, 106, '303 Cedar St, City F', 6789012345),
(7, 107, '404 Elm St, City G', 7890123456),
(8, 108, '505 Willow St, City H', 8901234567),
(9, 109, '606 Poplar St, City I', 9012345678),
(10, 110, '707 Fir St, City J', 1230987654);
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(1, 'Alice Johnson', 'Manager', 75000, 1),
(2, 'Bob Smith', 'Assistant Manager', 55000, 2),
(3, 'Charlie Brown', 'Clerk', 35000, 3),
(4, 'Diana Prince', 'Clerk', 35000, 4),
(5, 'Eve White', 'Manager', 76000, 5),
(6, 'Frank Black', 'Assistant Manager', 54000, 6),
(7, 'Grace Green', 'Clerk', 36000, 7),
(8, 'Hank Hill', 'Clerk', 37000, 8),
(9, 'Ivy Blue', 'Manager', 78000, 9),
(10, 'Jack Grey', 'Assistant Manager', 53000, 10);
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Auother, Publisher) VALUES 
(978, 'The Great Gatsby', 'Fiction', 5.99, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
(979, '1984', 'Dystopian', 4.99, 'no', 'George Orwell', 'Secker & Warburg'),
(980, 'To Kill a Mockingbird', 'Fiction', 6.50, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
(981, 'The Catcher in the Rye', 'Fiction', 4.75, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
(982, 'Pride and Prejudice', 'Romance', 5.25, 'no', 'Jane Austen', 'T. Egerton'),
(983, 'Moby-Dick', 'Adventure', 6.99, 'yes', 'Herman Melville', 'Harper & Brothers'),
(984, 'War and Peace', 'Historical', 8.00, 'no', 'Leo Tolstoy', 'The Russian Messenger'),
(985, 'The Hobbit', 'Fantasy', 7.50, 'yes', 'J.R.R. Tolkien', 'George Allen & Unwin'),
(986, 'The Odyssey', 'Epic', 5.99, 'yes', 'Homer', 'Penguin Classics'),
(987, 'Jane Eyre', 'Gothic', 5.49, 'no', 'Charlotte Brontë', 'Smith, Elder & Co.');
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(1, 'John Doe', '789 Elm St, City X', '2024-01-15'),
(2, 'Jane Smith', '456 Oak St, City Y', '2024-02-20'),
(3, 'Alice Brown', '123 Maple St, City Z', '2024-03-05'),
(4, 'Bob White', '321 Pine St, City A', '2024-04-10'),
(5, 'Charlie Black', '654 Birch St, City B', '2024-05-25'),
(6, 'Diana Green', '987 Cedar St, City C', '2024-06-30'),
(7, 'Eve Red', '741 Willow St, City D', '2024-07-15'),
(8, 'Frank Blue', '852 Fir St, City E', '2024-08-01'),
(9, 'Grace Yellow', '963 Poplar St, City F', '2024-09-10'),
(10, 'Hank Orange', '369 Pine St, City G', '2024-10-05');
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(1, 1, 'The Great Gatsby', '2024-02-01', 978),
(2, 2, '1984', '2024-03-15',979),
(3, 3, 'To Kill a Mockingbird', '2024-04-20',980),
(4, 4, 'The Catcher in the Rye', '2024-05-25',981),
(5, 5, 'Pride and Prejudice', '2024-06-30', 982),
(6, 6, 'Moby-Dick', '2024-07-15',983),
(7, 7, 'War and Peace', '2024-08-01',984),
(8, 8, 'The Hobbit', '2024-09-10', 985),
(9, 9, 'The Odyssey', '2024-10-05', 986),
(10, 10, 'Jane Eyre', '2024-11-01', 987);
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(1, 1, 'The Great Gatsby', '2024-02-10',978),
(2, 2, '1984', '2024-03-25',979),
(3, 3, 'To Kill a Mockingbird', '2024-04-30',980),
(4, 4, 'The Catcher in the Rye', '2024-06-01',981),
(5, 5, 'Pride and Prejudice', '2024-07-05', 982),
(6, 6, 'Moby-Dick', '2024-08-10', 983),
(7, 7, 'War and Peace', '2024-09-15',984),
(8, 8, 'The Hobbit', '2024-10-20', 985),
(9, 9, 'The Odyssey', '2024-11-25', 986),
(10, 10, 'Jane Eyre', '2024-12-01',987);
drop table books, issuestatus,returnstatus;
select book_title,category,rental_price from books where status = "yes";
select emp_name,salary from employee order by salary desc;
SELECT * FROM issuestatus LEFT JOIN books ON issuestatus.isbn_book = books.isbn;
SELECT *
FROM IssueStatus
LEFT JOIN Books ON IssueStatus.Isbn_book = Books.ISBN;
SELECT books.book_title, Customer.Customer_name
FROM IssueStatus
JOIN Books ON IssueStatus.Isbn_book = books.ISBN
JOIN Customer ON IssueStatus.issued_cust = Customer.Customer_Id;
select category,count(*) as total_books from books group by category;
select emp_name,position from employee where salary >50000;
SELECT Customer.Customer_name
FROM Customer
LEFT JOIN IssueStatus ON Customer.Customer_Id = IssueStatus.Issued_cust
WHERE Customer.Reg_date < '2022-01-01'
AND IssueStatus.Issue_Id IS NULL;
select branch_no,count(*) as employee_count from employee group by branch_no;
select customer.customer_name from customer join issuestatus on Customer.Customer_Id = IssueStatus.Issued_cust
where issue_date >='2023-06-01' and issue_date <='2023-06-30';
SELECT Customer.Customer_name
FROM Customer JOIN IssueStatus ON Customer.Customer_Id = IssueStatus.Issued_cust
WHERE IssueStatus.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';
select book_title from books where book_title like '%history%';
select Branch_no,count(*) as total_employee_count group by Branch_no having count(*) > 5;
select * from branch;
SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee GROUP BY Branch_no HAVING COUNT(*) > 5;
SELECT Employee.Emp_name, Branch.Branch_address FROM Employee JOIN Branch ON Employee.Emp_Id = Branch.Manager_Id;
SELECT Customer.Customer_name
FROM Customer JOIN IssueStatus ON Customer.Customer_Id = IssueStatus.Issued_cust
JOIN Books ON IssueStatus.Isbn_book = Books.ISBN WHERE Books.Rental_Price > 25;

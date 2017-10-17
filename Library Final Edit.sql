

CREATE TABLE Publisher(
Name VARCHAR(100) PRIMARY KEY NOT NULL,
Address VARCHAR(100) NOT NULL,
Phone VARCHAR(50)
)

CREATE TABLE Books(
BookID INT PRIMARY KEY NOT NULL,
Title VARCHAR (50) NOT NULL,
PublisherName VARCHAR(100) FOREIGN KEY(PublisherName) REFERENCES Publisher(Name)NOT NULL
)

CREATE TABLE BookAuthors(
BookID INT FOREIGN KEY(BookID) REFERENCES Books(BookID) NOT NULL,
AuthorName VARCHAR(50) NOT NULL
)

CREATE TABLE Library_Branch(
BranchID INT PRIMARY KEY NOT NULL,
BranchName VARCHAR(50) NOT NULL,
Address VARCHAR(50) NOT NULL
)

CREATE TABLE Borrower(
CardNo INT PRIMARY KEY NOT NULL,
Name VARCHAR(50) NOT NULL,
Address VARCHAR(50) NOT NULL,
Phone VARCHAR(50) NOT NULL
)

CREATE TABLE Book_Loans(
BookID INT FOREIGN KEY(BookID) REFERENCES Books(BookID) NOT NULL,
BranchID INT FOREIGN KEY(BranchID) REFERENCES Library_Branch(BranchID) NOT NULL,
CardNo INT FOREIGN KEY REFERENCES Borrower(CardNo) NOT NULL,
DateOut VARCHAR (50) NOT NULL,
DueDate VARCHAR (50) NOT NULL
)

CREATE TABLE Book_Copies(
BookID INT FOREIGN KEY(BookID) REFERENCES Books(BookID) NOT NULL,
BranchID INT FOREIGN KEY(BranchID) REFERENCES Library_Branch(BranchID) NOT NULL,
No_Of_Copies INT NOT NULL
)

INSERT INTO Books (BookID, Title, PublisherName)VALUES
--(8,'The Foot Book','Penguin Random House')
(1,'The Lost Tribe','Scribner'),
(2,'The Cat in The Hat','Penguin Random House'),
(3,'Green Eggs and Ham','Penguin Random House'),
(4,'Sleep Book','Penguin Random House'),
(5,'Oh The Places You Go','Penguin Random House'),
(6,'The Lorax','Penguin Random House'),
(7,'Hop On Pop','Penguin Random House'),
(8,'The Foot Book','Penguin Random House'),
(9,'Harry Potter And the Philosophers Stone','Bloomsbury'),
(10,'Harry Potter And the Chamber Of Secrets','Bloomsbury'),
(11,'Harry Potter And the Prison Of Azkaban','Bloomsbury'),
(12,'Harry Potter And the Goblet Of Fire','Bloomsbury'),
(13,'Harry Potter And the Half Blood Prince','Bloomsbury'),
(14,'Harry Potter And the Deathly Hallows','Bloomsbury'),
(15,'A Game Of Thrones','Penguin Random House'),
(16,'The Hobbit','HMH'),
(17,'Lord Of The Rings','HMH'),
(18,'The Adventures Of Captain Underpants','HarperCollins'),
(19,'I Am Legend','Scribner'),
(20,'Untamed','Penguin Random House'),
(21,'Percy Jackson and The Olympians','Disney'),
(22,'The Store','Hachette Book Group')

INSERT INTO BookAuthors (BookID, AuthorName)VALUES
(1, 'Steven King'),
(2, 'Dr Seuss'),
(3, 'Dr Seuss'),
(4, 'Dr Seuss'),
(5, 'Dr Seuss'),
(6, 'Dr Seuss'),
(7, 'Dr Seuss'),
(8, 'Dr Seuss'),
(9, 'J.K Rowling'),
(10, 'J.K Rowling'),
(11, 'J.K Rowling'),
(12, 'J.K Rowling'),
(13, 'J.K Rowling'),
(14, 'J.K Rowling'),
(15, 'George R.R. Martin'),
(16, 'J. R. R. Tolkien'),
(17, 'J. R. R. Tolkien'),
(18, 'Dav Pilkey'),
(19, 'Richard Matheson'),
(20, 'Nora Roberts'),
(21, 'Rick Riordian'),
(22,'James Patterson')


INSERT INTO Library_Branch (BranchID, BranchName, Address)VALUES
(1, 'Sharpstown', '123 OverThere Rd.'),
(2, 'Central', '321 OverHere Rd.'),
(3, 'Eastern', '789 GoAway Rd.'),
(4, 'Western', '987 Reading Rd.')


INSERT INTO Publisher (Name, Address, Phone)VALUES
('Scribner','1230 Avenue of the Americas, 10thF New York New York 10020', '212-698-7000'),
('Bloomsbury','1385 Broadway, 5th Floor New York, NY 10018','212-419-5300'),
('Penguin Random House','1745 Broadway, New York, NY 10106','212-782-9000'),
('HMH','125 High Street Boston, MA 02110','617-351-5000'),
('HarperCollins', '195 Broadway New York, NY 10007', '212-207-7000'),
('Disney', 'Brentwood, NY 11717', '1-855-553-4763'),
('Hachette Book Group', '748 Broadway New York, NY 10009', '555-535-9875')


INSERT INTO Borrower(CardNo, Name, Address, Phone)VALUES
('1234','Daniel', '123 Asphalt Rd.', '971 219 7868'),
('1235','Michael', '432 Asphalt Rd.', '212 435 4321'),
('1236','Sandy', '654 Asphalt Rd.', '423 123 6354'),
('1237','Charlie', '678 Asphalt Rd.', '512 624 6254'),
('1238','Ashley', '312 Asphalt Rd.', '513 624 8408'),
('1239','Corbin', '635 Asphalt Rd.', '987 543 7644'),
('1230','Winston', '846 Asphalt Rd.', '628 543 6666'),
('1231','Jenny', '523 Asphalt Rd.', '333 444 5555')


INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DueDate)VALUES
(1, 1, '1234', '2017-10-09', '2017-10-16'),
(12, 2, '1235', '2017-10-09', '2017-10-16'),
(13, 2, '1236', '2017-10-09', '2017-10-17'),
(14, 3, '1237', '2017-10-09', '2017-10-18'),
(15, 3, '1238', '2017-10-09', '2017-10-19'),
(16, 4, '1239', '2017-10-09', '2017-10-15'),
(17, 4, '1230', '2017-10-09', '2017-10-14'),
(18, 1, '1231', '2017-10-09', '2017-10-13'),
(19, 1, '1234', '2017-10-09', '2017-10-16'),
(10, 2, '1235', '2017-10-09', '2017-10-20'),
(1, 2, '1236', '2017-10-09', '2017-10-21'),
(2, 3, '1235', '2017-10-09', '2017-10-22'),
(3, 3, '1230', '2017-10-09', '2017-10-23'),
(6, 4, '1239', '2017-10-09', '2017-10-12'),
(4, 4, '1231', '2017-10-09', '2017-10-25'),
(7, 1, '1235', '2017-10-09', '2017-10-26'),
(8, 1, '1236', '2017-10-09', '2017-10-27'),
(9, 1, '1237', '2017-10-09', '2017-10-30'),
(11, 1, '1231', '2017-10-09', '2017-10-17'),
(12, 2, '1235', '2017-10-09', '2017-10-17'),
(15, 3, '1236', '2017-10-09', '2017-10-17'),
(10, 4, '1237', '2017-10-09', '2017-10-18'),
(14, 2, '1238', '2017-10-09', '2017-10-18'),
(13, 2, '1239', '2017-10-09', '2017-10-19'),
(16, 3, '1230', '2017-10-09', '2017-10-19'),
(17, 4, '1231', '2017-10-09', '2017-10-19'),
(18, 2, '1234', '2017-10-09', '2017-10-19'),
(19, 1, '1235', '2017-10-09', '2017-10-19'),
(20, 3, '1234', '2017-10-09', '2017-10-16'),
(21, 4, '1236', '2017-10-09', '2017-10-17'),
(21, 2, '1237', '2017-10-09', '2017-10-18'),
(22, 3, '1238', '2017-10-09', '2017-10-17'),
(21, 1, '1239', '2017-10-09', '2017-10-18'),
(20, 4, '1230', '2017-10-09', '2017-10-19'),
(20, 2, '1234', '2017-10-09', '2017-10-18'),
(19, 3, '1231', '2017-10-09', '2017-10-17'),
(18, 1, '1235', '2017-10-09', '2017-10-20'),
(17, 4, '1236', '2017-10-09', '2017-10-21'),
(19, 3, '1237', '2017-10-09', '2017-10-16'),
(18, 2, '1238', '2017-10-09', '2017-10-22'),
(16, 3, '1234', '2017-10-09', '2017-10-23'),
(15, 2, '1235', '2017-10-09', '2017-10-26'),
(14, 1, '1236', '2017-10-09', '2017-10-24'),
(22, 3, '1237', '2017-10-09', '2017-10-28'),
(1, 3, '1238', '2017-10-09', '2017-10-15'),
(2, 3, '1239', '2017-10-09', '2017-10-17'),
(3, 4, '1230', '2017-10-09', '2017-10-19'),
(4, 4, '1231', '2017-10-09', '2017-10-20'),
(5, 2, '1234', '2017-10-09', '2017-10-21'),
(6, 3, '1235', '2017-10-09', '2017-10-22'),
(8, 2, '1236', '2017-10-09', '2017-10-23'),
(7, 4, '1237', '2017-10-09', '2017-10-16'),
(9, 3, '1238', '2017-10-09', '2017-10-16'),
(2, 2, '1239', '2017-10-09', '2017-10-16'),
(1, 1, '1230', '2017-10-09', '2017-10-16')

INSERT INTO Book_Copies(BookID,BranchID,No_Of_Copies)VALUES
(1,1,5),
(1,2,5),
(1,3,5),
(1,4,5),
(2,1,5),
(2,2,5),
(2,3,5),
(2,4,5),
(3,1,5),
(3,2,5),
(3,3,5),
(3,4,5),
(4,1,5),
(4,2,5),
(4,3,5),
(4,4,5),
(5,1,5),
(5,2,5),
(5,3,5),
(5,4,5),
(6,1,5),
(6,2,5),
(6,3,5),
(6,4,5),
(7,1,5),
(7,2,5),
(7,3,5),
(7,4,5),
(8,1,5),
(8,2,5),
(8,3,5),
(8,4,5),
(9,1,5),
(9,2,5),
(9,3,5),
(9,4,5),
(10,1,5),
(10,2,5),
(10,3,5),
(10,4,5),
(11,1,5),
(11,2,5),
(11,3,5),
(11,4,5),
(12,1,5),
(12,2,5),
(12,3,5),
(12,4,5),
(13,1,5),
(13,2,5),
(13,3,5),
(13,4,5),
(14,1,5),
(14,2,5),
(14,3,5),
(14,4,5),
(15,1,5),
(15,2,5),
(15,3,5),
(15,4,5),
(16,1,5),
(16,2,5),
(16,3,5),
(16,4,5),
(17,1,5),
(17,2,5),
(17,3,5),
(17,4,5),
(18,1,5),
(18,2,5),
(18,3,5),
(18,4,5),
(19,1,5),
(19,2,5),
(19,3,5),
(19,4,5),
(20,1,5),
(20,2,5),
(20,3,5),
(20,4,5),
(21,1,5),
(21,2,5),
(21,3,5),
(21,4,5),
(22,1,5),
(22,2,5),
(22,3,5),
(22,4,5)
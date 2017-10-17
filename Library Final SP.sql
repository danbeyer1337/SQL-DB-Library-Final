USE LibraryFP
GO
CREATE PROC spLibrary2
AS
BEGIN
SELECT Title,No_Of_Copies, BranchName
FROM Books
INNER JOIN Book_Copies ON Books.BookID=Book_Copies.BookID
INNER JOIN Library_Branch ON Book_Copies.BranchID=Library_Branch.BranchID
WHERE Title='The Lost Tribe'
END

GO
CREATE PROC spLibrary1
AS
BEGIN
SELECT Title,No_Of_Copies,BranchName
FROM Books
INNER JOIN Book_Copies ON Books.BookID=Book_Copies.BookID
INNER JOIN Library_Branch ON Book_Copies.BranchID=Library_Branch.BranchID
WHERE BranchName='Sharpstown'
END

GO 
CREATE PROC spLibrary3
AS
BEGIN
SELECT Name
FROM Borrower
WHERE CardNo IS NULL
END


GO
CREATE PROC spLibrary4
AS
BEGIN
SELECT Books.Title, Borrower.Name, Borrower.Address
FROM Books
INNER JOIN Book_Loans ON Book_Loans.BookID=Books.BookID
INNER JOIN Library_Branch ON Library_Branch.BranchID=Book_Loans.BranchID
INNER JOIN Borrower ON Borrower.CardNo=Book_Loans.CardNo
WHERE Library_Branch.BranchName='Sharpstown' AND Book_Loans.DueDate='2017-10-17'
END

GO
CREATE PROC spLibrary5
AS
BEGIN
SELECT Library_Branch.BranchName, Book_Loans.CardNo
FROM Library_Branch
INNER JOIN Book_Loans ON Book_Loans.BranchID=Library_Branch.BranchID
END

GO
CREATE PROC spLibrary6
AS
BEGIN
SELECT Borrower.Name, Borrower.Address, Book_Loans.CardNo
FROM Borrower
INNER JOIN Book_Loans ON Book_Loans.CardNo = Borrower.CardNo
HAVING COUNT (*)>5
GROUP BY Borrower.Name
END

GO
CREATE PROC spLibrary7
AS
BEGIN
SELECT Title, No_Of_Copies
FROM Books
INNER JOIN Book_Copies ON Book_Copies.BookID=Books.BookID
INNER JOIN Library_Branch ON Library_Branch.BranchID=Book_Copies.BranchID
INNER JOIN BookAuthors ON BookAuthors.BookID=Books.BookID
WHERE BookAuthors.AuthorName='Steven King' AND Library_Branch.BranchName='Central'
END
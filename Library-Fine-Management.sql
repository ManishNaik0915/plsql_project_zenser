-- Create Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    CopiesAvailable INT
);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (1, 'Data Structures and Algorithms', 'Amit Goel', 5);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (2, 'Operating Systems Concepts', 'Abraham Silberschatz', 3);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (3, 'Computer Networks', 'Andrew S. Tanenbaum', 4);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (4, 'Introduction to Algorithms', 'Thomas H. Cormen', 6);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (5, 'Database Management Systems', 'Raghu Ramakrishnan', 8);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (6, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 7);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (7, 'Machine Learning', 'Tom Mitchell', 2);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (8, 'The Art of Computer Programming', 'Donald E. Knuth', 10);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (9, 'Digital Logic Design', 'M. Morris Mano', 4);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (10, 'Computer Organization and Design', 'David A. Patterson', 3);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (11, 'Software Engineering', 'Ian Sommerville', 6);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (12, 'The C Programming Language', 'Brian W. Kernighan', 5);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (13, 'Computer Architecture', 'David A. Patterson', 7);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (14, 'Discrete Mathematics and Its Applications', 'Kenneth H. Rosen', 4);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (15, 'Python Programming', 'John Zelle', 8);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (16, 'Introduction to the Theory of Computation', 'Michael Sipser', 5);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (17, 'The Pragmatic Programmer', 'Andrew Hunt', 9);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (18, 'Artificial Intelligence: Foundations of Computational Agents', 'David L. Poole', 6);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (19, 'Programming Pearls', 'Jon Bentley', 3);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (20, 'Introduction to Machine Learning', 'Ethem Alpaydin', 7);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (21, 'The Mythical Man-Month', 'Frederick P. Brooks Jr.', 5);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (22, 'Linux Kernel Development', 'Robert Love', 4);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (23, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma', 2);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (24, 'Code Complete', 'Steve McConnell', 6);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (25, 'Algorithms', 'Robert Sedgewick', 5);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (26, 'Java: The Complete Reference', 'Herbert Schildt', 8);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (27, 'The Complete Reference C++', 'Herbert Schildt', 3);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (28, 'Understanding Cryptography', 'Christof Paar', 7);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (29, 'Deep Learning', 'Ian Goodfellow', 4);

INSERT INTO Books (BookID, Title, Author, CopiesAvailable) 
VALUES (30, 'The Complete Software Developers Guide', 'John Sonmez', 5);

-- Create Members Table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(15)
);

-- Insert sample data into Members table (Indian names)
INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (1, 'Amit Kumar', 'amit.kumar@example.com', '9876543210');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (2, 'Ravi Sharma', 'ravi.sharma@example.com', '8765432109');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (3, 'Priya Patel', 'priya.patel@example.com', '7654321098');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (4, 'Neha Gupta', 'neha.gupta@example.com', '6543210987');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (5, 'Rohit Verma', 'rohit.verma@example.com', '5432109876');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (6, 'Sonia Reddy', 'sonia.reddy@example.com', '4321098765');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (7, 'Vikas Joshi', 'vikas.joshi@example.com', '3210987654');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (8, 'Aparna Rao', 'aparna.rao@example.com', '2109876543');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (9, 'Manish Singh', 'manish.singh@example.com', '1098765432');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber) 
VALUES (10, 'Suresh Nair', 'suresh.nair@example.com', '0987654321');

-- Create BookLoans Table
CREATE TABLE BookLoans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FineAmount DECIMAL(10, 2),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Insert sample data into BookLoans table (only 7 insertions)
INSERT INTO BookLoans (LoanID, BookID, MemberID, LoanDate, DueDate, ReturnDate, FineAmount) 
VALUES (1, 1, 1, TO_DATE('2024-12-20', 'YYYY-MM-DD'), TO_DATE('2025-01-03', 'YYYY-MM-DD'), TO_DATE('2025-01-05', 'YYYY-MM-DD'), 10.00);

INSERT INTO BookLoans (LoanID, BookID, MemberID, LoanDate, DueDate, ReturnDate, FineAmount) 
VALUES (2, 2, 2, TO_DATE('2024-12-15', 'YYYY-MM-DD'), TO_DATE('2024-12-30', 'YYYY-MM-DD'), TO_DATE('2025-01-02', 'YYYY-MM-DD'), 10.00);

INSERT INTO BookLoans (LoanID, BookID, MemberID, LoanDate, DueDate, ReturnDate, FineAmount) 
VALUES (3, 3, 3, TO_DATE('2024-12-10', 'YYYY-MM-DD'), TO_DATE('2024-12-25', 'YYYY-MM-DD'), TO_DATE('2025-01-04', 'YYYY-MM-DD'), 15.00);

INSERT INTO BookLoans (LoanID, BookID, MemberID, LoanDate, DueDate, ReturnDate, FineAmount) 
VALUES (4, 4, 4, TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_DATE('2024-12-20', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 15.00);

INSERT INTO BookLoans (LoanID, BookID, MemberID, LoanDate, DueDate, ReturnDate, FineAmount) 
VALUES (5, 5, 5, TO_DATE('2024-12-18', 'YYYY-MM-DD'), TO_DATE('2025-01-02', 'YYYY-MM-DD'), TO_DATE('2025-01-07', 'YYYY-MM-DD'), 25.00);

INSERT INTO BookLoans (LoanID, BookID, MemberID, LoanDate, DueDate, ReturnDate, FineAmount) 
VALUES (6, 6, 6, TO_DATE('2024-12-22', 'YYYY-MM-DD'), TO_DATE('2025-01-06', 'YYYY-MM-DD'), TO_DATE('2025-01-08', 'YYYY-MM-DD'), 10.00);

INSERT INTO BookLoans (LoanID, BookID, MemberID, LoanDate, DueDate, ReturnDate, FineAmount) 
VALUES (7, 7, 7, TO_DATE('2024-12-25', 'YYYY-MM-DD'), TO_DATE('2025-01-09', 'YYYY-MM-DD'), TO_DATE('2025-01-10', 'YYYY-MM-DD'), 5.00);

-- Update Fine Calculation Function to charge 5 INR per overdue day
CREATE OR REPLACE FUNCTION calculate_fine (due_date DATE, return_date DATE) 
    RETURN DECIMAL IS
    fine DECIMAL(10, 2);
    overdue_days INT;
BEGIN
    IF return_date IS NULL OR return_date <= due_date THEN
        RETURN 0.00;  
    ELSE
        overdue_days := (return_date - due_date);
        fine := overdue_days * 5; 
        RETURN fine;
    END IF;
END;

-- Update Trigger for Fine Calculation before Insert
CREATE OR REPLACE TRIGGER calculate_fine_before_insert
BEFORE INSERT ON BookLoans
FOR EACH ROW
DECLARE
    overdue_days NUMBER;
BEGIN
    IF :NEW.ReturnDate IS NOT NULL THEN
        overdue_days := TRUNC(:NEW.ReturnDate) - TRUNC(:NEW.DueDate);
        
        IF overdue_days > 0 THEN
            :NEW.FineAmount := overdue_days * 5;  
        ELSE
            :NEW.FineAmount := 0;
        END IF;
    ELSE
        :NEW.FineAmount := 0;  
    END IF;
END;

-- Update some loan records for fine calculation
UPDATE BookLoans 
SET ReturnDate = TO_DATE('2025-01-06', 'YYYY-MM-DD') 
WHERE LoanID = 1;

-- Select statement to view all records with overdue fines
SELECT * FROM BookLoans ;

SELECT 
    bl.LoanID,
    b.Title,
    m.Name AS MemberName,
    bl.LoanDate,
    bl.DueDate,
    bl.ReturnDate,
    bl.FineAmount
FROM 
    BookLoans bl
JOIN 
    Books b ON bl.BookID = b.BookID
JOIN 
    Members m ON bl.MemberID = m.MemberID
ORDER BY 
    bl.LoanID;
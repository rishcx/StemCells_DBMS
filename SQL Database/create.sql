CREATE TABLE City (
    City_Id INT PRIMARY KEY,
    City_Name VARCHAR(100),
    State_Name VARCHAR(100)
);

CREATE TABLE Manager (
    M_Id INT PRIMARY KEY,
    M_Fname VARCHAR(50),
    M_Lname VARCHAR(50),
    M_Phno INT(10)
);

CREATE TABLE Hospital (
    Hosp_Id INT PRIMARY KEY,
    Hosp_name VARCHAR(100),
    Hosp_Phno INT(10),
    City_Id INT,
    M_Id INT,
    FOREIGN KEY (City_Id) REFERENCES City(City_Id),
    FOREIGN KEY (M_Id) REFERENCES Manager(M_Id)
);

CREATE TABLE Rec_staff (
    R_Id INT PRIMARY KEY,
    R_Name VARCHAR(100),
    Ph_no INT(10)
);

CREATE TABLE Patient (
    P_Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Sex CHAR(1),
    DOB DATE,
    Age INT,
    B_group VARCHAR(5),
    HLA VARCHAR(20),
    Phno INT(10),
    R_Id INT,
    City_Id INT,
    M_Id INT,
    FOREIGN KEY (R_Id) REFERENCES Rec_staff(R_Id),
    FOREIGN KEY (City_Id) REFERENCES City(City_Id),
    FOREIGN KEY (M_Id) REFERENCES Manager(M_Id)
);

CREATE TABLE Donor (
    D_Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Sex CHAR(1),
    DOB DATE,
    Age INT,
    B_group VARCHAR(5),
    D_Phno INT(10),
    HLA VARCHAR(20),
    City_Id INT,
    R_Id INT,
    FOREIGN KEY (City_Id) REFERENCES City(City_Id),
    FOREIGN KEY (R_Id) REFERENCES Rec_staff(R_Id)
);

CREATE TABLE Stem_Cells (
    Don_date DATE,
    HLA_type VARCHAR(20),
    Qty INT,
    B_group VARCHAR(5),
    D_Id INT,
    M_Id INT,
    PRIMARY KEY(D_Id, Don_date),
    FOREIGN KEY (D_Id) REFERENCES Donor(D_Id),
    FOREIGN KEY (M_Id) REFERENCES Manager(M_Id)
);

ALTER TABLE Patient 
ADD CONSTRAINT CHK_Patient_BloodGroup CHECK (B_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'));

ALTER TABLE Patient 
ADD CONSTRAINT CHK_Patient_HLA_Type CHECK (HLA IN ('A', 'B', 'C', 'DRB1', 'DRQ1'));

ALTER TABLE Donor 
ADD CONSTRAINT CHK_Donor_BloodGroup CHECK (B_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'));

ALTER TABLE Donor 
ADD CONSTRAINT CHK_Donor_HLA_Type CHECK (HLA IN ('A', 'B', 'C', 'DRB1', 'DRQ1'));INSERT INTO Manager (M_Id, M_Fname, M_Lname, M_Phno) VALUES  (1, 'Brian', 'King', '6786786789'), (2, 'Carol', 'Scott', '7897897890'), (3, 'Daniel', 'Moore', '8908908901'), (4, 'Diane', 'Adams', '9019019012'), (5, 'Edward', 'Clark', '0120120123'), (6, 'Fiona', 'Gray', '1121121123'), (7, 'George', 'Hill', '2232232234'), (8, 'Hannah', 'Young', '3343343345'), (9, 'Ian', 'Knight', '4454454456'), (10, 'Julia', 'Wright', '5565565567'), (11, 'Kevin', 'Smith', '6677889901'), (12, 'Laura', 'Johnson', '7788990012'), (13, 'Michael', 'Williams', '8899001123'), (14, 'Natalie', 'Brown', '9900112234'), (15, 'Oliver', 'Jones', '0011223345'), (16, 'Paul', 'Garcia', '1122334456'), (17, 'Quincy', 'Martinez', '2233445567'), (18, 'Rachel', 'Davis', '3344556678'), (19, 'Sam', 'Rodriguez', '4455667789'), (20, 'Tina', 'Martinez', '5566778890'), (21, 'Ursula', 'Hernandez', '6677889900'), (22, 'Victor', 'Lopez', '7788990011'), (23, 'Wendy', 'Gonzalez', '8899001122'), (24, 'Xavier', 'Wilson', '9900112233'), (25, 'Yvonne', 'Anderson', '0011223344')

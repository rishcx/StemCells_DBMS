INSERT INTO City (City_Id, City_Name, State_Name)
VALUES 
(101, 'New York', 'NY'),
(102, 'Los Angeles', 'CA'),
(103, 'Chicago', 'IL'),
(104, 'Houston', 'TX'),
(105, 'Phoenix', 'AZ'),
(106, 'San Diego', 'CA'),
(107, 'Dallas', 'TX'),
(108, 'San Jose', 'CA'),
(109, 'Austin', 'TX'),
(110, 'Jacksonville', 'FL'),
(111, 'San Francisco', 'CA'),
(112, 'Columbus', 'OH'),
(113, 'Indianapolis', 'IN'),
(114, 'Charlotte', 'NC'),
(115, 'Seattle', 'WA'),
(116, 'Denver', 'CO'),
(117, 'Washington', 'DC'),
(118, 'Boston', 'MA'),
(119, 'El Paso', 'TX'),
(120, 'Nashville', 'TN'),
(121, 'Detroit', 'MI'),
(122, 'Memphis', 'TN'),
(123, 'Portland', 'OR'),
(124, 'Las Vegas', 'NV'),
(125, 'Louisville', 'KY');


INSERT INTO Manager (M_Id, M_Fname, M_Lname, M_Phno)
VALUES 
(1, 'Brian', 'King', '6786786789'),
(2, 'Carol', 'Scott', '7897897890'),
(3, 'Daniel', 'Moore', '8908908901'),
(4, 'Diane', 'Adams', '9019019012'),
(5, 'Edward', 'Clark', '0120120123'),
(6, 'Fiona', 'Gray', '1121121123'),
(7, 'George', 'Hill', '2232232234'),
(8, 'Hannah', 'Young', '3343343345'),
(9, 'Ian', 'Knight', '4454454456'),
(10, 'Julia', 'Wright', '5565565567'),
(11, 'Kevin', 'Smith', '6677889901'),
(12, 'Laura', 'Johnson', '7788990012'),
(13, 'Michael', 'Williams', '8899001123'),
(14, 'Natalie', 'Brown', '9900112234'),
(15, 'Oliver', 'Jones', '0011223345'),
(16, 'Paul', 'Garcia', '1122334456'),
(17, 'Quincy', 'Martinez', '2233445567'),
(18, 'Rachel', 'Davis', '3344556678'),
(19, 'Sam', 'Rodriguez', '4455667789'),
(20, 'Tina', 'Martinez', '5566778890'),
(21, 'Ursula', 'Hernandez', '6677889900'),
(22, 'Victor', 'Lopez', '7788990011'),
(23, 'Wendy', 'Gonzalez', '8899001122'),
(24, 'Xavier', 'Wilson', '9900112233'),
(25, 'Yvonne', 'Anderson', '0011223344');


INSERT INTO Rec_staff (R_Id, R_Name, Ph_no)
VALUES 
(1, 'John Receptionist', '1234567891'),
(2, 'Samantha Receptionist', '2345678902'),
(3, 'Kevin Receptionist', '3456789013'),
(4, 'Natalie Receptionist', '4567890124'),
(5, 'Peter Receptionist', '5678901235'),
(6, 'Olivia Receptionist', '6789012345'),
(7, 'Ethan Receptionist', '7890123456'),
(8, 'Sophia Receptionist', '8901234567'),
(9, 'Liam Receptionist', '9012345678'),
(10, 'Emma Receptionist', '1234567890'),
(11, 'Sophia Receptionist', '1234567891'),
(12, 'Liam Receptionist', '2345678902'),
(13, 'Emily Receptionist', '3456789013'),
(14, 'Ava Receptionist', '4567890124'),
(15, 'Mason Receptionist', '5678901235'),
(16, 'Evelyn Receptionist', '6789012346'),
(17, 'Lucas Receptionist', '7890123457'),
(18, 'Isabella Receptionist', '8901234568'),
(19, 'Noah Receptionist', '9012345679'),
(20, 'Mia Receptionist', '1234567800'),
(21, 'Oliver Receptionist', '2345678901'),
(22, 'Amelia Receptionist', '3456789012'),
(23, 'James Receptionist', '4567890123'),
(24, 'Charlotte Receptionist', '5678901234'),
(25, 'Benjamin Receptionist', '6789012345');

INSERT INTO Hospital (Hosp_Id, Hosp_name, Hosp_Phno, City_Id, M_Id)
VALUES 
(1, 'City General', '3456789123', 101, 1),
(2, 'North Medical', '4567891234', 102, 2),
(3, 'South Clinic', '5678902345', 103, 3),
(4, 'East Health', '6789013456', 104, 4),
(5, 'West Care', '7890124567', 105, 5),
(6, 'Pacific Wellness', '8901234789', 106, 6),
(7, 'Metro Medical Center', '9012345890', 107, 7),
(8, 'Valley Health', '1123456789', 108, 8),
(9, 'Lakeside Clinic', '2234567890', 109, 9),
(10, 'Sunshine Care', '3345678901', 110, 10),
(11, 'Harborview Medical', '4561237890', 111, 11),
(12, 'Midtown Clinic', '5672348901', 112, 12),
(13, 'Lakeside Wellness', '6783459012', 113, 13),
(14, 'Green Valley Health', '7894560123', 114, 14),
(15, 'Summit Care', '8905671234', 115, 15),
(16, 'Pine Ridge Medical', '9016782345', 116, 16),
(17, 'Maple Grove Clinic', '1237893456', 117, 17),
(18, 'Riverbend Health', '2348904567', 118, 18),
(19, 'Crescent View Hospital', '3459015678', 119, 19),
(20, 'Silverline Medical', '4560126789', 120, 20),
(21, 'Harmony Health Center', '5671237890', 121, 21),
(22, 'Golden Meadows Care', '6782348901', 122, 22),
(23, 'Bright Horizons Hospital', '7893459012', 123, 23),
(24, 'Starlight Clinic', '8904560123', 124, 24),
(25, 'Evergreen Wellness', '9015671234', 125, 25);

INSERT INTO Donor (D_Id, Fname, Lname, Sex, DOB, Age, B_group, D_Phno, HLA, City_Id, R_Id)
VALUES 
(1, 'Alice', 'Carter', 'F', '1995-03-14', 29, 'O+', '1234567890', 'A', 111, 1),
(2, 'Bob', 'Harrison', 'M', '1988-07-22', 36, 'A-', '2345678901', 'B', 112, 2),
(3, 'Clara', 'Evans', 'F', '1981-11-05', 43, 'B+', '3456789012', 'DRB1', 113, 3),
(4, 'David', 'Lee', 'M', '1993-01-15', 31, 'AB-', '4567890123', 'C', 114, 4),
(5, 'Eva', 'Walker', 'F', '1997-09-30', 27, 'O-', '5678901234', 'DRQ1', 115, 5),
(6, 'Frank', 'Parker', 'M', '1990-12-18', 34, 'A+', '6789012345', 'A', 116, 6),
(7, 'Grace', 'White', 'F', '1983-08-10', 41, 'B-', '7890123456', 'B', 117, 7),
(8, 'Hannah', 'Adams', 'F', '1995-05-22', 29, 'O+', '8901234567', 'C', 118, 8),
(9, 'Ian', 'Brooks', 'M', '1992-10-17', 32, 'A+', '9012345678', 'DRB1', 119, 9),
(10, 'Jack', 'Murphy', 'M', '1996-04-06', 28, 'B+', '1234567899', 'DRQ1', 120, 10),
(11, 'Karen', 'Powell', 'F', '1989-02-14', 35, 'AB+', '2345678909', 'A', 121, 11),
(12, 'Liam', 'Kelly', 'M', '1982-06-25', 42, 'O-', '3456789010', 'B', 122, 12),
(13, 'Mia', 'Young', 'F', '1999-08-19', 25, 'A-', '4567890121', 'C', 123, 13),
(14, 'Noah', 'Turner', 'M', '1987-03-03', 37, 'B-', '5678901233', 'DRB1', 124, 14),
(15, 'Olivia', 'Carter', 'F', '1991-12-30', 33, 'AB-', '6789012344', 'DRQ1', 125, 15),
(16, 'Paul', 'Martin', 'M', '1986-01-21', 38, 'A+', '7890123455', 'A', 111, 16),
(17, 'Quincy', 'Harris', 'M', '1994-07-11', 30, 'O+', '8901234566', 'B', 112, 17),
(18, 'Rachel', 'Scott', 'F', '1980-05-29', 44, 'B+', '9012345677', 'C', 113, 18),
(19, 'Sophia', 'Lewis', 'F', '1998-10-02', 26, 'A-', '1234567898', 'DRB1', 114, 19),
(20, 'Thomas', 'Reed', 'M', '1987-06-15', 37, 'AB+', '2345678908', 'DRQ1', 115, 20),
(21, 'Emma', 'Bennett', 'F', '1993-09-14', 31, 'O+', '3456789013', 'A', 116, 21),
(22, 'Nathan', 'Clark', 'M', '1990-02-18', 34, 'A-', '4567890124', 'B', 117, 22),
(23, 'Isabella', 'Diaz', 'F', '1995-12-12', 29, 'B+', '5678901235', 'C', 118, 23),
(24, 'Ethan', 'Foster', 'M', '1988-04-25', 36, 'AB-', '6789012346', 'DRB1', 119, 24),
(25, 'Charlotte', 'Garcia', 'F', '1992-11-30', 32, 'O-', '7890123457', 'DRQ1', 120, 25);



INSERT INTO Patient (P_Id, Fname, Lname, Sex, DOB, Age, B_group, HLA, Phno, R_Id, City_Id, M_Id)
VALUES 
(1, 'Sophia', 'Brown', 'F', '1985-06-15', 39, 'A+', 'A', '1234567890', 1, 111, 1),
(2, 'Liam', 'Smith', 'M', '1990-12-03', 34, 'B+', 'B', '2345678901', 2, 112, 2),
(3, 'Emma', 'Johnson', 'F', '1995-04-18', 29, 'O+', 'DRB1', '3456789012', 3, 113, 3),
(4, 'Noah', 'Davis', 'M', '1987-09-10', 37, 'A-', 'C', '4567890123', 4, 114, 4),
(5, 'Olivia', 'Garcia', 'F', '1992-03-25', 32, 'AB+', 'DRQ1', '5678901234', 5, 115, 5),
(6, 'Ethan', 'Martinez', 'M', '1989-11-06', 35, 'O-', 'A', '6789012345', 6, 116, 6),
(7, 'Isabella', 'Hernandez', 'F', '1988-01-20', 36, 'B-', 'B', '7890123456', 7, 117, 7),
(8, 'Mason', 'Lopez', 'M', '1996-07-14', 28, 'A+', 'C', '8901234567', 8, 118, 8),
(9, 'Ava', 'Wilson', 'F', '1993-05-12', 31, 'AB-', 'DRB1', '9012345678', 9, 119, 9),
(10, 'James', 'Anderson', 'M', '1991-10-04', 33, 'O+', 'DRQ1', '1234567800', 10, 120, 10),
(11, 'Mia', 'Taylor', 'F', '1997-02-16', 27, 'B+', 'A', '2345678909', 11, 121, 11),
(12, 'Elijah', 'Moore', 'M', '1986-08-19', 38, 'A-', 'B', '3456789010', 12, 122, 12),
(13, 'Charlotte', 'Thomas', 'F', '1999-03-08', 25, 'O-', 'C', '4567890121', 13, 123, 13),
(14, 'Benjamin', 'Jackson', 'M', '1984-11-30', 40, 'B-', 'DRB1', '5678901233', 14, 124, 14),
(15, 'Amelia', 'White', 'F', '1994-12-21', 30, 'AB+', 'DRQ1', '6789012344', 15, 125, 15),
(16, 'Lucas', 'Harris', 'M', '1992-06-01', 32, 'A+', 'A', '7890123455', 16, 111, 16),
(17, 'Harper', 'Clark', 'F', '1990-04-09', 34, 'O+', 'B', '8901234566', 17, 112, 17),
(18, 'Jack', 'Lewis', 'M', '1983-01-15', 41, 'B+', 'C', '9012345677', 18, 113, 18),
(19, 'Ella', 'Young', 'F', '1989-09-24', 35, 'A-', 'DRB1', '1234567898', 19, 114, 19),
(20, 'Henry', 'Walker', 'M', '1987-02-28', 37, 'AB-', 'DRQ1', '2345678908', 20, 115, 20),
(21, 'Avery', 'Allen', 'F', '1998-07-07', 26, 'O+', 'A', '3456789013', 21, 116, 21),
(22, 'Logan', 'King', 'M', '1985-12-01', 39, 'A-', 'B', '4567890124', 22, 117, 22),
(23, 'Scarlett', 'Wright', 'F', '1994-10-19', 30, 'B+', 'C', '5678901235', 23, 118, 23),
(24, 'Daniel', 'Green', 'M', '1988-08-30', 36, 'AB-', 'DRB1', '6789012346', 24, 119, 24),
(25, 'Lillian', 'Scott', 'F', '1991-11-10', 33, 'O-', 'DRQ1', '7890123457', 25, 120, 25);




INSERT INTO Stem_Cells (Don_date, HLA_type, Qty, B_group, D_Id, M_Id)
VALUES 
('2024-01-12', 'A', 5, 'O+', 1, 1),
('2024-01-15', 'B', 3, 'A-', 2, 2),
('2024-01-20', 'DRB1', 7, 'B+', 3, 3),
('2024-01-22', 'C', 4, 'AB-', 4, 4),
('2024-01-25', 'DRQ1', 6, 'O-', 5, 5),
('2024-01-30', 'A', 5, 'A+', 6, 6),
('2024-02-01', 'B', 8, 'B-', 7, 7),
('2024-02-03', 'C', 2, 'O+', 8, 8),
('2024-02-05', 'DRB1', 9, 'A+', 9, 9),
('2024-02-07', 'DRQ1', 4, 'B+', 10, 10),
('2024-02-10', 'A', 6, 'AB+', 11, 11),
('2024-02-12', 'B', 3, 'O-', 12, 12),
('2024-02-15', 'C', 5, 'A-', 13, 13),
('2024-02-17', 'DRB1', 4, 'B-', 14, 14),
('2024-02-20', 'DRQ1', 7, 'AB-', 15, 15),
('2024-02-23', 'A', 2, 'A+', 16, 16),
('2024-02-25', 'B', 6, 'O+', 17, 17),
('2024-02-28', 'C', 3, 'B+', 18, 18),
('2024-03-01', 'DRB1', 5, 'A-', 19, 19),
('2024-03-03', 'DRQ1', 4, 'AB+', 20, 20),
('2024-03-06', 'A', 7, 'O-', 21, 21),
('2024-03-08', 'B', 6, 'A-', 22, 22),
('2024-03-10', 'C', 3, 'B+', 23, 23),
('2024-03-13', 'DRB1', 5, 'AB-', 24, 24),
('2024-03-15', 'DRQ1', 4, 'O+', 25, 25);


select * from stem_cells;
select * from donor;
select * from patient;
select * from hospital;
select * from manager;
select * from rec_staff;
select * from city;


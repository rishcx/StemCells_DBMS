-- city-wise count of patients, donors, hospitals, managers, and stem cells quantity
SELECT 
    c.City_Name AS City,
    COUNT(DISTINCT p.P_Id) AS Patient_Count,
    COUNT(DISTINCT d.D_Id) AS Donor_Count,
    COUNT(DISTINCT h.Hosp_Id) AS Hospital_Count,
    COUNT(DISTINCT m.M_Id) AS Manager_Count,
    SUM(s.Qty) AS Stem_Cell_Quantity
FROM City c
LEFT JOIN Patient p ON c.City_Id = p.City_Id
LEFT JOIN Donor d ON c.City_Id = d.City_Id
LEFT JOIN Hospital h ON c.City_Id = h.City_Id
LEFT JOIN Manager m ON h.M_Id = m.M_Id
LEFT JOIN Stem_Cells s ON d.D_Id = s.D_Id
GROUP BY c.City_Name
ORDER BY c.City_Name;

-- total stem cells donated by each donor
SELECT d.Fname AS Donor_First_Name, d.Lname AS Donor_Last_Name, 
       SUM(s.Qty) AS Total_Stem_Cells_Donated
FROM Donor d
JOIN Stem_Cells s ON d.D_Id = s.D_Id
GROUP BY d.D_Id, d.Fname, d.Lname
ORDER BY Total_Stem_Cells_Donated DESC;

-- Patients without Any Perfect Matches
SELECT 
    p.P_Id AS Patient_ID,
    CONCAT(p.Fname, ' ', p.Lname) AS Patient_Name,
    p.City_Id
FROM Patient p
LEFT JOIN Donor d ON p.City_Id = d.City_Id AND p.B_group = d.B_group AND p.HLA = d.HLA
WHERE d.D_Id IS NULL;


-- Find the Manager with the Most Patients in Their City
SELECT 
    m.M_Id AS Manager_ID,
    CONCAT(m.M_Fname, ' ', m.M_Lname) AS Manager_Name,
    COUNT(p.P_Id) AS Total_Patients
FROM Manager m
JOIN Hospital h ON m.M_Id = h.M_Id
JOIN Patient p ON h.City_Id = p.City_Id
GROUP BY m.M_Id, m.M_Fname, m.M_Lname
ORDER BY Total_Patients DESC
LIMIT 1;


-- Find the Most Common HLA Type Among Patients and Donors
SELECT 
    HLA_Type,
    COUNT(*) AS Occurrences
FROM (
    SELECT HLA AS HLA_Type FROM Patient
    UNION ALL
    SELECT HLA AS HLA_Type FROM Donor
) hla_combined
GROUP BY HLA_Type
ORDER BY Occurrences DESC
LIMIT 1;


-- Find donors who have donated more than 500 units of stem cells and live in cities where at least one patient is under 18 years old.
SELECT d.Fname AS Donor_First_Name, 
       d.Lname AS Donor_Last_Name, 
       SUM(s.Qty) AS Total_Stem_Cells_Donated, 
       c.City_Name
FROM Donor d
JOIN City c ON d.City_Id = c.City_Id
JOIN Stem_Cells s ON d.D_Id = s.D_Id
WHERE EXISTS (
    SELECT 1
    FROM Patient p
    WHERE p.City_Id = c.City_Id AND p.Age < 30
)
GROUP BY d.D_Id, d.Fname, d.Lname, c.City_Name
HAVING SUM(s.Qty) > 5;


select * from trigger_alerts;
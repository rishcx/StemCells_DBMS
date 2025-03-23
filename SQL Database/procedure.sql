DELIMITER $$
CREATE PROCEDURE GetDonorsByCriteria (
    IN hla_filter VARCHAR(20), -- Optional HLA filter (use '%' for no filtering)
    IN sort_column VARCHAR(20), -- Column to sort by (e.g., 'Age', 'Fname')
    IN sort_direction VARCHAR(4) -- Sort direction ('ASC' or 'DESC')
)
BEGIN
    SET @query = CONCAT(
        'SELECT D_Id, Fname, Lname, Age, B_group, HLA, D_Phno 
         FROM Donor 
         WHERE HLA LIKE ? 
         ORDER BY ', sort_column, ' ', sort_direction
    );
    PREPARE stmt FROM @query;
    SET @hla_param = hla_filter;
    EXECUTE stmt USING @hla_param;
    DEALLOCATE PREPARE stmt;
END $$

DELIMITER ;

CALL GetDonorsByCriteria('A', 'Age', 'DESC');



-- Stored procedure to find potential donors for a patient
DELIMITER $$

CREATE PROCEDURE FindPotentialDonors(
    IN patient_id INT,
    IN max_age_difference INT
)
BEGIN
    DECLARE patient_blood_group VARCHAR(5);
    DECLARE patient_hla VARCHAR(20);
    DECLARE patient_age INT;

    -- Get patient details
    SELECT B_group, HLA, Age INTO patient_blood_group, patient_hla, patient_age
    FROM Patient
    WHERE P_Id = patient_id;

    -- Find matching donors
    SELECT 
        D.D_Id,
        CONCAT(D.Fname, ' ', D.Lname) as Donor_Name,
        D.Age,
        D.B_group,
        D.HLA,
        C.City_Name,
        (SELECT MAX(Don_date) FROM Stem_Cells WHERE D_Id = D.D_Id) as Last_Donation_Date,
        CASE
            WHEN D.B_group = patient_blood_group AND D.HLA = patient_hla THEN 'Perfect Match'
            WHEN D.HLA = patient_hla THEN 'HLA Match'
            WHEN D.B_group = patient_blood_group THEN 'Blood Group Match'
            ELSE 'Partial Match'
        END as Match_Type
    FROM Donor D
    JOIN City C ON D.City_Id = C.City_Id
    WHERE 
        (D.HLA = patient_hla OR D.B_group = patient_blood_group)
        AND ABS(D.Age - patient_age) <= max_age_difference
        AND D.D_Id NOT IN (
            SELECT D_Id 
            FROM Stem_Cells 
            WHERE DATEDIFF(CURRENT_DATE, Don_date) < 90
        )
    ORDER BY 
        CASE
            WHEN D.B_group = patient_blood_group AND D.HLA = patient_hla THEN 1
            WHEN D.HLA = patient_hla THEN 2
            WHEN D.B_group = patient_blood_group THEN 3
            ELSE 4
        END,
        ABS(D.Age - patient_age);
END $$

DELIMITER ;

CALL FindPotentialDonors(1, 10);


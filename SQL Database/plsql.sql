drop table trigger_alerts;
CREATE TABLE Trigger_Alerts (
    Alert_Id INT AUTO_INCREMENT PRIMARY KEY,
    Alert_Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Alert_Message VARCHAR(255),
    Is_Handled BOOLEAN DEFAULT FALSE
);


-- trigger 1 : low inventory
DELIMITER $$

CREATE TRIGGER LowInventoryNotification
AFTER INSERT ON Stem_Cells
FOR EACH ROW
BEGIN
    DECLARE stemCellCount INT;

    -- Count the total quantity for the specific HLA type and blood group
    SELECT SUM(Qty) INTO stemCellCount
    FROM Stem_Cells
    WHERE HLA_type = NEW.HLA_type AND B_group = NEW.B_group;

    -- If the total quantity is less than the threshold, log an alert
    IF stemCellCount < 10 THEN
        INSERT INTO Trigger_Alerts (Alert_Message)
        VALUES (
            CONCAT(
                'Low inventory alert: Only ', stemCellCount, 
                ' units available for HLA type ', NEW.HLA_type, 
                ' and Blood Group ', NEW.B_group
            )
        );
    END IF;
END $$

DELIMITER ;

-- trigger 2 : matching alert
DELIMITER $$

CREATE TRIGGER MatchingStemCellsNotification
AFTER INSERT ON Donor
FOR EACH ROW
BEGIN
    DECLARE matchingCount INT;

    -- Count how many patients have a matching HLA type
    SELECT COUNT(*) INTO matchingCount
    FROM Patient
    WHERE HLA = NEW.HLA;

    -- If there's a match, log a notification
    IF matchingCount > 0 THEN
        INSERT INTO Trigger_Alerts (Alert_Message)
        VALUES (
            CONCAT(
                'Matching alert: ', matchingCount, ' donor with HLA type ', NEW.HLA,
                ' has matching patients.'
            )
        );
    END IF;
END $$

DELIMITER ;

-- trigger 3 : redonation
DELIMITER $$

CREATE TRIGGER Prevent_Frequent_Donations
BEFORE INSERT ON Stem_Cells
FOR EACH ROW
BEGIN
    DECLARE latest_donation_date DATE;

    -- Fetch the most recent donation date for the donor
    SELECT MAX(Don_date)
    INTO latest_donation_date
    FROM Stem_Cells
    WHERE D_Id = NEW.D_Id;

    -- Check if the latest donation is within 3 months
    IF latest_donation_date IS NOT NULL AND DATEDIFF(NEW.Don_date, latest_donation_date) < 90 THEN
        -- Log the alert in the Trigger_Alerts table
        INSERT INTO Trigger_Alerts (Alert_Message)
        VALUES (CONCAT('Donor with ID ', NEW.D_Id, ' attempted to donate again within 3 months.'));

        -- Prevent the insertion
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Donation not allowed: Donor has already donated within the last 3 months.';
    END IF;
END;
$$

DELIMITER ;

select * from trigger_alerts;

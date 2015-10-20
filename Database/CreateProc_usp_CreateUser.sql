DROP PROCEDURE IF EXISTS usp_CreateUser $$

CREATE PROCEDURE usp_CreateUser
(
	IN _Email varchar(128),
	IN _Password varchar(30),
	IN _FirstName varchar(30),
	IN _LastName varchar(30),
	IN _Phone varchar(15),
	IN _Address varchar(50),
	IN _Address2 varchar(50),
	IN _City varchar(50),
	IN _State char(2),
	IN _Zip varchar(10),
	OUT success int
)
BEGIN
	DECLARE c int;
    SELECT COUNT(*)
	INTO c
	FROM tblUser
	WHERE Email = _Email AND Active = 'yes';
	
	IF c = 0 THEN
		BEGIN
			INSERT INTO tblUser (Email, Password, FirstName, LastName, Phone, Address, Address2, City, State, Zip)
			VALUES (_Email, _Password, _FirstName, _LastName, _Phone, _Address, _Address2, _City, _State, _Zip);
			SET success = 1;
		END;
	ELSE
		SET success = 0;
	END IF;
END $$

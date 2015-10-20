DROP PROCEDURE IF EXISTS usp_CreateEvent $$

CREATE PROCEDURE usp_CreateEvent
(
	IN _UserId int,
	IN _Name varchar(100),
	IN _CategoryName varchar(50),
	IN _Venue varchar(50),
	IN _Address varchar(50),
	IN _City varchar(50),
	IN _State char(2),
	IN _Zip varchar(10),
	IN _StartTime datetime,
	IN _EndTime datetime,
	IN _Description varchar(500),
	OUT _success int
)
BEGIN
	DECLARE _EventId int;
	DECLARE c int;
	SELECT COUNT(*)
	INTO c
	FROM tblEvent
	WHERE Name = _Name AND StartTime = _StartTime;

	IF c = 0 THEN
		BEGIN
			INSERT INTO tblEvent (Name, CategoryName, Venue, Address, City, State, Zip, StartTime, EndTime, Description)
			VALUES (_Name, _CategoryName, _Venue, _Address, _City, _State, _Zip, _StartTime, _EndTime, _Description);
			
			SELECT ID
			INTO _EventId
			FROM tblEvent
			WHERE Name = _Name AND StartTime = _StartTime;
			
			INSERT INTO tblUserEvent (UserId, EventId, MemberTypeName, JoinedTime)
			VALUES (_UserId, _EventId, 'Owner', NOW());
			
			SET _success = 1;
		END;
	ELSE
		SET _success = 0;
	END IF;
END $$

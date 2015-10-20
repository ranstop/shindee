
DROP TABLE IF EXISTS tblUserEvent;
DROP TABLE IF EXISTS tblMemberType;
DROP TABLE IF EXISTS tblEvent;
DROP TABLE IF EXISTS tblCategory;
DROP TABLE IF EXISTS tblUser;

CREATE TABLE tblUser
(
	Id int NOT NULL AUTO_INCREMENT,
	Email varchar(128) NOT NULL,
	Password varchar(30) NOT NULL,
	FirstName varchar(30) NOT NULL,
	LastName varchar(30) NOT NULL,
	Phone varchar(15) NOT NULL,
	Address varchar(50) NOT NULL,
	Address2 varchar(50) NULL,
	City varchar(50) NOT NULL,
	State char(2) NOT NULL,
	Zip varchar(10) NOT NULL,
	Image varchar(255) NOT NULL DEFAULT '\\Images\\Avatars\\Avatars\\AvatarDefault01.jpg',
	Active varchar(3) NOT NULL DEFAULT 'yes',
CONSTRAINT PK_tblUser PRIMARY KEY (Id)
);

CREATE TABLE tblCategory
(
	Name varchar(50) NOT NULL,
CONSTRAINT PK_tblCategory PRIMARY KEY (Name)
);

CREATE TABLE tblEvent
(
	Id int NOT NULL AUTO_INCREMENT,
	Name varchar(100) NOT NULL,
	CategoryName varchar(50) NOT NULL,
	Venue varchar(50) NULL,
	Address varchar(50) NOT NULL,
	City varchar(50) NOT NULL,
	State char(2) NOT NULL,
	Zip varchar(10) NOT NULL,
	StartTime datetime NOT NULL,
	EndTime datetime NULL,
	Description varchar(500) NULL,
	Image varchar(255) NOT NULL DEFAULT '\\Images\\Events\\EventDefault01.jpg',
CONSTRAINT PK_tblEvent PRIMARY KEY (Id),
CONSTRAINT FK_tblEvent_tblCategory FOREIGN KEY (CategoryName) REFERENCES tblCategory(Name)
);

CREATE TABLE tblMemberType
(
	Name varchar(50) NOT NULL,
CONSTRAINT PK_tblMemberType PRIMARY KEY (Name)
);

CREATE TABLE tblUserEvent
(
	UserId int NOT NULL,
	EventId int NOT NULL,
	MemberTypeName varchar(50) NOT NULL,
	JoinedTime datetime NOT NULL,
CONSTRAINT PK_tblUserEvent PRIMARY KEY (UserId, EventId),
CONSTRAINT FK_tblUserEvent_tblUser FOREIGN KEY (UserId) REFERENCES tblUser(Id),
CONSTRAINT FK_tblUserEvent_tblEvent FOREIGN KEY (EventId) REFERENCES tblEvent(Id),
CONSTRAINT FK_tblUserEvent_tblMemberType FOREIGN KEY (MemberTypeName) REFERENCES tblMemberType(Name)
);


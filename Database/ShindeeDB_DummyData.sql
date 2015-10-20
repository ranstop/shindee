
INSERT INTO tblUser (Email, Password, FirstName, LastName, Phone, Address, Address2, City, State, Zip)
VALUES ('fred.smith@gmail.com', 'password', 'Fred', 'Smith', '345-555-1234', '123 Run Rd.', '', 'Appleton', 'WI', '55555'),
       ('betty.luck@yahoo.com', 'password', 'Betty', 'Luck', '123-555-9876', '345 Oak St.', '', 'Neenah', 'WI', '12345'),
	   ('kbarr@gnet.com', 'aap048a038', 'Kitra', 'Barr', '443-163-3630', '9322 Bright Elk Line', '', 'Lake of the Pines', 'MD', '21841'),
       ('yardyardyard@funnystuff.com', 'anhlascjhf87695f', 'Peter', 'Angeldust', '907-443-8660', '6734 Fallen Grove Acres', '', 'Lick', 'AK', '99957'),
       ('xXbringITXx@gnet.com','oaqwhi567', 'Miesha', 'Ngolith', '208-569-4859', '7975 Green Cloud Green', '', 'Newlove', 'ID', '83324'),
       ('underConstruction@funnystuff.com', 'aapaksdj68sdatfw8', 'Donald', 'Berk', '401-035-5056', '8954 Velvet Plaza', 'Unit 5E', 'Pink Arrow', 'RI', '02987'),
       ('ebarr@gnet.com', 'bnd6dd6a038', 'Ellie', 'Barr', '401-654-2279', '9501 Cinder Log Highway', '', 'Rising River', 'RI', '02959');

INSERT INTO tblCategory (Name)
VALUES ('Running'),
       ('Biking'),
       ('Hiking'),
       ('Cards'),
       ('Movies'),
	   ('Fitness'),
	   ('Fishing'),
	   ('Gaming'),
	   ('Kite Flying');

INSERT INTO tblEvent (Name, CategoryName, Venue, Address, City, State, Zip, StartTime, EndTime, Description)
VALUES ('Let''s Go Fly A Kite', 'Kite flying', 'Arrowhead Park', '5000 Aster Lane', 'Grand Chute', 'WI', '54914', '2015-11-01 12:00:00', '2015-11-01 16:00:00', 'An afternoon at the park for kite-flyers of all ages. We''re supposed to have some good wind, so get ready to "unwind".'),
       ('Fishing with John', 'Fishing', 'Lake Winnebago', 'County Park', 'Stockbridge', 'WI', '54129', '2015-10-24 10:00:00', '2015-10-24 18:00:00', 'Ever see that hilarious show? Someone named John is bound to show up. Just fishing, make sure you have a license beforehand.'),
       ('All the Rides in One Day', 'Amusement park', 'Six Flags Great America', '1 Great America Parkway', 'Gurnee', 'IL', '60031', '2015-10-17 07:00:00', '2015-10-17 17:00:00', 'Looking for a group to get together so we can score discount rates at the park. Have you ever wondered if you can ride all the rides in one day? You can, but it''s not easy so we''ll have to keep moving - a real treat for coaster enthusiasts.'),
       ('COD LAN Party', 'Gaming', 'The Bar', '427 West College Avenue', 'Appleton', 'WI', '54911', '2015-11-19 18:00:00', '2015-11-19 23:00:00', 'A bunch of us are renting out The Bar for a LAN party. Over 21 gamers only. Friendly competition with no raging out please. Open to any game modes.'),
       ('Neenah Run', 'Running', 'Riverside Park', 'Riverside Park', 'Neenah', 'WI', '54946', '2015-11-01 08:00:00', '2015-11-01 09:00:00', 'Weekly run around Neenah led by Neenah H.S. cross-country coach Amy Granger. Run length and route varies from roughly 4-6 miles.'),
       ('Strike!', 'Bowling', 'Sabre Lanes', '1330 Midway Road', 'Menasha', 'WI', '54952', '2015-11-22 12:00:00', '2015-11-22 04:00:00', 'Crazy bowling afternoon with prizes for some of the best and some of the worst of the day. $6 for two games.'),
       ('Truth-Tellers Anonymous', 'Hunting', 'McGuinness Irish Pub', '201 South Walnut Street', 'Appleton', 'WI', '54911', '2015-11-22 17:00:00', '2015-11-22 21:00:00', 'Have a few drinks and share your story of the one that almost got away. Perfect group for you if your family and friends are tired of your stories of triumph.'),
       ('Suffer for Fashion', 'Fashion', 'Radisson Paper Valley Hotel', '333 West College Avenue', 'Appleton', 'WI', '54911', '2015-11-26 16:00:00', '2015-11-26 22:00:00', 'Do you suffer for fashion or whatever? Come share your pain and your favorite pieces of the season with us.'),
       ('Sweet Teeth', 'Food', 'Wilmar Chocolates', '1222 North Superior Street', 'Appleton', 'WI', '54911', '2015-10-03 10:00:00', '2015-10-03 15:00:00', 'Do you love chocolate? Is that even a question? The chocolatiers of Wilmars will be leading a tasting that you have no excuse to miss.'),
       ('Bladers', 'Fitness', 'Fritse Park - Friendship Bridge', 'Fritse Park', 'Neenah', 'WI', '54956', '2015-09-26 11:00:00', '2015-09-26 13:00:00', 'The most fun you can have cross-training.  We''re going to meet up on the Neenah side of the bridge and roller-blade the Friendship Trail. Scooters? Sure. Bikers? Sorry, no.'),
       ('Broomball!', 'Winter Sports', 'Pettit National Ice Center', '508 South 84th Street', 'Milwaukee', 'WI', '53214', '2015-12-12 12:00:00', '2015-12-12 04:00:00', 'Broomball at it''s finest. This must be Wisconsin.'),
       ('Art Appreciation Month', 'Art', 'Rochambo Coffee & Tea House', '1317 East Brady Street', 'Milwaukee', 'WI', '53202', '2015-12-19 13:00:00', '2015-12-19 16:00:00', 'We all know that art doesn''t get enough appreciation for all the joy it brings us, so this month - actually just for a few hours this one Saturday - we''re going to appreciate the hell out of art.'),
       ('Fortune 5', 'Finance', 'The Golden Basket', '1932 North Richmond Street', 'Appleton', 'WI', '54911', '2015-11-01 07:00:00', '2015-11-01 09:00:00', 'Not to be confused with Fortune 500...yet. This group started as just 5 of us getting together to discuss our investments. Share your stock picks and grow your portfolio with us.');

INSERT INTO tblMemberType (Name)
VALUES ('Owner'),
       ('Participant');

INSERT INTO tblUserEvent (UserId, EventId, MemberTypeName, JoinedTime)
VALUES (1, 1, 'Owner', '2015-09-20 22:13:43'),
       (2, 1, 'Participant', '2015-09-28 07:43:22');



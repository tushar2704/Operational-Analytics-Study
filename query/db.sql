/* © 2023 Tushar Aggarwal. All rights reserved. 
https://github.com/tushar2704/
Operational-Analytics
*/
/*---------------------------Creating DB----------------------------------------------------*/

CREATE DATABASE ops_analytics
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
/*-------------------------------------------------------------------------------------------*/

/*---------------------------Creatings Tables------------------------------------------------*/

-- users Table

CREATE TABLE users(
	user_id INT,
	created_at TIMESTAMP,
	company_id INT,
	language VARCHAR(100),
	activated_at TIMESTAMP,
	state VARCHAR(50)
	
	);

--Adding Data in users table

COPY users 
FROM 'D:\Operational-Analytics-Study\src\data\users.csv'
WITH (FORMAT CSV, HEADER);

--Checking for users table
SELECT * FROM users LIMIT 50;


-----------------------------------------------------------------------------------------------

-- events Table

CREATE TABLE events(
	user_id INT,
	occurred_at TIMESTAMP,
	event_type VARCHAR(50),
	event_name VARCHAR(50),
	location VARCHAR(50),
	device VARCHAR(100),
	user_type INT
	);

--Adding Data in users table

COPY events 
FROM 'D:\Operational-Analytics-Study\src\data\events.csv'
WITH (FORMAT CSV, HEADER);

--Checking for users table
SELECT * FROM events LIMIT 50;


-----------------------------------------------------------------------------------------------


-- email_events Table

CREATE TABLE email_events(
	user_id INT,
	occured_at TIMESTAMP,
	action VARCHAR(100),
	user_type INT
	
	);

--Adding Data in users table

COPY email_events 
FROM 'D:\Operational-Analytics-Study\src\data\email_events.csv'
WITH (FORMAT CSV, HEADER);

--Checking for users table
SELECT * FROM email_events ;


-----------------------------------------------------------------------------------------------

























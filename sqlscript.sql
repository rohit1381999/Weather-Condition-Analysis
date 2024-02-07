REM   Script: SQL MAJOR ASSIGNMENT0405
REM   SQL MAJOR ASSIGNMENT0405
/*Question-->1
Create a table “Station” to store information about weather
observation stations*/
CREATE TABLE STATION 
( ID NUMBER(7), 
  CITY CHAR(20), 
  STATE CHAR(2), 
  LAT_N  NUMBER(10), 
  LONG_W NUMBER(10), 
  PRIMARY KEY(ID) 
);

/*Question-->2
Insert the following records into the table:
note: {Tables mention in the attached pdf file please visit this}
*/
INSERT INTO STATION VALUES 
(13, 'PHOENIX', 'AZ', 33, 112);

INSERT INTO STATION VALUES 
(44, 'DENVER', 'CO', 40, 105);

INSERT INTO STATION VALUES 
(66, 'CARIBOU', 'ME', 47, 68);

/** Question-->4
Execute a query to select Northern stations (Northern latitude >
39.7) **/
SELECT * FROM STATION 
WHERE (LAT_N>39.7) 
ORDER BY LAT_N DESC;

/** Question-->5
Create another table, ‘STATS’, to store normalized temperature and
precipitation data: (mention in Attached Pdf files) **/
CREATE TABLE STATS 
( 
ID NUMBER(7), 
MONTH NUMBER(7), 
TEMP_F NUMBER(6,2), 
RAIN_I NUMBER (6,3), 
PRIMARY KEY (ID, MONTH) 
);

/** Questions-->6
Populate the table STATS with some statistics for January and July **/
INSERT INTO STATS VALUES 
(13,1,57.4,.31);

INSERT INTO STATS VALUES 
(13,7,91.7,5.15);

INSERT INTO STATS VALUES 
(44,1,27.3,.18);

INSERT INTO STATS VALUES 
(44,7,74.8,2.11);

INSERT INTO STATS VALUES 
(66,1,6.7,2.1);

INSERT INTO STATS VALUES 
(66,7,65.8,4.52);


/* Question-->7
Execute a query to display temperature stats (from STATS table) for
each city (from Station table)*/
SELECT CITY, TEMP_F FROM M STATION 
INNER JOIN STATS 
ON STATION.ID=STATS.ID;


/* Question--> 8
Execute a query to look at the table STATS, ordered by month and
greatest rainfall, with columns rearranged. It should also show the
corresponding cities*/
SELECT MONTH, RAIN_I, CITY 
FROM STATS 
INNER JOIN STATION 
ON STATS.ID = STATION.ID 
ORDER BY MONTH, RAIN_I DESC;
;

/**Question-->9
Execute a query to look at temperatures for July from table STATS,
lowest temperatures first, picking up city name and latitude **/

SELECT CITY, LAT_N AS LATITUDE, TEMP_F AS TEMPERATURE, MONTH, FROM STATION 
INNER JOIN STATS 
ON STATION.ID = STATS.ID 
WHERE MONTH=7 
ORDER BY TEMP_F;


/**Question-->10
Execute a query to show MAX and MIN temperatures as well as
average rainfall for each city. **/

SELECT CITY, MAX(TEMP_F) AS MAX_TEMP, MIN(TEMP_F) AS MIN_TEMP, AVG(RAIN_I) AS RAINFALL FROM STATION 
INNER JOIN STATS 
ON STATS.ID=STATS.ID 
GROUP BY CITY;

CREATE VIEW STATS_B (ID, MONTH, TEMP_C, RAIN_CM) AS 
SELECT ID, MONTH, (TEMP_F-32)*5/9, RAIN_I*2.54 
FROM STATS;


/** Question-->12
Update all rows of table STATS to compensate for faulty rain gauges
known to read 0.01 inches low **/
UPDATE STATS SET RAIN_I = RAIN_I + 0.01;

UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7;

/** Question-->13
Update Denver's July temperature reading as 74.9 **/
SELECT * FROM STATS 
/*UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7;*/ 
 
;

SELECT * FROM STATS 
/*UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7; */ 
 

**************Thank You**************



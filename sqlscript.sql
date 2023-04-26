REM   Script: SQL MAJOR ASSIGNMENT0405
REM   SQL MAJOR ASSIGNMENT0405

CREATE TABLE STATION 
( 
  ID NUMBER(7), 
  CITY CHAR(20), 
  STATE CHAR(2), 
  LAT_N  NUMBER(10), 
  LONG_W NUMBER(10), 
  PRIMARY KEY(ID) 
);

INSERT INTO STATION VALUES 
(13, 'PHOENIX', 'AZ', 33, 112);

INSERT INTO STATION VALUES 
(44, 'DENVER', 'CO', 40, 105);

INSERT INTO STATION VALUES 
(66, 'CARIBOU', 'ME', 47, 68);

SELECT * FROM STATION;

SELECT * FROM STATION 
WHERE (LAT_N>39.7) 
ORDER BY LAT_N DESC;

CREATE TABLE STATS 
( 
ID NUMBER(7), 
MONTH NUMBER(7), 
TEMP_F NUMBER(6,2), 
RAIN_I NUMBER (6,3), 
PRIMARY KEY (ID, MONTH) 
);

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

SELECT CITY, TEMP_F FROM M STATION 
INNER JOIN STATS 
ON STATION.ID=STATS.ID;

SELECT CITY, TEMP_F FROM  STATION 
INNER JOIN STATS 
ON STATION.ID=STATS.ID;

ON STATION.ID=STATS.ID;*// 


SELECT MONTH, RAIN_I, CITY 
FROM STATS 
INNER JOIN STATION 
ON STATS.ID = STATION.ID 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, RAIN_I, CITY 
FROM STATS 
INNER JOIN STATION 
ON STATS.ID = STATION.ID 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, RAIN_I, CITY 
FROM STATS 
INNER JOIN STATION 
ON STATS.ID = STATION.ID 
ORDER BY MONTH, RAIN_I ASC;

SELECT MONTH, RAIN_I, CITY 
FROM STATS 
INNER JOIN STATION 
ON STATS.ID = STATION.ID 
ORDER BY MONTH, RAIN_I DESC;

SELECT MONTH, RAIN_I, CITY 
FROM STATS 
INNER JOIN STATION 
ON STATS.ID = STATION.ID 
ORDER BY MONTH, RAIN_I ASC;

SELECT MONTH, RAIN_I, CITY 
FROM STATS 
INNER JOIN STATION 
ON STATS.ID = STATION.ID 
ORDER BY MONTH, RAIN_I DESC;

SELECT CITY, LAT_N AS LATITUDE, TEMP_F AS TEMPERATURE, MONTH, FROM STATION 
INNER JOIN STATS 
ON STATION.ID = STATS.ID 
WHERE MONTH=7 
ORDER BY TEMP_F;

SELECT CITY, LAT_N AS LATITUDE, TEMP_F AS TEMPERATURE, MONTH, FROM STATION 
INNER JOIN STATS 
ON STATION.ID = STATS.ID 
WHERE MONTH=7 
ORDER BY TEMP_F;

SELECT CITY, LAT_N AS LATITUDE, TEMP_F AS TEMPERATURE, MONTH  
FROM STATION 
INNER JOIN STATS 
ON STATION.ID = STATS.ID 
WHERE MONTH=7 
ORDER BY TEMP_F;

SELECT CITY, MAX(TEMP_F) AS MAX_TEMP, MIN(TEMP_F) AS MIN_TEMP, AVG(RAIN_I) AS RAINFALL FROM STATION 
INNER JOIN STATS 
ON STATS.ID=STATS.ID 
GROUP BY CITY;

CREATE VIEW STATS_B (ID, MONTH, TEMP_C, RAIN_CM) AS 
SELECT ID, MONTH, (TEMP_F-32)*5/9, RAIN_I*2.54 
FROM STATS;

UPDATE STATS SET RAIN_I = RAIN_I + 0.01;

UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7;

SELECT * FROM STATS 
/*UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7;*/ 
 
;

SELECT * FROM STATS 
/*UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7;*/ 
 
;

SELECT * FROM STATS 
 
;

UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7;

UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7;

SELECT * FROM STATS;

UPDATE STATS SET TEMP_F=74.9 
WHERE ID=44 AND MONTH=7;

SELECT * FROM STATS;

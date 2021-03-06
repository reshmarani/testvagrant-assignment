----------------------------1.CREATING AND HOLDING DATA-------- 
CREATE TABLE IPL
(
ID INT IDENTITY (1,1),
TEAM VARCHAR(255),
POINTS INT,
LAST5 VARCHAR(255))

INSERT INTO IPL VALUES('GT',20,'WWLLW')
INSERT INTO IPL VALUES('LSG',18,'WLLWW')
INSERT INTO IPL VALUES('RR',16,'WLWLL')
INSERT INTO IPL VALUES('DC',14,'WWLWL')
INSERT INTO IPL VALUES('RCB',14,'LWWLL')
INSERT INTO IPL VALUES('KKR',12,'LWWLW')
INSERT INTO IPL VALUES('PBKS',12,'LWLWL')
INSERT INTO IPL VALUES('SRH',12,'WLLLL')
INSERT INTO IPL VALUES('CSK',8,'LLWLW')
INSERT INTO IPL VALUES('MI',6,'LWLWW')

-------2.CONSECUTIVE----------
SELECT SUBSTRING(LAST5,CHARINDEX('LL', LAST5),1) AS RESULTL, SUBSTRING(LAST5,CHARINDEX('WW', LAST5),1) AS RESULTW,* INTO #TEMP 
FROM IPL

SELECT ID,TEAM,POINTS,LAST5 FROM #TEMP WHERE RESULTL='L'
SELECT ID,TEAM,POINTS,LAST5 FROM #TEMP WHERE RESULTW='W'


-------------3.AVERAGE-----
SELECT AVG(POINTS) AS AVERAGE FROM  #TEMP WHERE RESULTL='L'
SELECT AVG(POINTS) AS AVERAGE FROM  #TEMP WHERE RESULTL='W'


SELECT CEILING(9.1) AS 'Result';
-- 11
SELECT sd_Quantity, 
       CEILING(sd_Quantity) AS 'Result'
  FROM SalesOrderDetails;

/* =================== */

SELECT FLOOR(10.9) AS 'Result';
-- 10
SELECT sd_Quantity, 
       FLOOR(sd_Quantity) AS 'Result'
  FROM SalesOrderDetails;

/* =================== */

SELECT ROUND(10.567, 2)   AS 'Result';
-- 10.57
SELECT ROUND(10.567, 2,1) AS 'Result';
-- 10.56
SELECT sd_Quantity, 
       ROUND(sd_Quantity,2) AS 'Result'
  FROM SalesOrderDetails;

-------------------------------------------------

SELECT RAND()    AS 'Result';
SELECT RAND(123) AS 'Result';

/* =================== */

SELECT ISNUMERIC(123.5)   AS 'Result';
SELECT ISNUMERIC('123.5') AS 'Result';
SELECT ISNUMERIC('$123.5') AS 'Result';
-- 1
SELECT ISNUMERIC('#123.5') AS 'Result';
-- 0

/* =================== */
SELECT 5.0/NULLIF(0,0)

SELECT sd_Quantity, 
       FLOOR(NULLIF(sd_Quantity,2.00)) AS 'Result'
  FROM SalesOrderDetails;
-- 2

/* =================== */

SELECT 10 % 3 AS 'Result';
-- 1

/* =================== */
/* Not Commonly Used */
SELECT SQUARE(4)  AS 'Result';
-- 16
SELECT POWER(2,3) AS 'Result';
-- 8
SELECT SQRT(16)   AS 'Result';
-- 4              
SELECT PI()       AS 'Result';
-- 3.14159265358979
SELECT EXP(1)     AS 'Result';
-- 2.71828182845905
SELECT LOG(10) AS 'Result';
-- 2.30258509299405
SELECT LOG10(100) AS 'Result';
-- 2
SELECT SIN(PI()/2)  AS 'Result';
-- 1
SELECT COS(0)       AS 'Result';
-- 1
SELECT TAN(PI()/4)  AS 'Result';
-- 1
SELECT ASIN(1)      AS 'Result';
-- 1.5707963267949
SELECT ACOS(1)      AS 'Result';
-- 0
SELECT ATAN(1)      AS 'Result';
-- 0.785398163397448
SELECT ATN2(1,1)    AS 'Result';
-- 0.785398163397448
SELECT SIGN(-10)    AS 'Result';
-- -1
SELECT DEGREES(PI()) AS 'Result';
-- 180
SELECT RADIANS(180) AS 'Result';
-- 3


SELECT CHOOSE(2, 'A','B','C') AS 'Result';
-- 'B'
SELECT GREATEST(1,2,3)
SELECT LEAST(1,2,3);



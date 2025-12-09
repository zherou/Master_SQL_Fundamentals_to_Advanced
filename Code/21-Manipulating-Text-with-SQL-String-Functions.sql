SELECT UPPER('hello') AS 'Result';
-- HELLO

SELECT LOWER('HELLO') AS 'Result';
-- hello

SELECT TRIM(' abc ') AS 'Result';
-- abc

SELECT LTRIM(' abc') AS 'Result';
-- abc

SELECT RTRIM('  abc ') AS 'Result';
-- abc



SELECT 'Hello' || ' ' || 'World' AS 'Result';
-- HelloWorld
SELECT 'Hello' + ' ' + 'World' AS 'Result';
-- HelloWorld
SELECT CAST(1 AS NVARCHAR(1)) + CAST(2 AS NVARCHAR(1)) + 'World' + COALESCE(NULL,'') AS 'Result';

-----------------------
SELECT CONCAT(1 , 2 , 'World', NULL) AS 'Result';
-- HelloWorld

SELECT CONCAT_WS('==>','Hello', 'World', 'Test', 'SQL') AS 'Result';
-- Hello World

SELECT LEFT('Hello World',5) AS 'Result';
-- Hello

SELECT RIGHT('Hello World',5) AS 'Result';
-- World

SELECT LEN('Hello') AS 'Result';
-- 5

SELECT DATALENGTH('Hello') AS 'Result';
-- 5 (bytes, may differ with NVARCHAR)

SELECT SUBSTRING('Hello World', 7, 5) AS 'Result';
-- World

SELECT CHARINDEX('l', 'Heddddllo') AS 'Result';
SELECT CHARINDEX('l', 'Heddddllo',CHARINDEX('l', 'Heddddllo')+1)
-- 3

SELECT PATINDEX('%lo%', 'Hello') AS 'Result';
-- 4

SELECT REPLACE('abc_123', 'abc', 'XYZ') AS 'Result';
-- XYZ_123

SELECT STUFF('abcdef', 2, 3, 'XYZ') AS 'Result';
-- aXYZef

SELECT REPLICATE('A', 5) AS 'Result';
-- AAAAA

SELECT REVERSE('Hello') AS 'Result';
-- olleH

SELECT SPACE(4) AS 'Result';
-- (4 spaces)

SELECT CHAR(66) AS 'Result'; 
-- A

SELECT ASCII('A') AS 'Result'; 
-- 65

SELECT FORMAT(GETDATE(), 'ddd MMM, yyyy HH:mm:ss tt') AS 'Result';
SELECT FORMAT(GETDATE(), 'D')                        AS 'Result';
SELECT FORMAT(GETDATE(), 'd')                        AS 'Result';

SELECT FORMAT(9647701234567, '+# ### ### ####') AS 'Result';
-- +964 770 123 4567 
SELECT FORMAT(12345.678, 'C2') AS 'Result';
-- $12,345.68
SELECT FORMAT(12345.678, 'C2', 'ar-IQ') AS 'Result';
--12,345.68 د.ع.
-- https://www.dofactory.com/sql/format

SELECT VALUE 
  FROM STRING_SPLIT('A,B,C', ';');
-- A
-- B
-- C

SELECT QUOTENAME('Column','"') AS 'Result';
-- [Column]

SELECT PARSENAME('Server.DB.Schema.Table', 4) AS 'Result';
SELECT PARSENAME(100.50, 1) AS 'Result';
-- Server

SELECT TRANSLATE('abc123ab1fabc', 'abc', 'XYZ') AS 'Result';
SELECT   REPLACE('abc123ab1fabc', 'abc', 'XYZ') AS 'Result';

-- XYZ123XY1fXYZ

SELECT STRING_ESCAPE('{"x":1}', 'json') AS 'Result';
-- {\"x\":1}
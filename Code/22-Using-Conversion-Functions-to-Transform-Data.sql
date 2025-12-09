SELECT CAST('123' AS INT) AS 'Result';


SELECT CONVERT(VARCHAR(12), GETDATE())     AS 'Result';
SELECT CONVERT(VARCHAR(10), GETDATE(),101) AS 'Result';

 -- yyyy-MM-dd
SELECT PARSE('12/25/2025' AS DATE)               AS 'Result';
SELECT PARSE('25/12/2025' AS DATE USING 'en-GB') AS 'Result';


/* TRY_CAST() */
SELECT TRY_CAST('abc' AS INT) AS 'Result';
-- NULL

/* TRY_CONVERT() */
SELECT TRY_CONVERT(DATE, 'invalid-date') AS 'Result';
-- NULL

SELECT TRY_PARSE('invalid' AS DATE) AS 'Result';
-- NULL




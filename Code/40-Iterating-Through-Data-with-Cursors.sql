/*
Steps:          | Types:                                           | @@FETCH_STATUS:
------          | ------										   | --------------
1. DECLARE      | 1. FAST_FORWARD (Best choice if unavoidable)     |  0 Fetch succeeded 
2. OPEN			| 2. STATIC (Takes a snapshot of data more memory) | -1 Fetch failed
3. FETCH		| 3. DYNAMIC (Reflects changes very slow) *		   | -2 *Row fetched but row is missing
4. PROCESS		| 4. KEYSET (Middle ground, still expensive) *	   |
5. CLOSE		| 												   |
6. DEALLOCATE	| 												   |
*/

DECLARE @name    NVARCHAR(250),
        @email   NVARCHAR(250);

DECLARE emailList        CURSOR 
                   FAST_FORWARD -- STATIC | DYNAMIC | KEYSET
                            FOR
                         SELECT cp_FirstName,
                                em_Address
                           FROM Emails
                     INNER JOIN Customers
                             ON em_Customers_ID = cu_ID
                     INNER JOIN ContactPersons
                             ON cu_ID = cp_Customers_ID
                          WHERE cp_IsActive  = 1
                            AND cp_IsPrimary = 1
                       ORDER BY cu_ID ASC;

OPEN emailList;

FETCH NEXT FROM emailList INTO @name, @email;

WHILE @@FETCH_STATUS = 0
BEGIN
   PRINT CONCAT(@name, ' - ', @email);
    /*
    SET @name = CONCAT('Hello ', @name,
                       CHAR(13)+CHAR(10),
                       'This is an automated message. Please do not reply.'
                       )
    EXEC msdb.dbo.sp_send_dbmail
                 @profile_name = 'CompanyMailProfile',
                 @recipients   = @email,
                 @subject      = 'Important Notification',
                 @body         = @name;
     
     */
   FETCH NEXT FROM emailList INTO @name, @email;

END;

CLOSE emailList;
DEALLOCATE emailList;


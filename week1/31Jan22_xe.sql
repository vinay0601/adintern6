-- check all users in oracle 
	SELECT 
		username, 
		default_tablespace, 
		profile, 
		authentication_type
	FROM
		dba_users 
	WHERE 
		account_status = 'OPEN'
	ORDER BY
		username;
-- if c##aduser not present only then 
	create user c##aduser identified by root;

-- ################################################################	
-- 2. Grant Control
-- ################################################################
	GRANT create session TO c##aduser;
   	GRANT create table TO c##aduser;
	GRANT create view TO c##aduser;
	GRANT create any trigger TO c##aduser;
	GRANT create any procedure TO c##aduser;
	GRANT create sequence TO c##aduser;
	GRANT create synonym TO c##aduser;
    GRANT ALL PRIVILEGES TO c##aduser;
    
    GRANT CONNECT TO c##aduser;
    GRANT RESOURCE TO c##aduser;
    GRANT DBA TO c##aduser;
	
    
-- ################################################################	
-- 3. Connect to user c##aduser
-- ################################################################
	connect c##aduser/root;
-- ################################################################
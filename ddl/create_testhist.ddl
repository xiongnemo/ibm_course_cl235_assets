
CONNECT TO MUSICDB;

------------------------------------------------
-- DDL Statements for table "TEST    "."HISTORY"
------------------------------------------------
 

CREATE TABLE "TEST    "."HISTORY"  (
		  "ACCT_ID" INTEGER NOT NULL , 
		  "TELLER_ID" SMALLINT NOT NULL , 
		  "BRANCH_ID" SMALLINT NOT NULL , 
		  "BALANCE" DECIMAL(15,2) NOT NULL , 
		  "DELTA" DECIMAL(9,2) NOT NULL , 
		  "PID" INTEGER NOT NULL , 
		  "TSTMP" TIMESTAMP NOT NULL WITH DEFAULT CURRENT TIMESTAMP , 
		  "ACCTNAME" CHAR(20) NOT NULL , 
		  "TEMP" CHAR(6) NOT NULL )   
		 IN "USERSPACE1" ; 



LOAD FROM /db2_lab_data/ddl/histdata.ixf OF IXF REPLACE INTO TEST.HISTORY NONRECOVERABLE ;
RUNSTATS ON TABLE TEST.HISTORY ;


CONNECT RESET;


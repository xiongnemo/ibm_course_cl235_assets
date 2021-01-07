-- This CLP file was created using DB2LOOK Version "10.5" 
-- Timestamp: 8/17/2015 7:42:17 AM
-- Database Name: MUSICDB        
-- Database Manager Version: DB2/NT64 Version 10.5.5       
-- Database Codepage: 1208
-- Database Collating Sequence is: IDENTITY
-- Alternate collating sequence(alt_collate): null
-- varchar2 compatibility(varchar2_compat): OFF


CONNECT TO MUSICDB;

------------------------------------------------
-- DDL Statements for Table "MUSIC   "."ALBUMS"
------------------------------------------------
 

CREATE TABLE "MUSIC   "."ALBUMS"  (
		  "TITLE" VARCHAR(50 OCTETS) , 
		  "ARTNO" SMALLINT NOT NULL , 
		  "ITEMNO" SMALLINT NOT NULL )   
		 IN "TSP04" INDEX IN "TSP05"  
		 ORGANIZE BY ROW; 


-- DDL Statements for Primary Key on Table "MUSIC   "."ALBUMS"

ALTER TABLE "MUSIC   "."ALBUMS" 
	ADD CONSTRAINT "ALBUM_ITEM" PRIMARY KEY
		("ITEMNO");



-- DDL Statements for Foreign Keys on Table "MUSIC   "."ALBUMS"

ALTER TABLE "MUSIC   "."ALBUMS" 
	ADD CONSTRAINT "ARTNO_FK" FOREIGN KEY
		("ARTNO")
	REFERENCES "MUSIC   "."ARTISTS"
		("ARTNO")
	ON DELETE CASCADE
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;






----------------------------

-- DDL Statements for Views

----------------------------
SET CURRENT SCHEMA = "INST23  ";
SET CURRENT PATH = "SYSIBM","SYSFUN","SYSPROC","SYSIBMADM","INST23";
create view music.music as select title, classification, name 
from music.albums alb, music.artists art 
where art.artno = alb.artno;




COMMIT WORK;

CONNECT RESET;

TERMINATE;


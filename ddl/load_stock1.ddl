CALL SYSPROC.ADMIN_CMD ( 
'LOAD FROM "/db2_lab_data/stock.del" of del 
MODIFIED BY GENERATEDMISSING METHOD P (1,2,3,4) MESSAGES ON SERVER
INSERT INTO MUSIC.STOCK (ITEMNO,TYPE,PRICE,QTY) ' ) ;
ingest from file /db2_lab_data/albums.del 
 format delimited messages ingest_albums.txt 
 RESTART NEW 'ingest_alb' INSERT INTO music.albums ;
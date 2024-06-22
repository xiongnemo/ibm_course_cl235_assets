# ibm_course_cl235_assets
You will need this if you want to learn IBM CL235 on a Linux docker container with Nemo's configurations.

``` bash
docker run -itd --name mydb2 --privileged=true \
-p 50000:50000 \
-p 50022:22 \
-p 55000:55000 \
-p 60006:60006 \
-p 60007:60007 \
-e LICENSE=accept \
-e DB2INST1_PASSWORD=******** \
-e DBNAME=musicdb \
-v <where_you_want_to_persist_your_database_data>:/database \
-v <this_repo_s_path_on_machine>:/db2_lab_data \
ibmcom/db2
```

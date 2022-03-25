# SnowFlake_Project
# Source_Code Folder
The folder contains Data Definition Language (DDL) for creating,
1-: Database named SF_Project.
2-: Three schemas named ITR_RDS_Landing for extracting data from the S3 Bucket, ITR_RDS schema to storing the transformed data from ITR_RDS_Landing and ITR_DIS schema for storing data after SCD(Slowly Changing Dimension).
3-: Three tables named as heart_disease is the primary table, heart_disease_scd which is the table for storing the data for SCD part and heart_disease_tgt which the consumer table for heart_disease_scd.
4-: Storage integration named s3_int_obj which will stores a generated identity and access management (IAM) entity for your external cloud storage.
5:- External Stages named my_ext_stage1 for loading data from external source to table in our case the data is loaded from S3 Bucket from Folder1 and another stages is created with the name my_ext_stage2 for unloading the the from same s3 Bucket but this time the data is in Folder2.
6-: Pipes in this project we created two pipes to copy data from stage to table and the pipes are named as sf_snowpipe1 and sf_snowpipe2.
7-: Stream object named heart_check records data manipulation language (DML) changes made to tables, including inserts, updates, and deletes, as well as metadata about each change, so that actions can be taken using the changed data.
8-: Tasks are used for continuous ELT workflows to process recently changed table rows here we created a task named heart_task and Merge can be useful if the second table is a change log that contains new rows, modified rows, and marked rows in the target table.Basically, we created the task to automate the changes in consumer table(heart_disease_tgt) whenever we update the rows,delete the rows or modify the rows in landing table(heart_disease_scd) automatically it will be changed in consumer table(heart_disease_tgt) with updated or modified records with containing all the previous dml operations done i.e historical data with update one.

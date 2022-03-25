create or replace pipe sf_project.itr_rds_landing.sf_snowpipe1 auto_ingest=true as 
copy into sf_project.itr_rds_landing.heart_disease
from @sf_project.itr_rds_landing.my_ext_stage;
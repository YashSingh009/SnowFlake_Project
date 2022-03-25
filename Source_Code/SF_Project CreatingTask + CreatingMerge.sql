CREATE TASK heart_task
  WAREHOUSE = my_first_warehouse
  SCHEDULE = '1 minute'
WHEN
  SYSTEM$STREAM_HAS_DATA('heart_check')
AS
merge into heart_disease_tgt t
using heart_check s 
on t.id=s.id and (metadata$action='DELETE')
when matched and metadata$isupdate='FALSE' then update set rec_version=9999, stream_type='DELETE'
when matched and metadata$isupdate='TRUE' then update set rec_version=rec_version-1
when not matched then insert  ( id ,heartdisease ,BMI ,smoking ,AlcoholDrinking	,Stroke ,PhysicalHealth	,MentalHealth 
,DiffWalking ,Sex , AgeCategory ,Race ,Diabetic ,PhysicalActivity,GenHealth ,SleepTime,Asthma,KidneyDisease  ,SkinCancer  
,stream_type,rec_version,REC_DATE) values(s.id ,s.heartdisease ,s.BMI ,s.smoking ,s.AlcoholDrinking	,s.Stroke ,s.PhysicalHealth	
,s.MentalHealth ,s.DiffWalking ,s.Sex , s.AgeCategory ,s.Race ,s.Diabetic ,s.PhysicalActivity,s.GenHealth ,s.SleepTime,s.Asthma,s.KidneyDisease  
,s.SkinCancer, metadata$action,0,CURRENT_TIMESTAMP() );
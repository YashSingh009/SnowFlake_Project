create table heart_disease_tgt(
       id number,
heartdisease varchar,
BMI decimal,
smoking varchar,
AlcoholDrinking	varchar,
Stroke varchar,
PhysicalHealth	number,
MentalHealth number,
DiffWalking varchar,
Sex varchar, 
AgeCategory varchar,
Race varchar,
Diabetic varchar,
PhysicalActivity varchar,
GenHealth varchar,
SleepTime number,
Asthma	varchar,
KidneyDisease  varchar,
SkinCancer varchar,
stream_type string default null, 
rec_version number default 0,
REC_DATE TIMESTAMP_LTZ    
);
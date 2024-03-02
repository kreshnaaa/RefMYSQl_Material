
    
-----------------------------------------------------------------------------------------------------------------------------       


ALTER TABLE "JOB_DETAILS" ADD  PRIMARY key(JOB_CODE)

alter table "APPLIED_JOBS" ADD constraint "APPLIED_JOBS_job_code_fkey"

ALTER TABLE "JOB_DETAILS"   add constraint   "JOB_DETAILS_pkey" primary key(JOB_CODE)  

alter table "APPLIED_JOBS" add CONSTRAINT "APPLIED_JOBS_pkey" PRIMARY KEY (job_code,applicant_id) 

alter table "JOB_DETAILS" add column job_flag boolean default true;



ALTER TABLE "JOB_DETAILS" DROP primary key

ALTER TABLE "JOB_DETAILS" DROP CONSTRAINT job_code_pkey

ALTER TABLE "JOB_DETAILS" DROP CONSTRAINT "JOB_DETAILS_pkey"--_pkey


alter table JOB_DETAILS alter column job_status type varchar(20)

ALTER TABLE "APPLICANT_DETAILS" ALTER COLUMN application_id DROP NOT NULL" ;
 
 

--------------------------------------------------------------------------------------------------------------------------------

select * from APPLIED_JOBS"

select * from "APPLICANT_DETAILS"

select * from "JOB_DETAILS"


-------------------------------------------------------------------------------------------------------------------------


update "JOB_DETAILS" set job_status = 'active' where job_code = 10 


UPDATE "APPLIED_JOBS" --format schema.table_name
SET 
applicant_id = "APPLICANT_DETAILS".applicant_id
FROM "APPLICANT_DETAILS"  -- mention schema name
WHERE "APPLIED_JOBS".job_code =10
AND  
"APPLICANT_DETAILS".mobile_no = 9848032919


---------------------------------------------------------------------------------------------------------------------------


delete from  "JOB_DETAILS" where JOB_CODE = 12

delete from "JOB_DETAILS" where job_location = 'Newzealand'

delete from "APPLICANT_DETAILS" where applicant_id =10

delete from "APPLIED_JOBS" where job_code = 10

delete from "APPLIED_JOBS" where applicant_id = 6

delete from "APPLICANT_VERIFICATION" where applicant_emotp=245875;

delete from "APPLICANT_VERIFICATION" where applicant_emailid='kreshnaprassad55@gmail.com';

DELETE FROM "APPLICANT_VERIFICATION"
WHERE applicant_emotp IN (724340, 119662, 431572,878739,494108,921115,313734,839469);
 


----------------------------------------------------------------------------------------------------------------------------


insert into "JOB_DETAILS" (job_title,job_location,job_status,experience_range,must_have_skills,good_to_have_skills,
                           job_desc_roles_resp,edu_qualification,job_created_date) 
values('Python Developer','"Hyderabd"',2,'2 to 4 years','python, database, flask','github, aws, azure',
        'able to develop the scripts','bachelor of technology','2022-04-01')

        
insert into "APPLIED_JOBS"(applicant_id where "APPLIED_JOBS".job_code =10) select applicant_id from "APPLICANT_DETAILS"
            where mobile_no = 9848032919 
 
            
insert into "APPLIED_JOBS"(applicant_id) select applicant_id from "APPLICANT_DETAILS"  where mobile_no = 123456

-------------------------------------------------------------------------------------------------------------------------

show create table college;

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



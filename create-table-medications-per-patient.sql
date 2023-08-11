create table medications_per_patient as select
patients.Id, patients.gender, patients.birthdate, medications.description, medications.totalcost, medications.reasondescription
from patients
inner join medications ON patients.Id=medications.patient;

alter table medications_per_patient
rename column reasondescription to diagnosis;
SELECT @@VERSION AS 'Version';

create database CRIME
create database WARE_CRIME

select * from clean_data
select count(*) from clean_data
select * from full_data
select Date from full_data


select count(*) from full_data
where Latitude IS NULL OR Longitude IS NULL
select count(*) from full_data
where (Case_Number IS NULL) OR (Date IS NULL) OR (Block IS NULL) OR (IUCR IS NULL) OR (Primary_Type IS NULL) OR (Description IS NULL) OR (Location_Description IS NULL) OR (Arrest IS NULL) OR (Domestic IS NULL) OR (Beat IS NULL) OR (District IS NULL) OR (Ward IS NULL) OR (Community_Area IS NULL) OR (FBI_Code IS NULL) OR (Latitude IS NULL) OR (Longitude IS NULL) OR (Location IS NULL)
select count(*) from full_data
where (Case_Number IS NULL) OR (Date IS NULL) OR (Block IS NULL) OR (IUCR IS NULL) OR (Primary_Type IS NULL) OR (Description IS NULL) OR (Location_Description IS NULL) OR (Arrest IS NULL) OR (Domestic IS NULL) OR (Beat IS NULL) OR (District IS NULL) OR (Ward IS NULL) OR (Community_Area IS NULL) OR (FBI_Code IS NULL) OR (Latitude IS NULL) OR (Longitude IS NULL) OR (Location IS NULL)

SELECT COUNT(*) 
FROM full_data
WHERE Case_Number IS NULL  OR [Date] IS NULL OR [Block] IS NULL OR IUCR IS NULL OR Primary_Type IS NULL OR [Description] IS NULL OR Location_Description IS NULL OR Arrest IS NULL OR Domestic IS NULL OR Beat IS NULL OR District IS NULL OR Ward IS NULL OR Community_Area IS NULL OR FBI_Code IS NULL OR [Location] IS NULL

select count(*)
from full_data

ALTER TABLE fact_crime
ALTER COLUMN Arrest int;

ALTER TABLE clean_data
ALTER COLUMN Arrest int;

ALTER TABLE full_data
ALTER COLUMN Arrest int;

ALTER TABLE null_data
ALTER COLUMN Arrest int;


ALTER TABLE clean_data
ALTER COLUMN Domestic int;

ALTER TABLE full_data
ALTER COLUMN Domestic int;

ALTER TABLE null_data
ALTER COLUMN Domestic int;


ALTER TABLE fact_crime
ALTER COLUMN Domestic int;

select * from clean_data

select * from dim_crime
select * from dim_datetime
select * from dim_document
select * from dim_location
select * from fact_crime



select count(*) SUM_DATETIME from dim_datetime
select count(*) SUM_DOCUMENT from dim_document
select count(*) SUM_LOCATION from dim_location
select count(*) SUM_CRIME from dim_crime
select count(*) SUM_FACT from fact_crime


SELECT [Year], COUNT(*) as CrimeCount
FROM fact_crime
JOIN dim_datetime ON fact_crime.datetime_id = dim_datetime.datetime_id
GROUP BY [Year]
ORDER BY [Year];

ALTER TABLE fact_crime
DROP CONSTRAINT FK_Fact_Location;
GO
ALTER TABLE fact_crime
DROP CONSTRAINT FK_Fact_Crime;
GO
ALTER TABLE fact_crime
DROP CONSTRAINT FK_Fact_Datetime;
GO
ALTER TABLE fact_crime
DROP CONSTRAINT FK_Fact_Document;
GO
DELETE FROM dim_crime
GO
DELETE FROM dim_document
GO
DELETE FROM dim_location
GO
DELETE FROM dim_datetime
GO
DELETE FROM fact_crime
	
ALTER TABLE dim_datetime
DROP COLUMN date

Alter Table fact_crime
Add Constraint FK_Fact_Location
Foreign key(Location_Id) references dim_location(Location_Id)
Alter Table fact_crime
Add Constraint FK_Fact_Crime
Foreign key(crime_id) references dim_crime(crime_id)
Alter Table fact_crime
Add Constraint FK_Fact_Datetime
Foreign key(datetime_id) references dim_datetime(datetime_id)
Alter Table fact_crime
Add Constraint FK_Fact_Document
Foreign key(document_id) references dim_document(document_id)


SELECT *
  FROM [DW_CHICAGO_CRIME].[dbo].[FACT_CRIME_CASE]
 WHERE id_date = '78886'
 ORDER BY id_crime

 SELECT * FROM 
 dim_datetime 
 WHERE YEAR ='2023' AND MONTH = '1' AND DAY = '1'


SELECT *
FROM dim_datetime

SELECT 
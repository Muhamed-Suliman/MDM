SELECT [CUSTOMER_SK]
      ,[SYSTEM_SK]
      ,[SYSTEM_CODE]
      ,[CUSTOMER_CODE]
      ,[PARTY_TYPE]
      ,[FIRST_NAME_EN]
      ,[FIRST_NAME_AR]
      ,[MIDDLE_NAME_EN]
      ,[MIDDLE_NAME_AR]
      ,[LAST_NAME_EN]
      ,[LAST_NAME_AR]
      ,[FULL_NAME_EN]
      ,[FULL_NAME_AR]
      ,[TITLE]
      ,[GENDER_CODE]
      ,[GENDER_DESC]
      ,[MARITAL_STATUS_CODE]
      ,[MARITAL_STATUS_DESC]
      ,[BIRTH_DATE]
      ,[BIRTH_PLACE]
      ,[NATIONALITY_CODE]
      ,[NATIONALITY_DESC]
      ,[MOBILE_NUMBER_1]
      ,[MOBILE_NUMBER_2]
      ,[MOBILE_NUMBER_3]
      ,[TELEPHONE_NUMBER_1]
      ,[TELEPHONE_NUMBER_2]
      ,[TELEPHONE_NUMBER_3]
      ,[EMAIL]
      ,[FACEBOOK]
      ,[YOUTUBE]
      ,[X_TWITTER]
      ,[LINKEDIN]
      ,[ADDRESS_LINE_1]
      ,[ADDRESS_LINE_2]
      ,[ADDRESS_LINE_3]
      ,[ADDRESS_LINE_4]
      ,[ADDRESS_DISTRICT]
      ,[ADDRESS_CITY]
      ,[ADDRESS_COUNTRY_CODE]
      ,[ADDRESS_COUNTRY_DESC]
      ,[POBOX]
      ,[POSTAL_CODE]
      ,[POSTAL_ADDRESS_LINE_1]
      ,[POSTAL_ADDRESS_LINE_2]
      ,[POSTAL_ADDRESS_LINE_3]
      ,[POSTAL_ADDRESS_LINE_4]
      ,[POSTAL_ADDRESS_DISTRICT]
      ,[POSTAL_ADDRESS_CITY]
      ,[POSTAL_ADDRESS_COUNTRY_CODE]
      ,[POSTAL_ADDRESS_COUNTRY_DESC]
      ,[NATIONAL_ID]
      ,[NATIONAL_ID_EXPIRY_DATE]
      ,[PASSPORT_NUMBER]
      ,[PASSPORT_EXPIRY_DATE]
      ,[COMM_REG_NUMBER]
      ,[COMM_REG_EXPIRY_DATE]
      ,[TAX_IDENTIFICATION_NUMBER]
      ,[OCCUPATION]
      ,[LINE_OF_BUSINESS]
      ,[EMPLOYER]
      ,[MONTHLY_INCOME_SALARY]
      ,[MONTHLY_INCOME_OTHER]
      ,[ANNUAL_INCOME_SALARY]
      ,[ANNUAL_INCOME_OTHER]
      ,[CUSTOMER_TYPE]
      ,[CUSTOMER_CATEGORY]
      ,[CUSTOMER_CLASSIFICATION]
      ,[VIP_FLG]
      ,[PEP_FLG]
      ,[SENSITIVE_FLG]
      ,[EMP_FLG]
      ,[CUSTOMER_STATUS_CODE]
      ,[CUSTOMER_STATUS_DESC]
      ,[REMARKS]
      ,[IMAGE_URL]
      ,[GROUP_NO]
      ,[CLIENT_GROUP_NO]
      ,[CLIENT_REF_NUMBER]
      ,[NUM_OF_EMPLOYEES]
      ,[MAX_CREDIT]
      ,[TOSHFA_CIRIS_UID]
      ,[SRC_CREATE_DATE]
      ,[SRC_CREATE_USER]
      ,[SRC_LAST_UPDATE_DATE]
      ,[SRC_LAST_UPDATE_USER]
      ,[ODS_CREATE_DATE]
      ,[ODS_CREATE_USER]
      ,[ODS_LAST_UPDATE_DATE]
      ,[ODS_LAST_UPDATE_USER]
      ,[ODS_ROW_HASH]
  FROM [ODS].[dbo].[CUSTOMER_toqa_test_2]
 where 
    [NATIONAL_ID] IS NOT NULL  
    AND [NATIONAL_ID] <> '' 
    AND LEN([FIRST_NAME_EN]) >= 1 
    and BIRTH_DATE >'2000-01-01'
 select count(1)    FROM [ODS].[dbo].[CUSTOMER_toqa_test_2]   
 where 
    [NATIONAL_ID] IS NOT NULL  
    AND [NATIONAL_ID] <> '' 
    AND LEN([FIRST_NAME_EN]) >= 1 
	    and BIRTH_DATE >'2000-01-01'


select Customer_sk from [dbo].[CUSTOMER_toqa_test_2] where Customer_sk is not null


--TRUNCATE TABLE [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
--truncate table [dbo].[MDM_Maram_Dedupl_Process_Logs]

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'CUSTOMER_toqa_test_2'
ORDER BY ORDINAL_POSITION;

select 

[SRC_CREATE_DATE]
      ,[SRC_CREATE_USER]
      ,[SRC_LAST_UPDATE_DATE]
      ,[SRC_LAST_UPDATE_USER]
      ,[ODS_CREATE_DATE]
      ,[ODS_CREATE_USER]
      ,[ODS_LAST_UPDATE_DATE]
      ,[ODS_LAST_UPDATE_USER]
      ,[ODS_ROW_HASH]
  FROM [ODS].[dbo].[CUSTOMER_toqa_test_2]
 where 
    [NATIONAL_ID] IS NOT NULL  
    AND [NATIONAL_ID] <> '' 
    AND LEN([FIRST_NAME_EN]) >= 1 
    and BIRTH_DATE >'2000-01-01'

SELECT TOP 100 T2.CIN, T2.CUSTOMER_SK
FROM [ODS].[dbo].[MDM_Maram_CUST_CROSS_REF_Test] T2;


SELECT [MOBILE_NUMBER_1], COUNT(*) AS count
FROM [CUSTOMER_toqa_test_2]
WHERE [MOBILE_NUMBER_1] IS NOT NULL
GROUP BY [MOBILE_NUMBER_1]

HAVING COUNT(*) > 1


SELECT MOBILE_NUMBER_1, COUNT(*) AS count
FROM CUSTOMER_toqa_test_2
WHERE MOBILE_NUMBER_1 IS NOT NULL

GROUP BY MOBILE_NUMBER_1
HAVING COUNT(*) > 1;
select * from [dbo].[MDM_CUST_CROSS_REF]


select * from [dbo].[SYSTEM_CUSTOMER] s left join [dbo].[MDM_Maram_CUST_CROSS_REF_Test] b on s.CUSTOMER_SK = b.CUSTOMER_SK 


SELECT * FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
 where CIN =  19122187
 SELECT * FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
 where CIN  IN (
 SELECT CIN FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test] where step_id = 1   GROUP BY CIN HAVING COUNT(CIN) > 2
 )order by CIN

 select * from [dbo].[MDM_Maram_Dedupl_Process_Logs]


SELECT * FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test] where Step_id = 3 

SELECT * FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
 where CIN  IN (
 SELECT CIN FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test] where step_id = 1   GROUP BY CIN HAVING COUNT(CIN) > 3
 )

 SELECT CIN  , Customer_SK FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
 where CIN   
 IN (
 SELECT CIN FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test] where step_id = 1   GROUP BY CIN HAVING COUNT(CIN) > 3
 )

 SELECT * FROM DBO.SYSTEM_CUSTOMER WHERE Customer_SK IN (
 SELECT  Customer_SK FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
 where CIN   = 19197895
 )

 
 SELECT  [Run_ID]
      ,[Process_Name]
      ,[Start_Timestamp]
      ,[End_Timestamp]
      ,[Status]
      ,[Last_Processed_Data_Timestamp]
      ,[Records_Processed]w
      ,[Error_Message]
  FROM [ODS].[dbo].[MDM_Maram_Dedupl_Process_Logs]

  SELECT NATIONAL_ID, COUNT(*) as RecordCount
FROM [ODS].[dbo].[CUSTOMER_toqa_test_2]
WHERE NATIONAL_ID IS NOT NULL AND NATIONAL_ID != ''
GROUP BY NATIONAL_ID
HAVING COUNT(*) > 1
ORDER BY RecordCount DESC;

select count(1) FROM [ODS].[dbo].[CUSTOMER_toqa_test_2]

select count(1) from  [dbo].[SYSTEM_CUSTOMER]
where [NATIONAL_ID] IS NOT NULL AND TRIM([NATIONAL_ID]) <> '' AND LEN([FIRST_NAME_EN]) >= 1 

select count(1) , system_code from [dbo].[SYSTEM_CUSTOMER] 
where [NATIONAL_ID] IS NOT NULL AND TRIM([NATIONAL_ID]) <> '' 
group by system_code 

select count(1) , system_code from [dbo].[SYSTEM_CUSTOMER] T1
where   T1.[MOBILE_NUMBER_1] IS NOT NULL
            AND TRIM(T1.[MOBILE_NUMBER_1]) <> ''
            AND T1.[FIRST_NAME_EN] IS NOT NULL
            AND TRIM(T1.[FIRST_NAME_EN]) <> ''
group by system_code 

select count(1) , system_code from [dbo].[SYSTEM_CUSTOMER] T1
where    T1.[NATIONAL_ID] IS NOT NULL AND TRIM(T1.[NATIONAL_ID]) <> ''
            AND T1.[FIRST_NAME_AR] IS NOT NULL AND TRIM(T1.[FIRST_NAME_AR]) <> ''
group by system_code 


SELECT count (MOBILE_NUMBER_1) ,  SYSTEM_CODE  from dbo.SYSTEM_CUSTOMER where MOBILE_NUMBER_1 is not null and Trim(MOBILE_NUMBER_1) <> ''

group by SYSTEM_CODE 

SELECT count (MOBILE_NUMBER_2) ,  SYSTEM_CODE  from dbo.SYSTEM_CUSTOMER where MOBILE_NUMBER_2 is not null and Trim(MOBILE_NUMBER_2) <> ''

group by SYSTEM_CODE 

SELECT count (MOBILE_NUMBER_3) ,  SYSTEM_CODE  from dbo.SYSTEM_CUSTOMER where MOBILE_NUMBER_3 is not null and Trim(MOBILE_NUMBER_3) <> ''

group by SYSTEM_CODE 


SELECT count (FULL_NAME_EN) ,  SYSTEM_CODE  from dbo.SYSTEM_CUSTOMER where FULL_NAME_EN is not null and Trim(FULL_NAME_EN) <> ''

group by SYSTEM_CODE 


SELECT FULL_NAME_EN FROM SYSTEM_CUSTOMER where trim (FULL_NAME_EN) <> ''

select count(1) , Cin from [dbo].[MDM_Maram_CUST_CROSS_REF_Test] where step_id = 4 group by cin having count(cin) > 1

select * from SYSTEM_CUSTOMER where CUSTOMER_SK in (
select Customer_sk from [dbo].[MDM_Maram_CUST_CROSS_REF_Test] where cin = 19126355 )


select * from MDM_CUSTOMER
select * from SYSTEM_CUSTOMER where NUM_OF_EMPLOYEES > 0 

select Count (1) , customer_type from SYSTEM_CUSTOMER group by Customer_type

select count (NATIONAL_ID )from SYSTEM_CUSTOMER where customer_type = 'Company' and trim(NATIONAL_ID) <> '' and NATIONAL_ID is not null 

select NATIONAL_ID,  * from SYSTEM_CUSTOMER where  customer_type != 'Company'

select count (NATIONAL_ID )from SYSTEM_CUSTOMER where customer_type != 'Company' and trim(NATIONAL_ID) <> '' and NATIONAL_ID is not null 


select customer_type , * from --[dbo].[MDM_Maram_Dedupl_Process_Logs]
--[dbo].[MDM_CUSTOMER] 
[dbo].[SYSTEM_CUSTOMER]


SELECT
    T1.[CUSTOMER_SK]
    ,T1.[SYSTEM_SK]
	,t1.NATIONAL_ID
    ,T1.[SYSTEM_CODE]
    ,T1.[CUSTOMER_CODE]
    ,T1.[TAX_IDENTIFICATION_NUMBER]
    ,T1.[SRC_LAST_UPDATE_DATE]
	,t1.[CUSTOMER_TYPE]
FROM [ODS].[dbo].[SYSTEM_CUSTOMER] T1
WHERE
    T1.[CUSTOMER_TYPE] IS NOT NULL AND TRIM(T1.[CUSTOMER_TYPE]) <> '' AND LOWER(TRIM(T1.[CUSTOMER_TYPE])) != 'company'
    --AND T1.[TAX_IDENTIFICATION_NUMBER] IS NOT NULL AND TRIM(T1.[TAX_IDENTIFICATION_NUMBER]) <> ''
    --AND LEN(TRIM(T1.[TAX_IDENTIFICATION_NUMBER])) >= 1
ORDER BY T1.TAX_IDENTIFICATION_NUMBER ASC, T1.SRC_LAST_UPDATE_DATE ASC
SELECT COUNT(1)  FROM SYSTEM_CUSTOMER

--truncate table [dbo].[MDM_Maram_Dedupl_Process_Logs]
--truncate table [dbo].[STG_MDM_CUSTOMER_Suliman_test]
--Truncate Table [dbo].[MDM_CUSTOMER]
--TRUNCATE TABLE [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
select * from [dbo].[MDM_Maram_Dedupl_Process_Logs]
--truncate table [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]
SELECT * FROM [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] --
--SELECT * FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
Select * from [dbo].[MDM_CUSTOMER] 
select * from [dbo].[STG_MDM_CUSTOMER_Suliman_test]
SELECT * FROM [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]
select top 10 * from [dbo].[SYSTEM_CUSTOMER] where NATIONAL_ID in ( 
select  NATIONAL_ID from MDM_CUSTOMER  group  by NATIONAL_ID  having count(NATIONAL_ID) > 1 )

SELECT cin    FROM [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]  group  by cin    having count(cin )> 2 order  by 1
select cin , customer_sk
 from [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] order by 1, 2

 select * from [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] where  cin in (
 SELECT cin    FROM [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]  group  by cin    having count(cin )> 2
)order by cin

select t2.cin  ,  t1.CUSTOMER_SK , t1.ODS_ROW_HASH , t1.MOBILE_NUMBER_1
from SYSTEM_CUSTOMER t1 
left join [MDM_Suliman_CUST_CROSS_REF_Test]  t2 
on t1.CUSTOMER_SK = t2.CUSTOMER_SK 
where cin in ( SELECT cin    FROM [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]  group  by cin    having count(cin )> 2
)
order by cin desc  , CUSTOMER_SK desc


select * from MDM_CUSTOMER 
where cin in (SELECT cin    FROM [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]  group  by cin    having count(cin )> 2)
ORDER BY CIN 

WITH CTE AS (select    ROW_NUMBER () OVER (PARTITION BY NATIONAL_ID  ORDER BY NATIONAL_ID ) AS RN  , *  from MDM_CUSTOMER ) 
SELECT * FROM CTE WHERE RN > 2

WITH CTE AS (select     ROW_NUMBER () OVER (PARTITION BY NATIONAL_ID  ORDER BY NATIONAL_ID ) AS RN  , *  from MDM_CUSTOMER ) 

SELECT COUNT(National_id) from CTE where rn>2

create view Test_MDM as (
SELECT
    SRC.NATIONAL_ID,
    CR.CUSTOMER_SK,
    CR.CIN,
    CR.Step_ID,
    SRC.FULL_NAME_EN,
    SRC.FIRST_NAME_EN,
    SRC.MOBILE_NUMBER_1,
    CR.ODS_LAST_UPDATE_DATE,
    CR.ODS_CREATE_DATE
FROM
    [ODS].[dbo].[SYSTEM_CUSTOMER] AS SRC -- **IMPORTANT: Replace with your actual SOURCE_TABLE name**
JOIN
    [ODS].[dbo].[MDM_Suliman_CUST_CROSS_REF_Test] AS CR -- **IMPORTANT: Replace with your actual CROSS_REF_TABLE name**
    ON SRC.CUSTOMER_SK = CR.CUSTOMER_SK
    AND SRC.SYSTEM_CODE COLLATE DATABASE_DEFAULT = CR.SYSTEM_CODE COLLATE DATABASE_DEFAULT
WHERE
    SRC.NATIONAL_ID IN (
        -- Subquery to find NATIONAL_IDs that have more than one distinct CIN assigned in CROSS_REF_TABLE
        SELECT NATIONAL_ID
        FROM (
            SELECT
                SRC_Inner.NATIONAL_ID,
                COUNT(DISTINCT CR_Inner.CIN) AS DistinctCINCount
            FROM [ODS].[dbo].[MDM_Suliman_CUST_CROSS_REF_Test] AS CR_Inner -- Your CROSS_REF_TABLE
            JOIN [ODS].[dbo].[SYSTEM_CUSTOMER] AS SRC_Inner -- Your SOURCE_TABLE
                ON CR_Inner.CUSTOMER_SK = SRC_Inner.CUSTOMER_SK
                AND CR_Inner.SYSTEM_CODE COLLATE DATABASE_DEFAULT = SRC_Inner.SYSTEM_CODE COLLATE DATABASE_DEFAULT
            WHERE
                SRC_Inner.[NATIONAL_ID] IS NOT NULL AND TRIM(SRC_Inner.[NATIONAL_ID]) <> ''
                AND SRC_Inner.[CUSTOMER_TYPE] IS NOT NULL AND TRIM(SRC_Inner.[CUSTOMER_TYPE]) <> ''
                AND LOWER(TRIM(SRC_Inner.[CUSTOMER_TYPE])) != 'company' -- Exclude companies as per National ID phase filter
            GROUP BY SRC_Inner.NATIONAL_ID
            HAVING COUNT(DISTINCT CR_Inner.CIN) > 1 -- Filter for National IDs with more than one assigned CIN
        ) AS ProblematicNIDs
    )
ORDER BY
    SRC.NATIONAL_ID, CR.CIN, CR.CUSTOMER_SK;
	)


	SELECT
    SRC.NATIONAL_ID,
    CR.CIN,
    COUNT(CR.CUSTOMER_SK) AS RecordsInThisCINForNID,
    MIN(SRC.FULL_NAME_EN) AS SampleFullNameEN,
    MIN(SRC.FIRST_NAME_EN) AS SampleFirstNameEN,
    MIN(CR.ODS_LAST_UPDATE_DATE) AS OldestLastUpdateDate,
    MAX(CR.ODS_LAST_UPDATE_DATE) AS LatestLastUpdateDate
FROM
    [ODS].[dbo].[MDM_Suliman_CUST_CROSS_REF_Test] AS CR -- **IMPORTANT: Replace with your actual CROSS_REF_TABLE name**
JOIN
    [ODS].[dbo].[SYSTEM_CUSTOMER] AS SRC -- **IMPORTANT: Replace with your actual SOURCE_TABLE name**
    ON CR.CUSTOMER_SK = SRC.CUSTOMER_SK
    AND CR.SYSTEM_CODE COLLATE DATABASE_DEFAULT = SRC.SYSTEM_CODE COLLATE DATABASE_DEFAULT
WHERE
    CR.Step_ID = 1 -- Filter for records processed by the National ID Deduplication Phase
    AND SRC.NATIONAL_ID IS NOT NULL AND TRIM(SRC.NATIONAL_ID) <> ''
    AND SRC.CUSTOMER_TYPE IS NOT NULL AND TRIM(SRC.CUSTOMER_TYPE) <> ''
    AND LOWER(TRIM(SRC.CUSTOMER_TYPE)) != 'company'
GROUP BY
    SRC.NATIONAL_ID,
    CR.CIN
HAVING
    COUNT(CR.CUSTOMER_SK) > 1 -- This condition is optional; remove if you want to see all groups
ORDER BY
    SRC.NATIONAL_ID,
    CR.CIN;


	SELECT
    SRC.NATIONAL_ID,
    COUNT(DISTINCT CR.CIN) AS DistinctCINsForNID,
    COUNT(CR.CUSTOMER_SK) AS TotalRecordsForNID,
    MIN(SRC.FULL_NAME_EN) AS SampleFullNameEN,
    MIN(SRC.FIRST_NAME_EN) AS SampleFirstNameEN,
    MIN(CR.ODS_LAST_UPDATE_DATE) AS OldestLastUpdateDate,
    MAX(CR.ODS_LAST_UPDATE_DATE) AS LatestLastUpdateDate
FROM
    [ODS].[dbo].[MDM_Suliman_CUST_CROSS_REF_Test] AS CR -- **IMPORTANT: Replace with your actual CROSS_REF_TABLE name**
JOIN
    [ODS].[dbo].[SYSTEM_CUSTOMER] AS SRC -- **IMPORTANT: Replace with your actual SOURCE_TABLE name**
    ON CR.CUSTOMER_SK = SRC.CUSTOMER_SK
    AND CR.SYSTEM_CODE COLLATE DATABASE_DEFAULT = SRC.SYSTEM_CODE COLLATE DATABASE_DEFAULT
WHERE
    CR.Step_ID = 1 -- Filter for records processed by the National ID Deduplication Phase
    AND SRC.NATIONAL_ID IS NOT NULL AND TRIM(SRC.NATIONAL_ID) <> ''
    AND SRC.CUSTOMER_TYPE IS NOT NULL AND TRIM(SRC.CUSTOMER_TYPE) <> ''
    AND LOWER(TRIM(SRC.CUSTOMER_TYPE)) != 'company'
GROUP BY
    SRC.NATIONAL_ID
HAVING
    COUNT(DISTINCT CR.CIN) > 1 -- This condition filters for National IDs with more than one assigned CIN
ORDER BY
    SRC.NATIONAL_ID;

SELECT * FROM MDM_CUSTOMER where NATIONAL_ID in (

SELECT
    NATIONAL_ID
   
FROM
    [ODS].[dbo].[MDM_CUSTOMER] -- **IMPORTANT: Replace with your actual SOURCE_TABLE name**
WHERE
    NATIONAL_ID IS NOT NULL AND TRIM(NATIONAL_ID) <> ''
GROUP BY
    NATIONAL_ID
HAVING
    COUNT(*) > 1
	)

ORDER BY
     NATIONAL_ID , cin ;

	 SELECT
    SRC.NATIONAL_ID,
    COUNT(DISTINCT CR.CIN) AS DistinctCINsForNationalID,
    COUNT(CR.CUSTOMER_SK) AS TotalSourceRecords,
    MIN(SRC.FULL_NAME_EN) AS SampleFullNameEN,
    MIN(SRC.FIRST_NAME_EN) AS SampleFirstNameEN,
    MIN(CR.ODS_LAST_UPDATE_DATE) AS OldestLastUpdateDate,
    MAX(CR.ODS_LAST_UPDATE_DATE) AS LatestLastUpdateDate
FROM
    [ODS].[dbo].[MDM_Suliman_CUST_CROSS_REF_Test] AS CR -- **IMPORTANT: Replace with your actual CROSS_REF_TABLE name**
JOIN
    [ODS].[dbo].[SYSTEM_CUSTOMER] AS SRC -- **IMPORTANT: Replace with your actual SOURCE_TABLE name**
    ON CR.CUSTOMER_SK = SRC.CUSTOMER_SK
    AND CR.SYSTEM_CODE COLLATE DATABASE_DEFAULT = SRC.SYSTEM_CODE COLLATE DATABASE_DEFAULT
WHERE
    CR.Step_ID = 1 -- Filter for records processed by the National ID Deduplication Phase
    AND SRC.NATIONAL_ID IS NOT NULL AND TRIM(SRC.NATIONAL_ID) <> ''
    AND SRC.CUSTOMER_TYPE IS NOT NULL AND TRIM(SRC.CUSTOMER_TYPE) <> ''
    AND LOWER(TRIM(SRC.CUSTOMER_TYPE)) != 'company'
GROUP BY
    SRC.NATIONAL_ID
HAVING
    COUNT(DISTINCT CR.CIN) > 1 -- This condition identifies National IDs that still have more than one assigned CIN
ORDER BY
    SRC.NATIONAL_ID;
	
	SELECT
    SRC.NATIONAL_ID,
    COUNT(DISTINCT CR.CIN) AS DistinctCINsCount,
    MIN(SRC.FULL_NAME_EN) AS SampleFullNameEN,
    MIN(SRC.FIRST_NAME_EN) AS SampleFirstNameEN
FROM
    [ODS].[dbo].[MDM_Suliman_CUST_CROSS_REF_Test] AS CR -- **IMPORTANT: Replace with your actual CROSS_REF_TABLE name**
JOIN
    [ODS].[dbo].[SYSTEM_CUSTOMER] AS SRC -- **IMPORTANT: Replace with your actual SOURCE_TABLE name**
    ON CR.CUSTOMER_SK = SRC.CUSTOMER_SK
    AND CR.SYSTEM_CODE COLLATE DATABASE_DEFAULT = SRC.SYSTEM_CODE COLLATE DATABASE_DEFAULT
WHERE
    SRC.NATIONAL_ID IS NOT NULL AND TRIM(SRC.NATIONAL_ID) <> ''
    AND SRC.CUSTOMER_TYPE IS NOT NULL AND TRIM(SRC.CUSTOMER_TYPE) <> ''
    AND LOWER(TRIM(SRC.CUSTOMER_TYPE)) != 'company' -- Exclude company types as per National ID phase filter
GROUP BY
    SRC.NATIONAL_ID
HAVING
    COUNT(DISTINCT CR.CIN) > 1 -- This condition filters for National IDs with more than one assigned CIN
ORDER BY
    SRC.NATIONAL_ID;


	SELECT * FROM (
	select   s.NATIONAL_ID  , m.cin  ,S.*
	, COUNT( M.CIN) OVER(PARTITION BY S.NATIONAL_ID ORDER BY s.NATIONAL_ID ) RN 
	
	from [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] m 

	left join SYSTEM_CUSTOMER s
	on s.CUSTOMER_SK = m.customer_sk
	 ) T
	 WHERE RN > 1
	order by S,NATIONAL_ID , M.cin
	

	SELECT * FROM [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] 
	WHERE CIN IN( 
	SELECT CIN FROM (
	select   s.NATIONAL_ID  , m.cin 
	, COUNT( M.CIN) OVER(PARTITION BY S.NATIONAL_ID ORDER BY s.NATIONAL_ID ) RN 
	
	from [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] m 

	left join SYSTEM_CUSTOMER s
	on s.CUSTOMER_SK = m.customer_sk
	 ) T
	 WHERE RN > 1
	
	) ORDER BY CIN 

	SELECT * FROM SYSTEM_CUSTOMER WHERE NATIONAL_ID = '23908088800108'


		select   s.NATIONAL_ID  , m.cin  ,S.*
	, COUNT( M.CIN) OVER(PARTITION BY S.NATIONAL_ID ORDER BY s.NATIONAL_ID ) RN 
	
	from [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] m 

	left join SYSTEM_CUSTOMER s
	on s.CUSTOMER_SK = m.customer_sk

	WITH NationalID_CIN_Counts AS (
    SELECT
        SRC.NATIONAL_ID,
        CR.CUSTOMER_SK,
        CR.CIN,
        CR.Step_ID,
        SRC.FULL_NAME_EN,
        SRC.FIRST_NAME_EN,
        -- This window function calculates the count of distinct CINs for each National ID.
        -- It partitions the data by NATIONAL_ID, meaning it counts distinct CINs within each unique NATIONAL_ID group.
        COUNT( CR.CIN) OVER (PARTITION BY SRC.NATIONAL_ID) AS DistinctCINsForNationalID
    FROM
        [ODS].[dbo].[MDM_Maram_CUST_CROSS_REF_Test] AS CR -- **IMPORTANT: Replace with your actual CROSS_REF_TABLE name**
    JOIN
        [ODS].[dbo].[BACKUP_SYSTEM_CUSTOMER] AS SRC -- **IMPORTANT: Replace with your actual SOURCE_TABLE name**
        ON CR.CUSTOMER_SK = SRC.CUSTOMER_SK
        AND CR.SYSTEM_CODE COLLATE DATABASE_DEFAULT = SRC.SYSTEM_CODE COLLATE DATABASE_DEFAULT
    WHERE
        SRC.NATIONAL_ID IS NOT NULL AND TRIM(SRC.NATIONAL_ID) <> ''
        AND SRC.CUSTOMER_TYPE IS NOT NULL AND TRIM(SRC.CUSTOMER_TYPE) <> ''
        AND LOWER(TRIM(SRC.CUSTOMER_TYPE)) != 'company' -- Exclude company types as per National ID phase filter
      --  AND CR.Step_ID = 1 -- Optionally, filter for records processed by the National ID Deduplication Phase
)
;
WITH NationalID_CIN_Counts AS (
    SELECT
        SRC.NATIONAL_ID,
        CR.CUSTOMER_SK,
        CR.CIN,
        CR.Step_ID,
        SRC.FULL_NAME_EN,
        SRC.FIRST_NAME_EN,
        -- This window function calculates the count of distinct CINs for each National ID.
        -- It partitions the data by NATIONAL_ID, meaning it counts distinct CINs within each unique NATIONAL_ID group.
        COUNT( CR.CIN) OVER (PARTITION BY SRC.NATIONAL_ID) AS DistinctCINsForNationalID ,
		COUNT(*) OVER (PARTITION BY CR.CIN) AS RecordsPerCIN 
    FROM
        [ODS].[dbo].[MDM_MARAM_CUST_CROSS_REF_Test] AS CR -- **IMPORTANT: Replace with your actual CROSS_REF_TABLE name**
    JOIN
        [ODS].[dbo].[BACKUP_SYSTEM_CUSTOMER] AS SRC -- **IMPORTANT: Replace with your actual SOURCE_TABLE name**
        ON CR.CUSTOMER_SK = SRC.CUSTOMER_SK
        AND CR.SYSTEM_CODE COLLATE DATABASE_DEFAULT = SRC.SYSTEM_CODE COLLATE DATABASE_DEFAULT
    WHERE
        SRC.NATIONAL_ID IS NOT NULL AND TRIM(SRC.NATIONAL_ID) <> ''
        AND SRC.CUSTOMER_TYPE IS NOT NULL AND TRIM(SRC.CUSTOMER_TYPE) <> ''
        AND LOWER(TRIM(SRC.CUSTOMER_TYPE)) != 'company' -- Exclude company types as per National ID phase filter
        AND CR.Step_ID = 1 -- Optionally, filter for records processed by the National ID Deduplication Phase
)
SELECT
    NATIONAL_ID,
    DistinctCINsForNationalID,
	RecordsPerCIN ,
	CIN,
    
    FULL_NAME_EN,CUSTOMER_SK,
    
    Step_ID,
    FIRST_NAME_EN
FROM
    NationalID_CIN_Counts
WHERE
    DistinctCINsForNationalID > 1  
	--AND RecordsPerCIN = 1
	-- This filter identifies National IDs that have more than one distinct CIN
ORDER BY
    NATIONAL_ID, CIN, CUSTOMER_SK;

	select * from   [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]
	select * from  [dbo].[MDM_Maram_CUST_CROSS_REF_Test]

	--truncate table [dbo].[MDM_Maram_CUST_CROSS_REF_Test]




	select Cin from [dbo].[MDM_Maram_CUST_CROSS_REF_Test]

	select cin  ,   s.NATIONAL_ID 
	from  
	[dbo].[MDM_Maram_CUST_CROSS_REF_Test]

	
	SYSTEM_CUSTOMER s 


	select count(1) , TAX_IDENTIFICATION_NUMBER  from [dbo].[MDM_SYSTEM_CUSTOMER] GROUP BY TAX_IDENTIFICATION_NUMBER




	--truncate table MDM_Maram_CUST_CROSS_REF_Test
	select * from MDM_Maram_CUST_CROSS_REF_Test
	select * from [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]
	select count(1) from SYSTEM [CUSTOMER_toqa_test_2]
	select count(*) from [dbo].[BACKUP_SYSTEM_CUSTOMER]
	select count (*) from [dbo].[MDM_CUSTOMER]
	select * from [dbo].[MDM_Maram_Dedupl_Process_Logs]


SELECT  
    T1.[CUSTOMER_SK],
    T1.[SYSTEM_SK],
    T1.[SYSTEM_CODE],
    T1.[CUSTOMER_CODE],
    T1.[NATIONAL_ID],
    T1.[SRC_LAST_UPDATE_DATE],
    T1.[ODS_ROW_HASH],
    T1.[ODS_CREATE_DATE],
    T1.[ODS_CREATE_USER],
    T1.[ODS_LAST_UPDATE_DATE],
    T1.[ODS_LAST_UPDATE_USER],
    T1.[CUSTOMER_TYPE]
FROM [dbo].[BACKUP_SYSTEM_CUSTOMER] T1 
WHERE 
  --  (
        T1.[NATIONAL_ID] IS NOT NULL
        AND LEN(T1.[NATIONAL_ID]) = 14
        AND T1.[NATIONAL_ID] NOT LIKE '%[^0-9]%'  -- no non-digits
  --  )
    AND --(
        T1.[CUSTOMER_TYPE] IS NOT NULL
        AND T1.[CUSTOMER_TYPE] <> ''
        AND T1.[CUSTOMER_TYPE] COLLATE Latin1_General_CI_AS NOT IN ('company', 'bank')
   -- )


   select count(*) from SYSTEM_CUSTOMER

   select CIN ,  count(Cin) over (partition by cin order by cin ) from MDM_Maram_CUST_CROSS_REF_Test
   --truncate table MDM_Maram_CUST_CROSS_REF_Test

   WITH NationalID_CIN_Mapping AS (
    SELECT
        S.NATIONAL_ID,
        C.CIN,
        S.CUSTOMER_SK,  -- CUSTOMER_SK will come from system_customer
        S.SYSTEM_CODE   -- SYSTEM_CODE will come from system_customer
    FROM
        -- !! IMPORTANT: Make sure 'YourDatabase.YourSchema.system_customer' is the correct fully qualified name !!
        ODS.dbo.[system_customer] AS S -- This is your main source table with NATIONAL_ID
    JOIN
        -- This is your cross-reference table with CINs, should be correct from previous steps
        [ODS].[dbo].[MDM_Maram_CUST_CROSS_REF_Test] AS C
    ON
        S.CUSTOMER_SK = C.CUSTOMER_SK
        -- Collation conflict resolution on SYSTEM_CODE, assuming it's in system_customer too
        AND S.SYSTEM_CODE COLLATE DATABASE_DEFAULT = C.SYSTEM_CODE COLLATE DATABASE_DEFAULT
    WHERE
        S.NATIONAL_ID IS NOT NULL
        AND TRIM(S.NATIONAL_ID) <> ''
        AND LEN(TRIM(S.NATIONAL_ID)) = 14 -- Filter for valid 14-digit National IDs
),
DistinctCINsPerNationalID AS (
    SELECT
        NATIONAL_ID,
        COUNT(DISTINCT CIN) AS NumberOfDistinctCINs
    FROM
        NationalID_CIN_Mapping
    GROUP BY
        NATIONAL_ID
    HAVING
        COUNT(DISTINCT CIN) > 1 -- Identify National IDs linked to more than one distinct CIN
)
SELECT
    M.NATIONAL_ID,
    M.CIN,
    M.CUSTOMER_SK,
    M.SYSTEM_CODE
FROM
    NationalID_CIN_Mapping AS M
JOIN
    DistinctCINsPerNationalID AS D
ON
    M.NATIONAL_ID = D.NATIONAL_ID
ORDER BY
    M.NATIONAL_ID, M.CIN;


	SELECT TOP 100
    S.NATIONAL_ID,
    S.CUSTOMER_SK,
    S.SYSTEM_CODE,
    C.CIN,
    C.STEP_ID
FROM
    -- !! IMPORTANT: Replace '[YourDatabase].[YourSchema].[system_customer]' with your actual table name !!
    ods.dbo.[system_customer] AS S
JOIN
    -- !! IMPORTANT: Replace '[ODS].[dbo].[MDM_Maram_CUST_CROSS_REF_Test]' with your actual table name !!
    [ODS].[dbo].[MDM_Maram_CUST_CROSS_REF_Test] AS C
ON
    S.CUSTOMER_SK = C.CUSTOMER_SK
    AND S.SYSTEM_CODE COLLATE DATABASE_DEFAULT = C.SYSTEM_CODE COLLATE DATABASE_DEFAULT
WHERE
    S.NATIONAL_ID IS NOT NULL
    AND TRIM(S.NATIONAL_ID) <> ''
    AND LEN(TRIM(S.NATIONAL_ID)) = 14;

	with cte as  (
	select  count(CUSTOMER_SK) over(partition by  cin order by cin  ) c , *  from  MDM_Maram_CUST_CROSS_REF_Test )
	select * from cte where c > 1

	select s.NATIONAL_ID , s.FULL_NAME_EN , t.CUSTOMER_SK , t.CIN from SYSTEM_CUSTOMER s  left join MDM_Maram_CUST_CROSS_REF_Test t on s.CUSTOMER_SK = t.CUSTOMER_SK
	where s.NATIONAL_ID in (
	select NATIONAL_ID from SYSTEM_CUSTOMER group  by NATIONAL_ID having count (NATIONAL_ID) > 1
	) and cin is not null
	order by  s.NATIONAL_ID   

	--truncate table [dbo].[MDM_Maram_CUST_CROSS_REF_Test]

	select * from[dbo].[MDM_Maram_Dedupl_Process_Logs]
	select * from dbo.MDM_Maram_CUST_CROSS_REF_Test
	select * from MDM_Suliman_CUST_CROSS_REF_Test  order by cin 
	SELECT COUNT (*) FROM  MDM_Maram_CUST_CROSS_REF_Test
	--truncate  table 
	
	SELECT COUNT(*) FROM  MDM_Suliman_CUST_CROSS_REF_Test
	select * , cin , count(1) over (partition by cin order by cin ) cnt from dbo.MDM_Maram_CUST_CROSS_REF_Test   order by cin
	--truncate table STG_MDM_CUSTOMER_Suliman_test
	select * from STG_MDM_CUSTOMER_Suliman_test
	select * from MDM_CUSTOMER

	select  cin from MDM_CUSTOMER
	--truncate table MDM_CUSTOMER 
	SELECT
    COUNT(*) AS TotalRecords,
    SUM(CASE WHEN NATIONAL_ID IS NULL THEN 1 ELSE 0 END) AS NullNationalIDs,
    SUM(CASE WHEN NATIONAL_ID IS NOT NULL AND TRIM(NATIONAL_ID) = '' THEN 1 ELSE 0 END) AS EmptyOrWhitespaceNationalIDs,
    SUM(CASE WHEN NATIONAL_ID IS NOT NULL AND LEN(TRIM(NATIONAL_ID)) <> 14 THEN 1 ELSE 0 END) AS IncorrectLengthNationalIDs,
    SUM(CASE   WHEN NATIONAL_ID IS NOT NULL AND TRIM(NATIONAL_ID) LIKE '%[^0-9]%' THEN 1 ELSE 0 END) AS ContainsNonNumericChars
FROM  [dbo].[BACKUP_SYSTEM_CUSTOMER]






SELECT CUSTOMER_SK, SYSTEM_CODE, COUNT(*) AS DuplicateCount
FROM [ODS].[dbo].[MDM_Maram_CUST_CROSS_REF_Test]
GROUP BY CUSTOMER_SK, SYSTEM_CODE
HAVING COUNT(*) > 1;



SELECT
    COUNT(DISTINCT CIN) AS DistinctCINs,
    SUM(CASE WHEN CIN IS NULL THEN 1 ELSE 0 END) AS NullCINs
FROM [ODS].[dbo].[MDM_Maram_CUST_CROSS_REF_Test];



select a.TAX_IDENTIFICATION_NUMBER,  a.CUSTOMER_SK , b.CUSTOMER_SK , b.CIN  , a.FULL_NAME_EN from BACKUP_SYSTEM_CUSTOMER  a join [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] b on a.CUSTOMER_SK = b.CUSTOMER_SK order by A.TAX_IDENTIFICATION_NUMBER

select * from [dbo].[BACKUP_SYSTEM_CUSTOMER]  t1 
where T1.[CUSTOMER_TYPE] IS NOT NULL AND TRIM(T1.[CUSTOMER_TYPE]) <> ''
            AND (LOWER(TRIM(T1.[CUSTOMER_TYPE])) IN ('company', 'bank', 'organization', 'corporate')) -- Target company types for this phase
            AND T1.[FULL_NAME_EN] IS NOT NULL AND TRIM(T1.[FULL_NAME_EN]) <> '' AND LEN(TRIM(T1.[FULL_NAME_EN])) >= 3
            AND T1.[TAX_IDENTIFICATION_NUMBER] IS NOT NULL AND TRIM(T1.[TAX_IDENTIFICATION_NUMBER]) <> '' AND LEN(TRIM(T1.[TAX_IDENTIFICATION_NUMBER])) >= 1
  
  select count(*)  from  [dbo].[BACKUP_SYSTEM_CUSTOMER]  t1 

where T1.[CUSTOMER_TYPE] IS NOT NULL AND TRIM(T1.[CUSTOMER_TYPE]) <> ''
            AND (LOWER(TRIM(T1.[CUSTOMER_TYPE])) IN ('company', 'bank', 'organization', 'corporate')) -- Target company types for this phase
            AND T1.[FULL_NAME_EN] IS NOT NULL AND TRIM(T1.[FULL_NAME_EN]) <> '' AND LEN(TRIM(T1.[FULL_NAME_EN])) >= 3
            AND T1.[TAX_IDENTIFICATION_NUMBER] IS NOT NULL AND TRIM(T1.[TAX_IDENTIFICATION_NUMBER]) <> '' AND LEN(TRIM(T1.[TAX_IDENTIFICATION_NUMBER])) >= 1
select count(*) from [dbo].[BACKUP_SYSTEM_CUSTOMER]

with cte as  (
select EMAIL , count(EMAIL)  counts


from [dbo].[BACKUP_SYSTEM_CUSTOMER] t1 where EMAIL is  not null 
            AND (LOWER(TRIM(T1.[CUSTOMER_TYPE])) not  IN  ('company', 'bank', 'organization', 'corporate')) 
			and T1.[EMAIL] IS NOT NULL AND TRIM(T1.[EMAIL]) <> '' 
		group by EMAIL
		)	
select NATIONAL_ID , a.EMAIL ,a.FULL_NAME_EN from [dbo].[BACKUP_SYSTEM_CUSTOMER] a
join cte b on  a.EMAIL = b.email

select *  from MDM_Suliman_CUST_CROSS_REF_Test where Step_ID  =1
select * from MDM_Maram_CUST_CROSS_REF_Test where Step_ID  =1

select count(*)from ods.dbo.MDM_Maram_CUST_CROSS_REF_Test
select top 1 * from [dbo].[SYSTEM_CUSTOMER] where MOBILE_NUMBER_1
select * from [dbo].[MDM_Maram_Dedupl_Process_Logs] 
select * from ods.[dbo].[MDM_SYSTEM_CUSTOMER]

SELECT count(a.NATIONAL_ID) over (partition by a.NATIONAL_ID order by a.NATIONAL_ID desc) as counts ,
a.TAX_IDENTIFICATION_NUMBER , a.NATIONAL_ID , a.PARTY_TYPE  , b.PARTY_TYPE , a.FULL_NAME_EN , b.FULL_NAME_EN
FROM dbo.mdm_customer AS a
inner JOIN dbo.BACKUP_SYSTEM_CUSTOMER AS b
    ON a.NATIONAL_ID COLLATE SQL_Latin1_General_CP1_CI_AS = b.NATIONAL_ID COLLATE SQL_Latin1_General_CP1_CI_AS
	Where b.NATIONAL_ID is  not  null and trim (b.NATIONAL_ID ) <> '' order by a.NATIONAL_ID desc
	
	select NATIONAL_ID from MDM_CUSTOMER 
	;
select * from dbo.BACKUP_SYSTEM_CUSTOMER  where NATIONAL_ID in (select NATIONAL_ID from MDM_CUSTOMER )


with cte as 
(

SELECT count(a.NATIONAL_ID) over (partition by a.NATIONAL_ID order by a.NATIONAL_ID desc) as counts , a.cin , b.customer_sk SRC_SK , a.CIN MDM_SK ,
a.TAX_IDENTIFICATION_NUMBER , a.NATIONAL_ID , a.PARTY_TYPE   MDM_PARTY_TYPE , b.PARTY_TYPE SRC_PARTY_TYPE , a.FULL_NAME_EN MDM_FULL_NAME  , b.FULL_NAME_EN SRC__FULL_NAME
,A.ODS_ROW_HASH MDM_ROW_HASH , B.ODS_ROW_HASH SRC_ROW_HASH , A.EMAIL
FROM dbo.mdm_customer AS a
inner JOIN dbo.BACKUP_SYSTEM_CUSTOMER AS b
    ON a.NATIONAL_ID COLLATE SQL_Latin1_General_CP1_CI_AS = b.NATIONAL_ID COLLATE SQL_Latin1_General_CP1_CI_AS
	Where b.NATIONAL_ID is  not  null and trim (b.NATIONAL_ID ) <> '' 

)  


select * from cte 
where  ---counts > 1 AND 
NATIONAL_ID = '28006030104688' 
order by NATIONAL_ID desc 

select * from [dbo].[MDM_CUSTOMER] WHERE NATIONAL_ID = '28006030104688'
SELECT * FROM [dbo].[BACKUP_SYSTEM_CUSTOMER] WHERE NATIONAL_ID = '28006030104688'

ALTER TABLE DBO.MDM_CUSTOMER
ALTER COLUMN FULL_NAME_AR NVARCHAR(250) COLLATE Arabic_CI_AS;
ALTER TABLE DBO.MDM_CUSTOMER
ALTER COLUMN FIRST_NAME_AR NVARCHAR(250) COLLATE Arabic_CI_AS;

--DELETE FROM DBO.MDM_CUSTOMER WHERE CIN = 39569959

SELECT * FROM[dbo].[MDM_Maram_Dedupl_Process_Logs]

select * from dbo.MDM_Customer  WHERE   NATIONAL_ID='26611151802271' 

SELECT * FROM DBO.BACKUP_SYSTEM_CUSTOMER WHERE NATIONAL_ID='26611151802271'

select * from [dbo].[MDM_CUSTOMER] where birth_date > '1998-11-09'

select * from dbo.MDM_Customer  WHERE CIN = 202507184394328

select A.* from [dbo].[BACKUP_SYSTEM_CUSTOMER] A LEFT join dbo.MDM_Customer b on a.customer_sk = b.cin  where B.CIN =202507184394328
 
SELECT COUNT(*) FROM [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]
SELECT COUNT(*) FROM [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
SELECT COUNT(*) FROM [dbo].[MDM_CUSTOMER]
SELECT COUNT(*) FROM [dbo].MDM_SYSTEM_CUSTOMER
--TRUNCATE Table [dbo].[MDM_SYSTEM_CUSTOMER]

select top  1  national_id ,  * from dbo.backup_system_customer where national_id is not null and system_code = 'toshfa'

select * from [dbo].[SYSTEM_CUSTOMER]


select * from [dbo].[MDM_Suliman_CUST_CROSS_REF_Test] where cin = 39572316




select * from dbo.MDM_Customer  WHERE   NATIONAL_ID='26611151802271' 

select * from [dbo].[MDM_suliman_CUST_CROSS_REF_Test]

SELECT * FROM DBO.BACKUP_SYSTEM_CUSTOMER WHERE NATIONAL_ID='26611151802271'

select national_id , * from System_customer
select * from  [dbo].[MDM_Maram_CUST_CROSS_REF_Test] where customer_sk in  (select Customer_sk from System_customer
)
select * from 
[dbo].[MDM_SYSTEM_CUSTOMER]

--select top(1) * from mdm_customer
SELECT * FROM [dbo].[MDM_CUST_CROSS_REF1]
--
--TRUNCATE TABLE [dbo].[MDM_CUST_CROSS_REF1]
select * from STG_MDM_CUSTOMER_Suliman_test
select * from 
[dbo].[MDM_SYSTEM_CUSTOMER]
select * from [dbo].[SYSTEM_CUSTOMER]
truncate table [dbo].[MDM_SYSTEM_CUSTOMER]

select count (*)  from [dbo].[MDM_Suliman_CUST_CROSS_REF_Test]
select count (*) from [dbo].[MDM_Maram_CUST_CROSS_REF_Test]
select * from [dbo].[MDM_Maram_CUST_CROSS_REF_Test]






--truncate table  [dbo].[MDM_CUST_CROSS_REF1]
select * from 

[dbo].[MDM_CUST_CROSS_REF1] where step_id  = 6
select * from  [dbo].[MDM_SYSTEM_CUSTOMER]
select * from [dbo].[MDM_Maram_Dedupl_Process_Logs]
select  national_id COLLATE SQL_Latin1_General_CP1_CI_AS AS national_id from  [dbo].[MDM_SYSTEM_CUSTOMER]
except 
select national_id COLLATE SQL_Latin1_General_CP1_CI_AS AS national_id  from [dbo].[MDM_CUSTOMER]

WITH CTE AS (
select CUSTOMER_SK from [dbo].[BACKUP_SYSTEM_CUSTOMER] where  national_id in 
--select * from [MDM_system_CUSTOMER] where national_id  in 
(select  national_id COLLATE SQL_Latin1_General_CP1_CI_AS AS national_id from  [dbo].[MDM_SYSTEM_CUSTOMER]
except 
select national_id COLLATE SQL_Latin1_General_CP1_CI_AS AS national_id  from [dbo].[MDM_CUSTOMER]
) )

SELECT * FROM[dbo].[MDM_CUST_CROSS_REF]  WHERE CUSTOMER_SK IN (SELECT CUSTOMER_SK FROM CTE )

WITH CTE AS (
SELECT NATIONAL_ID , COUNT(*) OVER (PARTITION BY NATIONAL_ID  ORDER BY NATIONAL_ID  ) AS COUNT_National_ID 
FROM MDM_CUSTOMER  
where NATIONAL_ID is not null  and  trim(NATIONAL_ID) != ''
)
SELECT * FROM CTE where COUNT_National_ID > 1

WITH CTE AS  (
select tax_identification_number AS TAX , COUNT(1) OVER(PARTITION BY TAX_IDENTIFICATION_NUMBER  )   AS  COUNT_TAX
from MDM_Customer where customer_type != 'Person'
)
SELECT tax_identification_number , * 
FROM MDM_CUSTOMER WHERE tax_identification_number IN 
	(SELECT TAX FROM CTE  WHERE COUNT_TAX > 10 ) 
ORDER BY 1

 select * from [dbo].[BACKUP_SYSTEM_CUSTOMER] 
 where 
	 tax_identification_number is not null 
	and trim (tax_identification_number) != ''

select count(*) from [dbo].[BACKUP_SYSTEM_CUSTOMER] 
 where 
	 tax_identification_number is not null 
	and trim (tax_identification_number) != ''

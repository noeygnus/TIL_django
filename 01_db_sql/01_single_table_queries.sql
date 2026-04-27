-- 01. Querying data
SELECT 
  LastName, FirstName
FROM
  employees;

SELECT
 *
FROM
 employees;

SELECT
 FirstName AS '이름'
 FROM
 employees;

SELECT
 Name,
 Milliseconds / 60000 AS '재생시간(분)'
 FROM
 tracks;

-- 02. Sorting data

SELECT
Firstname
FROM
employees
ORDER BY 
FirstName ASC;

SELECT
country, City
FROM
customers
ORDER BY
country DESC,0
City ASC;

SELECT
 Name,
 Milliseconds / 60000 AS '재생시간(분)'
 FROM
 tracks
 ORDER BY
 Milliseconds desc;


-- NULL 정렬 예시
SELECT 
  ReportsTo
FROM
  employees
ORDER BY
  ReportsTo;


-- 03. Filtering data
SELECT DISTINCT
  Country
FROM
  customers
ORDER BY
  Country;

SELECT
LastName, firstName, City
FROM
customers
WHERE
city = 'Prague';


SELECT
Lastname, firstname, company, country
FROM
customers
WHERE
company is NULL
or Country = 'USA';

SELECT
name, bytes
FROM
tracks
WHERE
bytes >= 10000
and bytes <= 500000

SELECT
lastname, firstname
FROM
customers
WHERE
lastname like '%son';

SELECT
trackid, name, bytes
FROM
tracks
ORDER BY
Bytes DESC
limit 7; #상위 7개

SELECT
trackid, name, bytes
FROM
tracks
ORDER BY
Bytes DESC
limit 3 OFFSET 4; #상위 7개



-- 04. Grouping data
-- SELECT 
--   c1, c2,..., cn, aggregate_function(ci)
-- FROM
--   table_name
-- GROUP BY 
--   c1, c2, ..., cn;

SELECT
  Country
FROM
  customers
GROUP BY
  Country;

SELECT
composer,
AVG(bytes)
FROM
tracks
ORDER BY
avg(bytes) desc;


-- 에러
SELECT
  Composer,
  AVG(Milliseconds / 60000) AS avgOfMinute
FROM
  tracks
WHERE 
  avgOfMinute < 10
GROUP BY
  Composer;

-- 에러 해결

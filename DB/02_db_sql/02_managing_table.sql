-- Table 구조 확인
PRAGMA table_info('examples');

-- 1. Create a table
CREATE TABLE examples (
  ExamId INTEGER PRIMARY KEY AUTOINCREMENT,
  LasmtName VARCHAR(50) NOT NULL,
  FirstName VARCHAR(50) NOT NULL
);

-- 2. Modifying table fields
-- 2.1 ADD COLUMN
ALTER TABLE
examples
ADD COLUMN
country VARCHAR(100) not NULL DEFAULT 'default value';

ALTER TABLE 
examples
ADD COLUMN
address VARCHAR(100) NOT NULL DEFAULT 'default value';
-- sqlite는 단일 문을 사용하여 한번에 여러 열을 추가하는 것을 지원하지 않음

-- 2.2 RENAME COLUMN
ALTER Table examples
RENAME COLUMN 
address to postcode;

-- 2.3 DROP COLUMN
ALTER Table
examples
DROP COLUMN
postcode;

-- 2.4 RENAME TO
ALTER TABLE examples
rename to new_examples ;

-- 3. Delete a table
DROP Table new_examples;

-- sqlite는 컬럼 수정 불가
-- 대신 테이블의 이름을 바꾸고, 새 테이블을 만들고 데이터를 새 테이블에 복사하는 방식을 사용

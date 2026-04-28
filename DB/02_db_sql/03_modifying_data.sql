-- Active: 1777276218096@@127.0.0.1@3306
-- 공통
SELECT * FROM articles;
DROP TABLE articles;
PRAGMA table_info('articles');

-- 실습 테이블 생성
create TABLE articles (
id INTEGER PRIMARY KEY autoincrement,
title VARCHAR(100) NOT NULL,
content VARCHAR(200) NOT NULL,
createdAt DATE NOT null
);

-- 1. Insert data into table
INSERT INTO
articles(title, content, createdAt)
VALUES
('title1','content1','1900-01-01'),
('title2','content2','1800-01-01'),
('title3','content3','1700-01-01'),
('title4', 'content4', date());
-- 2. Update data in table
UPDATE articles
SET title = 'update Title'
WHERE id = 1 ;

-- 3. Delete data from table
DELETE FROM
  articles 
WHERE
  id = 1;

-- 심화
-- 작성일이 오래된 수으로 레코드 2개를 조회
SELECT
id, createdAt
FROM
articles
ORDER BY 
createdAt ASC
limit 2;

DELETE FROM articles
WHERE id in(
  SELECT id
  FROM articles
  ORDER BY createdAt ASC
  LIMIT 2
)
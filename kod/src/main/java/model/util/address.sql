CREATE TABLE ADDRESS(
	ADDRESS_ID		INT				PRIMARY KEY, --PK
	ADDRESS_NAME	VARCHAR(30)		NOT NULL, -- 배송지이름
	ADDRESS_STREET	VARCHAR(255)	NOT NULL, -- 도로명
	ADDRESS_LOTNUM	VARCHAR(255)	NOT NULL, -- 지번
	ADDRESS_DETAIL	VARCHAR(255)	NOT NULL, -- 상세주소
	ADDRESS_ZIPCODE	VARCHAR(20), -- 우편번호
	MEMBER_ID 		VARCHAR(20)		REFERENCES MEMBER(MEMBER_ID) -- 회원ID -> 누구의 배송지목록인지 알기위함
);


SELECT * FROM ADDRESS;
SELECT * FROM ADDRESS WHERE ADDRESS_ID='1';


INSERT INTO ADDRESS(ADDRESS_ID, ADDRESS_NAME, ADDRESS_STREET, ADDRESS_LOTNUM, ADDRESS_DETAIL, ADDRESS_ZIPCODE, MEMBER_ID) VALUES((SELECT NVL(MAX(ADDRESS_ID),0)+1 FROM ADDRESS),'a','b','c','d','e','1');
UPDATE ADDRESS SET ADDRESS_NAME=?, ADDRESS_STREET=?, ADDRESS_LOTNUM=?, ADDRESS_DETAIL=?, ADDRESS_ZIPCODE=? WHERE ADDRESS_ID=?;
UPDATE ADDRESS SET ADDRESS_NAME='밥', ADDRESS_STREET='밥밥', ADDRESS_LOTNUM='밥밥밥', ADDRESS_DETAIL='점심돈까스', ADDRESS_ZIPCODE='123' WHERE ADDRESS_ID='1';

DROP TABLE ADDRESS;
DELETE FROM ADDRESS WHERE ADDRESS_ID='2';




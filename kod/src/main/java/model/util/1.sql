SELECT * FROM ALL_TABLES;

CREATE TABLE MEMBER(
	MEMBER_ID 	VARCHAR(20) PRIMARY KEY,
	MEMBER_PW 	VARCHAR(30) NOT NULL,
	MEMBER_NAME 	VARCHAR(30) NOT NULL,
	MEMBER_PHONE 	VARCHAR(20) NOT NULL,
	MEMBER_EMAIL 	VARCHAR(30) NOT NULL UNIQUE,
	MEMBER_GRADE 	VARCHAR(20) NOT NULL,
	MEMBER_GENDER	VARCHAR(10) NOT NULL, 
	MEMBER_BIRTH 	VARCHAR(20) NOT NULL
);

CREATE TABLE PRODUCT(
	PRODUCT_ID 		INT 		PRIMARY KEY,
	PRODUCT_NAME 		VARCHAR(50)	NOT NULL UNIQUE,
	PRODUCT_BRAND 		VARCHAR(50) 	NOT NULL,
	PRODUCT_PRICE 		INT 		NOT NULL,
	PRODUCT_INFO		VARCHAR(500) 	NOT NULL,
	PRODUCT_CATEGORY 	VARCHAR(50) 	NOT NULL,
	PRODUCT_STOCK		INT DEFAULT 0	NOT NULL,
	PRODUCT_IMG		VARCHAR(500)	NOT NULL
);

CREATE TABLE CART(
	CART_ID 		INT		PRIMARY KEY,
	CART_PRODUCT_CNT	INT	DEFAULT 0	NOT NULL,
	MEMBER_ID 		VARCHAR(20)	REFERENCES MEMBER(MEMBER_ID),
	PRODUCT_ID 		INT 		REFERENCES PRODUCT(PRODUCT_ID)
);

CREATE TABLE ORDERLIST( -- 주문목록
	ORDERLIST_ID 		INT		PRIMARY KEY, -- 주문번호 PK
	MEMBER_ID		VARCHAR(20) 	REFERENCES MEMBER(MEMBER_ID), -- 누구의 주문목록인지
	ORDERLIST_DATE 		DATE -- 주문일자
);

CREATE TABLE ORDERCONTENT( -- 주문내역
	ORDERCONTENT_ID		INT PRIMARY KEY, -- 주문내용ID PK => 주문내역 속 각 상품마다 부열될 PK 값을 가진 주문내역번호
	ORDERLIST_ID		INT REFERENCES ORDERLIST(ORDERLIST_ID), -- 주문번호 FK
	PRODUCT_ID 		INT REFERENCES PRODUCT(PRODUCT_ID), -- 상품ID FK
	ORDERCONTENT_CNT	INT -- 주문한 상품수량
);

CREATE TABLE ADDRESS(
	ADDRESS_ID	INT		PRIMARY KEY, --PK
	ADDRESS_NAME	VARCHAR(30)	NOT NULL, -- 배송지이름
	ADDRESS_STREET	VARCHAR(255)	NOT NULL, -- 도로명
	ADDRESS_LOTNUM	VARCHAR(255)            , -- 지번
	ADDRESS_DETAIL	VARCHAR(255)	        , -- 상세주소
	ADDRESS_ZIPCODE	VARCHAR(20)     NOT NULL, -- 우편번호
	MEMBER_ID 	VARCHAR(20)	REFERENCES MEMBER(MEMBER_ID) -- 회원ID -> 누구의 배송지목록인지 알기위함
);

CREATE TABLE WISHLIST(
	WISHLIST_ID		INT		PRIMARY KEY,
	WISHLIST_ADDTIME	TIMESTAMP	NOT NULL,
	MEMBER_ID		VARCHAR(20) 	REFERENCES MEMBER(MEMBER_ID),
	PRODUCT_ID		INT		REFERENCES PRODUCT(PRODUCT_ID)
);

CREATE TABLE REVIEW(
	REVIEW_ID 		INT 	PRIMARY KEY,
	REVIEW_TITLE	VARCHAR(100)	NOT NULL,
	REVIEW_CONTENT	VARCHAR(500)	NOT NULL,
	REVIEW_TIME	TIMESTAMP	NOT NULL,
	REVIEW_SCORE	INT		NOT NULL,
	REVIEW_REPLY	VARCHAR(500)            ,
	REVIEW_IMG	VARCHAR(500)		,
	MEMBER_ID	VARCHAR(20) 	REFERENCES MEMBER(MEMBER_ID),
	PRODUCT_ID	INT 		REFERENCES PRODUCT(PRODUCT_ID),
	ORDERCONTENT_ID	INT		REFERENCES ORDERCONTENT(ORDERCONTENT_ID)
);  
drop table PRODUCT
;

-- 图书销售系统 booksales 建表脚本
-- 1. 图书表
CREATE TABLE book(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2(100) NOT NULL,
    author VARCHAR2(50),
    price NUMBER(7,2),
    stock NUMBER DEFAULT 0
);

-- 2. 客户表
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    custname VARCHAR2(20) NOT NULL,
    phone VARCHAR2(20),
    address VARCHAR2(100)
);

--3. 订单表
CREATE TABLE orders(
    orderid NUMBER PRIMARY KEY,
    custid NUMBER NOT NULL,
    orderdate DATE DEFAULT SYSDATE,
    FOREIGN KEY(custid) REFERENCES customer(custid)
);

--4. 订单明细表
CREATE TABLE orderitem(
    orderid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    quantity NUMBER,
    PRIMARY KEY(orderid,bookid),
    FOREIGN KEY(orderid) REFERENCES orders(orderid),
    FOREIGN KEY(bookid) REFERENCES book(bookid)
);

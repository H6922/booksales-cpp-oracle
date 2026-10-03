-- 图书表
INSERT INTO book(bookid,bookname,author,price,stock) VALUES
('B001','Oracle数据库原理','张三',49.5,100),
('B002','数据结构','李四',39,80);

-- 客户表
INSERT INTO customer(custid,custname,phone,address) VALUES
('C001','小明','13800138000','南昌市'),
('C002','小红','13900139000','赣州市');

-- 订单表
INSERT INTO orders(orderid,custid,ordertime) VALUES
('O001','C001',TO_DATE('2026-09-01','yyyy-mm-dd'));

-- 订单明细表
INSERT INTO orderitem(orderid,bookid,quantity) VALUES
('O001','B001',2);
COMMIT;

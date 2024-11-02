SELECT table_name
FROM all_tables
WHERE UPPER(owner) LIKE UPPER('C##BDELKIN')
ORDER BY owner, table_name ASC;

SELECT *
FROM product;

SELECT * FROM COUNTRY c3 WHERE ID_COUNTRY = 8;
DELETE  FROM COUNTRY c2 ;
INSERT INTO country (id_country,name) VALUES (1,'Colombia');

DELETE FROM CUSTOMER ;
INSERT INTO customer (identification,first_name,last_name,id_country) VALUES ('1607030839699','Guinevere','Mcmahon',1);
SELECT * FROM CUSTOMER c WHERE IDENTIFICATION = 1040;
SELECT * FROM CUSTOMER c WHERE ID_COUNTRY = 1;

DELETE FROM PRODUCT ;
INSERT INTO product (id_product,name,price,description) VALUES (119,'at,',583,'Donec fringilla. Donec feugiat metus');
INSERT INTO product (id_product,name,price,description) VALUES (101,'Lorem',1160,'nonummy ipsum non arcu. Vivamus');

SELECT * FROM PRODUCT p ;

INSERT INTO invoice (id_invoice,deduction,total,impost,date_,identification_customer) VALUES (501,395,1968,43,'28/05/2020',1040);

SELECT * FROM INVOICE i ;

SELECT p.ID_PRODUCT , p.NAME , i.TOTAL 
FROM PRODUCT p , SALE_ITEM si ,INVOICE i 
WHERE p.ID_PRODUCT = si.ID_PRODUCT 
AND si.ID_INVOICE = i.ID_INVOICE;

SELECT si.*
FROM SALE_ITEM si , INVOICE i 
WHERE si.ID_INVOICE = i.ID_INVOICE 
AND si.ID_PRODUCT = 103;

SELECT *
FROM INVOICE i2 
WHERE i2.IDENTIFICATION_CUSTOMER = 1003;

SELECT *
FROM PRODUCT p;






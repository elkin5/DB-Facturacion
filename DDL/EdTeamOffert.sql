DROP TABLE Product CASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;
DROP TABLE Store CASCADE CONSTRAINTS;
DROP TABLE Invoice CASCADE CONSTRAINTS;
DROP TABLE Sale_Item CASCADE CONSTRAINTS;
DROP TABLE Country CASCADE CONSTRAINTS;

CREATE TABLE Product (
    id_product number NOT NULL,
    name varchar2(100) NOT NULL,
    price number NOT NULL,
    description varchar2(400),
    PRIMARY KEY (id_product)
);

CREATE TABLE Customer (
    Identification number NOT NULL,
    first_name varchar2(100) NOT NULL,
    last_name Varchar2(100),
    id_country number NOT NULL,
    PRIMARY KEY (Identification)
);

CREATE TABLE Store (
    id_store number NOT NULL,
    date_ date NOT NULL,
    quantity number NOT NULL,
    Column1 INTEGER NOT NULL,
    type varchar2(1) NOT NULL,
    id_producto number NOT NULL,
    PRIMARY KEY (id_store)
);

CREATE TABLE Invoice (
    id_invoice number NOT NULL,
    deduction number,
    total number NOT NULL,
    impost number,
    date_ date NOT NULL,
    identification_customer number NOT NULL,
    PRIMARY KEY (id_invoice)
);

CREATE TABLE Sale_Item (
    id_sale_item number NOT NULL,
    id_invoice number NOT NULL,
    id_product number NOT NULL,
    quantity number NOT NULL,
    total number NOT NULL,
    PRIMARY KEY (id_sale_item)
);

CREATE TABLE Country (
    id_country number NOT NULL,
    name varchar2(100) NOT NULL,
    PRIMARY KEY (id_country)
);

ALTER TABLE Customer ADD FOREIGN KEY (id_country) REFERENCES Country(id_country);
ALTER TABLE Store ADD FOREIGN KEY (id_producto) REFERENCES Product(id_product);
ALTER TABLE Invoice ADD FOREIGN KEY (identification_customer) REFERENCES Customer(Identification);
ALTER TABLE Sale_Item ADD FOREIGN KEY (id_product) REFERENCES Product(id_product);
ALTER TABLE Sale_Item ADD FOREIGN KEY (id_invoice) REFERENCES Invoice(id_invoice);
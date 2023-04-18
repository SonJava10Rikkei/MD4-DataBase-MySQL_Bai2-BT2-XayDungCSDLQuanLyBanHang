CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

CREATE TABLE Customer (
  IdCustomer INT AUTO_INCREMENT PRIMARY KEY,
  NameCustomer VARCHAR(50),
  AgeCustomer INT
);
CREATE TABLE Product (
  IdProduct INT AUTO_INCREMENT PRIMARY KEY,
  NameProduct VARCHAR(255),
  PriceProduct INT
);

CREATE TABLE OrderShop (
  IdOrderShop INT AUTO_INCREMENT PRIMARY KEY,
  IdCustomer INT,
  oDate DATETIME,
  TotalPrice INT,
  FOREIGN KEY (IdCustomer) REFERENCES Customer(IdCustomer)
);
CREATE TABLE OderDetail (
  IdOrderShop INT,
  IdProduct INT,
  odQTY INT,
  PRIMARY KEY (IdOrderShop, IdProduct),
  FOREIGN KEY (IdOrderShop) REFERENCES OrderShop(IdOrderShop),
  FOREIGN KEY (IdProduct) REFERENCES Product(IdProduct)
);


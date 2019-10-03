DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE Products(
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT(10) NOT NULL,
    primary key(item_id)
);

select * from products;

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Shenmue III - PS4","VIDEO GAMES",49.95,150),
    ("Doom Eternal - PS4","VIDEO GAMES",59.99,200),
    ("Cheese Balls Barrel","GROCERY",14.97,99),
    ("Tactical Gloves","CLOTHING",23.99,40),
    ("Chewbacca Mask","CLOTHING",63.23,20),
    ("Bear Grylls Survival Hatchet","SPORTS & OUTDOORS",38.39,5),
    ("Blade Runner 2049","MOVIES & TV",9.99,49),
    ("Ferris Beuller's Day Off","MOVIES & TV",19.99,25),
    ("Ring of Namira","DAEDRIC ARTIFACT",9999.99,1),
    ("He-Man Action Figure","TOYS & GAMES",26.50,30);
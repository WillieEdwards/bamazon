DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products(
  item_id INT(4) NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price INT(10) NOT NULL,
  stock_quantity INT(10) NOT NULL,
  PRIMARY KEY (position)
);

SELECT * FROM products;

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES 
    (102, "Hunting Bow", "Weapons", 152, 12),
    (111, "Iron Arrow", "Weapons", 3, 200),
    (112, "Iron Battleaxe", "Weapons", 167, 4),
    (114, "Iron Dagger", "Weapons", 30, 14),
    (117, "Iron Mace", "Weapons", 106, 8),
    (119, "Iron War Axe", "Weapons", 91, 10),
    (201, "Hide Armor", "Apparel", 152, 18),
    (202, "Hide Boots", "Apparel", 30, 22),
    (203, "Hide Bracers", "Apparel", 30, 30),
    (206, "Hide Helmet", "Apparel", 76, 10),
    (301, "Iron Armor", "Apparel", 380, 8),
    (306, "Iron Helmet", "Apparel", 182, 4),
    (1000, "Ale", "Food", 15, 86),
    (1020, "Honningbrew Mead", "Food", 61, 48),
    (1121, "Leek", "Food", 3, 10),
    (1144, "Potato", "Food", 3, 20),
    (1256, "Red Apple", "Food", 9, 30),
    (1301, "Tomato", "Food", 12, 20),
    (1552, "Candlestick", "Misc", 76, 6),
    (1600, "Goat Hide", "Misc", 15, 8),
    (1601, "Goat Horns", "Misc", 15, 16),
    (1700, "Lockpick", "Misc", 6, 68)

DROP TABLE IF EXISTS product_entry;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS product_category;
DROP TABLE IF EXISTS size;
DROP TABLE IF EXISTS color;


CREATE TABLE product_category (
    id serial PRIMARY KEY,
    type VARCHAR(50)
);
CREATE TABLE size (
    id serial PRIMARY KEY,
    size VARCHAR(25)
);
CREATE TABLE color (
    id serial PRIMARY KEY,
    color VARCHAR(25)
); 
CREATE TABLE product (
    id serial PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR(100)
);
CREATE TABLE product_entry(
    id serial PRIMARY KEY,
    product_id INT,
    size_id INT,
    color_id INT,
    category_id INT,
    FOREIGN KEY(product_id) REFERENCES product(id) ON DELETE CASCADE,
    FOREIGN KEY(size_id) REFERENCES size(id) ON DELETE CASCADE,
    FOREIGN KEY(color_id) REFERENCES color(id) ON DELETE CASCADE,
    FOREIGN KEY(category_id) REFERENCES product_category(id) ON DELETE CASCADE
    
);
INSERT INTO product_category (type) VALUES 
('Shirts'), --1
('Pants'), --2
('Outer Wear'), --3
('Head Wear'), --4
('Accessories'); --5
INSERT INTO size(size) VALUES 
('S'),
('M'),
('L'),
('XL');
INSERT INTO color(color) VALUES 
('White'),
('Black'),
('Blue'),
('Coyote Brown');
INSERT INTO product (name, description) VALUES 
('Shirt', 'Plain Shirt'),
('Tank Top', 'Make muscles big'),
('T-Shirt', 'Military Grade'),
('Long Pants', 'When you''re feeling cold.'),
('Short Pants', 'When you''re feeling hot.'),
('Hoodie', 'Software Developer?'),
('Wind Breaker', 'Moving to Seattle?'),
('Baseball cap', 'Team work makes the dream work.'),
('Apple Watch', 'I know you want one.');

INSERT INTO product_entry(product_id, size_id, color_id, category_id) VALUES 
(1,1,1,1), (1,1,2,1), (1,1,3,1), (1,1,4,1), (1,2,1,1), (1,2,2,1), (1,2,3,1), (1,2,4,1),
(1,3,1,1), (1,3,2,1), (1,3,3,1), (1,3,4,1), (1,4,1,1), (1,4,2,1), (1,4,3,1), (1,4,4,1),
(2,1,1,1), (2,1,2,1), (2,1,3,1), (2,1,4,1), (2,2,1,1), (2,2,2,1), (2,2,3,1), (2,2,4,1),
(2,3,1,1), (2,3,2,1), (2,3,3,1), (2,3,4,1), (2,4,1,1), (2,4,2,1), (2,4,3,1), (2,4,4,1),
(3,1,1,1), (3,1,2,1), (3,1,3,1), (3,1,4,1), (3,2,1,1), (3,2,2,1), (3,2,3,1), (3,2,4,1),
(3,3,1,1), (3,3,2,1), (3,3,3,1), (3,3,4,1), (3,4,1,1), (3,4,2,1), (3,4,3,1), (3,4,4,1),
(4,1,1,2), (4,1,2,2), (4,1,3,2), (4,1,4,2), (4,2,1,2), (4,2,2,2), (4,2,3,2), (4,2,4,2),
(4,3,1,2), (4,3,2,2), (4,3,3,2), (4,3,4,2), (4,4,1,2), (4,4,2,2), (4,4,3,2), (4,4,4,2),
(5,1,1,2), (5,1,2,2), (5,1,3,2), (5,1,4,2), (5,2,1,2), (5,2,2,2), (5,2,3,2), (5,2,4,2),
(5,3,1,2), (5,3,2,2), (5,3,3,2), (5,3,4,2), (5,4,1,2), (5,4,2,2), (5,4,3,2), (5,4,4,2),
(6,1,1,3), (6,1,2,3), (6,1,3,3), (6,1,4,3), (6,2,1,3), (6,2,2,3), (6,2,3,3), (6,2,4,3),
(6,3,1,3), (6,3,2,3), (6,3,3,3), (6,3,4,3), (6,4,1,3), (6,4,2,3), (6,4,3,3), (6,4,4,3),
(7,1,1,3), (7,1,2,3), (7,1,3,3), (7,1,4,3), (7,2,1,3), (7,2,2,3), (7,2,3,3), (7,2,4,3),
(7,3,1,3), (7,3,2,3), (7,3,3,3), (7,3,4,3), (7,4,1,3), (7,4,2,3), (7,4,3,3), (7,4,4,3),
(8,1,1,4), (8,1,2,4), (8,1,3,4), (8,1,4,4), (8,2,1,4), (8,2,2,4), (8,2,3,4), (8,2,4,4),
(8,3,1,4), (8,3,2,4), (8,3,3,4), (8,3,4,4), (8,4,1,4), (8,4,2,4), (8,4,3,4), (8,4,4,4),
(9,1,1,5), (9,1,2,5), (9,1,3,5), (9,1,4,5), (9,2,1,5), (9,2,2,5), (9,2,3,5), (9,2,4,5),
(9,3,1,5), (9,3,2,5), (9,3,3,5), (9,3,4,5), (9,4,1,5), (9,4,2,5), (9,4,3,5), (9,4,4,5);
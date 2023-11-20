
INSERT INTO Products (product_name, category, color, size, price, quantity)
VALUES
    ('Flip Flops', 'Shoes', 'Yellow', 8, 29.99, 20),
    ('Ankle Boots', 'Shoes', 'Black', 9, 79.99, 15),
    ('Hiking Boots', 'Shoes', 'Brown', 10, 149.99, 8),
    ('Trainers', 'Shoes', 'White', 9, 69.99, 25),
    ('Espadrilles', 'Shoes', 'Beige', 8, 49.99, 18),
    ('Loafers', 'Shoes', 'Brown', 9, 89.99, 10),
    ('Moccasins', 'Shoes', 'Tan', 8, 59.99, 30),
    -- добавьте еще новых значений здесь
    ('Running Shoes', 'Shoes', 'Blue', 7, 99.99, 12),
    ('Sandals', 'Shoes', 'Red', 8, 39.99, 22);



INSERT INTO Customers (first_name, last_name, email, phone)
VALUES
    ('Carol', 'Taylor', 'carol.taylor@email.com', '321-654-9870'),
    ('David', 'Martinez', 'david.martinez@email.com', '654-987-3210'),
    ('Eve', 'White', 'eve.white@email.com', '987-654-3210'),
    ('Frank', 'Adams', 'frank.adams@email.com', '123-456-7890'),
    -- добавьте еще новых значений здесь
    ('Grace', 'Lee', 'grace.lee@email.com', '456-789-0123'),
    ('Henry', 'Scott', 'henry.scott@email.com', '789-012-3456');


INSERT INTO Orders (customer_id, order_date)
VALUES
    (5, '2022-03-19'),
    (6, '2022-03-20'),
    (7, '2022-03-21'),
    (8, '2022-03-22'),
    (9, '2022-03-23'),
    (10, '2022-03-24');


INSERT INTO OrderDetails (order_id, product_id)
VALUES
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),

    (9, 9),
    (10, 10);

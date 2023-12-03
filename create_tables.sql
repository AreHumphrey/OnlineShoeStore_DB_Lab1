CREATE TABLE IF NOT EXISTS Products
(
    product_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT    NOT NULL,
    category     TEXT    NOT NULL,
    color        TEXT,
    country      TEXT,
    brand        TEXT,
    material     TEXT,
    quantity     INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS Colors
(
    color_id    INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id  INTEGER,
    color       DECIMAL NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE IF NOT EXISTS Sizes
(
    size_id    INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id  INTEGER,
    size        FLOAT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


CREATE TABLE IF NOT EXISTS Customers
(
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name  TEXT NOT NULL,
    last_name   TEXT NOT NULL,
    email       TEXT NOT NULL UNIQUE,
    phone       TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders
(
    order_id    INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_date  DATE    NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)

);

CREATE TABLE IF NOT EXISTS OrderDetails
(
    order_details_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id         INTEGER NOT NULL,
    product_id       INTEGER NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (product_id) REFERENCES Products (product_id)

);

CREATE TRIGGER check_product_availability
    BEFORE INSERT
    ON OrderDetails
    FOR EACH ROW
BEGIN
    SELECT CASE
               WHEN (SELECT quantity FROM Products WHERE product_id = NEW.product_id) <= 0
                   THEN RAISE(ABORT, 'Product not available')
               END;
END;

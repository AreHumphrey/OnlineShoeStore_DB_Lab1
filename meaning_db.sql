CREATE TABLE IF NOT EXISTS Products
(
    product_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT    NOT NULL,
    category     TEXT    NOT NULL,
    price money NOT NULL,
    country      TEXT,
    brand        TEXT,
    material     TEXT,
    quantity     INTEGER NOT NULL DEFAULT 0,
    size_id      INTEGER,
    color_id     INTEGER,
    FOREIGN KEY (size_id) REFERENCES Sizes(size_id),
    FOREIGN KEY (color_id) REFERENCES Colors(color_id)
);
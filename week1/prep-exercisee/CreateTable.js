CREATE TABLE Categories (
    Category_id INT PRIMARY KEY AUTO_INCREMENT,
    Category_value VARCHAR(100) NOT NULL
);

CREATE TABLE Names (
    Name_id INT PRIMARY KEY AUTO_INCREMENT,
    Name_value VARCHAR(255) NOT NULL
);

CREATE TABLE Receipt (
    Receipt_id INT PRIMARY KEY AUTO_INCREMENT,
    Name_id INT NOT NULL,
    FOREIGN KEY (Name_id) REFERENCES Names(Name_id)
);

CREATE TABLE Receipts_Categories (
    Receipt_id INT,
    Category_id INT,
    PRIMARY KEY (Receipt_id, Category_id),
    FOREIGN KEY (Receipt_id) REFERENCES Receipt(Receipt_id),
    FOREIGN KEY (Category_id) REFERENCES Categories(Category_id)
);

CREATE TABLE Ingredients (
    Ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
    Ingredient_value VARCHAR(255) NOT NULL
);

CREATE TABLE Receipts_Ingredients (
    Receipt_id INT,
    Ingredient_id INT,
    Ingredient_count VARCHAR(100), -- например: '2 cups', '1 tsp'
    PRIMARY KEY (Receipt_id, Ingredient_id),
    FOREIGN KEY (Receipt_id) REFERENCES Receipt(Receipt_id),
    FOREIGN KEY (Ingredient_id) REFERENCES Ingredients(Ingredient_id)
);

CREATE TABLE Steps (
    Step_id INT PRIMARY KEY AUTO_INCREMENT,
    Step_value TEXT NOT NULL
);

CREATE TABLE Receipts_Steps (
    Receipt_id INT,
    Step_id INT,
    Step_order INT NOT NULL,
    PRIMARY KEY (Receipt_id, Step_id),
    FOREIGN KEY (Receipt_id) REFERENCES Receipt(Receipt_id),
    FOREIGN KEY (Step_id) REFERENCES Steps(Step_id)
);

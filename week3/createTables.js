CREATE TABLE Categories (
    Category_id INT PRIMARY KEY AUTO_INCREMENT,
    Category_value VARCHAR(100) NOT NULL UNIQUE 
);

CREATE TABLE Recipes (
    Recipe_id INT PRIMARY KEY AUTO_INCREMENT,
    Recipe_Name VARCHAR(255) NOT NULL, 
    Cooking_time_minutes INT,
    Calories INT,
    Is_baking_required BOOLEAN DEFAULT TRUE
);

CREATE TABLE Recipe_Categories (
    Recipe_id INT,
    Category_id INT,
    PRIMARY KEY (Recipe_id, Category_id),
    FOREIGN KEY (Recipe_id) REFERENCES Recipes(Recipe_id) ON DELETE CASCADE,
    FOREIGN KEY (Category_id) REFERENCES Categories(Category_id) ON DELETE CASCADE
);

CREATE TABLE Ingredients (
    Ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
    Ingredient_value VARCHAR(255) NOT NULL UNIQUE 
);

CREATE TABLE Recipe_Ingredients (
    Recipe_id INT,
    Ingredient_id INT,
    Ingredient_count VARCHAR(100), 
    PRIMARY KEY (Recipe_id, Ingredient_id),
    FOREIGN KEY (Recipe_id) REFERENCES Recipes(Recipe_id) ON DELETE CASCADE,
    FOREIGN KEY (Ingredient_id) REFERENCES Ingredients(Ingredient_id) ON DELETE CASCADE
);

CREATE TABLE Steps (
    Step_id INT PRIMARY KEY AUTO_INCREMENT,
    Step_value TEXT NOT NULL 
);

CREATE TABLE Recipe_Steps (
    Recipe_id INT,
    Step_order INT NOT NULL, 
    Step_id INT NOT NULL,    
    PRIMARY KEY (Recipe_id, Step_order), 
    FOREIGN KEY (Recipe_id) REFERENCES 
    FOREIGN KEY (Step_id) REFERENCES Steps(Step_id) ON DELETE RESTRICT 
);

CREATE TABLE Tags (
    Tag_id INT PRIMARY KEY AUTO_INCREMENT,
    Tag_value VARCHAR(100) NOT NULL UNIQUE 
);

CREATE TABLE Recipe_Tags (
    Recipe_id INT,
    Tag_id INT,
    PRIMARY KEY (Recipe_id, Tag_id),
    FOREIGN KEY (Recipe_id) REFERENCES Recipes(Recipe_id) ON DELETE CASCADE,
    FOREIGN KEY (Tag_id) REFERENCES Tags(Tag_id) ON DELETE CASCADE
);

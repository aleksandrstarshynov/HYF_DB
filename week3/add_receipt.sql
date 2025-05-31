--1
INSERT INTO Recipes (Recipe_Name, Cooking_time_minutes, Calories, Is_baking_required)
VALUES ('Classic Pancakes', 20, 250, FALSE);

INSERT IGNORE INTO Categories (Category_value)
VALUES ('Breakfast'), ('Quick Dishes');

INSERT INTO Recipe_Categories (Recipe_id, Category_id)
SELECT 1, Category_id FROM Categories
WHERE Category_value IN ('Breakfast', 'Quick Dishes');

INSERT IGNORE INTO Tags (Tag_value)
VALUES ('Pancakes'), ('Flour'), ('Breakfast');

INSERT INTO Recipe_Tags (Recipe_id, Tag_id)
SELECT 1, Tag_id FROM Tags
WHERE Tag_value IN ('Pancakes', 'Flour', 'Breakfast');

INSERT IGNORE INTO Ingredients (Ingredient_value)
VALUES ('Flour'), ('Milk'), ('Eggs'), ('Sugar'), ('Salt'), ('Vegetable Oil');

INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 1, Ingredient_id, '200 g' FROM Ingredients WHERE Ingredient_value = 'Flour';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 1, Ingredient_id, '300 ml' FROM Ingredients WHERE Ingredient_value = 'Milk';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 1, Ingredient_id, '2 pcs.' FROM Ingredients WHERE Ingredient_value = 'Eggs';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 1, Ingredient_id, '2 tbsp' FROM Ingredients WHERE Ingredient_value = 'Sugar';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 1, Ingredient_id, 'a pinch' FROM Ingredients WHERE Ingredient_value = 'Salt';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 1, Ingredient_id, '2 tbsp' FROM Ingredients WHERE Ingredient_value = 'Vegetable Oil';

INSERT INTO Steps (Step_value) VALUES
('Mix flour, sugar, and salt.'),
('Add eggs and milk, whisk until smooth.'),
('Heat vegetable oil in a frying pan.'),
('Pour batter into the pan and fry pancakes until golden on both sides.'),
('Serve pancakes with your favorite toppings.');

INSERT INTO Recipe_Steps (Recipe_id, Step_order, Step_id)
VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(1, 5, 5);


--2
INSERT INTO Recipes (Recipe_Name, Cooking_time_minutes, Calories, Is_baking_required)
VALUES ('Spaghetti Bolognese', 45, 450, FALSE);

INSERT IGNORE INTO Categories (Category_value)
VALUES ('Main Dishes'), ('Pasta');

INSERT INTO Recipe_Categories (Recipe_id, Category_id)
SELECT 2, Category_id FROM Categories
WHERE Category_value IN ('Main Dishes', 'Pasta');

INSERT IGNORE INTO Tags (Tag_value)
VALUES ('Spaghetti'), ('Meat Sauce'), ('Italian');

INSERT INTO Recipe_Tags (Recipe_id, Tag_id)
SELECT 2, Tag_id FROM Tags
WHERE Tag_value IN ('Spaghetti', 'Meat Sauce', 'Italian');

INSERT IGNORE INTO Ingredients (Ingredient_value)
VALUES ('Ground Beef'), ('Onion'), ('Carrot'), ('Celery'), ('Garlic'), ('Tomato Paste'), ('Water or Broth'), ('Salt'), ('Pepper'), ('Sugar'), ('Italian Herbs'), ('Spaghetti');


INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '300 g' FROM Ingredients WHERE Ingredient_value = 'Ground Beef';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '1 pc.' FROM Ingredients WHERE Ingredient_value = 'Onion';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '1 pc.' FROM Ingredients WHERE Ingredient_value = 'Carrot';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '1 stalk' FROM Ingredients WHERE Ingredient_value = 'Celery';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '2 cloves' FROM Ingredients WHERE Ingredient_value = 'Garlic';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '3 tbsp' FROM Ingredients WHERE Ingredient_value = 'Tomato Paste';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '200 ml' FROM Ingredients WHERE Ingredient_value = 'Water or Broth';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, 'to taste' FROM Ingredients WHERE Ingredient_value = 'Salt';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, 'to taste' FROM Ingredients WHERE Ingredient_value = 'Pepper';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '1 tsp' FROM Ingredients WHERE Ingredient_value = 'Sugar';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '1 tsp' FROM Ingredients WHERE Ingredient_value = 'Italian Herbs';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 2, Ingredient_id, '200 g' FROM Ingredients WHERE Ingredient_value = 'Spaghetti';

INSERT INTO Steps (Step_value) VALUES
('Finely chop onion, carrot, celery, and garlic.'),
('In a pan, sauté vegetables in oil until soft.'),
('Add ground beef and cook until browned.'),
('Add tomato paste, water or broth, salt, pepper, sugar, and Italian herbs.'),
('Simmer on medium heat for 10-15 minutes until sauce thickens.'),
('Cook spaghetti according to package instructions.'),
('Mix spaghetti with the sauce, warm for 2-3 minutes, and serve.');

INSERT INTO Recipe_Steps (Recipe_id, Step_order, Step_id)
VALUES
(2, 1, 12),
(2, 2, 13),
(2, 3, 14),
(2, 4, 15),
(2, 5, 16),
(2, 6, 17),
(2, 7, 18),
(2, 8, 19),
(2, 9, 20);

--3
INSERT INTO Recipes (Recipe_Name, Cooking_time_minutes, Calories, Is_baking_required)
VALUES ('Vegetable Omelette', 15, 120, FALSE);

INSERT IGNORE INTO Categories (Category_value)
VALUES ('Breakfast'), ('Quick Dishes');

INSERT INTO Recipe_Categories (Recipe_id, Category_id)
SELECT 3, Category_id FROM Categories
WHERE Category_value IN ('Breakfast', 'Quick Dishes');

INSERT IGNORE INTO Tags (Tag_value)
VALUES ('Omelette'), ('Eggs'), ('Vegetables'), ('Healthy Breakfast');

INSERT INTO Recipe_Tags (Recipe_id, Tag_id)
SELECT 3, Tag_id FROM Tags
WHERE Tag_value IN ('Omelette', 'Eggs', 'Vegetables', 'Healthy Breakfast');

INSERT IGNORE INTO Ingredients (Ingredient_value)
VALUES ('Eggs'), ('Milk'), ('Tomatoes'), ('Sweet Pepper'), ('Green Onion'), ('Salt'), ('Black Pepper'), ('Sunflower Oil');

INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 3, Ingredient_id, '3 pcs.' FROM Ingredients WHERE Ingredient_value = 'Eggs';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 3, Ingredient_id, '50 ml' FROM Ingredients WHERE Ingredient_value = 'Milk';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 3, Ingredient_id, '1 pc.' FROM Ingredients WHERE Ingredient_value = 'Tomatoes';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 3, Ingredient_id, '1 pc.' FROM Ingredients WHERE Ingredient_value = 'Sweet Pepper';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 3, Ingredient_id, '2 stalks' FROM Ingredients WHERE Ingredient_value = 'Green Onion';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 3, Ingredient_id, 'to taste' FROM Ingredients WHERE Ingredient_value = 'Salt';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 3, Ingredient_id, 'to taste' FROM Ingredients WHERE Ingredient_value = 'Black Pepper';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 3, Ingredient_id, '1 tbsp' FROM Ingredients WHERE Ingredient_value = 'Sunflower Oil';

INSERT INTO Steps (Step_value) VALUES
('Beat eggs with milk, salt, and pepper.'),
('Cut tomatoes and sweet pepper into cubes.'),
('Finely chop green onions.'),
('Heat oil in a pan, fry vegetables for 3-4 minutes.'),
('Pour egg mixture over vegetables, cook on medium heat for 5-7 minutes covered until done.');


INSERT INTO Recipe_Steps (Recipe_id, Step_order, Step_id)
VALUES
(3, 1, 21),
(3, 2, 22),
(3, 3, 23),
(3, 4, 24),
(3, 5, 25);

--4
INSERT INTO Recipes (Recipe_Name, Cooking_time_minutes, Calories, Is_baking_required)
VALUES ('Classic Olivier Salad', 30, 220, FALSE);

INSERT IGNORE INTO Categories (Category_value)
VALUES ('Salads'), ('Cold Appetizers');

INSERT INTO Recipe_Categories (Recipe_id, Category_id)
SELECT 4, Category_id FROM Categories
WHERE Category_value IN ('Salads', 'Cold Appetizers');

INSERT IGNORE INTO Tags (Tag_value)
VALUES ('Salad'), ('Olivier'), ('New Year Table');

INSERT INTO Recipe_Tags (Recipe_id, Tag_id)
SELECT 4, Tag_id FROM Tags
WHERE Tag_value IN ('Salad', 'Olivier', 'New Year Table');

INSERT IGNORE INTO Ingredients (Ingredient_value)
VALUES ('Potatoes'), ('Carrots'), ('Eggs'), ('Pickled Cucumbers'), ('Green Peas'), ('Chicken Breast'), ('Mayonnaise'), ('Salt');


INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 4, Ingredient_id, '3 pcs.' FROM Ingredients WHERE Ingredient_value = 'Potatoes';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 4, Ingredient_id, '2 pcs.' FROM Ingredients WHERE Ingredient_value = 'Carrots';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 4, Ingredient_id, '3 pcs.' FROM Ingredients WHERE Ingredient_value = 'Eggs';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 4, Ingredient_id, '4 pcs.' FROM Ingredients WHERE Ingredient_value = 'Pickled Cucumbers';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 4, Ingredient_id, '150 g' FROM Ingredients WHERE Ingredient_value = 'Green Peas';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 4, Ingredient_id, '300 g' FROM Ingredients WHERE Ingredient_value = 'Chicken Breast';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 4, Ingredient_id, 'to taste' FROM Ingredients WHERE Ingredient_value = 'Mayonnaise';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 4, Ingredient_id, 'to taste' FROM Ingredients WHERE Ingredient_value = 'Salt';

INSERT INTO Steps (Step_value) VALUES
('Boil potatoes, carrots, and eggs until cooked.'),
('Cut all ingredients into small cubes.'),
('Mix all ingredients in a bowl, add mayonnaise and salt to taste.'),
('Chill salad in the refrigerator for 1 hour before serving.');

INSERT INTO Recipe_Steps (Recipe_id, Step_order, Step_id)
VALUES
(4, 1, 26),
(4, 2, 27),
(4, 3, 28),
(4, 4, 29);


--5
INSERT INTO Recipes (Recipe_Name, Cooking_time_minutes, Calories, Is_baking_required)
VALUES ('Chicken Curry', 40, 350, FALSE);

INSERT IGNORE INTO Categories (Category_value)
VALUES ('Main Dishes'), ('Curry');

INSERT INTO Recipe_Categories (Recipe_id, Category_id)
SELECT 5, Category_id FROM Categories
WHERE Category_value IN ('Main Dishes', 'Curry');

INSERT IGNORE INTO Tags (Tag_value)
VALUES ('Chicken'), ('Curry'), ('Spicy');

INSERT INTO Recipe_Tags (Recipe_id, Tag_id)
SELECT 5, Tag_id FROM Tags
WHERE Tag_value IN ('Chicken', 'Curry', 'Spicy');

INSERT IGNORE INTO Ingredients (Ingredient_value)
VALUES ('Chicken Breast'), ('Onion'), ('Garlic'), ('Ginger'), ('Tomato'), ('Coconut Milk'), ('Curry Powder'), ('Vegetable Oil'), ('Salt'), ('Pepper');

INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, '500 g' FROM Ingredients WHERE Ingredient_value = 'Chicken Breast';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, '1 pc.' FROM Ingredients WHERE Ingredient_value = 'Onion';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, '2 cloves' FROM Ingredients WHERE Ingredient_value = 'Garlic';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, '1 tsp' FROM Ingredients WHERE Ingredient_value = 'Ginger';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, '2 pcs.' FROM Ingredients WHERE Ingredient_value = 'Tomato';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, '400 ml' FROM Ingredients WHERE Ingredient_value = 'Coconut Milk';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, '2 tbsp' FROM Ingredients WHERE Ingredient_value = 'Curry Powder';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, '2 tbsp' FROM Ingredients WHERE Ingredient_value = 'Vegetable Oil';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, 'to taste' FROM Ingredients WHERE Ingredient_value = 'Salt';
INSERT INTO Recipe_Ingredients (Recipe_id, Ingredient_id, Ingredient_count)
SELECT 5, Ingredient_id, 'to taste' FROM Ingredients WHERE Ingredient_value = 'Pepper';

INSERT INTO Steps (Step_value) VALUES
('Cut chicken breast into small pieces.'),
('Chop onion, garlic, and ginger finely.'),
('Heat oil in a pan and sauté onion, garlic, and ginger until fragrant.'),
('Add chicken and fry until golden.'),
('Add chopped tomatoes and curry powder, cook for 5 minutes.'),
('Pour in coconut milk, season with salt and pepper, simmer for 15-20 minutes until sauce thickens.'),
('Serve hot with rice.');

INSERT INTO Recipe_Steps (Recipe_id, Step_order, Step_id)
VALUES
(5, 1, 30),
(5, 2, 31),
(5, 3, 32),
(5, 4, 33),
(5, 5, 34),
(5, 6, 35),
(5, 7, 36);

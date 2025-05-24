
##All vegetarian recipes with potatoes:
```
- SELECT r.*
- FROM Receipt r
- JOIN Receipts_Ingredients ri ON r.Receipt_id = ri.Receipt_id
- JOIN Ingredients i ON ri.Ingredient_id = i.Ingredient_id
- JOIN Receipts_Tags rt ON r.Receipt_id = rt.Receipt_id
- JOIN Tags t ON rt.Tag_id = t.Tag_id
- WHERE t.Tag_value = 'Vegetarian'
-   AND i.Ingredient_value LIKE '%potato%';
```

##For Node.js and mysql2 the query structure will be as follows:
```
- const mysql = require('mysql2/promise');

- async function getVegetarianPotatoRecipes() {
-   const connection = await mysql.createConnection({ host: 'localhost', user: 'root', database: 'recipes' });
  
-   const [rows] = await connection.execute(`
-     SELECT r.*
-     FROM Receipt r
-     JOIN Receipts_Ingredients ri ON r.Receipt_id = ri.Receipt_id
-     JOIN Ingredients i ON ri.Ingredient_id = i.Ingredient_id
-     JOIN Receipts_Tags rt ON r.Receipt_id = rt.Receipt_id
-     JOIN Tags t ON rt.Tag_id = t.Tag_id
-     WHERE t.Tag_value = 'Vegetarian'
-       AND i.Ingredient_value LIKE '%potato%';
-   `);

-   console.log(rows);
-   await connection.end(); 
- }
```

##All cakes that do not require baking:
```
- SELECT r.*
- FROM Receipt r
- JOIN Receipts_Categories rc ON r.Receipt_id = rc.Receipt_id
- JOIN Categories c ON rc.Category_id = c.Category_id
- WHERE c.Category_value = 'Cake'
-   AND r.Is_baking_required = FALSE;
```

##All Vegan Japanese Recipes:
```
-   SELECT DISTINCT r.*
- FROM Receipt r
- JOIN Receipts_Tags rt1 ON r.Receipt_id = rt1.Receipt_id
- JOIN Tags t1 ON rt1.Tag_id = t1.Tag_id
- JOIN Receipts_Tags rt2 ON r.Receipt_id = rt2.Receipt_id
- JOIN Tags t2 ON rt2.Tag_id = t2.Tag_id
- WHERE t1.Tag_value = 'Vegan'
-   AND t2.Tag_value = 'Japanese';
```

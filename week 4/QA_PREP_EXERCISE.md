# Prep exercise week 4

As a preparation step for the upcoming Q&A, you need to work on the following exercise, which is based on the prep
exercise of the previous week.

## Exercise

Last week you updated your database to be normalized. Now that you have some more NoSQL knowledge, convert your database
to a document-based database. Think about the following:

- What are the collections?
- ANSWER: recipes, ingredients. I will go with recipes

- What information will you embed in a document and which will you store normalised?
- ANSWER:
```
{
  "_id": ObjectId("..."),
  "name": "Chocolate Cake",
  "cooking_time_minutes": 45,
  "calories": 400,
  "is_baking_required": true,
  "categories": [
    { "category_id": ObjectId("..."), "value": "Dessert" }
  ],
  "ingredients": [
    { "ingredient_id": ObjectId("..."), "value": "Flour", "count": "2 cups" },
    { "ingredient_id": ObjectId("..."), "value": "Sugar", "count": "1.5 cups" }
  ],
  "steps": [
    { "order": 1, "description": "Preheat the oven to 180°C" },
    { "order": 2, "description": "Mix flour and sugar" }
  ],
  "tags": ["easy", "baking", "vegetarian"]
}
```


## Discussion (Try to write answers to these questions in text, provide queries and commands when necessary)

- What made you decide when to embed information? What assumptions did you make?
- ANSWER:
- The easiest way is to put everything in the colllection. One plays, one call and procwssing the result. But if we think about DB like a system, we have to use somekind of trank here. Collection and documented db in general is a way to have some logical piaces that we cal collect in the different ways. So, ingredients better to have as a separate entity even if they are shot. We do not know how the system will grows in the future.  

- If you were given MySQL and MongoDB as choices to build the recipe's database at the beginning, which one would you.
  choose and why?
ANSWER:
- I prefer MySQL databases. Yes it is hard to setup in the start point, more work required, but as a system it is more subtle and responsive.

turkey_dish = Recipe.create({"name": "Turkey Peanutbutter Dish", category: "dinner", portions: 4 })
spagbol = Recipe.create({"name": "Spagbol", category: "dinner", portions: 4 })
quiche = Recipe.create({"name": "Ham & Spinach Quiche", category: "lunch", portions: 4 })
avoc_toast = Recipe.create( {"name": "Avocado Toast", category: "lunch", portions: 2 })


peanut_butter = Product.create({ "name": "peanut butter", unit: "g", category: "dry" })
rice = Product.create({ "name": "rice", unit: "g", category: "dry" })
turkey = Product.create({ "name": "turkey", unit: "g", category: "meat" })


ingredients = Ingredient.create([
                                  { recipe_id: turkey_dish.id, product_id: peanut_butter.id, quantity: 100 },
                                  { recipe_id: turkey_dish.id, product_id: rice.id, quantity: 100 },
                                  { recipe_id: turkey_dish.id, product_id: turkey.id, quantity: 700 }
                                ])


entries = Entry.create([
                         {"meal_type": "lunch", date: (Date.today + 1).iso8601, recipe_id: turkey_dish.id, max_out: true },
                         {"meal_type": "dinner", date: (Date.today + 1).iso8601, recipe_id: spagbol.id },
                         {"meal_type": "lunch", date: (Date.today + 2).iso8601},
                         {"meal_type": "dinner", date: (Date.today + 3).iso8601, max_out: true, pat_out: true },
                         {"meal_type": "lunch", date: (Date.today + 5).iso8601, pat_out: true },
                       ])
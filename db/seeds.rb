# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


turkey_dish = Recipe.create({"name": "Turkey Peanutbutter Dish", category: "dinner"})
spagbol = Recipe.create({"name": "Spagbol", category: "dinner"})
quiche = Recipe.create({"name": "Ham & Spinach Quiche", category: "lunch"})
avoc_toast = Recipe.create( {"name": "Avocado Toast", category: "lunch"})


peanut_butter = Product.create({ "name": "peanut butter" })
rice = Product.create({ "name": "rice" })
turkey = Product.create({ "name": "turkey" })


ingredients = Ingredient.create([
                                  { recipe_id: turkey_dish.id, product_id: peanut_butter.id },
                                  { recipe_id: turkey_dish.id, product_id: rice.id },
                                  { recipe_id: turkey_dish.id, product_id: turkey.id }
                                ])


entries = Entry.create([
                         {"meal_type": "lunch", date: (Date.today + 1).iso8601, recipe_id: turkey_dish.id, max_out: true },
                         {"meal_type": "dinner", date: (Date.today + 1).iso8601, recipe_id: spagbol.id },
                         {"meal_type": "lunch", date: (Date.today + 2).iso8601},
                         {"meal_type": "dinner", date: (Date.today + 3).iso8601, max_out: true, pat_out: true },
                         {"meal_type": "lunch", date: (Date.today + 5).iso8601, pat_out: true },
                       ])
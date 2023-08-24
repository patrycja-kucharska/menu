# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
recipes = Recipe.create([
                          {"name": "Spagbol", category: "dinner"},
                          {"name": "Ham & Spinach Quiche", category: "lunch"},
                          {"name": "Turkey Peanutbutter Dish", category: "dinner"},
                          {"name": "Avocado Toast", category: "lunch"},
                        ])

entries = Entry.create([
                         {"meal_type": "lunch", date: (Date.today + 1).iso8601, recipe_id: recipes.second.id, max_out: true },
                         {"meal_type": "lunch", date: (Date.today + 5).iso8601, pat_out: true },
                         {"meal_type": "lunch", date: (Date.today + 2).iso8601},
                         {"meal_type": "dinner", date: (Date.today + 1).iso8601, recipe_id: recipes.first.id },
                         {"meal_type": "dinner", date: (Date.today + 1).iso8601, max_out: true, pat_out: true },
                       ])
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_24_154602) do
  create_table "entries", force: :cascade do |t|
    t.string "meal_type"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.boolean "max_out", default: false
    t.boolean "pat_out", default: false
    t.index ["date", "meal_type"], name: "index_entries_on_date_and_meal_type", unique: true
    t.index ["recipe_id"], name: "index_entries_on_recipe_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "quantity", null: false
    t.integer "product_id", null: false
    t.integer "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_ingredient_on_recipe_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "unit", null: false
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_product_name", unique: true
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "portions", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "shopping_list_entries", force: :cascade do |t|
    t.integer "shopping_list_id", null: false
    t.integer "ingredient_id", null: false
    t.integer "multiplier", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopping_list_id", "ingredient_id"], name: "index_shopping_list_ingredient_id", unique: true
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.date "date", null: false
  end

  add_foreign_key "entries", "recipes"
  add_foreign_key "shopping_list_entries", "shopping_lists"
  add_foreign_key "shopping_list_entries", "ingredients"
  add_foreign_key"ingredients", "products"
  add_foreign_key"ingredients", "recipes"

end

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

ActiveRecord::Schema[7.0].define(version: 2023_08_23_171536) do
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

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  add_foreign_key "entries", "recipes"
end

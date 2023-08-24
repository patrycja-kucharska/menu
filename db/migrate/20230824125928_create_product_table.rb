class CreateProductTable < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.timestamps

      t.index [:name], name: "index_product_name", unique: true
    end

    create_table :ingredients do |t|
      t.string :name
      t.integer :product_id, null: false
      t.integer :recipe_id, null: false

      t.timestamps
      t.index [:recipe_id], name: "index_ingredient_on_recipe_id"
    end
  end
end

class CreateShoppingListEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_list_entries do |t|
      t.references :shopping_list_id, null: false
      t.references :ingredient_id, null: false
      t.integer :multiplier, default: 1

      t.timestamps

      t.index [:shopping_list_id, :ingredient_id], name: "index_shopping_list_ingredient_id", unique: true
    end
  end
end

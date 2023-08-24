class MakeEntriesUnique < ActiveRecord::Migration[7.0]
  def change
    add_index :entries, [:date, :meal_type], unique: true
  end
end

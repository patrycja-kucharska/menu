class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :meal_type
      t.date :date

      t.timestamps
    end
  end
end

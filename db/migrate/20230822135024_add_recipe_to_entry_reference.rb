class AddRecipeToEntryReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :entries, :recipe, foreign_key: true
  end
end

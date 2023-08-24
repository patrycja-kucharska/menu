class AddPresenceToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :max_out, :boolean, default: false
    add_column :entries, :pat_out, :boolean, default: false
  end
end

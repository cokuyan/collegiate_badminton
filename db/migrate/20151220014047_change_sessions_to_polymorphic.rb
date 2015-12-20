class ChangeSessionsToPolymorphic < ActiveRecord::Migration
  def change
    rename_column :sessions, :contact_id, :sessionable_id
    add_column :sessions, :sessionable_type, :string
    remove_index :sessions, :sessionable_id
    add_index :sessions, [:sessionable_id, :sessionable_type], unique: true
  end
end

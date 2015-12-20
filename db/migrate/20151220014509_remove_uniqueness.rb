class RemoveUniqueness < ActiveRecord::Migration
  def change
    remove_index :sessions, [:sessionable_id, :sessionable_type]
    add_index :sessions, [:sessionable_id, :sessionable_type]
  end
end

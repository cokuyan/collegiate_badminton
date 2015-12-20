class AddIndexToEmail < ActiveRecord::Migration
  def change
    remove_index :contacts, :email
    add_index :contacts, :email, unique: true
  end
end

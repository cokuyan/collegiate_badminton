class AddPasswordToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :password, :string, null: false
  end
end

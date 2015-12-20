class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
    end
    add_index :admins, :name, unique: true
    add_index :admins, :email, unique: true
  end
end

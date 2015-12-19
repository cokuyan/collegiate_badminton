class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :title, null: false
      t.boolean :current, default: false
      t.integer :school_id, null: false

      t.timestamps null: false
    end
    add_index :contacts, :school_id
    add_index :contacts, :email
  end
end

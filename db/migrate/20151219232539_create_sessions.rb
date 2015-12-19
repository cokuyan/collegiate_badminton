class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :contact_id, null: false
      t.string :session_token, null: false

      t.timestamps null: false
    end
    add_index :sessions, :contact_id
    add_index :sessions, :session_token, unique: true
  end
end

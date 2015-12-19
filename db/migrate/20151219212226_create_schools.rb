class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.integer :division_id, null: false
      t.integer :region_id, null: false

      t.timestamps null: false
    end
    add_index :schools, :name
    add_index :schools, :division_id
    add_index :schools, :region_id
  end
end

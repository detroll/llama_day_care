class CreateLlamas < ActiveRecord::Migration
  def change
    create_table :llamas do |t|
      t.string :name
      t.string :breed
      t.integer :age

      t.timestamps null: false
    end
  end
end

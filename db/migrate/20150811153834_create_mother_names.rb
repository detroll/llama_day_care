class CreateMotherNames < ActiveRecord::Migration
  def change
    create_table :mother_names do |t|
      t.string :mothername

      t.timestamps null: false
    end
  end
end

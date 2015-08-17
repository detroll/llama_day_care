class AddBreedToLlamas < ActiveRecord::Migration
  def change
    add_reference :llamas, :breed, index: true, foreign_key: true
  end
end

class RemoveBreedFromLlamas < ActiveRecord::Migration
  def change
    remove_column :llamas, :breed, :string
  end
end

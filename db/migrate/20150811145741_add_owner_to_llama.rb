class AddOwnerToLlama < ActiveRecord::Migration
  def change
    add_column :llamas, :owner, :string
  end
end

class RemoveOwnerFromLlama < ActiveRecord::Migration
  def change
    remove_column :llamas, :owner, :string
  end
end

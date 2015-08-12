class AddOwnerToLlamas < ActiveRecord::Migration
  def change
    add_reference :llamas, :owner, index: true, foreign_key: true
  end
end

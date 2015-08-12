class CreateBirthPlaces < ActiveRecord::Migration
  def change
    create_table :birth_places do |t|
      t.string :birth

      t.timestamps null: false
    end
  end
end

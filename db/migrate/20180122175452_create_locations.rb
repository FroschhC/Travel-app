class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :address, null: false
      t.float :latitude
      t.float :longitude
      t.integer :rating, null: false

      t.timestamps null:false
    end
  end
end

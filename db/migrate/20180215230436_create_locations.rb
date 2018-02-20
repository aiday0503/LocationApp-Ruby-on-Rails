class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end

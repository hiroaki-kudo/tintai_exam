class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :building
      t.text :money
      t.string :address
      t.text :years
      t.string :other
      t.timestamps
    end
  end
end

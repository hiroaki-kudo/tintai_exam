class CreateTrains < ActiveRecord::Migration[5.2]
  def change
    create_table :trains do |t|
      t.string :line
      t.string :station
      t.text :min
      t.timestamps
    end
  end
end

class AddHouseRefToTrains < ActiveRecord::Migration[5.2]
  def change
    add_reference :trains, :house, foreign_key: true
  end
end

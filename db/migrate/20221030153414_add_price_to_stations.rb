class AddPriceToStations < ActiveRecord::Migration[6.1]
  def change
    add_column :railway_stations, :price, :integer
  end
end

class AddIndexToStartEndStations < ActiveRecord::Migration[6.1]
  def change
    add_index :tickets, :start_station_id
    add_index :tickets, :end_station_id
  end
end

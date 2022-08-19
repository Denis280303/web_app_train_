# frozen_string_literal: true

# AddStation
class AddStationIndexToStationsRoute < ActiveRecord::Migration[6.1]
  def change
    add_column :railway_stations_routes, :station_index, :integer
  end
end

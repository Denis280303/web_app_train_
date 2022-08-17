class AddPositionToRailwayStationsRoutes < ActiveRecord::Migration[6.1]
  def change
    add_column :railway_stations_routes, :position, :integer
  end
end

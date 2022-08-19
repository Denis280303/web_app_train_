# frozen_string_literal: true

# RenameDate
class RenameColumnsOfDate < ActiveRecord::Migration[6.1]
  def change
    remove_column :railway_stations_routes, :departure_time
    remove_column :railway_stations_routes, :arival_time
    add_column :railway_stations_routes, :departure_time, :date
    add_column :railway_stations_routes, :arrival_time, :date
  end
end

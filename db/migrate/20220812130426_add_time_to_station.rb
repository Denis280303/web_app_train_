# frozen_string_literal: true

# AddTime
class AddTimeToStation < ActiveRecord::Migration[6.1]
  def change
    add_column :railway_stations_routes, :departure_time, :datetime
    add_column :railway_stations_routes, :arival_time, :datetime
  end
end

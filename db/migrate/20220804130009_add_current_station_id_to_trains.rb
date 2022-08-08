# frozen_string_literal: true

# AddCurrentStationIdToTrains
class AddCurrentStationIdToTrains < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :trains, :current_station
  end
end

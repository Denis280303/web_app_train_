# frozen_string_literal: true

# == Schema Information
#
# Table name: railway_stations_routes
#
#  id                 :integer          not null, primary key
#  railway_station_id :integer
#  route_id           :integer
#  station_index      :integer
#  position           :integer
#  departure_time     :date
#  arrival_time       :date
#

# RailwayStationsRoute
class RailwayStationsRoute < ActiveRecord::Base
  belongs_to :railway_station
  belongs_to :route

  validates :station_index, uniqueness: { scope: :route_id, allow_nil: true }
  validates :railway_station_id, uniqueness: { scope: :route_id }
end

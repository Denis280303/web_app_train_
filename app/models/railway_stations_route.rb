# frozen_string_literal: true

# == Schema Information
#
# Table name: railway_stations_routes
#
#  id                 :integer          not null, primary key
#  railway_station_id :integer
#  route_id           :integer
#

# RailwayStationsRoute
class RailwayStationsRoute < ActiveRecord::Base
  belongs_to :railway_station
  belongs_to :route
end

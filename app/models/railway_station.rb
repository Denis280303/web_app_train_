# frozen_string_literal: true

# == Schema Information
#
# Table name: railway_stations
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# RailwayStation
class RailwayStation < ActiveRecord::Base
  validates :title, presence: true

  has_many :railway_stations_routes
  has_many :trains, inverse_of: :current_station, foreign_key: 'current_station_id'
  has_many :routes, through: :railway_stations_routes

  scope :order_station, lambda {
    select('railway_stations.*, railway_stations_routes.station_index')
      .joins(:railway_stations_routes).order('railway_stations_routes.station_index').uniq
  }
  scope :ordered, -> { joins(:railway_stations_routes).order('railway_stations_routes.position').uniq }

  def update_position(route, position)
    station_route = station_route(route)
    station_route&.update(position: position)
  end

  def update_time(route, arrival_time, departure_time)
    station_route = station_route(route)
    station_route&.update(arrival_time: arrival_time, departure_time: departure_time)
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def arrival_time(route)
    station_route(route).try(:arrival_time)
  end

  def departure_time(route)
    station_route(route).try(:departure_time)
  end

  protected

  def station_route(route)
    @station_route = railway_stations_routes.where(route: route).first
  end
end

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

  scope :order_station, -> { 
    select('railway_stations.*, railway_stations_routes.station_index').
    joins(:railway_stations_routes).order('railway_stations_routes.station_index').uniq
  }
end

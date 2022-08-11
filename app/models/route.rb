# frozen_string_literal: true

# == Schema Information
#
# Table name: routes
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Route
class Route < ActiveRecord::Base
  validates :title, presence: true

  has_many :trains
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  scope :ordered_stations, -> { joins(:railway_stations_routes).order('railway_stations_routes.station_index')}
end

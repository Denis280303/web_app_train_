# frozen_string_literal: true

# == Schema Information
#
# Table name: trains
#
#  id                 :integer          not null, primary key
#  number             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  route_id           :integer
#  current_station_id :integer
#

# Train
class Train < ActiveRecord::Base
  validates :number, presence: true

  has_many :tickets
  has_many :wagons, inverse_of: :current_train, foreign_key: 'current_train_id'
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
end

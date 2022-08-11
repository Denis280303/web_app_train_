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
#  order_wagon        :boolean          default(FALSE)
#

# Train
class Train < ActiveRecord::Base
  validates :number, presence: true
  validates :order_wagon, inclusion: { in: [true, false] }

  has_many :tickets
  has_many :wagons, inverse_of: :current_train, foreign_key: 'current_train_id'
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id

  def seats_by_type(wagon_type, seats_type)
    wagons.where(type: wagon_type).sum(seats_type)
  end
end

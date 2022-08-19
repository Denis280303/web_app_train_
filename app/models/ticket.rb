# frozen_string_literal: true

# == Schema Information
#
# Table name: tickets
#
#  id                :integer          not null, primary key
#  train_id          :integer
#  route_id          :integer
#  user_id           :integer
#  user_first_name   :text
#  user_last_name    :text
#  user_fathers_name :text
#  user_passport     :text
#  start_station_id  :integer
#  end_station_id    :integer
#

# Ticket
class Ticket < ActiveRecord::Base
  belongs_to :train
  belongs_to :route
  belongs_to :user
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :end_station,   class_name: 'RailwayStation', foreign_key: :end_station_id
end

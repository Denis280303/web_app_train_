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
require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

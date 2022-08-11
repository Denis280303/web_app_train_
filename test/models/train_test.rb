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
require 'test_helper'

class TrainTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

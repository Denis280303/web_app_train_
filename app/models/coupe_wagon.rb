# frozen_string_literal: true

# == Schema Information
#
# Table name: wagons
#
#  id               :integer          not null, primary key
#  train_id         :integer
#  type_wag         :string
#  high_seats       :integer
#  low_seats        :integer
#  current_train_id :integer
#  number_wag       :integer
#  side_high_seats  :integer
#  side_low_seats   :integer
#  econom_seats     :integer
#  type             :string
#
class CoupeWagon < Wagon
  validates :high_seats, :low_seats, presence: true
end

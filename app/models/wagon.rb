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
class Wagon < ActiveRecord::Base
  belongs_to :current_train, class_name: 'Train', foreign_key: :current_train_id
  TYPES = %w(CoupeWagon CVWagon EconomWagon SeatWagon)

  validates :current_train, :number_wag, :type, presence: true
  validates :number_wag, uniqueness: { scope: :current_train_id }

  before_validation :add_number_wag

  scope :order_all_wagons,-> (train) { order("number_wag #{train.order_wagon ? 'ASC' : 'DESC' }") }

  protected

  def add_number_wag
    self.number_wag ||= self.max_number_wag + 1
  end

  def max_number_wag
    current_train.wagons.pluck(:number_wag).max || 0
  end
end

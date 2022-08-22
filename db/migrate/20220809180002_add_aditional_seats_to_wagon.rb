# frozen_string_literal: true

# AddSeats
class AddAditionalSeatsToWagon < ActiveRecord::Migration[6.1]
  def change
    add_column :wagons, :side_high_seats, :integer
    add_column :wagons, :side_low_seats, :integer
    add_column :wagons, :econom_seats, :integer
  end
end

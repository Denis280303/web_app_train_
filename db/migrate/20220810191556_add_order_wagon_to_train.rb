# frozen_string_literal: true

# AddOrderWagon
class AddOrderWagonToTrain < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :order_wagon, :boolean
  end
end

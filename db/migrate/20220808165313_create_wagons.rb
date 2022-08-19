# frozen_string_literal: true

# CreateWagons
class CreateWagons < ActiveRecord::Migration[6.1]
  def change
    create_table :wagons do |t|
      t.belongs_to :train
      t.string :type_wag
      t.integer :high_seats
      t.integer :low_seats
    end
  end
end

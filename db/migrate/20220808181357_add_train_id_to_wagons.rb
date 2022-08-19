# frozen_string_literal: true

# AddTrainIdToWagons
class AddTrainIdToWagons < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :wagons, :current_train
  end
end

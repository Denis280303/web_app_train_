class AddNumberToWagon < ActiveRecord::Migration[6.1]
  def change
    add_column :wagons, :number_wag, :integer
  end
end

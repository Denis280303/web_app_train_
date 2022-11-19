class AddIndexToWagonIdAndType < ActiveRecord::Migration[6.1]
  def change
    add_index :wagons, [:id, :type]
  end
end

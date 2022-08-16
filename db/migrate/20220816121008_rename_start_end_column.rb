class RenameStartEndColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :last_station
    remove_column :tickets, :base_station
    add_column :tickets, :start_station_id, :integer
    add_column :tickets, :end_station_id, :integer
  end
end

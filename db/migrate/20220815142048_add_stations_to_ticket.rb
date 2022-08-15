class AddStationsToTicket < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :base_station, :text
    add_column :tickets, :end_station, :text
  end
end

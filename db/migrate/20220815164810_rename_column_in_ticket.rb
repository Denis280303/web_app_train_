# frozen_string_literal: true

# RenameColumn
class RenameColumnInTicket < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :end_station
    add_column :tickets, :last_station, :string
  end
end

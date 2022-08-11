# frozen_string_literal: true

# AddRouteIdToTickets
class AddRouteIdToTickets < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :tickets, :route
  end
end

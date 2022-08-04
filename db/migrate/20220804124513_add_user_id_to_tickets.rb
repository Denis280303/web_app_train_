class AddUserIdToTickets < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :tickets, :user
  end
end

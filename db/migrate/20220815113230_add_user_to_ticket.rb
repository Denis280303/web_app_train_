# frozen_string_literal: true

# AddUser
class AddUserToTicket < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :user_first_name, :text
    add_column :tickets, :user_last_name, :text
    add_column :tickets, :user_fathers_name, :text
    add_column :tickets, :user_passport, :text
  end
end

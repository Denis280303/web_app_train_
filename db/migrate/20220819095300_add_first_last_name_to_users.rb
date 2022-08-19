# frozen_string_literal: true

# AddFirstLastName
class AddFirstLastNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
  end
end

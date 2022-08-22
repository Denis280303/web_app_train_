# frozen_string_literal: true

# AddType
class AddTypeWagon < ActiveRecord::Migration[6.1]
  def change
    add_column :wagons, :type, :string
  end
end

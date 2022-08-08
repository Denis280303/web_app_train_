# frozen_string_literal: true

# CreateRoutes
class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.string :title

      t.timestamps
    end
  end
end

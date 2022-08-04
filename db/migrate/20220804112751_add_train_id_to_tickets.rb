class AddTrainIdToTickets < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :tickets, :train
  end
end

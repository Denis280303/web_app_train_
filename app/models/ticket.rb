class Ticket < ActiveRecord::Base
  belongs_to :train
  belongs_to :route
  belongs_to :user
end

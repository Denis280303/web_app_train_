# frozen_string_literal: true

# == Schema Information
#
# Table name: tickets
#
#  id       :integer          not null, primary key
#  train_id :integer
#  route_id :integer
#  user_id  :integer
#

# Ticket
class Ticket < ActiveRecord::Base
  belongs_to :train
  belongs_to :route
  belongs_to :user
end

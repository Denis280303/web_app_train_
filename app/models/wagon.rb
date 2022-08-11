class Wagon < ActiveRecord::Base
  belongs_to :current_train, class_name: 'Train', foreign_key: :current_train_id
end
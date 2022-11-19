# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'rocky-retreat-68446.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

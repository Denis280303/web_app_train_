# frozen_string_literal: true

# ApplicationMailer
class ApplicationMailer < ActionMailer::Base
  default from: 'kozlovskyidenus@gmail.com'
  layout 'mailer'
end

# frozen_string_literal: true

# SessionsController
class SessionsController < Devise::SessionsController
  def create
    super do |resource|
      flash[:notice] = "HELLO #{resource.first_name}"
    end
  end
end

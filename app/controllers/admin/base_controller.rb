# frozen_string_literal: true

# module Admin
module Admin
  # BaseController
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action :check_admin

    protected

    def check_admin
      redirect_to root_path, alert: 'У вас немає прав для перегляду сторінки' unless current_user.admin?
    end
  end
end

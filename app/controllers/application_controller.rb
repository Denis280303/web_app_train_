# frozen_string_literal: true

# ApplicationController
class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url && resource.admin?
      wellcome_index_path
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
end

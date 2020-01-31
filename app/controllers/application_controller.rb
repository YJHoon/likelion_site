class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_permitted_attr = %i[name thumbnail user_type email passwork passwork_confirmation]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_permitted_attr)
    devise_parameter_sanitizer.permit(:account_update, keys: added_permitted_attr)
  end
end

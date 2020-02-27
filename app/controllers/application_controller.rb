class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def check_mentor_of object
    if !current_user.mentor?
      return
    end
  end

  protected

  def configure_permitted_parameters
    added_permitted_attr = %i[name thumbnail role mentor_type phone student_id gender]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_permitted_attr)
    devise_parameter_sanitizer.permit(:account_update, keys: added_permitted_attr)
  end
end

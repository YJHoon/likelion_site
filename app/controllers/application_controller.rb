require 'action_text'
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :prepare_exception_notifier
  
  helper ActionText::Engine.helpers
  
  def check_mentor_of object
    if !current_user.mentor?
      return
    end
  end

  def test_exception_notifier
    raise "Test Exception. This is a test exception to make sure the exception notifier is working."
  end

  protected
  
  def configure_permitted_parameters
    added_permitted_attr = %i[name thumbnail role mentor_type phone student_id gender]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_permitted_attr)
    devise_parameter_sanitizer.permit(:account_update, keys: added_permitted_attr)
  end
  
  private
  
  def prepare_exception_notifier
    request.env["exception_notifier.exception_data"] = {
      current_user: current_user
    }
  end
end

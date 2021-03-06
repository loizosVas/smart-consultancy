class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  #allow additional columns for devise users:
  def configure_permitted_parameters
    attributes = [:first_name, :last_name, :phone_number, :is_admin]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parametters, if: :devise_controller?
  before_filter :authenticate_user!

protected
  def configure_permitted_parametters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :password, :password_confirmation, :birthday, :city, :state, :gender])
  end
end

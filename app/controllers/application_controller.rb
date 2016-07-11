class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action 	:ensure_login
  helper_method 	:logged_in?, :current_user, :check_fields
  def check_fields
    errors.add(:base, 'Debe tener un numero de inventario o serie') if ninventary.blank? and nserie.blank?
    return true     
  end

  protected
  def ensure_login
   	redirect_to login_path unless session[:user_id]
  end

  def logged_in?
   	session[:user_id]
  end

  def current_user
   	@current_user ||= User.find(session[:user_id])
  end


end

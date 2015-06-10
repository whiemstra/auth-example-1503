class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?   #? at the end b/c I want it to return true or false, while for current_user, we want to return an object
    current_user && current_user.admin?   #make sure there's a current_user AND check if they are an admin
  end                                     #12 - error: undefined method `admin?' -- def in user model (regular user or admin user...)
end

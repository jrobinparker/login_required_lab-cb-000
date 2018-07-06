class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user 
    if !logged_in? 
      return session[:name]
    else 
      return nil
      redirect_to "sessions/new"
    end 
  end 
  
  def logged_in?
    session[:user_id]
  end 
  
end

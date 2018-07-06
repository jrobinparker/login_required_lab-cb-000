class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    user = User.find_by(params[:name])
    session[:user_id] = user.id
    re
  end 
  
  
end

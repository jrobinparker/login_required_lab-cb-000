class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    user = User.find_by(params[:name])
    session[:name] = user.name
  end 
  
  
end

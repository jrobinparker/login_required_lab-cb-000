class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    user = User.find_by(name: params[:name])
    session[:name] = user.name
  end 
  
  
end

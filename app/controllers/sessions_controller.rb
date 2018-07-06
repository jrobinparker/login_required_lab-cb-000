class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    user = User.find_by(params[:email])
  end 
  
  
end

class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    @user = User.find_by(:name, params[:name])
    session[:id] = user.name 
    redirect_to "secrets/show"
  end 

  
end

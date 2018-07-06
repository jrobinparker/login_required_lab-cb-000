class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    @user = User.new 
    @user.name = User.name
    if @user.save 
      redirect_to "secrets/show"
    else 
      render :new 
    end 
  end 

  
end

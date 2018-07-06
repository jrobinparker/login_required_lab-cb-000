class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    @user = User.new 
    @user.name = params([:name])
    if @user.save 
      redirect_to "secrets/show"
    else 
      render :new 
    end 
  end 
  
      user = User.find_by(name: params[:name])
    session[:name] = user.name
  
end

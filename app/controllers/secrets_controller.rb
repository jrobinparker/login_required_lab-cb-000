class SecretsController < ApplicationController
  before_ filter :authentication_required 

  
  def show
  end 
  
end

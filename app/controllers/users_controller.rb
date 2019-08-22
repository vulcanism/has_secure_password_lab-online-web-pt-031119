class UsersController < ApplicationController
  
  def new
    @user = User.new
    render :signup
  end
  
  def create
    
  end
  
  def welcome
    render :welcome
  end
  
end
class UsersController < ApplicationController
  
  def new
    @user = User.new
    render :signup
  end
  
  def create
    user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to '/home'
      else
        redirect_to '/signup'
      end
  end
  
  def welcome
    render :welcome
  end
  
   private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
  
end
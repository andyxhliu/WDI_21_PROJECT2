class UsersController < ApplicationController 
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :description, :profile_image, :gender)
  end
end

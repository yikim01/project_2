class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path
    else
      render 'new'
  end
end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end

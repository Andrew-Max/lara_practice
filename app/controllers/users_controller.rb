class UsersController < ApplicationController

  #get /users
  def index
    @users  = User.all
  end

  #get /users/:id
  def show
    @user = User.find(params[:id])
  end

  #get /users/new
  def new
    @user = User.new
  end

  #post /users
  def create
    user = User.create(user_params)
    redirect_to user_path(user)
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:email, :name)
  end
end

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
    @user = User.create(user_params)
    redirect_to user_path(user)
  end

  #get /users/:id/edit
  def edit
    @user = User.find(params[:id])
  end

  #put /users/:id/
  def update
    @user = User.find(params[:id])

    @user.update_attributes(user_params)
      if @user.valid?
        redirect_to user_path(@user)
      else
    render :edit, status: :unprocessable_entity
    end
  end

  #delete /user/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :name)
  end
end

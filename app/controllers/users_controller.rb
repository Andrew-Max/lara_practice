class UsersController < ApplicationController

  #get /users
  def index
    @users  = User.all
  end

  #get /users/:id
  def show
    @user = User.find(params[:id])
  end
end

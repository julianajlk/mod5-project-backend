class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user.update(user_params)
    render json: @user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :organizationable_id, :organizationable_type)
  end
end

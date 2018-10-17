class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    # @user.picture.attach(params[:picture])
    render json: @user

  end

  def update
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user.destroy
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :picture, :dob, :phone, :location, :position, :department, :organizationable_id, :organizationable_type)
  end
end

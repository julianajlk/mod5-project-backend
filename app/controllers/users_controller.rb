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
    @user = User.new(user_params)
    #url_for transforms the blob that was created when the user was created into an url, which is added to @user.
    @user.url = url_for(@user.avatar.attachment.blob)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.errors.full_message}, status: :unprocessible_entity
    end
  end

#create method for when using both createUser() and uploadAvatar() to separately first create the user, then add the avatar on a patch/update in my actions.js
  # def create
  #   @user = User.create(user_params)
  #   if @user.save
  #     render json: @user, status: :accepted
  #   else
  #     render json: {errors: @user.errors.full_message}, status: :unprocessible_entity
  #   end
  # end

  def update
    @user.update(user_params)
    @user.url = url_for(@user.avatar.attachment.blob)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.errors.full_message}, status: :unprocessible_entity
    end
  end

  def destroy
    User.find(params[:id]).avatar.purge
    render json: User.find(params[:id]).destroy
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    #require(:user) means needs a key :user
    params.permit(:name, :email, :avatar, :url, :dob, :phone, :location, :position, :department, :organizationable_id, :organizationable_type)

  end
end

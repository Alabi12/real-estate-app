class Admin::UsersController < ApplicationController
  before_action :require_admin
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path, notice: 'User updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice: 'User deleted successfully.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :admin)
  end
end

class Admins::UsersController < ApplicationController

	before_action :authenticate_admin!
	before_action :ensure_user, only: [:show, :edit, :update]

  def index
  	@users = User.page(params[:page])
  end

  def show
  end

  def edit
  end

  def update
  	if @user.update(user_params)
       flash[:success] = "会員情報を変更しました"
       redirect_to admins_users_path
    else
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :user_status)
  end

  def ensure_user
    @user = User.find(params[:id])
  end
end

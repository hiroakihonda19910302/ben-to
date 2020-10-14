class Publics::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def edit
  end

  def unsubscribe
  end

  def update
  	if @user.update(user_params)
      flash[:success] = "お客様情報が更新されました！"
      redirect_to users_path
    else
      flash[:danger] = 'お客様の情報を更新出来ませんでした。空欄の箇所はありませんか？'
      render :edit
    end
  end

  def withdraw
  	current_user.update(user_status: true)
    current_user.destroy
    reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to top_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image)
  end

  def set_user
    @user = current_user
  end
end

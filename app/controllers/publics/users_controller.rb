class Publics::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show
    @favorites = Favorite.where(user_id: current_user.id).page(params[:page]).per(9)
    @posts = Post.where(user_id: current_user.id).page(params[:page]).per(6)
  end

  def edit
  end

  def unsubscribe
  end

  def update
  	if @user.update(user_params)
      flash[:success] = "ユーザー情報が更新されました！"
      redirect_to users_path
    else
      flash[:danger] = 'ユーザー情報を更新出来ませんでした。空欄の箇所はありませんか？'
      render :edit
    end
  end

  def withdraw
  	current_user.update(user_status: true)
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

class Admins::PostsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @genres = Genre.where(genre_status: true).page(params[:page]).per(10)
    @posts = Post.all
    if params[:search] != nil
      @posts = Post.where(genre_id: params[:search]).order(created_at: :desc).page(params[:page]).per(9)
    elsif params[:title_search] != nil
      @posts = Post.where('title LIKE ?', "%#{params[:title_search]}%").order(created_at: :desc).page(params[:page]).per(9)
    else
      @posts = Post.all.order(created_at: :desc).page(params[:page]).per(9)
    end
  end

  def show
    @post = Post.find(params[:id])
    if @post.reviews.blank?
      @average_review = 0
    else
      @average_review = @post.reviews.average(:rate).round(1)
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to admins_posts_path
  end

  def ranking
    @all_ranks = Post.find(Good.group(:post_id).order('count(post_id) desc').pluck(:post_id))
  end
end

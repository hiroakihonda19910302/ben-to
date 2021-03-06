class Publics::PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :search]
  before_action :set_genres, only: [:new, :edit, :index, :create, :update]
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]

  def index
    @posts = Post.where(is_active: true).order(created_at: :desc).page(params[:page]).per(9)
    if params[:search] != nil
      @posts = Post.where(genre_id: params[:search]).order(created_at: :desc).page(params[:page]).per(9)
    elsif params[:title_search] != nil
      @posts = Post.where('title LIKE ?', "%#{params[:title_search]}%").order(created_at: :desc).page(params[:page]).per(9)
    else
      @posts = Post.where(is_active: true).order(created_at: :desc).page(params[:page]).per(9)
    end
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
    @review = Review.new

    if @post.reviews.blank?
      @average_review = 0
    else
      @average_review = @post.reviews.average(:rate).round(1)
    end
  end

  def ranking
    @all_ranks = Post.find(Good.group(:post_id).order('count(post_id) desc').limit(10).pluck(:post_id))
  end

  def search
    @genres = Genre.where(genre_status: true).page(params[:page]).per(12)
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "新規投稿しました"
      tags = Vision.get_image_data(@post.post_image)
      tags.each do |tag|
        @post.tags.create(name: tag)
      end
      redirect_to posts_path
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "投稿を更新しました"
      @post.tags.destroy_all
      tags = Vision.get_image_data(@post.post_image)
      tags.each do |tag|
        @post.tags.create(name: tag)
      end
      redirect_to post_path(@post)
    else
      render "edit"
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :post_image, :body, :genre_id)
  end

  def set_genres
    @genres = Genre.where(genre_status: true)
  end

  def ensure_correct_user
    @post = Post.find(params[:id])
    unless @post.user == current_user
      redirect_to posts_path
    end
  end

end

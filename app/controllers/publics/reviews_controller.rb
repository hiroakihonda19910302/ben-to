class Publics::ReviewsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@post = Post.find(params[:post_id])
  end

  def create
  	@post = Post.find(params[:post_id])
		@review = Review.new(review_params)
 		@review.user_id = current_user.id
		@review.post_id = @post.id
    @review.score = Language.get_data(review_params[:review])  #この行を追加
		@review.save
    redirect_to post_reviews_path
  end

  def destroy
  	Review.find_by(id: params[:id], post_id: params[:post_id]).destroy
		redirect_to request.referer
  end

  private
  	def review_params
    	params.require(:review).permit(:title, :review, :rate)
 	end
end

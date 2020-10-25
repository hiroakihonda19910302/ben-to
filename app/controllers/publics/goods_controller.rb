class Publics::GoodsController < ApplicationController
    before_action :authenticate_user!
    
	def create
		@post = Post.find(params[:post_id])
        good = @post.goods.new(user_id: current_user.id)
        good.save
	end

	def destroy
		@post = Post.find(params[:post_id])
        good = @post.goods.find_by(user_id: current_user.id)
    	good.destroy

	end
end

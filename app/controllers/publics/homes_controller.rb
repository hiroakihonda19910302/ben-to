class Publics::HomesController < ApplicationController
  def about
  end

  def top
  	@posts = Post.where(is_active: true).order(created_at: :desc).limit(3)
  	@all_ranks = Post.find(Good.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
  end
end

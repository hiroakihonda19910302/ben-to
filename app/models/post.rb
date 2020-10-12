class Post < ApplicationRecord
	belongs_to :user
	belongs_to :genre
	has_many :favorites, dependent: :destroy
	has_many :reviews, dependent: :destroy
	has_many :goods, dependent: :destroy

	attachment :post_image, destroy: false

	validates :title, presence: true, length: {maximum:30,minimum:2}
	validates :body, presence: true, length: {maximum:250,minimum:2}

	def favorited_by?(user)
		favorites.where(user_id: user).exists?
	end

	def gooded_by?(user)
		goods.where(user_id: user).exists?
	end
end

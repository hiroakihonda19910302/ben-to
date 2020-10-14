class Review < ApplicationRecord
	belongs_to :user
	belongs_to :post

	validates :title, presence: true, length: {maximum:30,minimum:2}
	validates :review, presence: true, length: {maximum:250,minimum:2}
	validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
end

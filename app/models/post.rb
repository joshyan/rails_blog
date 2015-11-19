class Post < ActiveRecord::Base
	belongs_to :category

	validates :title, presence: true, length: { maximum: 50 }
	validates :content, presence: true, length: { minimum: 5 }
end

class Review < ActiveRecord::Base
	validates_presence_of :content, :reviewer
	has_many :votes
	has_many :comments
	belongs_to :reviewer, class_name: 'User'
	belongs_to :restaurant
end

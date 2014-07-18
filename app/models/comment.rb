class Comment < ActiveRecord::Base
	validates_presence_of :content, :review_id
	has_many :votes
	has_many :replies, foreign_key: "parent_id", class_name: "Comment"
	belongs_to :review
	belongs_to :parent, class_name: 'Comment'
	belongs_to :commenter, class_name: 'User'
end

class Vote < ActiveRecord::Base
	validates_presence_of :voter
	belongs_to :comment
	belongs_to :restaurant
	belongs_to :voter, class_name: 'User'
	belongs_to :review
end

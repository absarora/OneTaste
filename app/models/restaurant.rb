class Restaurant < ActiveRecord::Base
	validates_uniqueness_of :street_address
	validates_presence_of :name, :state, :city
	has_many :reviews
	has_many :votes
	belongs_to :creator, class_name: 'User'

	def self.search(wtf)
		Restaurant.all.each do |restaurant|
			[:category, :name, :city, :street_address, :state].each do |wat|
				restaurant[wat] == wtf ? restaurant : next
			end
		end
	end	
end

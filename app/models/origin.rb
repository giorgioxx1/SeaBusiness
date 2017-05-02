class Origin < ApplicationRecord
	validates :name,presence:true
	before_save :normalize_name, unless: "name.nil?"
	has_one :travel
	has_many :merchandises
	has_many :fees
		
	def normalize_name
		name.capitalize!
	end

end


		
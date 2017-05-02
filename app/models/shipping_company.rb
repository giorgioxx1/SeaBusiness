class ShippingCompany < ApplicationRecord
	validates :name,presence:true
	has_many :bill_of_lading_masters
	has_many :ships

	def self.show
		shipping ={}
		ShippingCompany.all.each do|l|
			shipping[l.name] = l.bl_masters
		end
		puts shipping
	end	
end

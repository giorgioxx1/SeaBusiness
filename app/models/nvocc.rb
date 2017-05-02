class Nvocc < ApplicationRecord
	validates :name,presence:true
	has_many :fees
	has_many :bill_of_lading_houses
	has_many :bill_of_lading_masters
end

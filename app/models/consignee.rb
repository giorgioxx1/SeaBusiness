class Consignee < ApplicationRecord
	validates :name,presence:true
	has_many :bill_of_lading_houses
end

class BillOfLadingMaster < ApplicationRecord
  validates :destination,presence:true
  belongs_to :travel
  belongs_to :shipping_company
  belongs_to :nvocc
  has_many :bill_of_landing_houses
  has_many :containers	
end

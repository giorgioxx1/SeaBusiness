class BillOfLadingHouse < ApplicationRecord
  validates :destination,presence:true
  belongs_to :travel
  belongs_to :shipping_company
  belongs_to :nvocc
  belongs_to :consignee
  has_many :containers
end

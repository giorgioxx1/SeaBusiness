class Container < ApplicationRecord
  validates :name,presence:true
  belongs_to :merchandise
  belongs_to :bill_of_lading_master
  belongs_to :bill_of_lading_house
  belongs_to :shipping_company
end

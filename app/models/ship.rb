class Ship < ApplicationRecord
  validates :name,presence:true
  belongs_to :shipping_company
  has_many :travels
end

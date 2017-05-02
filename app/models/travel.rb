class Travel < ApplicationRecord
  belongs_to :origin
  belongs_to :ship
  has_many :bill_of_lading_houses
  has_many :bill_of_lading_masters
end

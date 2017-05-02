class Merchandise < ApplicationRecord
  validates :name,presence:true
  validates :details,presence:true
  belongs_to :origin
  has_many :containers
end

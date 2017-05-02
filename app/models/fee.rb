class Fee < ApplicationRecord
  validates :price,presence:true
  belongs_to :origin
  belongs_to :nvocc
end

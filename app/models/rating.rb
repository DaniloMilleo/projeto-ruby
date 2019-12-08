class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validates :nota, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10}
  validates :comment, length: { in: 5..70 }
end	

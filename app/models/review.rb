class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5)
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING }
end

#   { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
# end

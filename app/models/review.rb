class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  # validates :raiting, numericality: { greater_than_or_equal_to: 0, :less_than_or_equal_to 5 }

end

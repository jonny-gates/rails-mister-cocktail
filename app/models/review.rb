class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, presence: true
  validates :cocktail, presence: true
  validates :rating, inclusion: { in: (0..5) }
end

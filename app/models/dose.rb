class Dose < ApplicationRecord
  belongs_to :ingrediant
  belongs_to :cocktail
end

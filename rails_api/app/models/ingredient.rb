class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :measure

  validates_presence_of :name
end

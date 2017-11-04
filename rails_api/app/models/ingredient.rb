class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :measure

  def to_s
    pre = "#{quantity} #{measure.abbrev} #{name}"
    prep_notes.present? ? "#{pre}, #{prep_notes}" : pre
  end
end

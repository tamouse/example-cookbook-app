class Step < ApplicationRecord
  belongs_to :recipe

  before_create :set_default_sequence

  def to_s
    "#{sequence}. #{description}"
  end

  private

  def set_default_sequence
    unless sequence.present?
      self.sequence = recipe&.steps&.map(&:sequence)&.max.to_i + 1
    end
  end
end

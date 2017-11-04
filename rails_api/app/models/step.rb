class Step < ApplicationRecord
  belongs_to :recipe

  before_create :set_default_sequence

  def to_s
    "#{sequence}. #{description}"
  end

  private

  def set_default_sequence
    unless sequence.present?
      # NOTE: had to add the `.compact` because some of the step sequences would be nil (like the current one!)
      self.sequence = recipe&.steps&.map(&:sequence)&.compact&.max.to_i + 1
    end
  end
end

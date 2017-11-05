class Step < ApplicationRecord
  belongs_to :recipe

  before_save :set_default_sequence

  validates_presence_of :description

  private

  def set_default_sequence
    unless sequence_number.present?
      self.sequence_number = recipe&.steps&.map(&:sequence_number)&.compact&.max.to_i + 1
    end
  end

end

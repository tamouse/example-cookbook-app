class Recipe < ApplicationRecord
  belongs_to :user

  has_many :ingredients, dependent: :delete_all
  accepts_nested_attributes_for :ingredients

  has_many :steps, dependent: :delete_all
  accepts_nested_attributes_for :steps

  validates_presence_of :name

  def to_param
    "#{id}-#{name.parameterize}"
  end
end

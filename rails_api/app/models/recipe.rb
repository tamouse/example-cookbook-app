class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :delete_all
  validates_presence_of :name

  def to_param
    "#{id}-#{name.parameterize}"
  end
end

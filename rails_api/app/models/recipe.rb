class Recipe < ApplicationRecord
  belongs_to :user
  validates_presence_of :name

  def to_param
    "#{id}-#{name.parameterize}"
  end
end

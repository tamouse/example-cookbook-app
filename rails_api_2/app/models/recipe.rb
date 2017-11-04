class Recipe < ApplicationRecord
  belongs_to :user

  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: proc {|attributes| attributes['name'].blank?}

  validates_presence_of :name

end

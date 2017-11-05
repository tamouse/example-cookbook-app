class Recipe < ApplicationRecord
  belongs_to :user

  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: proc {|attributes| attributes['name'].blank?}

  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :steps, reject_if: proc {|attributes| attributes['description'].blank?}

  validates_presence_of :name

end

require 'faker'

FactoryGirl.define do
  factory :ingredient do
    name {Faker::Food.ingredient}
    quantity {Faker::Number.between(1,10)}
    measure {Measure.all.sample}
    prep_notes {%w[chopped peeled washed mashed crushed].sample}
  end
end

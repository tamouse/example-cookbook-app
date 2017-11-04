require "faker"

FactoryBot.define do
  factory :ingredient do
    name {Faker::Food.ingredient}
    quantity "9.99"
    measure {Measure.first}
  end
end

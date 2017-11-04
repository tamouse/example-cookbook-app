require "faker"

FactoryBot.define do
  factory :recipe do
    name { Faker::Food.dish }
    factory :recipe_with_user do
      user
    end
  end
end

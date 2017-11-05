require "faker"

FactoryBot.define do
  factory :step do
    description {Faker::Lorem.sentences(rand(3)+1).join(" ")}
  end
end

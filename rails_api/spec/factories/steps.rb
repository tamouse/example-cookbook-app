require 'faker'


FactoryGirl.define do
  factory :step do
    description {Faker::Lorem.sentence}

    factory :step_with_sequence do
      sequence :sequence do |n|
        n
      end
    end
  end
end

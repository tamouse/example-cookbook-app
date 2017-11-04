require "faker"

FactoryBot.define do
  factory :user do
    email {Faker::Internet.email}

    factory :user_with_password do
      password "Passw0rd"
      password_confirmation "Passw0rd"
    end
  end
end

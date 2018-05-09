require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    username 'onplane247'
    first_name 'jack'
    last_name 'sparrow'
    date_of_birth '3-2-1971'
    password 'password'
    password_confirmation 'password'
  end

end

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@happycompany.com" }
    sequence(:first_name) { |n| "first_name_#{n}" }
    sequence(:last_name) { |n| "last_name_#{n}" }
    password 'secret33'
    password_confirmation 'secret33'
  end
end

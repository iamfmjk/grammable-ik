FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "some#{n}@gmail.com"
    end
    password { "secretPassword" }
    password_confirmation { "secretPassword" }
  end
end

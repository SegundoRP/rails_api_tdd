FactoryBot.define do
  factory :token do
    token { "MyString" }
    expires_at { Faker::Date.in_date_period }
  end
end

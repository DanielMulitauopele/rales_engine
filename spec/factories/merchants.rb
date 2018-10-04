FactoryBot.define do
  factory :merchant do
    name { Faker::Company.name }
    created_at { "2012-03-27 14:54:09 UTC" }
    updated_at { "2012-03-30 12:14:09 UTC" }
  end
end

FactoryBot.define do
  factory :item do
    name { Faker::Commerce.product_name }
    description { Faker::Friends.quote }
    unit_price { rand(1..1000) }
    created_at { "2012-03-27 14:54:09 UTC" }
    updated_at { "2012-03-30 12:14:09 UTC" }
    merchant
  end
end

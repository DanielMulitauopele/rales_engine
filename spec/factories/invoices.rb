FactoryBot.define do
  factory :invoice do
    status { "shipped" }
    created_at { "2012-03-27 14:54:09 UTC" }
    updated_at { "2012-03-30 12:14:09 UTC" }
    customer
    merchant
  end
end

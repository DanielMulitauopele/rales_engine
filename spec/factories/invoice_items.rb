FactoryBot.define do
  factory :invoice_item do
    quantity { rand(1..100) }
    unit_price { rand(1..10000000) }
    created_at { "2012-03-27 14:54:09 UTC" }
    updated_at { "2012-03-30 12:14:09 UTC" }
    invoice
    item
  end
end

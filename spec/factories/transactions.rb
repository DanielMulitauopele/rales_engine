FactoryBot.define do
  factory :transaction do
    credit_card_number { "4242424256567878" }
    credit_card_expiration_date { "2018-10-03 15:10:23" }
    result { "success" }
    created_at { "2012-03-27 14:54:09 UTC" }
    updated_at { "2012-03-30 12:14:09 UTC" }
    invoice
  end
end

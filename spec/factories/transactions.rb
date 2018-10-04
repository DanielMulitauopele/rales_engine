FactoryBot.define do
  factory :transaction do
    credit_card_number { "4242424256567878" }
    credit_card_expiration_date { "2018-10-03 15:10:23" }
    result { "success" }
    invoice
  end
end

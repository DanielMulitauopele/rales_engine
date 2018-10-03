FactoryBot.define do
  factory :transaction do
    invoice { nil }
    credit_card_number { "" }
    credit_card_expiration_date { "2018-10-03 15:10:23" }
    result { "MyText" }
  end
end

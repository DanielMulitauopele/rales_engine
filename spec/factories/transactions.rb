FactoryBot.define do
  factory :transaction do
    invoice { nil }
    credit_card_number { 1 }
    credit_card_expiration_date { "2018-10-02 21:36:08" }
    result { "MyText" }
  end
end

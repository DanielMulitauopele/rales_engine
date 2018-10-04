require 'rails_helper'

describe 'Transaction Search Controller' do
  it "should find transaction by id" do
    id = create(:transaction).id

    get "/api/v1/transactions/find?id=#{id}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction['id']).to eq(id)
  end
  it "should find transaction by invoice_id" do
    invoice_id = create(:transaction).invoice_id

    get "/api/v1/transactions/find?invoice_id=#{invoice_id}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction['invoice_id']).to eq(invoice_id)
  end
  it "should find transaction by credit_card_number" do
    credit_card_number = create(:transaction).credit_card_number

    get "/api/v1/transactions/find?credit_card_number=#{credit_card_number}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction['credit_card_number']).to eq(credit_card_number)
  end
  it "should find transaction by result" do
    result = create(:transaction).result

    get "/api/v1/transactions/find?result=#{result}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction['result']).to eq(result)
  end
  it "should find transaction by created_at" do
    created_at = create(:transaction).created_at

    get "/api/v1/transactions/find?created_at=#{created_at}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction['result']).to eq(Transaction.last.result)
  end
  it "should find transaction by updated_at" do
    updated_at = create(:transaction).updated_at

    get "/api/v1/transactions/find?updated_at=#{updated_at}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction['result']).to eq(Transaction.last.result)
  end
end

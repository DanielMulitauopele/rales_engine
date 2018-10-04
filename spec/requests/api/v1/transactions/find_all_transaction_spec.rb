require 'rails_helper'

describe 'Transaction Search Controller' do
  it "should find all transactions by id" do
    trans1, trans2, trans3 = create_list(:transaction, 3)

    get "/api/v1/transactions/find_all?id=#{trans1.id}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction.first['id']).to eq(trans1.id)
  end
  it "should find all transactions by invoice_id" do
    trans1, trans2, trans3 = create_list(:transaction, 3)

    get "/api/v1/transactions/find_all?invoice_id=#{trans1.invoice_id}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction.first['invoice_id']).to eq(trans1.invoice_id)
  end
  it "should find all transactions by credit_card_number" do
    trans1, trans2, trans3 = create_list(:transaction, 3)

    get "/api/v1/transactions/find_all?credit_card_number=#{trans1.credit_card_number}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction.first['credit_card_number']).to eq(trans1.credit_card_number)
  end
  it "should find all transactions by result" do
    trans1, trans2, trans3 = create_list(:transaction, 3)

    get "/api/v1/transactions/find_all?result=#{trans1.result}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction.first['result']).to eq(trans1.result)
  end
  it "should find all transactions by created_at" do
    trans1, trans2, trans3 = create_list(:transaction, 3)

    get "/api/v1/transactions/find_all?created_at=#{trans1.created_at}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction.first['id']).to eq(trans1.id)
  end
  it "should find all transactions by updated_at" do
    trans1, trans2, trans3 = create_list(:transaction, 3)

    get "/api/v1/transactions/find_all?updated_at=#{trans1.updated_at}"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction.first['id']).to eq(trans1.id)
  end
end

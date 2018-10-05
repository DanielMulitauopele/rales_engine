require 'rails_helper'

describe 'Transactions Random Controller' do
  it "should select random transaction from database" do
    transaction1, transaction2, transaction3 = create_list(:transaction, 3)

    get "/api/v1/transactions/random"

    transaction = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transaction).to be_an_instance_of(Hash)
    expect(transaction).to_not be_an_instance_of(Array)
  end
end

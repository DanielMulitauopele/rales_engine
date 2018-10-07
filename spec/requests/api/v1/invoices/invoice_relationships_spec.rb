require 'rails_helper'

describe 'Invoice Relationships Controller' do
  it "should display all transaction associated with invoice" do
    invoice1 = create(:invoice)
    trans_1 = create(:transaction, invoice_id: invoice1.id)
    trans_2 = create(:transaction, invoice_id: invoice1.id)
    trans_3 = create(:transaction)

    get "/api/v1/invoices/#{invoice1.id}/transactions"

    transactions = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transactions).to be_an_instance_of(Array)
    expect(transactions.count).to eq(2)
  end
end

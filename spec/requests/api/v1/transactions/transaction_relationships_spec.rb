require 'rails_helper'

describe 'Transactions Relationships Controllers' do
  it "should display the invoice associated with the transaction" do
    invoice1 = create(:invoice)
    trans1 = create(:transaction, invoice_id: invoice1.id)

    get "/api/v1/transactions/#{trans1.id}/invoice"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice).to be_an_instance_of(Hash)
    expect(invoice['id']).to eq(invoice1.id)
  end
end

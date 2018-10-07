require 'rails_helper'

describe 'Invoice Items Relationships Controller' do
  it "should display all invoices associated with invoice item" do
    invoice1 = create(:invoice)
    inv_item1 = create(:invoice_item, invoice_id: invoice1.id)

    get "/api/v1/invoice_items/#{inv_item1.id}/invoice"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice).to be_an_instance_of(Hash)
    expect(invoice['id']).to eq(invoice1.id)
  end
end

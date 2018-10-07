require 'rails_helper'

describe 'Customer Invoices Controller' do
  it "should display all invoices associated with specific customer" do
    customer1 = create(:customer)
    invoice1 = create(:invoice, customer_id: customer1.id)
    invoice2 = create(:invoice, customer_id: customer1.id)
    invoice3 = create(:invoice)

    get "/api/v1/customers/#{customer1.id}/invoices"

    invoices = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoices).to be_an_instance_of(Array)
    expect(invoices.count).to eq(2)
  end
end

require 'rails_helper'

describe 'Invoice Random Controller' do
  it "should select random invoice from database" do
    invoice1, invoice2, invoice3 = create_list(:invoice, 3)

    get "/api/v1/invoices/random"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice).to be_an_instance_of(Hash)
    expect(invoice).to_not be_an_instance_of(Array)
  end
end

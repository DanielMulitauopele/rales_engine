require 'rails_helper'

describe 'Invoice Items Random Controller' do
  it "should select random invoice_item from database" do
    invoice_item1, invoice_item2, invoice_item3 = create_list(:invoice_item, 3)

    get "/api/v1/invoice_items/random"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item).to be_an_instance_of(Hash)
    expect(invoice_item).to_not be_an_instance_of(Array)
  end
end

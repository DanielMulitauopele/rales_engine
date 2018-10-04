require 'rails_helper'

describe 'Invoice Item Search Controller' do
  it "should find invoice item by id" do
    id = create(:invoice_item).id

    get "/api/v1/invoice_items/find?id=#{id}"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item['id']).to eq(id)
  end
end

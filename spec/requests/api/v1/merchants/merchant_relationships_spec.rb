require 'rails_helper'

describe 'Merchant Relationships Controller' do
  it "should return all items associated with specific merchant" do
    merchant1 = create(:merchant)
    item1 = create(:item, merchant_id: merchant1.id)
    item2 = create(:item, merchant_id: merchant1.id)
    item3 = create(:item, merchant_id: merchant1.id)
    item4 = create(:item)

    get "/api/v1/merchants/#{merchant1.id}/items"

    items = JSON.parse(response.body)

    expect(response).to be_successful
    expect(items).to be_an_instance_of(Array)
    expect(items.count).to eq(3)
  end
end

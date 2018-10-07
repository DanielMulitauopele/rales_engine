require 'rails_helper'

describe 'Item Relationships Controllers' do
  it "should display all invoice items associated with item" do
    invoice1, invoice2, invoice3 = create_list(:invoice, 3)
    item1 = create(:item)
    item2 = create(:item)
    inv_item1 = create(:invoice_item, invoice_id: invoice1.id, item_id: item1.id)
    inv_item2 = create(:invoice_item, invoice_id: invoice2.id, item_id: item1.id)
    inv_item3 = create(:invoice_item, invoice_id: invoice3.id, item_id: item1.id)
    inv_item4 = create(:invoice_item, invoice_id: invoice3.id, item_id: item2.id)

    get "/api/v1/items/#{item1.id}/invoice_items"

    inv_items = JSON.parse(response.body)

    expect(response).to be_successful
    expect(inv_items).to be_an_instance_of(Array)
    expect(inv_items.count).to eq(3)
  end
  it "should display merchant associated with itme" do
    merchant1 = create(:merchant)
    item1 = create(:item, merchant_id: merchant1.id)

    get "/api/v1/items/#{item1.id}/merchant"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant).to be_an_instance_of(Hash)
    expect(merchant['id']).to be(merchant1.id)
  end
end

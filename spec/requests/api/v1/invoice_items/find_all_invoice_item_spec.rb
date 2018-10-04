require 'rails_helper'

describe 'Invoice Item Search Controller' do
  it "should find all invoice items by id" do
    i_item1, i_item2, i_item3 = create_list(:invoice_item, 3)

    get "/api/v1/invoice_items/find_all?id=#{i_item1.id}"

    i_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(i_item.first['id']).to eq(i_item1.id)
  end
  it "should find all invoice items by item_id" do
    i_item1, i_item2, i_item3 = create_list(:invoice_item, 3)

    get "/api/v1/invoice_items/find_all?item_id=#{i_item1.item_id}"

    i_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(i_item.first['item_id']).to eq(i_item1.item_id)
  end
  it "should find all invoice items by invoice_id" do
    i_item1, i_item2, i_item3 = create_list(:invoice_item, 3)

    get "/api/v1/invoice_items/find_all?invoice_id=#{i_item1.invoice_id}"

    i_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(i_item.first['invoice_id']).to eq(i_item1.invoice_id)
  end
  it "should find all invoice items by quantity" do
    i_item1, i_item2, i_item3 = create_list(:invoice_item, 3)

    get "/api/v1/invoice_items/find_all?quantity=#{i_item1.quantity}"

    i_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(i_item.first['quantity']).to eq(i_item1.quantity)
  end
  it "should find all invoice items by unit_price" do
    i_item1, i_item2, i_item3 = create_list(:invoice_item, 3)

    get "/api/v1/invoice_items/find_all?unit_price=#{i_item1.unit_price}"

    i_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(i_item.first['unit_price']).to eq(i_item1.unit_price)
  end
  it "should find all invoice items by created_at" do
    i_item1, i_item2, i_item3 = create_list(:invoice_item, 3)

    get "/api/v1/invoice_items/find_all?created_at=#{i_item1.created_at}"

    i_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(i_item.last['unit_price']).to eq(InvoiceItem.last.unit_price)
  end
  it "should find all invoice items by updated_at" do
    i_item1, i_item2, i_item3 = create_list(:invoice_item, 3)

    get "/api/v1/invoice_items/find_all?updated_at=#{i_item1.updated_at}"

    i_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(i_item.last['unit_price']).to eq(InvoiceItem.last.unit_price)
  end
end

require 'rails_helper'

describe 'Invoice Item Search Controller' do
  it "should find invoice item by id" do
    id = create(:invoice_item).id

    get "/api/v1/invoice_items/find?id=#{id}"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item['id']).to eq(id)
  end
  it "should find invoice item by item id" do
    item_id = create(:invoice_item).item_id

    get "/api/v1/invoice_items/find?item_id=#{item_id}"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item['item_id']).to eq(item_id)
  end
  it "should find invoice item by invoice id" do
    invoice_id = create(:invoice_item).invoice_id

    get "/api/v1/invoice_items/find?invoice_id=#{invoice_id}"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item['invoice_id']).to eq(invoice_id)
  end
  it "should find invoice item by quantity" do
    quantity = create(:invoice_item).quantity

    get "/api/v1/invoice_items/find?quantity=#{quantity}"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item['quantity']).to eq(quantity)
  end
  it "should find invoice item by unit price" do
    unit_price = create(:invoice_item).unit_price

    get "/api/v1/invoice_items/find?unit_price=#{unit_price}"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item['unit_price']).to eq(unit_price)
  end
  it "should find invoice item by created at date" do
    created_at = create(:invoice_item).created_at

    get "/api/v1/invoice_items/find?created_at=#{created_at}"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item['unit_price']).to eq(InvoiceItem.last.unit_price)
  end
  it "should find invoice item by updated at date" do
    updated_at = create(:invoice_item).updated_at

    get "/api/v1/invoice_items/find?updated_at=#{updated_at}"

    invoice_item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_item['unit_price']).to eq(InvoiceItem.last.unit_price)
  end
end

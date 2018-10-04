require 'rails_helper'

describe 'Item Search Controller' do
  it "should find item by id" do
    id = create(:item).id

    get "/api/v1/items/find?id=#{id}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item['id']).to eq(id)
  end
  it "should find item by name" do
    name = create(:item).name

    get "/api/v1/items/find?name=#{name}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item['name']).to eq(name)
  end
  it "should find item by description" do
    description = create(:item, description: 'description').description

    get "/api/v1/items/find?description=#{description}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item['description']).to eq(description)
  end
  it "should find item by unit_price" do
    unit_price = create(:item).unit_price

    get "/api/v1/items/find?unit_price=#{unit_price}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item['unit_price']).to eq(unit_price)
  end
  it "should find item by merchant_id" do
    merchant_id = create(:item).merchant_id

    get "/api/v1/items/find?merchant_id=#{merchant_id}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item['merchant_id']).to eq(merchant_id)
  end
  it "should find item by created_at" do
    created_at = create(:item).created_at

    get "/api/v1/items/find?created_at=#{created_at}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item['name']).to eq(Item.last.name)
  end
  it "should find item by updated_at" do
    updated_at = create(:item).updated_at

    get "/api/v1/items/find?updated_at=#{updated_at}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item['name']).to eq(Item.last.name)
  end
end

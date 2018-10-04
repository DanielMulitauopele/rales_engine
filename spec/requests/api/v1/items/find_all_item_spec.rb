require 'rails_helper'

describe 'Item Search Controller' do
  it "should find all items by id" do
    item1, item2, item3 = create_list(:item, 3)

    get "/api/v1/items/find_all?id=#{item1.id}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item.first['id']).to eq(item1.id)
  end
  it "should find all items by name" do
    item1, item2, item3 = create_list(:item, 3)

    get "/api/v1/items/find_all?name=#{item1.name}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item.first['name']).to eq(item1.name)
  end
  it "should find all items by description" do
    item1 = create(:item, description: 'description')
    item2 = create(:item, description: 'description')
    item3 = create(:item, description: 'description')

    get "/api/v1/items/find_all?description=#{item1.description}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item.first['description']).to eq(item1.description)
  end
  it "should find all items by unit_price" do
    item1, item2, item3 = create_list(:item, 3)

    get "/api/v1/items/find_all?unit_price=#{item1.unit_price}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item.first['unit_price']).to eq(item1.unit_price)
  end
  it "should find all items by merchant_id" do
    item1, item2, item3 = create_list(:item, 3)

    get "/api/v1/items/find_all?merchant_id=#{item1.merchant_id}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item.first['merchant_id']).to eq(item1.merchant_id)
  end
  it "should find all items by created_at" do
    item1, item2, item3 = create_list(:item, 3)

    get "/api/v1/items/find_all?created_at=#{item1.created_at}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item.first['name']).to eq(item1.name)
  end
  it "should find all items by updated_at" do
    item1, item2, item3 = create_list(:item, 3)

    get "/api/v1/items/find_all?updated_at=#{item1.updated_at}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item.first['name']).to eq(item1.name)
  end
end

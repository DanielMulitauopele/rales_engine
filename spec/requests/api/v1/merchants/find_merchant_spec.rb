require 'rails_helper'

describe 'Merchant Search Controller' do
  it "should find merchant by id" do
    id = create(:merchant).id

    get "/api/v1/merchants/find?id=#{id}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant['id']).to eq(id)
  end
  it "should find merchant by name" do
    name = create(:merchant).name

    get "/api/v1/merchants/find?name=#{name}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant['name']).to eq(name)
  end
  it "should find merchant by created_at" do
    created_at = create(:merchant).created_at

    get "/api/v1/merchants/find?created_at=#{created_at}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant['name']).to eq(Merchant.last.name)
  end
  it "should find merchant by updated_at" do
    updated_at = create(:merchant).updated_at

    get "/api/v1/merchants/find?updated_at=#{updated_at}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant['name']).to eq(Merchant.last.name)
  end
end

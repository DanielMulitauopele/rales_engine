require 'rails_helper'

describe 'Merchant Search Controller' do
  it "should find all merchants by id" do
    merchant1, merchant2, merchant3 = create_list(:merchant, 3)

    get "/api/v1/merchants/find_all?id=#{merchant1.id}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant.first['id']).to eq(merchant1.id)
  end
  it "should find all merchants by name" do
    merchant1, merchant2, merchant3 = create_list(:merchant, 3)

    get "/api/v1/merchants/find_all?name=#{merchant1.name}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant.first['name']).to eq(merchant1.name)
  end
  it "should find all merchants by created_at" do
    merchant1, merchant2, merchant3 = create_list(:merchant, 3)

    get "/api/v1/merchants/find_all?created_at=#{merchant1.created_at}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant.first['id']).to eq(merchant1.id)
  end
  it "should find all merchants by updated_at" do
    merchant1, merchant2, merchant3 = create_list(:merchant, 3)

    get "/api/v1/merchants/find_all?updated_at=#{merchant1.updated_at}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant.first['id']).to eq(merchant1.id)
  end
end

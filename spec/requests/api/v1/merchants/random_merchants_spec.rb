require 'rails_helper'

describe 'Merchants Random Controller' do
  it "should select random merchant from database" do
    merchant1, merchant2, merchant3 = create_list(:merchant, 3)

    get "/api/v1/merchants/random"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant).to be_an_instance_of(Hash)
    expect(merchant).to_not be_an_instance_of(Array)
  end
end

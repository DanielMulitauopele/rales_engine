require 'rails_helper'

describe 'Items Random Controller' do
  it "should select random item from database" do
    item1, item2, item3 = create_list(:item, 3)

    get "/api/v1/items/random"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item).to be_an_instance_of(Hash)
    expect(item).to_not be_an_instance_of(Array)
  end
end

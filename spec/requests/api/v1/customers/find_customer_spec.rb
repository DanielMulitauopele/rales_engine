require 'rails_helper'

describe 'Customer find controller' do
  it "should find customer by id" do
    id = create(:customer).id
    get "/api/v1/customers/find?id=#{id}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer['id']).to eq(id)
  end
end

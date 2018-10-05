require 'rails_helper'

describe 'Customers Random Controller' do
  it "should select random customer from database" do
    customer1, customer2, customer3 = create_list(:customer, 3)

    get "/api/v1/customers/random"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer).to be_an_instance_of(Hash)
    expect(customer).to_not be_an_instance_of(Array)
  end
end

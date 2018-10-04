require 'rails_helper'

describe 'Customer Search Controller' do
  it "should find customer by id" do
    id = create(:customer).id
    get "/api/v1/customers/find?id=#{id}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer['id']).to eq(id)
  end
  it "should find customer by first name" do
    first_name = create(:customer).first_name
    get "/api/v1/customers/find?first_name=#{first_name}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer['first_name']).to eq(first_name)
  end
  it "should find customer by last name" do
    last_name = create(:customer).last_name
    get "/api/v1/customers/find?last_name=#{last_name}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer['last_name']).to eq(last_name)
  end
  it "should find customer by created at date" do
    created_at = create(:customer).created_at
    get "/api/v1/customers/find?created_at=#{created_at}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer['first_name']).to eq(Customer.last.first_name)
  end
end

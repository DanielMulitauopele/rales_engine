require 'rails_helper'

describe 'Customer Search Controller' do
  it "should find all customers by id" do
    customer1, customer2, customer3 = create(:customer)

    get "/api/v1/customers/find_all?id=#{customer1.id}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer.first['id']).to eq(customer1.id)
  end
  it "should find all customers by first_name" do
    customer1, customer2, customer3 = create(:customer)

    get "/api/v1/customers/find_all?first_name=#{customer1.first_name}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer.first['first_name']).to eq(customer1.first_name)
  end
  it "should find all customers by last_name" do
    customer1, customer2, customer3 = create(:customer)

    get "/api/v1/customers/find_all?last_name=#{customer1.last_name}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer.first['last_name']).to eq(customer1.last_name)
  end
  it "should find all customers by created_at" do
    customer1, customer2, customer3 = create(:customer)

    get "/api/v1/customers/find_all?created_at=#{customer1.created_at}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer.first['last_name']).to eq(customer1.last_name)
  end
  it "should find all customers by updated_at" do
    customer1, customer2, customer3 = create(:customer)

    get "/api/v1/customers/find_all?updated_at=#{customer1.updated_at}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer.first['last_name']).to eq(customer1.last_name)
  end
end

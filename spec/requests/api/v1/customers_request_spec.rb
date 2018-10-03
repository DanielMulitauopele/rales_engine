require 'rails_helper'

describe 'Items API' do
  it 'sends a list of customers' do
    create_list(:customer, 3)

    get '/api/v1/customers'

    expect(response).to be_successful

    customers = JSON.parse(response.body)

    expect(customers.count).to eq(3)
  end
  it 'sends one customer by id' do
    id = create(:customer).id

    get "/api/v1/customers/#{id}"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer["id"]).to eq(id)
  end
  it 'can create a new customer' do
    customer_params = {first_name: 'Sokka', last_name: 'Of the Water Tribe'}

    post '/api/v1/customers', params: {customer: customer_params}
    customer = Customer.last

    assert_response :success
    expect(response).to be_successful
    expect(customer.first_name).to eq(customer_params[:first_name])
  end
end

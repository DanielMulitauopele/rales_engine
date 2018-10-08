require 'rails_helper'

describe "Customer's favorite merchant" do
  it "should return a specific customer's most frequented merchant" do
    customer1 = create(:customer)
    merchant1 = create(:merchant)
    merchant2 = create(:merchant)
    merchant3 = create(:merchant)

    invoice1 = create(:invoice, customer_id: customer1.id, merchant_id: merchant1.id)
    invoice2 = create(:invoice, customer_id: customer1.id, merchant_id: merchant1.id)
    invoice3 = create(:invoice, customer_id: customer1.id, merchant_id: merchant1.id)
    invoice4 = create(:invoice, customer_id: customer1.id, merchant_id: merchant2.id)
    invoice5 = create(:invoice, customer_id: customer1.id, merchant_id: merchant3.id)

    trans1 = create(:transaction, invoice_id: invoice1.id, result: 'success')
    trans2 = create(:transaction, invoice_id: invoice2.id, result: 'success')
    trans3 = create(:transaction, invoice_id: invoice3.id, result: 'success')
    trans4 = create(:transaction, invoice_id: invoice4.id, result: 'success')
    trans5 = create(:transaction, invoice_id: invoice5.id, result: 'success')

    get "/api/v1/customers/#{customer1.id}/favorite_merchant"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant).to be_an_instance_of(Hash)
    expect(merchant['id']).to eq(merchant1.id)
  end
end

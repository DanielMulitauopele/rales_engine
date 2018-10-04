require 'rails_helper'

describe 'Invoice Search Controller' do
  it "should find all invoices by id" do
    invoice1, invoice2, invoice3 = create_list(:invoice, 3)

    get "/api/v1/invoices/find_all?id=#{invoice1.id}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice.first['id']).to eq(invoice1.id)
  end
  it "should find all invoices by customer_id" do
    invoice1, invoice2, invoice3 = create_list(:invoice, 3)

    get "/api/v1/invoices/find_all?customer_id=#{invoice1.customer_id}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice.first['customer_id']).to eq(invoice1.customer_id)
  end
  it "should find all invoices by merchant_id" do
    invoice1, invoice2, invoice3 = create_list(:invoice, 3)

    get "/api/v1/invoices/find_all?merchant_id=#{invoice1.merchant_id}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice.first['merchant_id']).to eq(invoice1.merchant_id)
  end
  it "should find all invoices by status" do
    invoice1, invoice2, invoice3 = create_list(:invoice, 3)

    get "/api/v1/invoices/find_all?status=#{invoice1.status}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice.first['status']).to eq(invoice1.status)
  end
  it "should find all invoices by created_at" do
    invoice1, invoice2, invoice3 = create_list(:invoice, 3)

    get "/api/v1/invoices/find_all?created_at=#{invoice1.created_at}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice.first['status']).to eq(invoice1.status)
  end
  it "should find all invoices by updated_at" do
    invoice1, invoice2, invoice3 = create_list(:invoice, 3)

    get "/api/v1/invoices/find_all?updated_at=#{invoice1.updated_at}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice.first['status']).to eq(invoice1.status)
  end
end

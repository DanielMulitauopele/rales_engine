require 'rails_helper'

describe 'Invoice Search Controller' do
  it "should find invoice by id" do
    id = create(:invoice).id

    get "/api/v1/invoices/find?id=#{id}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice['id']).to eq(id)
  end
  it "should find invoice by customer_id" do
    customer_id = create(:invoice).customer_id

    get "/api/v1/invoices/find?customer_id=#{customer_id}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice['customer_id']).to eq(customer_id)
  end
  it "should find invoice by merchant_id" do
    merchant_id = create(:invoice).merchant_id

    get "/api/v1/invoices/find?merchant_id=#{merchant_id}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice['merchant_id']).to eq(merchant_id)
  end
  it "should find invoice by status" do
    status = create(:invoice).status

    get "/api/v1/invoices/find?status=#{status}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice['status']).to eq(status)
  end
  it "should find invoice by created_at" do
    created_at = create(:invoice).created_at

    get "/api/v1/invoices/find?created_at=#{created_at}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice['customer_id']).to eq(Invoice.last.customer_id)
  end
  it "should find invoice by updated_at" do
    updated_at = create(:invoice).updated_at

    get "/api/v1/invoices/find?updated_at=#{updated_at}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice['customer_id']).to eq(Invoice.last.customer_id)
  end
end

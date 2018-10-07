require 'rails_helper'

describe 'Invoice Relationships Controller' do
  it "should display all transactions associated with invoice" do
    invoice1 = create(:invoice)
    trans_1 = create(:transaction, invoice_id: invoice1.id)
    trans_2 = create(:transaction, invoice_id: invoice1.id)
    trans_3 = create(:transaction)

    get "/api/v1/invoices/#{invoice1.id}/transactions"

    transactions = JSON.parse(response.body)

    expect(response).to be_successful
    expect(transactions).to be_an_instance_of(Array)
    expect(transactions.count).to eq(2)
  end
  it "should display all invoice_items associated with invoice" do
    invoice1 = create(:invoice)
    inv_item_1 = create(:invoice_item, invoice_id: invoice1.id)
    inv_item_2 = create(:invoice_item, invoice_id: invoice1.id)
    inv_item_3 = create(:invoice_item)

    get "/api/v1/invoices/#{invoice1.id}/invoice_items"

    invoice_items = JSON.parse(response.body)

    expect(response).to be_successful
    expect(invoice_items).to be_an_instance_of(Array)
    expect(invoice_items.count).to eq(2)
  end
  it "should display all items associated with invoice" do
    invoice1 = create(:invoice)
    invoice2 = create(:invoice)
    item_1 = create(:item)
    item_2 = create(:item)
    item_3 = create(:item)
    inv_item1 = create(:invoice_item, invoice_id: invoice1.id, item_id: item_1.id)
    inv_item2 = create(:invoice_item, invoice_id: invoice1.id, item_id: item_2.id)
    inv_item3 = create(:invoice_item, invoice_id: invoice2.id, item_id: item_3.id)

    get "/api/v1/invoices/#{invoice1.id}/items"

    items = JSON.parse(response.body)

    expect(response).to be_successful
    expect(items).to be_an_instance_of(Array)
    expect(items.count).to eq(2)
  end
  it "should display all customers associated with invoice" do
    customer1 = create(:customer)
    invoice1 = create(:invoice, customer_id: customer1.id)

    get "/api/v1/invoices/#{invoice1.id}/customer"

    customer = JSON.parse(response.body)

    expect(response).to be_successful
    expect(customer).to be_an_instance_of(Hash)
    expect(customer['id']).to eq(customer1.id)
  end
end

require 'rails_helper'

describe 'Merchants ranked by revenue' do
  it 'should list out merchants ranked by revenue generated' do
    merchant1 = create(:merchant)
    item1 = create(:item, merchant_id: merchant1.id)
    item2 = create(:item, merchant_id: merchant1.id)

    invoice1 = create(:invoice, merchant_id: merchant1.id)
    inv_item1 = create(:invoice_item, invoice_id: invoice1.id, item_id: item1.id)
    inv_item2 = create(:invoice_item, invoice_id: invoice1.id, item_id: item2.id)
    
    trans1 = create(:transaction, invoice_id: invoice1.id, result: 'success')
    get "/api/v1/merchants/most_revenue?quantity=1"

    merchants = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchants).to be_an_instance_of(Array)
    expect(merchants.first.id).to eq(merchant1.id)
  end
end

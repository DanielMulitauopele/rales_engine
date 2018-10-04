class Api::V1::InvoiceItems::SearchController < ApplicationController
  def show
    render json: InvoiceItem.find_by(invoice_item_params)
  end

  private

  def invoice_item_params
    params.permit(:item_id, :invoice_id, :quantity, :unit_price, :created_at, :updated_at)
  end
end